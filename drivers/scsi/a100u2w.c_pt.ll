; ModuleID = '/llk/IR_all_yes/drivers/scsi/a100u2w.c_pt.bc'
source_filename = "../drivers/scsi/a100u2w.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.orc_nvram = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.orc_host = type { i32, i8, i8, i8, i8, i8, ptr, i32, ptr, i32, [16 x i8], [16 x i8], [2 x [8 x i32]], %struct.spinlock, ptr }
%struct.orc_scb = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [15 x i8], i8, i32, ptr, [4 x i8] }
%struct.orc_extended_scb = type { [32 x %struct.orc_sgent], ptr }
%struct.orc_sgent = type { i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_a100u2w__287_1222_inia100_pci_driver_init6 = internal global ptr @inia100_pci_driver_init, section ".initcall6.init", align 4
@inia100_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @inia100_pci_tbl, ptr @inia100_probe_one, ptr @inia100_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_inia100_pci_driver_exit = internal global ptr @inia100_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description288 = internal constant [47 x i8] c"a100u2w.description=Initio A100U2W SCSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [34 x i8] c"a100u2w.author=Initio Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [34 x i8] c"a100u2w.file=drivers/scsi/a100u2w\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [29 x i8] c"a100u2w.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a100u2w\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inia100\00", [24 x i8] zeroinitializer }, align 32
@inia100_pci_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4353, i32 4192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014Unable to set 32bit DMA on inia100 adapter, ignoring.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inia100_probe_one\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/a100u2w.c\00", [41 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr = internal global ptr @inia100_probe_one._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@inia100_probe_one._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014inia100: io port 0x%lx, is busy.\0A\00", [60 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr.7 = internal global ptr @inia100_probe_one._entry.5, section ".printk_index", align 4
@inia100_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @inia100_queue, ptr null, ptr null, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr @inia100_abort, ptr @inia100_device_reset, ptr null, ptr @inia100_bus_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 1, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@inia100_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&host->allocation_lock\00", [41 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inia100: SCB memory allocation error\0A\00", [58 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr.11 = internal global ptr @inia100_probe_one._entry.9, section ".printk_index", align 4
@inia100_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"inia100: ESCB memory allocation error\0A\00", [57 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr.14 = internal global ptr @inia100_probe_one._entry.12, section ".printk_index", align 4
@inia100_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"inia100: initial orchid fail!!\0A\00", [32 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr.17 = internal global ptr @inia100_probe_one._entry.15, section ".printk_index", align 4
@inia100_probe_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014inia100: unable to get irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@inia100_probe_one._entry_ptr.20 = internal global ptr @inia100_probe_one._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Initio INI-A100U2W SCSI device driver; Revision: 1.02d\00", [41 x i8] zeroinitializer }, align 32
@inia100_build_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max cdb length= %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inia100_build_scb\00", [46 x i8] zeroinitializer }, align 32
@inia100_build_scb._entry_ptr = internal global ptr @inia100_build_scb._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@orc_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unable to Reset - No SCB Found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orc_device_reset\00", [47 x i8] zeroinitializer }, align 32
@orc_device_reset._entry_ptr = internal global ptr @orc_device_reset._entry, section ".printk_index", align 4
@default_nvram = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\01\11`\10\00\01\11`\10\00\00\01\01\01\00\00\07\83 \0A\00\00\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\07\83 \0A\00\00\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\C8\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@nvram = internal global { %struct.orc_nvram, [32 x i8] } zeroinitializer, align 32
@inia100_scb_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013inia100_scb_handler: SRB pointer is empty\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inia100_scb_handler\00", [44 x i8] zeroinitializer }, align 32
@inia100_scb_handler._entry_ptr = internal global ptr @inia100_scb_handler._entry, section ".printk_index", align 4
@inia100_scb_handler._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017inia100: %x %x\0A\00", [46 x i8] zeroinitializer }, align 32
@inia100_scb_handler._entry_ptr.30 = internal global ptr @inia100_scb_handler._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 10, i64 11, i64 17, i64 20, i64 26]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"inia100_pci_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1215, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1222, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1216, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"inia100_pci_tbl\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1209, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1092, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1101, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"inia100_template\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1068, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1117, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1124, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1133, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1138, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1156, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1070, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 891, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 623, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"default_nvram\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 90, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 88, i32 25 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 995, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [26 x i8] c"../drivers/scsi/a100u2w.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1031, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_inia100_pci_driver_exit, ptr @__initcall__kmod_a100u2w__287_1222_inia100_pci_driver_init6, ptr @inia100_build_scb._entry, ptr @inia100_build_scb._entry_ptr, ptr @inia100_pci_driver_exit, ptr @inia100_probe_one._entry, ptr @inia100_probe_one._entry.12, ptr @inia100_probe_one._entry.15, ptr @inia100_probe_one._entry.18, ptr @inia100_probe_one._entry.5, ptr @inia100_probe_one._entry.9, ptr @inia100_probe_one._entry_ptr, ptr @inia100_probe_one._entry_ptr.11, ptr @inia100_probe_one._entry_ptr.14, ptr @inia100_probe_one._entry_ptr.17, ptr @inia100_probe_one._entry_ptr.20, ptr @inia100_probe_one._entry_ptr.7, ptr @inia100_scb_handler._entry, ptr @inia100_scb_handler._entry.28, ptr @inia100_scb_handler._entry_ptr, ptr @inia100_scb_handler._entry_ptr.30, ptr @orc_device_reset._entry, ptr @orc_device_reset._entry_ptr, ptr @inia100_pci_driver, ptr @.str, ptr @.str.1, ptr @inia100_pci_tbl, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @inia100_template, ptr @inia100_probe_one.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @default_nvram, ptr @nvram, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_probe_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_build_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orc_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_nvram to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_scb_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inia100_scb_handler._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @inia100_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @inia100_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @inia100_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %out_disable_device

if.end5:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %call6 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 256, ptr noundef nonnull @.str.1, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1) #10
  br label %out_disable_device

if.end14:                                         ; preds = %if.end5
  %add = add i32 %1, 80
  %and = and i32 %add, 1048575
  %add15 = or i32 %and, -18874368
  %2 = inttoptr i32 %add15 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %call19 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @inia100_template, i32 noundef 172) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end14.out_release_region_crit_edge, label %if.end22

if.end14.out_release_region_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_release_region

if.end22:                                         ; preds = %if.end14
  %4 = lshr i16 %3, 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 53
  %pdev23 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 6, i32 1
  %5 = ptrtoint ptr %pdev23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev23, align 4
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %hostdata, align 4
  %conv24 = trunc i16 %4 to i8
  %BIOScfg = getelementptr inbounds %struct.orc_host, ptr %hostdata, i32 0, i32 3
  %7 = ptrtoint ptr %BIOScfg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv24, ptr %BIOScfg, align 2
  %allocation_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 5, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %allocation_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @inia100_probe_one.__key, i16 noundef signext 3) #7
  %scb_phys = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 15680, ptr noundef %scb_phys, i32 noundef 3264, i32 noundef 0) #7
  %scb_virt = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %scb_virt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %scb_virt, align 4
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %out_host_put

if.end39:                                         ; preds = %if.end22
  %escb_phys = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 3
  %call.i150 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 63700, ptr noundef %escb_phys, i32 noundef 3264, i32 noundef 0) #7
  %escb_virt = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 2, i32 1
  %9 = ptrtoint ptr %escb_virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i150, ptr %escb_virt, align 4
  %tobool43.not = icmp eq ptr %call.i150, null
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %out_free_scb_array

if.end50:                                         ; preds = %if.end39
  %uglygep19.i.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %10 = call ptr @memset(ptr %uglygep19.i.i, i32 255, i32 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hostdata, align 4
  %add.i = add i32 %12, 161
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -1) #7, !srcloc !87
  %14 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hostdata, align 4
  %add3.i = add i32 %15, 166
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %16 = inttoptr i32 %add5.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hostdata, align 4
  br i1 %tobool.not.i, label %do.body43.i, label %if.then.i

if.then.i:                                        ; preds = %if.end50
  %add.i.i = add i32 %20, 164
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 1) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hostdata, align 4
  %add6.i.i = add i32 %23, 165
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %24 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 64) #7, !srcloc !87
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %while.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.i
  %i.07.i.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i.i, %while.end.i.i.i.for.body.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hostdata, align 4
  %add.i.i.i = add i32 %26, 165
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %27 = inttoptr i32 %add1.i.i.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.body.i73.i.i_crit_edge, label %for.body.i.i.i.while.body.i.i.i_crit_edge

for.body.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %while.body.i.i.i

for.body.i.i.i.for.body.i73.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %for.body.i73.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %for.body.i.i.i.while.body.i.i.i_crit_edge
  %__ms.06.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 100, %for.body.i.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %__ms.06.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %tobool4.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %while.end.i.i.i.if.else.i_crit_edge, label %while.end.i.i.i.for.body.i.i.i_crit_edge

while.end.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

while.end.i.i.i.if.else.i_crit_edge:              ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

for.body.i73.i.i:                                 ; preds = %while.end.i80.i.i.for.body.i73.i.i_crit_edge, %for.body.i.i.i.for.body.i73.i.i_crit_edge
  %i.07.i68.i.i = phi i32 [ %inc.i78.i.i, %while.end.i80.i.i.for.body.i73.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.body.i73.i.i_crit_edge ]
  %31 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hostdata, align 4
  %add.i69.i.i = add i32 %32, 166
  %and.i70.i.i = and i32 %add.i69.i.i, 1048575
  %add1.i71.i.i = or i32 %and.i70.i.i, -18874368
  %33 = inttoptr i32 %add1.i71.i.i to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i72.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i72.i.i, label %for.body.i73.i.i.while.body.i77.i.i_crit_edge, label %if.end17.i.i

for.body.i73.i.i.while.body.i77.i.i_crit_edge:    ; preds = %for.body.i73.i.i
  br label %while.body.i77.i.i

while.body.i77.i.i:                               ; preds = %while.body.i77.i.i.while.body.i77.i.i_crit_edge, %for.body.i73.i.i.while.body.i77.i.i_crit_edge
  %__ms.06.i74.i.i = phi i32 [ %dec.i75.i.i, %while.body.i77.i.i.while.body.i77.i.i_crit_edge ], [ 100, %for.body.i73.i.i.while.body.i77.i.i_crit_edge ]
  %dec.i75.i.i = add nsw i32 %__ms.06.i74.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  %tobool4.not.i76.i.i = icmp eq i32 %dec.i75.i.i, 0
  br i1 %tobool4.not.i76.i.i, label %while.end.i80.i.i, label %while.body.i77.i.i.while.body.i77.i.i_crit_edge

while.body.i77.i.i.while.body.i77.i.i_crit_edge:  ; preds = %while.body.i77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i77.i.i

while.end.i80.i.i:                                ; preds = %while.body.i77.i.i
  %inc.i78.i.i = add nuw nsw i32 %i.07.i68.i.i, 1
  %exitcond.not.i79.i.i = icmp eq i32 %inc.i78.i.i, 10
  br i1 %exitcond.not.i79.i.i, label %while.end.i80.i.i.if.else.i_crit_edge, label %while.end.i80.i.i.for.body.i73.i.i_crit_edge

while.end.i80.i.i.for.body.i73.i.i_crit_edge:     ; preds = %while.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73.i.i

while.end.i80.i.i.if.else.i_crit_edge:            ; preds = %while.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end17.i.i:                                     ; preds = %for.body.i73.i.i
  %37 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hostdata, align 4
  %add19.i.i = add i32 %38, 164
  %and20.i.i = and i32 %add19.i.i, 1048575
  %add21.i.i = or i32 %and20.i.i, -18874368
  %39 = inttoptr i32 %add21.i.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hostdata, align 4
  %add29.i.i = add i32 %42, 166
  %and30.i.i = and i32 %add29.i.i, 1048575
  %add31.i.i = or i32 %and30.i.i, -18874368
  %43 = inttoptr i32 %add31.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %34) #7, !srcloc !87
  br label %for.body.i87.i.i

for.body.i87.i.i:                                 ; preds = %while.end.i94.i.i.for.body.i87.i.i_crit_edge, %if.end17.i.i
  %i.07.i82.i.i = phi i32 [ 0, %if.end17.i.i ], [ %inc.i92.i.i, %while.end.i94.i.i.for.body.i87.i.i_crit_edge ]
  %44 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hostdata, align 4
  %add.i83.i.i = add i32 %45, 166
  %and.i84.i.i = and i32 %add.i83.i.i, 1048575
  %add1.i85.i.i = or i32 %and.i84.i.i, -18874368
  %46 = inttoptr i32 %add1.i85.i.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i86.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i86.i.i, label %for.body.i87.i.i.while.body.i91.i.i_crit_edge, label %orc_read_fwrev.exit.i

for.body.i87.i.i.while.body.i91.i.i_crit_edge:    ; preds = %for.body.i87.i.i
  br label %while.body.i91.i.i

while.body.i91.i.i:                               ; preds = %while.body.i91.i.i.while.body.i91.i.i_crit_edge, %for.body.i87.i.i.while.body.i91.i.i_crit_edge
  %__ms.06.i88.i.i = phi i32 [ %dec.i89.i.i, %while.body.i91.i.i.while.body.i91.i.i_crit_edge ], [ 100, %for.body.i87.i.i.while.body.i91.i.i_crit_edge ]
  %dec.i89.i.i = add nsw i32 %__ms.06.i88.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  %tobool4.not.i90.i.i = icmp eq i32 %dec.i89.i.i, 0
  br i1 %tobool4.not.i90.i.i, label %while.end.i94.i.i, label %while.body.i91.i.i.while.body.i91.i.i_crit_edge

while.body.i91.i.i.while.body.i91.i.i_crit_edge:  ; preds = %while.body.i91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i91.i.i

while.end.i94.i.i:                                ; preds = %while.body.i91.i.i
  %inc.i92.i.i = add nuw nsw i32 %i.07.i82.i.i, 1
  %exitcond.not.i93.i.i = icmp eq i32 %inc.i92.i.i, 10
  br i1 %exitcond.not.i93.i.i, label %while.end.i94.i.i.if.else.i_crit_edge, label %while.end.i94.i.i.for.body.i87.i.i_crit_edge

while.end.i94.i.i.for.body.i87.i.i_crit_edge:     ; preds = %while.end.i94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i87.i.i

while.end.i94.i.i.if.else.i_crit_edge:            ; preds = %while.end.i94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

orc_read_fwrev.exit.i:                            ; preds = %for.body.i87.i.i
  %50 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hostdata, align 4
  %add41.i.i = add i32 %51, 164
  %and42.i.i = and i32 %add41.i.i, 1048575
  %add43.i.i = or i32 %and42.i.i, -18874368
  %52 = inttoptr i32 %add43.i.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %conv47.i.i = zext i8 %53 to i16
  %shl.i.i = shl nuw i16 %conv47.i.i, 8
  %conv48.i.i = zext i8 %40 to i16
  %or.i.i = or i16 %shl.i.i, %conv48.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hostdata, align 4
  %add54.i.i = add i32 %55, 166
  %and55.i.i = and i32 %add54.i.i, 1048575
  %add56.i.i = or i32 %and55.i.i, -18874368
  %56 = inttoptr i32 %add56.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %47) #7, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or.i.i)
  %cmp.i = icmp eq i16 %or.i.i, -1
  br i1 %cmp.i, label %do.body13.i, label %orc_read_fwrev.exit.i.if.else.i_crit_edge

orc_read_fwrev.exit.i.if.else.i_crit_edge:        ; preds = %orc_read_fwrev.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.body13.i:                                      ; preds = %orc_read_fwrev.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hostdata, align 4
  %add17.i = add i32 %58, 165
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %59 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 1) #7, !srcloc !87
  %call21.i = tail call fastcc zeroext i8 @wait_chip_ready(ptr noundef %hostdata) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21.i)
  %cmp23.i = icmp eq i8 %call21.i, 0
  br i1 %cmp23.i, label %do.body13.i.do.end56_crit_edge, label %if.end.i

do.body13.i.do.end56_crit_edge:                   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end.i:                                         ; preds = %do.body13.i
  tail call fastcc void @orc_load_firmware(ptr noundef %hostdata) #7
  tail call fastcc void @setup_SCBs(ptr noundef %hostdata) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hostdata, align 4
  %add31.i = add i32 %61, 165
  %and32.i = and i32 %add31.i, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %62 = inttoptr i32 %add33.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 0) #7, !srcloc !87
  %call35.i = tail call fastcc zeroext i8 @wait_firmware_ready(ptr noundef %hostdata) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call35.i)
  %cmp37.i = icmp eq i8 %call35.i, 0
  br i1 %cmp37.i, label %if.end.i.do.end56_crit_edge, label %if.end.i.if.end72.i_crit_edge

if.end.i.if.end72.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.end.i.do.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.else.i:                                        ; preds = %orc_read_fwrev.exit.i.if.else.i_crit_edge, %while.end.i94.i.i.if.else.i_crit_edge, %while.end.i80.i.i.if.else.i_crit_edge, %while.end.i.i.i.if.else.i_crit_edge
  tail call fastcc void @setup_SCBs(ptr noundef %hostdata) #7
  br label %if.end72.i

do.body43.i:                                      ; preds = %if.end50
  %add47.i = add i32 %20, 165
  %and48.i = and i32 %add47.i, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %63 = inttoptr i32 %add49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 1) #7, !srcloc !87
  %call51.i = tail call fastcc zeroext i8 @wait_chip_ready(ptr noundef %hostdata) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call51.i)
  %cmp53.i = icmp eq i8 %call51.i, 0
  br i1 %cmp53.i, label %do.body43.i.do.end56_crit_edge, label %if.end56.i

do.body43.i.do.end56_crit_edge:                   ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end56.i:                                       ; preds = %do.body43.i
  tail call fastcc void @orc_load_firmware(ptr noundef %hostdata) #7
  tail call fastcc void @setup_SCBs(ptr noundef %hostdata) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hostdata, align 4
  %add62.i = add i32 %65, 165
  %and63.i = and i32 %add62.i, 1048575
  %add64.i = or i32 %and63.i, -18874368
  %66 = inttoptr i32 %add64.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 64) #7, !srcloc !87
  %call66.i = tail call fastcc zeroext i8 @wait_firmware_ready(ptr noundef %hostdata) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call66.i)
  %cmp68.i = icmp eq i8 %call66.i, 0
  br i1 %cmp68.i, label %if.end56.i.do.end56_crit_edge, label %if.end56.i.if.end72.i_crit_edge

if.end56.i.if.end72.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.end56.i.do.end56_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end72.i:                                       ; preds = %if.end56.i.if.end72.i_crit_edge, %if.else.i, %if.end.i.if.end72.i_crit_edge
  %call.i.i = tail call fastcc i32 @se2_rd_all(ptr noundef %hostdata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end72.i.read_eeprom.exit.i_crit_edge, label %if.then.i.i

if.end72.i.read_eeprom.exit.i_crit_edge:          ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_eeprom.exit.i

if.then.i.i:                                      ; preds = %if.end72.i
  %67 = load i8, ptr @default_nvram, align 1
  %68 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 1), align 1
  %add.1.i.i.i = add i8 %68, %67
  %69 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 2), align 1
  %add.2.i.i.i = add i8 %add.1.i.i.i, %69
  %70 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 3), align 1
  %add.3.i.i.i = add i8 %add.2.i.i.i, %70
  %71 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 4), align 1
  %add.4.i.i.i = add i8 %add.3.i.i.i, %71
  %72 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 5), align 1
  %add.5.i.i.i = add i8 %add.4.i.i.i, %72
  %73 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 6), align 1
  %add.6.i.i.i = add i8 %add.5.i.i.i, %73
  %74 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 7), align 1
  %add.7.i.i.i = add i8 %add.6.i.i.i, %74
  %75 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 8), align 1
  %add.8.i.i.i = add i8 %add.7.i.i.i, %75
  %76 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 9), align 1
  %add.9.i.i.i = add i8 %add.8.i.i.i, %76
  %77 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 10), align 1
  %add.10.i.i.i = add i8 %add.9.i.i.i, %77
  %78 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 11), align 1
  %add.11.i.i.i = add i8 %add.10.i.i.i, %78
  %79 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 12), align 1
  %add.12.i.i.i = add i8 %add.11.i.i.i, %79
  %80 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 13), align 1
  %add.13.i.i.i = add i8 %add.12.i.i.i, %80
  %81 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 14), align 1
  %add.14.i.i.i = add i8 %add.13.i.i.i, %81
  %82 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 15), align 1
  %add.15.i.i.i = add i8 %add.14.i.i.i, %82
  %83 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 16), align 1
  %add.16.i.i.i = add i8 %add.15.i.i.i, %83
  %84 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 17), align 1
  %add.17.i.i.i = add i8 %add.16.i.i.i, %84
  %85 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 18), align 1
  %add.18.i.i.i = add i8 %add.17.i.i.i, %85
  %86 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 19), align 1
  %add.19.i.i.i = add i8 %add.18.i.i.i, %86
  %87 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 20), align 1
  %add.20.i.i.i = add i8 %add.19.i.i.i, %87
  %88 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 21), align 1
  %add.21.i.i.i = add i8 %add.20.i.i.i, %88
  %89 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 22), align 1
  %add.22.i.i.i = add i8 %add.21.i.i.i, %89
  %90 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 23), align 1
  %add.23.i.i.i = add i8 %add.22.i.i.i, %90
  %91 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 24), align 1
  %add.24.i.i.i = add i8 %add.23.i.i.i, %91
  %92 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 25), align 1
  %add.25.i.i.i = add i8 %add.24.i.i.i, %92
  %93 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 26), align 1
  %add.26.i.i.i = add i8 %add.25.i.i.i, %93
  %94 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 27), align 1
  %add.27.i.i.i = add i8 %add.26.i.i.i, %94
  %95 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 28), align 1
  %add.28.i.i.i = add i8 %add.27.i.i.i, %95
  %96 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 29), align 1
  %add.29.i.i.i = add i8 %add.28.i.i.i, %96
  %97 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 30), align 1
  %add.30.i.i.i = add i8 %add.29.i.i.i, %97
  %98 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 31), align 1
  %add.31.i.i.i = add i8 %add.30.i.i.i, %98
  %99 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 32), align 1
  %add.32.i.i.i = add i8 %add.31.i.i.i, %99
  %100 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 33), align 1
  %add.33.i.i.i = add i8 %add.32.i.i.i, %100
  %101 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 34), align 1
  %add.34.i.i.i = add i8 %add.33.i.i.i, %101
  %102 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 35), align 1
  %add.35.i.i.i = add i8 %add.34.i.i.i, %102
  %103 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 36), align 1
  %add.36.i.i.i = add i8 %add.35.i.i.i, %103
  %104 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 37), align 1
  %add.37.i.i.i = add i8 %add.36.i.i.i, %104
  %105 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 38), align 1
  %add.38.i.i.i = add i8 %add.37.i.i.i, %105
  %106 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 39), align 1
  %add.39.i.i.i = add i8 %add.38.i.i.i, %106
  %107 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 40), align 1
  %add.40.i.i.i = add i8 %add.39.i.i.i, %107
  %108 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 41), align 1
  %add.41.i.i.i = add i8 %add.40.i.i.i, %108
  %109 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 42), align 1
  %add.42.i.i.i = add i8 %add.41.i.i.i, %109
  %110 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 43), align 1
  %add.43.i.i.i = add i8 %add.42.i.i.i, %110
  %111 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 44), align 1
  %add.44.i.i.i = add i8 %add.43.i.i.i, %111
  %112 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 45), align 1
  %add.45.i.i.i = add i8 %add.44.i.i.i, %112
  %113 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 46), align 1
  %add.46.i.i.i = add i8 %add.45.i.i.i, %113
  %114 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 47), align 1
  %add.47.i.i.i = add i8 %add.46.i.i.i, %114
  %115 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 48), align 1
  %add.48.i.i.i = add i8 %add.47.i.i.i, %115
  %116 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 49), align 1
  %add.49.i.i.i = add i8 %add.48.i.i.i, %116
  %117 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 50), align 1
  %add.50.i.i.i = add i8 %add.49.i.i.i, %117
  %118 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 51), align 1
  %add.51.i.i.i = add i8 %add.50.i.i.i, %118
  %119 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 52), align 1
  %add.52.i.i.i = add i8 %add.51.i.i.i, %119
  %120 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 53), align 1
  %add.53.i.i.i = add i8 %add.52.i.i.i, %120
  %121 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 54), align 1
  %add.54.i.i.i = add i8 %add.53.i.i.i, %121
  %122 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 55), align 1
  %add.55.i.i.i = add i8 %add.54.i.i.i, %122
  %123 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 56), align 1
  %add.56.i.i.i = add i8 %add.55.i.i.i, %123
  %124 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 57), align 1
  %add.57.i.i.i = add i8 %add.56.i.i.i, %124
  %125 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 58), align 1
  %add.58.i.i.i = add i8 %add.57.i.i.i, %125
  %126 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 59), align 1
  %add.59.i.i.i = add i8 %add.58.i.i.i, %126
  %127 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 60), align 1
  %add.60.i.i.i = add i8 %add.59.i.i.i, %127
  %128 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 61), align 1
  %add.61.i.i.i = add i8 %add.60.i.i.i, %128
  %129 = load i8, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 62), align 1
  %add.62.i.i.i = add i8 %add.61.i.i.i, %129
  store i8 %add.62.i.i.i, ptr getelementptr inbounds ([64 x i8], ptr @default_nvram, i32 0, i32 63), align 1
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.inc12.i.i.i.for.body6.i.i.i_crit_edge, %if.then.i.i
  %np1.035.i.i.i = phi ptr [ @nvram, %if.then.i.i ], [ %incdec.ptr15.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %np.134.i.i.i = phi ptr [ @default_nvram, %if.then.i.i ], [ %incdec.ptr14.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %i.132.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc13.i.i.i, %for.inc12.i.i.i.for.body6.i.i.i_crit_edge ]
  %130 = ptrtoint ptr %np.134.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %np.134.i.i.i, align 1
  %132 = ptrtoint ptr %np1.035.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %np1.035.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp9.not.i.i.i = icmp eq i8 %131, %133
  br i1 %cmp9.not.i.i.i, label %for.body6.i.i.i.for.inc12.i.i.i_crit_edge, label %if.then.i.i.i

for.body6.i.i.i.for.inc12.i.i.i_crit_edge:        ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

if.then.i.i.i:                                    ; preds = %for.body6.i.i.i
  %conv11.i.i.i = trunc i32 %i.132.i.i.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %134 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hostdata, align 4
  %add.i.i.i.i = add i32 %135, 164
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %136 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 3) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %137 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hostdata, align 4
  %add5.i.i.i.i = add i32 %138, 165
  %and6.i.i.i.i = and i32 %add5.i.i.i.i, 1048575
  %add7.i.i.i.i = or i32 %and6.i.i.i.i, -18874368
  %139 = inttoptr i32 %add7.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 64) #7, !srcloc !87
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %while.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.then.i.i.i
  %i.07.i.i.i.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %inc.i.i.i.i.i, %while.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %140 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hostdata, align 4
  %add.i.i.i.i.i = add i32 %141, 165
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, 1048575
  %add1.i.i.i.i.i = or i32 %and.i.i.i.i.i, -18874368
  %142 = inttoptr i32 %add1.i.i.i.i.i to ptr
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %142) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %144 = and i8 %143, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i.i.i.i.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body11.i.i.i.i, label %for.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  br label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge
  %__ms.06.i.i.i.i.i = phi i32 [ %dec.i.i.i.i.i, %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ], [ 100, %for.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %dec.i.i.i.i.i = add nsw i32 %__ms.06.i.i.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #7
  %tobool4.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %while.end.i.i.i.i.i, label %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge

while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i.i

while.end.i.i.i.i.i:                              ; preds = %while.body.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw nsw i32 %i.07.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 10
  br i1 %exitcond.not.i.i.i.i.i, label %while.end.i.i.i.i.i.for.inc12.i.i.i_crit_edge, label %while.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

while.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge: ; preds = %while.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i.i

while.end.i.i.i.i.i.for.inc12.i.i.i_crit_edge:    ; preds = %while.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

do.body11.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hostdata, align 4
  %add14.i.i.i.i = add i32 %147, 164
  %and15.i.i.i.i = and i32 %add14.i.i.i.i, 1048575
  %add16.i.i.i.i = or i32 %and15.i.i.i.i, -18874368
  %148 = inttoptr i32 %add16.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 %conv11.i.i.i) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %149 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hostdata, align 4
  %add21.i.i.i.i = add i32 %150, 165
  %and22.i.i.i.i = and i32 %add21.i.i.i.i, 1048575
  %add23.i.i.i.i = or i32 %and22.i.i.i.i, -18874368
  %151 = inttoptr i32 %add23.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 64) #7, !srcloc !87
  br label %for.body.i6.i.i.i.i

for.body.i6.i.i.i.i:                              ; preds = %while.end.i13.i.i.i.i.for.body.i6.i.i.i.i_crit_edge, %do.body11.i.i.i.i
  %i.07.i1.i.i.i.i = phi i32 [ 0, %do.body11.i.i.i.i ], [ %inc.i11.i.i.i.i, %while.end.i13.i.i.i.i.for.body.i6.i.i.i.i_crit_edge ]
  %152 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %hostdata, align 4
  %add.i2.i.i.i.i = add i32 %153, 165
  %and.i3.i.i.i.i = and i32 %add.i2.i.i.i.i, 1048575
  %add1.i4.i.i.i.i = or i32 %and.i3.i.i.i.i, -18874368
  %154 = inttoptr i32 %add1.i4.i.i.i.i to ptr
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %154) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %156 = and i8 %155, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i5.i.i.i.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i5.i.i.i.i, label %do.body31.i.i.i.i, label %for.body.i6.i.i.i.i.while.body.i10.i.i.i.i_crit_edge

for.body.i6.i.i.i.i.while.body.i10.i.i.i.i_crit_edge: ; preds = %for.body.i6.i.i.i.i
  br label %while.body.i10.i.i.i.i

while.body.i10.i.i.i.i:                           ; preds = %while.body.i10.i.i.i.i.while.body.i10.i.i.i.i_crit_edge, %for.body.i6.i.i.i.i.while.body.i10.i.i.i.i_crit_edge
  %__ms.06.i7.i.i.i.i = phi i32 [ %dec.i8.i.i.i.i, %while.body.i10.i.i.i.i.while.body.i10.i.i.i.i_crit_edge ], [ 100, %for.body.i6.i.i.i.i.while.body.i10.i.i.i.i_crit_edge ]
  %dec.i8.i.i.i.i = add nsw i32 %__ms.06.i7.i.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #7
  %tobool4.not.i9.i.i.i.i = icmp eq i32 %dec.i8.i.i.i.i, 0
  br i1 %tobool4.not.i9.i.i.i.i, label %while.end.i13.i.i.i.i, label %while.body.i10.i.i.i.i.while.body.i10.i.i.i.i_crit_edge

while.body.i10.i.i.i.i.while.body.i10.i.i.i.i_crit_edge: ; preds = %while.body.i10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i10.i.i.i.i

while.end.i13.i.i.i.i:                            ; preds = %while.body.i10.i.i.i.i
  %inc.i11.i.i.i.i = add nuw nsw i32 %i.07.i1.i.i.i.i, 1
  %exitcond.not.i12.i.i.i.i = icmp eq i32 %inc.i11.i.i.i.i, 10
  br i1 %exitcond.not.i12.i.i.i.i, label %while.end.i13.i.i.i.i.for.inc12.i.i.i_crit_edge, label %while.end.i13.i.i.i.i.for.body.i6.i.i.i.i_crit_edge

while.end.i13.i.i.i.i.for.body.i6.i.i.i.i_crit_edge: ; preds = %while.end.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i6.i.i.i.i

while.end.i13.i.i.i.i.for.inc12.i.i.i_crit_edge:  ; preds = %while.end.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

do.body31.i.i.i.i:                                ; preds = %for.body.i6.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %158 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %hostdata, align 4
  %add34.i.i.i.i = add i32 %159, 164
  %and35.i.i.i.i = and i32 %add34.i.i.i.i, 1048575
  %add36.i.i.i.i = or i32 %and35.i.i.i.i, -18874368
  %160 = inttoptr i32 %add36.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 %131) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %161 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %hostdata, align 4
  %add41.i.i.i.i = add i32 %162, 165
  %and42.i.i.i.i = and i32 %add41.i.i.i.i, 1048575
  %add43.i.i.i.i = or i32 %and42.i.i.i.i, -18874368
  %163 = inttoptr i32 %add43.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 64) #7, !srcloc !87
  br label %for.body.i21.i.i.i.i

for.body.i21.i.i.i.i:                             ; preds = %while.end.i28.i.i.i.i.for.body.i21.i.i.i.i_crit_edge, %do.body31.i.i.i.i
  %i.07.i16.i.i.i.i = phi i32 [ 0, %do.body31.i.i.i.i ], [ %inc.i26.i.i.i.i, %while.end.i28.i.i.i.i.for.body.i21.i.i.i.i_crit_edge ]
  %164 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hostdata, align 4
  %add.i17.i.i.i.i = add i32 %165, 165
  %and.i18.i.i.i.i = and i32 %add.i17.i.i.i.i, 1048575
  %add1.i19.i.i.i.i = or i32 %and.i18.i.i.i.i, -18874368
  %166 = inttoptr i32 %add1.i19.i.i.i.i to ptr
  %167 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %166) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %168 = and i8 %167, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i20.i.i.i.i = icmp eq i8 %168, 0
  br i1 %tobool.not.i20.i.i.i.i, label %for.body.i21.i.i.i.i.for.inc12.i.i.i_crit_edge, label %for.body.i21.i.i.i.i.while.body.i25.i.i.i.i_crit_edge

for.body.i21.i.i.i.i.while.body.i25.i.i.i.i_crit_edge: ; preds = %for.body.i21.i.i.i.i
  br label %while.body.i25.i.i.i.i

for.body.i21.i.i.i.i.for.inc12.i.i.i_crit_edge:   ; preds = %for.body.i21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

while.body.i25.i.i.i.i:                           ; preds = %while.body.i25.i.i.i.i.while.body.i25.i.i.i.i_crit_edge, %for.body.i21.i.i.i.i.while.body.i25.i.i.i.i_crit_edge
  %__ms.06.i22.i.i.i.i = phi i32 [ %dec.i23.i.i.i.i, %while.body.i25.i.i.i.i.while.body.i25.i.i.i.i_crit_edge ], [ 100, %for.body.i21.i.i.i.i.while.body.i25.i.i.i.i_crit_edge ]
  %dec.i23.i.i.i.i = add nsw i32 %__ms.06.i22.i.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748000) #7
  %tobool4.not.i24.i.i.i.i = icmp eq i32 %dec.i23.i.i.i.i, 0
  br i1 %tobool4.not.i24.i.i.i.i, label %while.end.i28.i.i.i.i, label %while.body.i25.i.i.i.i.while.body.i25.i.i.i.i_crit_edge

while.body.i25.i.i.i.i.while.body.i25.i.i.i.i_crit_edge: ; preds = %while.body.i25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i25.i.i.i.i

while.end.i28.i.i.i.i:                            ; preds = %while.body.i25.i.i.i.i
  %inc.i26.i.i.i.i = add nuw nsw i32 %i.07.i16.i.i.i.i, 1
  %exitcond.not.i27.i.i.i.i = icmp eq i32 %inc.i26.i.i.i.i, 10
  br i1 %exitcond.not.i27.i.i.i.i, label %while.end.i28.i.i.i.i.for.inc12.i.i.i_crit_edge, label %while.end.i28.i.i.i.i.for.body.i21.i.i.i.i_crit_edge

while.end.i28.i.i.i.i.for.body.i21.i.i.i.i_crit_edge: ; preds = %while.end.i28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i21.i.i.i.i

while.end.i28.i.i.i.i.for.inc12.i.i.i_crit_edge:  ; preds = %while.end.i28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.i.i.i

for.inc12.i.i.i:                                  ; preds = %while.end.i28.i.i.i.i.for.inc12.i.i.i_crit_edge, %for.body.i21.i.i.i.i.for.inc12.i.i.i_crit_edge, %while.end.i13.i.i.i.i.for.inc12.i.i.i_crit_edge, %while.end.i.i.i.i.i.for.inc12.i.i.i_crit_edge, %for.body6.i.i.i.for.inc12.i.i.i_crit_edge
  %inc13.i.i.i = add nuw nsw i32 %i.132.i.i.i, 1
  %incdec.ptr14.i.i.i = getelementptr i8, ptr %np.134.i.i.i, i32 1
  %incdec.ptr15.i.i.i = getelementptr i8, ptr %np1.035.i.i.i, i32 1
  %exitcond.not.i.i130.i = icmp eq i32 %inc13.i.i.i, 64
  br i1 %exitcond.not.i.i130.i, label %se2_update_all.exit.i.i, label %for.inc12.i.i.i.for.body6.i.i.i_crit_edge

for.inc12.i.i.i.for.body6.i.i.i_crit_edge:        ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i.i.i

se2_update_all.exit.i.i:                          ; preds = %for.inc12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = tail call fastcc i32 @se2_rd_all(ptr noundef %hostdata) #7
  br label %read_eeprom.exit.i

read_eeprom.exit.i:                               ; preds = %se2_update_all.exit.i.i, %if.end72.i.read_eeprom.exit.i_crit_edge
  %170 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 10), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %170)
  %cmp75.not.i = icmp eq i8 %170, 1
  br i1 %cmp75.not.i, label %if.end78.i, label %read_eeprom.exit.i.do.end56_crit_edge

read_eeprom.exit.i.do.end56_crit_edge:            ; preds = %read_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.end78.i:                                       ; preds = %read_eeprom.exit.i
  %171 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 15), align 1
  %scsi_id79.i = getelementptr inbounds %struct.orc_host, ptr %hostdata, i32 0, i32 2
  %172 = ptrtoint ptr %scsi_id79.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %scsi_id79.i, align 1
  %173 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 12), align 1
  %174 = ptrtoint ptr %BIOScfg to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %BIOScfg, align 2
  %max_targets.i = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 1, i32 1
  %175 = ptrtoint ptr %max_targets.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 16, ptr %max_targets.i, align 4
  %176 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 20), align 1
  %arrayidx.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx.i, align 1
  %arrayidx84.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %178 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 64, ptr %arrayidx84.i, align 1
  %179 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 21), align 1
  %arrayidx.1.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 1
  %180 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx.1.i, align 1
  %arrayidx84.1.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 1
  %181 = ptrtoint ptr %arrayidx84.1.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 64, ptr %arrayidx84.1.i, align 1
  %182 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 22), align 1
  %arrayidx.2.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 2
  %183 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx.2.i, align 1
  %arrayidx84.2.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 2
  %184 = ptrtoint ptr %arrayidx84.2.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 64, ptr %arrayidx84.2.i, align 1
  %185 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 23), align 1
  %arrayidx.3.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 3
  %186 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx.3.i, align 1
  %arrayidx84.3.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 3
  %187 = ptrtoint ptr %arrayidx84.3.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 64, ptr %arrayidx84.3.i, align 1
  %188 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 24), align 1
  %arrayidx.4.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 2
  %189 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx.4.i, align 1
  %arrayidx84.4.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %190 = ptrtoint ptr %arrayidx84.4.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 64, ptr %arrayidx84.4.i, align 1
  %191 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 25), align 1
  %arrayidx.5.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 5
  %192 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx.5.i, align 1
  %arrayidx84.5.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 5
  %193 = ptrtoint ptr %arrayidx84.5.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 64, ptr %arrayidx84.5.i, align 1
  %194 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 26), align 1
  %arrayidx.6.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 6
  %195 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx.6.i, align 1
  %arrayidx84.6.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 6
  %196 = ptrtoint ptr %arrayidx84.6.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 64, ptr %arrayidx84.6.i, align 1
  %197 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 27), align 1
  %arrayidx.7.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 7
  %198 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx.7.i, align 1
  %arrayidx84.7.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 7
  %199 = ptrtoint ptr %arrayidx84.7.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 64, ptr %arrayidx84.7.i, align 1
  %200 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 28), align 1
  %arrayidx.8.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 3
  %201 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %arrayidx.8.i, align 1
  %arrayidx84.8.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %202 = ptrtoint ptr %arrayidx84.8.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 64, ptr %arrayidx84.8.i, align 1
  %203 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 29), align 1
  %arrayidx.9.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 9
  %204 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %arrayidx.9.i, align 1
  %arrayidx84.9.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 9
  %205 = ptrtoint ptr %arrayidx84.9.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 64, ptr %arrayidx84.9.i, align 1
  %206 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 30), align 1
  %arrayidx.10.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 10
  %207 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %arrayidx.10.i, align 1
  %arrayidx84.10.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 10
  %208 = ptrtoint ptr %arrayidx84.10.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 64, ptr %arrayidx84.10.i, align 1
  %209 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 31), align 1
  %arrayidx.11.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 11
  %210 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx.11.i, align 1
  %arrayidx84.11.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 11
  %211 = ptrtoint ptr %arrayidx84.11.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 64, ptr %arrayidx84.11.i, align 1
  %212 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 32), align 1
  %arrayidx.12.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4
  %213 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx.12.i, align 1
  %arrayidx84.12.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  %214 = ptrtoint ptr %arrayidx84.12.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 64, ptr %arrayidx84.12.i, align 1
  %215 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 33), align 1
  %arrayidx.13.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 13
  %216 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx.13.i, align 1
  %arrayidx84.13.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 4
  %217 = ptrtoint ptr %arrayidx84.13.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 64, ptr %arrayidx84.13.i, align 1
  %218 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 34), align 1
  %arrayidx.14.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 14
  %219 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %arrayidx.14.i, align 1
  %arrayidx84.14.i = getelementptr %struct.Scsi_Host, ptr %call19, i32 1, i32 3, i32 0, i32 0, i32 4, i32 5
  %220 = ptrtoint ptr %arrayidx84.14.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 64, ptr %arrayidx84.14.i, align 1
  %221 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 35), align 1
  %arrayidx.15.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 10, i32 15
  %222 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx.15.i, align 1
  %arrayidx84.15.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 11, i32 15
  %223 = ptrtoint ptr %arrayidx84.15.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 64, ptr %arrayidx84.15.i, align 1
  %224 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 16), align 1
  %225 = and i8 %224, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool87.not.i = icmp eq i8 %225, 0
  br i1 %tobool87.not.i, label %if.end78.i.if.end59_crit_edge, label %if.then88.i

if.end78.i.if.end59_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then88.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.orc_host, ptr %hostdata, i32 0, i32 4
  %226 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %flags.i, align 1
  %228 = or i8 %227, 1
  store i8 %228, ptr %flags.i, align 1
  br label %if.end59

do.end56:                                         ; preds = %read_eeprom.exit.i.do.end56_crit_edge, %if.end56.i.do.end56_crit_edge, %do.body43.i.do.end56_crit_edge, %if.end.i.do.end56_crit_edge, %do.body13.i.do.end56_crit_edge
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %out_free_escb_array

if.end59:                                         ; preds = %if.then88.i, %if.end78.i.if.end59_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %229 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %hostdata, align 4
  %add96.i = add i32 %230, 161
  %and97.i = and i32 %add96.i, 1048575
  %add98.i = or i32 %and97.i, -18874368
  %231 = inttoptr i32 %add98.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 -5) #7, !srcloc !87
  %232 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %hostdata, align 4
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 44
  %234 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 45
  %235 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 -1, ptr %n_io_port, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 26
  %236 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 245, ptr %can_queue, align 4
  %unique_id = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 23
  %237 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %233, ptr %unique_id, align 8
  %238 = ptrtoint ptr %max_targets.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %max_targets.i, align 4
  %conv62 = zext i8 %239 to i32
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 21
  %240 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv62, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 22
  %241 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 16, ptr %max_lun, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %242 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %irq, align 4
  %irq63 = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 47
  %244 = ptrtoint ptr %irq63 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %irq63, align 8
  %245 = ptrtoint ptr %scsi_id79.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %scsi_id79.i, align 1
  %conv64 = zext i8 %246 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 25
  %247 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %conv64, ptr %this_id, align 8
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call19, i32 0, i32 28
  %248 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 32, ptr %sg_tablesize, align 2
  %249 = load i32, ptr %irq, align 4
  %call.i151 = tail call i32 @request_threaded_irq(i32 noundef %249, ptr noundef nonnull @inia100_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %call19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp = icmp slt i32 %call.i151, 0
  br i1 %cmp, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %250 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %irq, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %251) #10
  br label %out_free_escb_array

if.end75:                                         ; preds = %if.end59
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %252 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call19, ptr %driver_data.i.i, align 4
  %call.i152 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call19, ptr noundef %dev, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool78.not = icmp eq i32 %call.i152, 0
  br i1 %tobool78.not, label %if.end80, label %out_free_irq

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scsi_scan_host(ptr noundef %call19) #7
  br label %cleanup

out_free_irq:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %irq63 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %irq63, align 8
  %call82 = tail call ptr @free_irq(i32 noundef %254, ptr noundef %call19) #7
  br label %out_free_escb_array

out_free_escb_array:                              ; preds = %out_free_irq, %do.end71, %do.end56
  %error.0 = phi i32 [ -19, %do.end56 ], [ %call.i151, %do.end71 ], [ %call.i152, %out_free_irq ]
  %255 = ptrtoint ptr %escb_virt to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %escb_virt, align 4
  %257 = ptrtoint ptr %escb_phys to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %escb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 63700, ptr noundef %256, i32 noundef %258, i32 noundef 0) #7
  br label %out_free_scb_array

out_free_scb_array:                               ; preds = %out_free_escb_array, %do.end47
  %error.1 = phi i32 [ %error.0, %out_free_escb_array ], [ -19, %do.end47 ]
  %259 = ptrtoint ptr %scb_virt to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %scb_virt, align 4
  %261 = ptrtoint ptr %scb_phys to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %scb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 15680, ptr noundef %260, i32 noundef %262, i32 noundef 0) #7
  br label %out_host_put

out_host_put:                                     ; preds = %out_free_scb_array, %do.end36
  %error.2 = phi i32 [ %error.1, %out_free_scb_array ], [ -19, %do.end36 ]
  tail call void @scsi_host_put(ptr noundef %call19) #7
  br label %out_release_region

out_release_region:                               ; preds = %out_host_put, %if.end14.out_release_region_crit_edge
  %error.3 = phi i32 [ %error.2, %out_host_put ], [ -19, %if.end14.out_release_region_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 256) #7
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_region, %do.end11, %do.end
  %error.4 = phi i32 [ -19, %do.end ], [ %error.3, %out_release_region ], [ -19, %do.end11 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -19, %entry.cleanup_crit_edge ], [ %error.4, %out_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inia100_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @scsi_remove_host(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %escb_virt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %4 = ptrtoint ptr %escb_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %escb_virt, align 4
  %escb_phys = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 3
  %6 = ptrtoint ptr %escb_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %escb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 63700, ptr noundef %5, i32 noundef %7, i32 noundef 0) #7
  %scb_virt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %scb_virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scb_virt, align 4
  %scb_phys = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2
  %10 = ptrtoint ptr %scb_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scb_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 15680, ptr noundef %9, i32 noundef %11, i32 noundef 0) #7
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %13, i32 noundef 256) #7
  tail call void @scsi_host_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_intr(i32 noundef %irqno, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %devid, i32 0, i32 53
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %devid, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostdata, align 4
  %add.i = add i32 %3, 171
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.orc_interrupt.exit_crit_edge, label %do.body.preheader.i

entry.orc_interrupt.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %orc_interrupt.exit

do.body.preheader.i:                              ; preds = %entry
  %scb_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %devid, i32 1, i32 1, i32 1
  %allocation_lock.i51.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %devid, i32 1, i32 5, i32 3
  %index5.i53.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %devid, i32 1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %inia100_scb_handler.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hostdata, align 4
  %add6.i = add i32 %7, 170
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %10 = ptrtoint ptr %scb_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scb_virt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %conv12.i = zext i8 %9 to i32
  %mul.i = shl nuw nsw i32 %conv12.i, 6
  %add13.i = add i32 %mul.i, %12
  %13 = inttoptr i32 %add13.i to ptr
  %status.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %status.i, align 2
  %escb1.i.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 21
  %15 = ptrtoint ptr %escb1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %escb1.i.i, align 4
  %srb.i.i = getelementptr inbounds %struct.orc_extended_scb, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srb.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %inia100_scb_handler.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %19 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %srb.i.i, align 4
  %hastat.i.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 10
  %20 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hastat.i.i, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.end13.i.i [
    i8 0, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i8 10, label %if.end.i.i.sw.epilog.i.i_crit_edge9
    i8 11, label %if.end.i.i.sw.epilog.i.i_crit_edge10
    i8 17, label %sw.bb4.i.i
    i8 20, label %sw.bb6.i.i
    i8 26, label %sw.bb8.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge10:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.end.i.i.sw.epilog.i.i_crit_edge9:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %21 to i32
  %tastat.i.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 11
  %23 = ptrtoint ptr %tastat.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tastat.i.i, align 1
  %conv17.i.i = zext i8 %24 to i32
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv.i.i, i32 noundef %conv17.i.i) #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end13.i.i, %sw.bb8.i.i, %sw.bb6.i.i, %sw.bb4.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge, %if.end.i.i.sw.epilog.i.i_crit_edge9, %if.end.i.i.sw.epilog.i.i_crit_edge10
  %.sink.i.i = phi i8 [ 7, %do.end13.i.i ], [ 5, %sw.bb8.i.i ], [ 8, %sw.bb6.i.i ], [ 3, %sw.bb4.i.i ], [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge9 ], [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge10 ]
  %25 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink.i.i, ptr %hastat.i.i, align 4
  %tastat20.i.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 11
  %26 = ptrtoint ptr %tastat20.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tastat20.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp22.i.i = icmp eq i8 %27, 2
  br i1 %cmp22.i.i, label %if.then24.i.i, label %sw.epilog.i.i.if.end26.i.i_crit_edge

sw.epilog.i.i.if.end26.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 21
  %28 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense_buffer.i.i, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %16, i32 14)
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %sw.epilog.i.i.if.end26.i.i_crit_edge
  %31 = ptrtoint ptr %tastat20.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tastat20.i.i, align 1
  %conv28.i.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hastat.i.i, align 4
  %conv30.i.i = zext i8 %34 to i32
  %shl.i.i = shl nuw nsw i32 %conv30.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv28.i.i
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %18, i32 0, i32 24
  %35 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i, ptr %result.i.i, align 4
  tail call void @scsi_dma_unmap(ptr noundef nonnull %18) #7
  tail call void @scsi_done(ptr noundef nonnull %18) #7
  br label %inia100_scb_handler.exit.i

inia100_scb_handler.exit.i:                       ; preds = %if.end26.i.i, %do.end.i.i
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i51.i.i) #7
  %36 = ptrtoint ptr %index5.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %index5.i53.i.i, align 4
  %scbidx.i.i.i = getelementptr inbounds %struct.orc_scb, ptr %13, i32 0, i32 19
  %38 = ptrtoint ptr %scbidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %scbidx.i.i.i, align 1
  %div19.i.i.i = lshr i8 %39, 5
  %40 = and i8 %39, 31
  %conv10.i.i.i = zext i8 %40 to i32
  %shl.i.i.i = shl nuw i32 1, %conv10.i.i.i
  %idxprom.i.i.i = zext i8 %37 to i32
  %idxprom11.i.i.i = zext i8 %div19.i.i.i to i32
  %arrayidx12.i.i.i = getelementptr %struct.orc_host, ptr %hostdata, i32 0, i32 12, i32 %idxprom.i.i.i, i32 %idxprom11.i.i.i
  %41 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx12.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %42
  store i32 %or.i.i.i, ptr %arrayidx12.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i51.i.i, i32 noundef %call2.i.i.i) #7
  %43 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hostdata, align 4
  %add16.i = add i32 %44, 171
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %45 = inttoptr i32 %add18.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %inia100_scb_handler.exit.i.orc_interrupt.exit_crit_edge, label %inia100_scb_handler.exit.i.do.body.i_crit_edge

inia100_scb_handler.exit.i.do.body.i_crit_edge:   ; preds = %inia100_scb_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

inia100_scb_handler.exit.i.orc_interrupt.exit_crit_edge: ; preds = %inia100_scb_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orc_interrupt.exit

orc_interrupt.exit:                               ; preds = %inia100_scb_handler.exit.i.orc_interrupt.exit_crit_edge, %entry.orc_interrupt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.orc_interrupt.exit_crit_edge ], [ 1, %inia100_scb_handler.exit.i.orc_interrupt.exit_crit_edge ]
  %47 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %call2) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %allocation_lock.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i.i) #7
  %call5.i.i = tail call fastcc ptr @__orc_alloc_scb(ptr noundef %hostdata.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i.i, i32 noundef %call2.i.i) #7
  %cmp.i = icmp eq ptr %call5.i.i, null
  br i1 %cmp.i, label %entry.inia100_queue_lck.exit_crit_edge, label %if.end.i

entry.inia100_queue_lck.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_queue_lck.exit

if.end.i:                                         ; preds = %entry
  %escb1.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 21
  %6 = ptrtoint ptr %escb1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %escb1.i.i, align 4
  %srb.i.i = getelementptr inbounds %struct.orc_extended_scb, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd, ptr %srb.i.i, align 4
  %9 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call5.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flags.i.i, align 1
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i.i, align 8
  %conv.i.i = trunc i32 %14 to i8
  %target.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i.i, ptr %target.i.i, align 2
  %16 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun.i.i, align 8
  %conv3.i.i = trunc i64 %18 to i8
  %lun4.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %lun4.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i.i, ptr %lun4.i.i, align 1
  %reserved0.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %reserved0.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reserved0.i.i, align 4
  %reserved1.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %reserved1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %reserved1.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sg_len.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i.i.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %xferlen.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %xferlen.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xferlen.i.i, align 4
  %call5.i12.i = tail call i32 @scsi_dma_map(ptr noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i12.i)
  %cmp.i.i = icmp slt i32 %call5.i12.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.i12.i)
  %cmp7.i.i = icmp ugt i32 %call5.i12.i, 32
  br i1 %cmp7.i.i, label %do.body11.i.i, label %do.end17.i.i, !prof !110

do.body11.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/a100u2w.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 869, 0\0A.popsection", ""() #7, !srcloc !111
  unreachable

do.end17.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i12.i)
  %tobool18.not.i.i = icmp eq i32 %call5.i12.i, 0
  br i1 %tobool18.not.i.i, label %if.else.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %do.end17.i.i
  %mul.i.i = shl nuw nsw i32 %call5.i12.i, 3
  %27 = tail call i32 @llvm.bswap.i32(i32 %mul.i.i) #7
  %28 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sg_len.i.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %29 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %sg.05.i.i = phi ptr [ %call24.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %30, %for.body.preheader.i.i ]
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sgent.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %7, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.05.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_address.i.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %34 = ptrtoint ptr %sgent.03.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sgent.03.i.i, align 4
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.05.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_length.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %length.i.i = getelementptr inbounds %struct.orc_sgent, ptr %sgent.03.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %length.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.orc_sgent, ptr %sgent.03.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %call24.i.i = tail call ptr @sg_next(ptr noundef %sg.05.i.i) #7
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call5.i12.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end28.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.if.end28.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sg_len.i.i, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %7, align 4
  %length27.i.i = getelementptr inbounds %struct.orc_sgent, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %length27.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %length27.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else.i.i, %for.body.i.i.if.end28.i.i_crit_edge
  %sense_addr.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 20
  %42 = ptrtoint ptr %sense_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sense_addr.i.i, align 4
  %sg_addr.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %sg_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sg_addr.i.i, align 4
  %hastat.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %hastat.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %hastat.i.i, align 4
  %tastat.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %tastat.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %tastat.i.i, align 1
  %link.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %link.i.i, align 1
  %sense_len.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 14
  %48 = ptrtoint ptr %sense_len.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 14, ptr %sense_len.i.i, align 4
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %49 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cmd_len.i.i, align 4
  %conv29.i.i = trunc i16 %50 to i8
  %cdb_len.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 15
  %51 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv29.i.i, ptr %cdb_len.i.i, align 1
  %conv29.mask.i.i = and i16 %50, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %conv29.mask.i.i)
  %cmp32.i.i = icmp ugt i16 %conv29.mask.i.i, 14
  br i1 %cmp32.i.i, label %do.end37.i.i, label %if.end28.i.i.if.end4.i_crit_edge

if.end28.i.i.if.end4.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end37.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cmd_len.i.i, align 4
  %conv39.i.i = zext i16 %53 to i32
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv39.i.i) #10
  %54 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 15, ptr %cdb_len.i.i, align 1
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i.i) #7
  %index5.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %index5.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %index5.i.i, align 4
  %scbidx.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %scbidx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %scbidx.i.i, align 1
  %div19.i.i = lshr i8 %58, 5
  %59 = and i8 %58, 31
  %conv10.i.i = zext i8 %59 to i32
  %shl.i.i = shl nuw i32 1, %conv10.i.i
  %idxprom.i.i = zext i8 %56 to i32
  %idxprom11.i.i = zext i8 %div19.i.i to i32
  %arrayidx12.i.i = getelementptr %struct.orc_host, ptr %hostdata.i, i32 0, i32 12, i32 %idxprom.i.i, i32 %idxprom11.i.i
  %60 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx12.i.i, align 4
  %or.i15.i = or i32 %shl.i.i, %61
  store i32 %or.i15.i, ptr %arrayidx12.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i.i, i32 noundef %call2.i14.i) #7
  br label %inia100_queue_lck.exit

if.end4.i:                                        ; preds = %do.end37.i.i, %if.end28.i.i.if.end4.i_crit_edge
  %62 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device.i, align 4
  %lun44.i.i = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %lun44.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %lun44.i.i, align 8
  %conv45.i.i = trunc i64 %65 to i8
  %or.i.i = or i8 %conv45.i.i, -64
  %ident.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %ident.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %or.i.i, ptr %ident.i.i, align 2
  %67 = load ptr, ptr %device.i, align 4
  %tagged_supported.i.i = getelementptr inbounds %struct.scsi_device, ptr %67, i32 0, i32 41
  %68 = ptrtoint ptr %tagged_supported.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %bf.load.i.i = load i64, ptr %tagged_supported.i.i, align 4
  %69 = lshr i64 %bf.load.i.i, 47
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 32
  %72 = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 17
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %71, ptr %72, align 1
  %cdb.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 18
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %74 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmnd.i.i, align 4
  %76 = ptrtoint ptr %cdb_len.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cdb_len.i.i, align 1
  %conv55.i.i = zext i8 %77 to i32
  %78 = call ptr @memcpy(ptr %cdb.i.i, ptr %75, i32 %conv55.i.i)
  %status.i.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 12
  %79 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %status.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %scbidx.i16.i = getelementptr inbounds %struct.orc_scb, ptr %call5.i.i, i32 0, i32 19
  %80 = ptrtoint ptr %scbidx.i16.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %scbidx.i16.i, align 1
  %82 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hostdata.i, align 4
  %add.i.i = add i32 %83, 168
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %84 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %81) #7, !srcloc !87
  br label %inia100_queue_lck.exit

inia100_queue_lck.exit:                           ; preds = %if.end4.i, %if.then3.i, %entry.inia100_queue_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 4181, %if.then3.i ], [ 0, %if.end4.i ], [ 4181, %entry.inia100_queue_lck.exit_crit_edge ]
  %85 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %86, i32 noundef %call2) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_abort(ptr noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %allocation_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i) #7
  %scb_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %scb_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scb_virt.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.047.i = phi i8 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %scb.045.i = phi ptr [ %5, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.orc_scb, ptr %scb.045.i, i32 0, i32 12
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %escb8.i = getelementptr inbounds %struct.orc_scb, ptr %scb.045.i, i32 0, i32 21
  %8 = ptrtoint ptr %escb8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %escb8.i, align 4
  %srb.i = getelementptr inbounds %struct.orc_extended_scb, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srb.i, align 4
  %cmp10.i = icmp eq ptr %11, %cmd
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %srb.i.le = getelementptr inbounds %struct.orc_extended_scb, ptr %9, i32 0, i32 1
  %tag_msg.i = getelementptr inbounds %struct.orc_scb, ptr %scb.045.i, i32 0, i32 17
  %12 = ptrtoint ptr %tag_msg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tag_msg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13.i = icmp eq i8 %13, 0
  br i1 %cmp13.i, label %if.then.i.inia100_abort_cmd.exit_crit_edge, label %if.else.i

if.then.i.inia100_abort_cmd.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

if.else.i:                                        ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hostdata, align 4
  %add.i.i = add i32 %15, 164
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %16 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 6) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hostdata, align 4
  %add6.i.i = add i32 %18, 165
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %19 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 64) #7, !srcloc !87
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %while.end.i.i.i.for.body.i.i.i_crit_edge, %if.else.i
  %i.07.i.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i.i, %while.end.i.i.i.for.body.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hostdata, align 4
  %add.i.i.i = add i32 %21, 165
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %22 = inttoptr i32 %add1.i.i.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i.i, label %do.body12.i.i, label %for.body.i.i.i.while.body.i.i.i_crit_edge

for.body.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %for.body.i.i.i.while.body.i.i.i_crit_edge
  %__ms.06.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 100, %for.body.i.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %__ms.06.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  %tobool4.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %while.end.i.i.i.inia100_abort_cmd.exit_crit_edge, label %while.end.i.i.i.for.body.i.i.i_crit_edge

while.end.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

while.end.i.i.i.inia100_abort_cmd.exit_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

do.body12.i.i:                                    ; preds = %for.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %scbidx.i.i = getelementptr inbounds %struct.orc_scb, ptr %scb.045.i, i32 0, i32 19
  %26 = ptrtoint ptr %scbidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %scbidx.i.i, align 1
  %28 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hostdata, align 4
  %add16.i.i = add i32 %29, 164
  %and17.i.i = and i32 %add16.i.i, 1048575
  %add18.i.i = or i32 %and17.i.i, -18874368
  %30 = inttoptr i32 %add18.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hostdata, align 4
  %add24.i.i = add i32 %32, 165
  %and25.i.i = and i32 %add24.i.i, 1048575
  %add26.i.i = or i32 %and25.i.i, -18874368
  %33 = inttoptr i32 %add26.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 64) #7, !srcloc !87
  br label %for.body.i73.i.i

for.body.i73.i.i:                                 ; preds = %while.end.i80.i.i.for.body.i73.i.i_crit_edge, %do.body12.i.i
  %i.07.i68.i.i = phi i32 [ 0, %do.body12.i.i ], [ %inc.i78.i.i, %while.end.i80.i.i.for.body.i73.i.i_crit_edge ]
  %34 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hostdata, align 4
  %add.i69.i.i = add i32 %35, 165
  %and.i70.i.i = and i32 %add.i69.i.i, 1048575
  %add1.i71.i.i = or i32 %and.i70.i.i, -18874368
  %36 = inttoptr i32 %add1.i71.i.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %38 = and i8 %37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i72.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i72.i.i, label %for.body.i73.i.i.for.body.i88.i.i_crit_edge, label %for.body.i73.i.i.while.body.i77.i.i_crit_edge

for.body.i73.i.i.while.body.i77.i.i_crit_edge:    ; preds = %for.body.i73.i.i
  br label %while.body.i77.i.i

for.body.i73.i.i.for.body.i88.i.i_crit_edge:      ; preds = %for.body.i73.i.i
  br label %for.body.i88.i.i

while.body.i77.i.i:                               ; preds = %while.body.i77.i.i.while.body.i77.i.i_crit_edge, %for.body.i73.i.i.while.body.i77.i.i_crit_edge
  %__ms.06.i74.i.i = phi i32 [ %dec.i75.i.i, %while.body.i77.i.i.while.body.i77.i.i_crit_edge ], [ 100, %for.body.i73.i.i.while.body.i77.i.i_crit_edge ]
  %dec.i75.i.i = add nsw i32 %__ms.06.i74.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  %tobool4.not.i76.i.i = icmp eq i32 %dec.i75.i.i, 0
  br i1 %tobool4.not.i76.i.i, label %while.end.i80.i.i, label %while.body.i77.i.i.while.body.i77.i.i_crit_edge

while.body.i77.i.i.while.body.i77.i.i_crit_edge:  ; preds = %while.body.i77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i77.i.i

while.end.i80.i.i:                                ; preds = %while.body.i77.i.i
  %inc.i78.i.i = add nuw nsw i32 %i.07.i68.i.i, 1
  %exitcond.not.i79.i.i = icmp eq i32 %inc.i78.i.i, 10
  br i1 %exitcond.not.i79.i.i, label %while.end.i80.i.i.inia100_abort_cmd.exit_crit_edge, label %while.end.i80.i.i.for.body.i73.i.i_crit_edge

while.end.i80.i.i.for.body.i73.i.i_crit_edge:     ; preds = %while.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73.i.i

while.end.i80.i.i.inia100_abort_cmd.exit_crit_edge: ; preds = %while.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

for.body.i88.i.i:                                 ; preds = %while.end.i95.i.i.for.body.i88.i.i_crit_edge, %for.body.i73.i.i.for.body.i88.i.i_crit_edge
  %i.07.i83.i.i = phi i32 [ %inc.i93.i.i, %while.end.i95.i.i.for.body.i88.i.i_crit_edge ], [ 0, %for.body.i73.i.i.for.body.i88.i.i_crit_edge ]
  %40 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hostdata, align 4
  %add.i84.i.i = add i32 %41, 166
  %and.i85.i.i = and i32 %add.i84.i.i, 1048575
  %add1.i86.i.i = or i32 %and.i85.i.i, -18874368
  %42 = inttoptr i32 %add1.i86.i.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i87.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i87.i.i, label %for.body.i88.i.i.while.body.i92.i.i_crit_edge, label %orchid_abort_scb.exit.i

for.body.i88.i.i.while.body.i92.i.i_crit_edge:    ; preds = %for.body.i88.i.i
  br label %while.body.i92.i.i

while.body.i92.i.i:                               ; preds = %while.body.i92.i.i.while.body.i92.i.i_crit_edge, %for.body.i88.i.i.while.body.i92.i.i_crit_edge
  %__ms.06.i89.i.i = phi i32 [ %dec.i90.i.i, %while.body.i92.i.i.while.body.i92.i.i_crit_edge ], [ 100, %for.body.i88.i.i.while.body.i92.i.i_crit_edge ]
  %dec.i90.i.i = add nsw i32 %__ms.06.i89.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  %tobool4.not.i91.i.i = icmp eq i32 %dec.i90.i.i, 0
  br i1 %tobool4.not.i91.i.i, label %while.end.i95.i.i, label %while.body.i92.i.i.while.body.i92.i.i_crit_edge

while.body.i92.i.i.while.body.i92.i.i_crit_edge:  ; preds = %while.body.i92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i92.i.i

while.end.i95.i.i:                                ; preds = %while.body.i92.i.i
  %inc.i93.i.i = add nuw nsw i32 %i.07.i83.i.i, 1
  %exitcond.not.i94.i.i = icmp eq i32 %inc.i93.i.i, 10
  br i1 %exitcond.not.i94.i.i, label %while.end.i95.i.i.inia100_abort_cmd.exit_crit_edge, label %while.end.i95.i.i.for.body.i88.i.i_crit_edge

while.end.i95.i.i.for.body.i88.i.i_crit_edge:     ; preds = %while.end.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i88.i.i

while.end.i95.i.i.inia100_abort_cmd.exit_crit_edge: ; preds = %while.end.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

orchid_abort_scb.exit.i:                          ; preds = %for.body.i88.i.i
  %46 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hostdata, align 4
  %add41.i.i = add i32 %47, 164
  %and42.i.i = and i32 %add41.i.i, 1048575
  %add43.i.i = or i32 %and42.i.i, -18874368
  %48 = inttoptr i32 %add43.i.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hostdata, align 4
  %add50.i.i = add i32 %51, 166
  %and51.i.i = and i32 %add50.i.i, 1048575
  %add52.i.i = or i32 %and51.i.i, -18874368
  %52 = inttoptr i32 %add52.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %43) #7, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp55.i.not.i = icmp eq i8 %49, 1
  br i1 %cmp55.i.not.i, label %orchid_abort_scb.exit.i.inia100_abort_cmd.exit_crit_edge, label %if.then18.i

orchid_abort_scb.exit.i.inia100_abort_cmd.exit_crit_edge: ; preds = %orchid_abort_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

if.then18.i:                                      ; preds = %orchid_abort_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %srb.i.le to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %srb.i.le, align 4
  br label %inia100_abort_cmd.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i8 %i.047.i, 1
  %incdec.ptr.i = getelementptr %struct.orc_scb, ptr %scb.045.i, i32 1
  %cmp6.i = icmp ult i8 %i.047.i, -12
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.inia100_abort_cmd.exit_crit_edge

for.inc.i.inia100_abort_cmd.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inia100_abort_cmd.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

inia100_abort_cmd.exit:                           ; preds = %for.inc.i.inia100_abort_cmd.exit_crit_edge, %if.then18.i, %orchid_abort_scb.exit.i.inia100_abort_cmd.exit_crit_edge, %while.end.i95.i.i.inia100_abort_cmd.exit_crit_edge, %while.end.i80.i.i.inia100_abort_cmd.exit_crit_edge, %while.end.i.i.i.inia100_abort_cmd.exit_crit_edge, %if.then.i.inia100_abort_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ 8194, %if.then18.i ], [ 8195, %orchid_abort_scb.exit.i.inia100_abort_cmd.exit_crit_edge ], [ 8195, %if.then.i.inia100_abort_cmd.exit_crit_edge ], [ 8195, %while.end.i95.i.i.inia100_abort_cmd.exit_crit_edge ], [ 8195, %while.end.i80.i.i.inia100_abort_cmd.exit_crit_edge ], [ 8195, %while.end.i.i.i.inia100_abort_cmd.exit_crit_edge ], [ 8195, %for.inc.i.inia100_abort_cmd.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i, i32 noundef %call2.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_device_reset(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %allocation_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i) #7
  %scb_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %scb_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scb_virt.i, align 4
  %uglygep19.i.i = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %8 = call ptr @memset(ptr %uglygep19.i.i, i32 255, i32 64)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.071.i = phi i8 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %host_scb.070.i = phi ptr [ %7, %entry ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.orc_scb, ptr %host_scb.070.i, i32 0, i32 12
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %escb8.i = getelementptr inbounds %struct.orc_scb, ptr %host_scb.070.i, i32 0, i32 21
  %11 = ptrtoint ptr %escb8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %escb8.i, align 4
  %srb.i = getelementptr inbounds %struct.orc_extended_scb, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srb.i, align 4
  %cmp10.i = icmp eq ptr %14, %cmd
  br i1 %cmp10.i, label %if.end22.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.orc_scb, ptr %host_scb.070.i, i32 1
  %inc.i = add nuw i8 %i.071.i, 1
  %cmp6.i = icmp ult i8 %i.071.i, -12
  br i1 %cmp6.i, label %if.end.i.for.body.i_crit_edge, label %do.end18.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %orc_device_reset.exit

if.end22.i:                                       ; preds = %land.lhs.true.i
  %call23.i = tail call fastcc ptr @__orc_alloc_scb(ptr noundef %hostdata) #7
  %cmp24.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.i, label %if.end22.i.orc_device_reset.exit_crit_edge, label %if.end28.i

if.end22.i.orc_device_reset.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orc_device_reset.exit

if.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %srb.i.le = getelementptr inbounds %struct.orc_extended_scb, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %call23.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %call23.i, align 4
  %conv29.i = trunc i32 %5 to i8
  %target30.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 2
  %16 = ptrtoint ptr %target30.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv29.i, ptr %target30.i, align 2
  %hastat.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 10
  %17 = ptrtoint ptr %hastat.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %hastat.i, align 4
  %tastat.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 11
  %18 = ptrtoint ptr %tastat.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tastat.i, align 1
  %status31.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 12
  %link.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 13
  %19 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %link.i, align 1
  %reserved0.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %reserved0.i, i32 0, i32 16)
  %21 = ptrtoint ptr %srb.i.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %srb.i.le, align 4
  %22 = ptrtoint ptr %status31.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %status31.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %scbidx.i.i = getelementptr inbounds %struct.orc_scb, ptr %call23.i, i32 0, i32 19
  %23 = ptrtoint ptr %scbidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scbidx.i.i, align 1
  %25 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hostdata, align 4
  %add.i.i = add i32 %26, 168
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %27 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #7, !srcloc !87
  br label %orc_device_reset.exit

orc_device_reset.exit:                            ; preds = %if.end28.i, %if.end22.i.orc_device_reset.exit_crit_edge, %do.end18.i
  %retval.0.i = phi i32 [ 8195, %do.end18.i ], [ 8194, %if.end28.i ], [ 8195, %if.end22.i.orc_device_reset.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i, i32 noundef %call2.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inia100_bus_reset(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %allocation_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %allocation_lock.i) #7
  %uglygep19.i.i = getelementptr %struct.Scsi_Host, ptr %3, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6
  %4 = call ptr @memset(ptr %uglygep19.i.i, i32 255, i32 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hostdata, align 4
  %add.i = add i32 %6, 165
  %and.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -128) #7, !srcloc !87
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i.for.body.i.i_crit_edge, %entry
  %i.07.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %while.end.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hostdata, align 4
  %add.i.i = add i32 %9, 165
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %10 = inttoptr i32 %add1.i.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not.i.i = icmp sgt i8 %11, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.orc_reset_scsi_bus.exit_crit_edge, label %for.body.i.i.while.body.i.i_crit_edge

for.body.i.i.while.body.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %while.body.i.i

for.body.i.i.orc_reset_scsi_bus.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orc_reset_scsi_bus.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.i.while.body.i.i_crit_edge
  %__ms.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 100, %for.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  %tobool4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool4.not.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %while.end.i.i.orc_reset_scsi_bus.exit_crit_edge, label %while.end.i.i.for.body.i.i_crit_edge

while.end.i.i.for.body.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

while.end.i.i.orc_reset_scsi_bus.exit_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %orc_reset_scsi_bus.exit

orc_reset_scsi_bus.exit:                          ; preds = %while.end.i.i.orc_reset_scsi_bus.exit_crit_edge, %for.body.i.i.orc_reset_scsi_bus.exit_crit_edge
  %retval.0.i = phi i32 [ 8195, %while.end.i.i.orc_reset_scsi_bus.exit_crit_edge ], [ 8194, %for.body.i.i.orc_reset_scsi_bus.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %allocation_lock.i, i32 noundef %call2.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__orc_alloc_scb(ptr nocapture noundef %host) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx9 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 0
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx9, align 4
  br label %for.body7

for.cond3:                                        ; preds = %for.body7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.inc20, label %for.cond3.for.body7_crit_edge

for.cond3.for.body7_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.body7:                                        ; preds = %for.cond3.for.body7_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.cond3.for.body7_crit_edge ]
  %4 = shl nuw i32 1, %indvars.iv
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.cond3, label %for.body7.if.then_crit_edge

for.body7.if.then_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.body7.7.if.then_crit_edge, %for.body7.6.if.then_crit_edge, %for.body7.5.if.then_crit_edge, %for.body7.4.if.then_crit_edge, %for.body7.3.if.then_crit_edge, %for.body7.2.if.then_crit_edge, %for.body7.1.if.then_crit_edge, %for.body7.if.then_crit_edge
  %conv44.lcssa = phi i32 [ 224, %for.body7.7.if.then_crit_edge ], [ 192, %for.body7.6.if.then_crit_edge ], [ 160, %for.body7.5.if.then_crit_edge ], [ 128, %for.body7.4.if.then_crit_edge ], [ 96, %for.body7.3.if.then_crit_edge ], [ 64, %for.body7.2.if.then_crit_edge ], [ 32, %for.body7.1.if.then_crit_edge ], [ 0, %for.body7.if.then_crit_edge ]
  %arrayidx9.lcssa = phi ptr [ %arrayidx9.7, %for.body7.7.if.then_crit_edge ], [ %arrayidx9.6, %for.body7.6.if.then_crit_edge ], [ %arrayidx9.5, %for.body7.5.if.then_crit_edge ], [ %arrayidx9.4, %for.body7.4.if.then_crit_edge ], [ %arrayidx9.3, %for.body7.3.if.then_crit_edge ], [ %arrayidx9.2, %for.body7.2.if.then_crit_edge ], [ %arrayidx9.1, %for.body7.1.if.then_crit_edge ], [ %arrayidx9, %for.body7.if.then_crit_edge ]
  %.lcssa47 = phi i32 [ %34, %for.body7.7.if.then_crit_edge ], [ %30, %for.body7.6.if.then_crit_edge ], [ %26, %for.body7.5.if.then_crit_edge ], [ %22, %for.body7.4.if.then_crit_edge ], [ %18, %for.body7.3.if.then_crit_edge ], [ %14, %for.body7.2.if.then_crit_edge ], [ %10, %for.body7.1.if.then_crit_edge ], [ %3, %for.body7.if.then_crit_edge ]
  %conv442.lcssa = phi i32 [ %indvars.iv.7, %for.body7.7.if.then_crit_edge ], [ %indvars.iv.6, %for.body7.6.if.then_crit_edge ], [ %indvars.iv.5, %for.body7.5.if.then_crit_edge ], [ %indvars.iv.4, %for.body7.4.if.then_crit_edge ], [ %indvars.iv.3, %for.body7.3.if.then_crit_edge ], [ %indvars.iv.2, %for.body7.2.if.then_crit_edge ], [ %indvars.iv.1, %for.body7.1.if.then_crit_edge ], [ %indvars.iv, %for.body7.if.then_crit_edge ]
  %.lcssa = phi i32 [ %35, %for.body7.7.if.then_crit_edge ], [ %31, %for.body7.6.if.then_crit_edge ], [ %27, %for.body7.5.if.then_crit_edge ], [ %23, %for.body7.4.if.then_crit_edge ], [ %19, %for.body7.3.if.then_crit_edge ], [ %15, %for.body7.2.if.then_crit_edge ], [ %11, %for.body7.1.if.then_crit_edge ], [ %4, %for.body7.if.then_crit_edge ]
  %neg = xor i32 %.lcssa, -1
  %and17 = and i32 %.lcssa47, %neg
  %6 = ptrtoint ptr %arrayidx9.lcssa to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and17, ptr %arrayidx9.lcssa, align 4
  %add = add nuw nsw i32 %conv442.lcssa, %conv44.lcssa
  %scb_virt = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 6
  %7 = ptrtoint ptr %scb_virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scb_virt, align 4
  %add.ptr = getelementptr %struct.orc_scb, ptr %8, i32 %add
  br label %cleanup

for.inc20:                                        ; preds = %for.cond3
  %arrayidx9.1 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9.1, align 4
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.cond3.1.for.body7.1_crit_edge, %for.inc20
  %indvars.iv.1 = phi i32 [ 0, %for.inc20 ], [ %indvars.iv.next.1, %for.cond3.1.for.body7.1_crit_edge ]
  %11 = shl nuw i32 1, %indvars.iv.1
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1 = icmp eq i32 %12, 0
  br i1 %tobool.not.1, label %for.cond3.1, label %for.body7.1.if.then_crit_edge

for.body7.1.if.then_crit_edge:                    ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.1:                                      ; preds = %for.body7.1
  %indvars.iv.next.1 = add nuw nsw i32 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i32 %indvars.iv.next.1, 32
  br i1 %exitcond.1.not, label %for.inc20.1, label %for.cond3.1.for.body7.1_crit_edge

for.cond3.1.for.body7.1_crit_edge:                ; preds = %for.cond3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.1

for.inc20.1:                                      ; preds = %for.cond3.1
  %arrayidx9.2 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.2, align 4
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.cond3.2.for.body7.2_crit_edge, %for.inc20.1
  %indvars.iv.2 = phi i32 [ 0, %for.inc20.1 ], [ %indvars.iv.next.2, %for.cond3.2.for.body7.2_crit_edge ]
  %15 = shl nuw i32 1, %indvars.iv.2
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.2 = icmp eq i32 %16, 0
  br i1 %tobool.not.2, label %for.cond3.2, label %for.body7.2.if.then_crit_edge

for.body7.2.if.then_crit_edge:                    ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.2:                                      ; preds = %for.body7.2
  %indvars.iv.next.2 = add nuw nsw i32 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i32 %indvars.iv.next.2, 32
  br i1 %exitcond.2.not, label %for.inc20.2, label %for.cond3.2.for.body7.2_crit_edge

for.cond3.2.for.body7.2_crit_edge:                ; preds = %for.cond3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.2

for.inc20.2:                                      ; preds = %for.cond3.2
  %arrayidx9.3 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 3
  %17 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.3, align 4
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.cond3.3.for.body7.3_crit_edge, %for.inc20.2
  %indvars.iv.3 = phi i32 [ 0, %for.inc20.2 ], [ %indvars.iv.next.3, %for.cond3.3.for.body7.3_crit_edge ]
  %19 = shl nuw i32 1, %indvars.iv.3
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.3 = icmp eq i32 %20, 0
  br i1 %tobool.not.3, label %for.cond3.3, label %for.body7.3.if.then_crit_edge

for.body7.3.if.then_crit_edge:                    ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.3:                                      ; preds = %for.body7.3
  %indvars.iv.next.3 = add nuw nsw i32 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i32 %indvars.iv.next.3, 32
  br i1 %exitcond.3.not, label %for.inc20.3, label %for.cond3.3.for.body7.3_crit_edge

for.cond3.3.for.body7.3_crit_edge:                ; preds = %for.cond3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.3

for.inc20.3:                                      ; preds = %for.cond3.3
  %arrayidx9.4 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 4
  %21 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.4, align 4
  br label %for.body7.4

for.body7.4:                                      ; preds = %for.cond3.4.for.body7.4_crit_edge, %for.inc20.3
  %indvars.iv.4 = phi i32 [ 0, %for.inc20.3 ], [ %indvars.iv.next.4, %for.cond3.4.for.body7.4_crit_edge ]
  %23 = shl nuw i32 1, %indvars.iv.4
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.4 = icmp eq i32 %24, 0
  br i1 %tobool.not.4, label %for.cond3.4, label %for.body7.4.if.then_crit_edge

for.body7.4.if.then_crit_edge:                    ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.4:                                      ; preds = %for.body7.4
  %indvars.iv.next.4 = add nuw nsw i32 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i32 %indvars.iv.next.4, 32
  br i1 %exitcond.4.not, label %for.inc20.4, label %for.cond3.4.for.body7.4_crit_edge

for.cond3.4.for.body7.4_crit_edge:                ; preds = %for.cond3.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.4

for.inc20.4:                                      ; preds = %for.cond3.4
  %arrayidx9.5 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 5
  %25 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx9.5, align 4
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.cond3.5.for.body7.5_crit_edge, %for.inc20.4
  %indvars.iv.5 = phi i32 [ 0, %for.inc20.4 ], [ %indvars.iv.next.5, %for.cond3.5.for.body7.5_crit_edge ]
  %27 = shl nuw i32 1, %indvars.iv.5
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.5 = icmp eq i32 %28, 0
  br i1 %tobool.not.5, label %for.cond3.5, label %for.body7.5.if.then_crit_edge

for.body7.5.if.then_crit_edge:                    ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.5:                                      ; preds = %for.body7.5
  %indvars.iv.next.5 = add nuw nsw i32 %indvars.iv.5, 1
  %exitcond.5.not = icmp eq i32 %indvars.iv.next.5, 32
  br i1 %exitcond.5.not, label %for.inc20.5, label %for.cond3.5.for.body7.5_crit_edge

for.cond3.5.for.body7.5_crit_edge:                ; preds = %for.cond3.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.5

for.inc20.5:                                      ; preds = %for.cond3.5
  %arrayidx9.6 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 6
  %29 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9.6, align 4
  br label %for.body7.6

for.body7.6:                                      ; preds = %for.cond3.6.for.body7.6_crit_edge, %for.inc20.5
  %indvars.iv.6 = phi i32 [ 0, %for.inc20.5 ], [ %indvars.iv.next.6, %for.cond3.6.for.body7.6_crit_edge ]
  %31 = shl nuw i32 1, %indvars.iv.6
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.6 = icmp eq i32 %32, 0
  br i1 %tobool.not.6, label %for.cond3.6, label %for.body7.6.if.then_crit_edge

for.body7.6.if.then_crit_edge:                    ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.6:                                      ; preds = %for.body7.6
  %indvars.iv.next.6 = add nuw nsw i32 %indvars.iv.6, 1
  %exitcond.6.not = icmp eq i32 %indvars.iv.next.6, 32
  br i1 %exitcond.6.not, label %for.inc20.6, label %for.cond3.6.for.body7.6_crit_edge

for.cond3.6.for.body7.6_crit_edge:                ; preds = %for.cond3.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.6

for.inc20.6:                                      ; preds = %for.cond3.6
  %arrayidx9.7 = getelementptr %struct.orc_host, ptr %host, i32 0, i32 12, i32 %idxprom, i32 7
  %33 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.7, align 4
  br label %for.body7.7

for.body7.7:                                      ; preds = %for.cond3.7.for.body7.7_crit_edge, %for.inc20.6
  %indvars.iv.7 = phi i32 [ 0, %for.inc20.6 ], [ %indvars.iv.next.7, %for.cond3.7.for.body7.7_crit_edge ]
  %35 = shl nuw i32 1, %indvars.iv.7
  %36 = and i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.7 = icmp eq i32 %36, 0
  br i1 %tobool.not.7, label %for.cond3.7, label %for.body7.7.if.then_crit_edge

for.body7.7.if.then_crit_edge:                    ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond3.7:                                      ; preds = %for.body7.7
  %indvars.iv.next.7 = add nuw nsw i32 %indvars.iv.7, 1
  %exitcond.7.not = icmp eq i32 %indvars.iv.next.7, 32
  br i1 %exitcond.7.not, label %for.cond3.7.cleanup_crit_edge, label %for.cond3.7.for.body7.7_crit_edge

for.cond3.7.for.body7.7_crit_edge:                ; preds = %for.cond3.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.7

for.cond3.7.cleanup_crit_edge:                    ; preds = %for.cond3.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond3.7.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %for.cond3.7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @wait_chip_ready(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host, align 4
  %add = add i32 %1, 165
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host, align 4
  %add.1 = add i32 %6, 165
  %and.1 = and i32 %add.1, 1048575
  %add1.1 = or i32 %and.1, -18874368
  %7 = inttoptr i32 %add1.1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #7
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host, align 4
  %add.2 = add i32 %11, 165
  %and.2 = and i32 %add.2, 1048575
  %add1.2 = or i32 %and.2, -18874368
  %12 = inttoptr i32 %add1.2 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.2 = icmp eq i8 %14, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 100) #7
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host, align 4
  %add.3 = add i32 %16, 165
  %and.3 = and i32 %add.3, 1048575
  %add1.3 = or i32 %and.3, -18874368
  %17 = inttoptr i32 %add1.3 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 100) #7
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host, align 4
  %add.4 = add i32 %21, 165
  %and.4 = and i32 %add.4, 1048575
  %add1.4 = or i32 %and.4, -18874368
  %22 = inttoptr i32 %add1.4 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.4 = icmp eq i8 %24, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 100) #7
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host, align 4
  %add.5 = add i32 %26, 165
  %and.5 = and i32 %add.5, 1048575
  %add1.5 = or i32 %and.5, -18874368
  %27 = inttoptr i32 %add1.5 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.5 = icmp eq i8 %29, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 100) #7
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host, align 4
  %add.6 = add i32 %31, 165
  %and.6 = and i32 %add.6, 1048575
  %add1.6 = or i32 %and.6, -18874368
  %32 = inttoptr i32 %add1.6 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.6 = icmp eq i8 %34, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 100) #7
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host, align 4
  %add.7 = add i32 %36, 165
  %and.7 = and i32 %add.7, 1048575
  %add1.7 = or i32 %and.7, -18874368
  %37 = inttoptr i32 %add1.7 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.7 = icmp eq i8 %39, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 100) #7
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host, align 4
  %add.8 = add i32 %41, 165
  %and.8 = and i32 %add.8, 1048575
  %add1.8 = or i32 %and.8, -18874368
  %42 = inttoptr i32 %add1.8 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.8 = icmp eq i8 %44, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 100) #7
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %host, align 4
  %add.9 = add i32 %46, 165
  %and.9 = and i32 %add.9, 1048575
  %add1.9 = or i32 %and.9, -18874368
  %47 = inttoptr i32 %add1.9 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.9 = icmp eq i8 %49, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ], [ 1, %if.end.2.cleanup_crit_edge ], [ 1, %if.end.3.cleanup_crit_edge ], [ 1, %if.end.4.cleanup_crit_edge ], [ 1, %if.end.5.cleanup_crit_edge ], [ 1, %if.end.6.cleanup_crit_edge ], [ 1, %if.end.7.cleanup_crit_edge ], [ 1, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.9 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @orc_load_firmware(ptr noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %data32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data32) #7
  %0 = ptrtoint ptr %data32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data32, align 4, !annotation !122
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host, align 4
  %add = add i32 %2, 162
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %5 = or i8 %4, 1
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host, align 4
  %add5 = add i32 %7, 162
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host, align 4
  %add13 = add i32 %10, 178
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %11 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host, align 4
  %add21 = add i32 %13, 176
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %14 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #7, !srcloc !127
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host, align 4
  %add27 = add i32 %16, 179
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %17 = inttoptr i32 %add29 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %18)
  %cmp.not = icmp eq i8 %18, 85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host, align 4
  br i1 %cmp.not, label %do.body43, label %do.body35

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add39 = add i32 %20, 162
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %21 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %4) #7, !srcloc !87
  br label %cleanup

do.body43:                                        ; preds = %entry
  %add47 = add i32 %20, 176
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %22 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 256) #7, !srcloc !127
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host, align 4
  %add53 = add i32 %24, 179
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %25 = inttoptr i32 %add55 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %26)
  %cmp60.not = icmp eq i8 %26, -86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host, align 4
  br i1 %cmp60.not, label %do.body72, label %do.body63

do.body63:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %add67 = add i32 %28, 162
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %29 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %4) #7, !srcloc !87
  br label %cleanup

do.body72:                                        ; preds = %do.body43
  %add76 = add i32 %28, 224
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %30 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 3) #7, !srcloc !87
  %31 = ptrtoint ptr %data32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host, align 4
  %add84 = add i32 %33, 176
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %34 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 4096) #7, !srcloc !127
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host, align 4
  %add90 = add i32 %36, 179
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %37 = inttoptr i32 %add92 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %39 = ptrtoint ptr %data32 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %data32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host, align 4
  %add100 = add i32 %41, 176
  %and101 = and i32 %add100, 1048575
  %add102 = or i32 %and101, -18874368
  %42 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 4352) #7, !srcloc !127
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host, align 4
  %add106 = add i32 %44, 179
  %and107 = and i32 %add106, 1048575
  %add108 = or i32 %and107, -18874368
  %45 = inttoptr i32 %add108 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %add.ptr = getelementptr inbounds i8, ptr %data32, i32 1
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %add.ptr, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host, align 4
  %add116 = add i32 %49, 176
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %50 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 4608) #7, !srcloc !127
  %51 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %host, align 4
  %add122 = add i32 %52, 179
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %53 = inttoptr i32 %add124 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %add.ptr128 = getelementptr inbounds i8, ptr %data32, i32 2
  %55 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %add.ptr128, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %conv133 = zext i8 %54 to i16
  %56 = shl nuw i16 %conv133, 8
  %57 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host, align 4
  %add135 = add i32 %58, 178
  %and136 = and i32 %add135, 1048575
  %add137 = or i32 %and136, -18874368
  %59 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 %56) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data32, align 4
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %host, align 4
  %add143 = add i32 %63, 172
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %64 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 %61) #7, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 107374000) #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %61)
  %conv147 = trunc i32 %66 to i16
  br label %do.body151

do.body151:                                       ; preds = %for.inc.do.body151_crit_edge, %do.body72
  %bios_addr.03 = phi i16 [ %conv147, %do.body72 ], [ %inc180, %for.inc.do.body151_crit_edge ]
  %i.02 = phi i16 [ 0, %do.body72 ], [ %inc, %for.inc.do.body151_crit_edge ]
  %data32_ptr.01 = phi ptr [ %data32, %do.body72 ], [ %data32_ptr.1, %for.inc.do.body151_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %67 = tail call i16 @llvm.bswap.i16(i16 %bios_addr.03)
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %host, align 4
  %add155 = add i32 %69, 176
  %and156 = and i32 %add155, 1048575
  %add157 = or i32 %and156, -18874368
  %70 = inttoptr i32 %add157 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %70, i16 %67) #7, !srcloc !127
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %host, align 4
  %add161 = add i32 %72, 179
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %73 = inttoptr i32 %add163 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %incdec.ptr = getelementptr i8, ptr %data32_ptr.01, i32 1
  %75 = ptrtoint ptr %data32_ptr.01 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %data32_ptr.01, align 1
  %76 = and i16 %i.02, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %76)
  %cmp168 = icmp eq i16 %76, 3
  br i1 %cmp168, label %do.body171, label %do.body151.for.inc_crit_edge

do.body151.for.inc_crit_edge:                     ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body171:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data32, align 4
  %79 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %host, align 4
  %add175 = add i32 %80, 236
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %81 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %78) #7, !srcloc !138
  br label %for.inc

for.inc:                                          ; preds = %do.body171, %do.body151.for.inc_crit_edge
  %data32_ptr.1 = phi ptr [ %data32, %do.body171 ], [ %incdec.ptr, %do.body151.for.inc_crit_edge ]
  %inc = add nuw nsw i16 %i.02, 1
  %inc180 = add i16 %bios_addr.03, 1
  %cmp149 = icmp ult i16 %i.02, 4095
  br i1 %cmp149, label %for.inc.do.body151_crit_edge, label %do.body181

for.inc.do.body151_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body151

do.body181:                                       ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %host, align 4
  %add185 = add i32 %83, 224
  %and186 = and i32 %add185, 1048575
  %add187 = or i32 %and186, -18874368
  %84 = inttoptr i32 %add187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 3) #7, !srcloc !87
  %sub = add i16 %bios_addr.03, -4095
  br label %do.body196

do.body196:                                       ; preds = %for.inc247.do.body196_crit_edge, %do.body181
  %bios_addr.16 = phi i16 [ %sub, %do.body181 ], [ %inc249, %for.inc247.do.body196_crit_edge ]
  %i.15 = phi i16 [ 0, %do.body181 ], [ %inc248, %for.inc247.do.body196_crit_edge ]
  %data32_ptr.24 = phi ptr [ %data32, %do.body181 ], [ %data32_ptr.3, %for.inc247.do.body196_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %85 = tail call i16 @llvm.bswap.i16(i16 %bios_addr.16)
  %86 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %host, align 4
  %add200 = add i32 %87, 176
  %and201 = and i32 %add200, 1048575
  %add202 = or i32 %and201, -18874368
  %88 = inttoptr i32 %add202 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %88, i16 %85) #7, !srcloc !127
  %89 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %host, align 4
  %add206 = add i32 %90, 179
  %and207 = and i32 %add206, 1048575
  %add208 = or i32 %and207, -18874368
  %91 = inttoptr i32 %add208 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %incdec.ptr212 = getelementptr i8, ptr %data32_ptr.24, i32 1
  %93 = ptrtoint ptr %data32_ptr.24 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %data32_ptr.24, align 1
  %94 = and i16 %i.15, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %94)
  %cmp215 = icmp eq i16 %94, 3
  br i1 %cmp215, label %if.then217, label %do.body196.for.inc247_crit_edge

do.body196.for.inc247_crit_edge:                  ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

if.then217:                                       ; preds = %do.body196
  %95 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %host, align 4
  %add220 = add i32 %96, 236
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %97 = inttoptr i32 %add222 to ptr
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %97) #7, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %99 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp226.not = icmp eq i32 %98, %100
  br i1 %cmp226.not, label %if.then217.for.inc247_crit_edge, label %do.body229

if.then217.for.inc247_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

do.body229:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %101 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %host, align 4
  %add233 = add i32 %102, 224
  %and234 = and i32 %add233, 1048575
  %add235 = or i32 %and234, -18874368
  %103 = inttoptr i32 %add235 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 2) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %host, align 4
  %add241 = add i32 %105, 162
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %106 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %4) #7, !srcloc !87
  br label %cleanup

for.inc247:                                       ; preds = %if.then217.for.inc247_crit_edge, %do.body196.for.inc247_crit_edge
  %data32_ptr.3 = phi ptr [ %incdec.ptr212, %do.body196.for.inc247_crit_edge ], [ %data32, %if.then217.for.inc247_crit_edge ]
  %inc248 = add nuw nsw i16 %i.15, 1
  %inc249 = add i16 %bios_addr.16, 1
  %cmp193 = icmp ult i16 %i.15, 4095
  br i1 %cmp193, label %for.inc247.do.body196_crit_edge, label %do.body251

for.inc247.do.body196_crit_edge:                  ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body196

do.body251:                                       ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %host, align 4
  %add255 = add i32 %108, 224
  %and256 = and i32 %add255, 1048575
  %add257 = or i32 %and256, -18874368
  %109 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 2) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %host, align 4
  %add263 = add i32 %111, 162
  %and264 = and i32 %add263, 1048575
  %add265 = or i32 %and264, -18874368
  %112 = inttoptr i32 %add265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %4) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %do.body251, %do.body229, %do.body63, %do.body35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data32) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_SCBs(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host, align 4
  %add = add i32 %1, 183
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -11) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %scb_phys = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 7
  %3 = ptrtoint ptr %scb_phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scb_phys, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host, align 4
  %add6 = add i32 %7, 184
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %8 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %scb_phys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scb_phys, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host, align 4
  %add15 = add i32 %13, 188
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %14 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #7, !srcloc !138
  %scb_virt = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 6
  %15 = ptrtoint ptr %scb_virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scb_virt, align 4
  %escb_virt = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 8
  %17 = ptrtoint ptr %escb_virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %escb_virt, align 4
  %escb_phys19 = getelementptr inbounds %struct.orc_host, ptr %host, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %escb.041 = phi ptr [ %18, %entry ], [ %incdec.ptr22, %for.body.for.body_crit_edge ]
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %scb.039 = phi ptr [ %16, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %escb_phys19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %escb_phys19, align 4
  %mul = mul nuw nsw i32 %i.040, 260
  %add20 = add i32 %20, %mul
  %21 = tail call i32 @llvm.bswap.i32(i32 %add20)
  %sg_addr = getelementptr inbounds %struct.orc_scb, ptr %scb.039, i32 0, i32 8
  %22 = ptrtoint ptr %sg_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sg_addr, align 4
  %sense_addr = getelementptr inbounds %struct.orc_scb, ptr %scb.039, i32 0, i32 20
  %23 = ptrtoint ptr %sense_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %sense_addr, align 4
  %escb21 = getelementptr inbounds %struct.orc_scb, ptr %scb.039, i32 0, i32 21
  %24 = ptrtoint ptr %escb21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %escb.041, ptr %escb21, align 4
  %conv = trunc i32 %i.040 to i8
  %scbidx = getelementptr inbounds %struct.orc_scb, ptr %scb.039, i32 0, i32 19
  %25 = ptrtoint ptr %scbidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %scbidx, align 1
  %incdec.ptr = getelementptr %struct.orc_scb, ptr %scb.039, i32 1
  %incdec.ptr22 = getelementptr %struct.orc_extended_scb, ptr %escb.041, i32 1
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 245
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @wait_firmware_ready(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host, align 4
  %add = add i32 %1, 166
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host, align 4
  %add.1 = add i32 %6, 166
  %and.1 = and i32 %add.1, 1048575
  %add1.1 = or i32 %and.1, -18874368
  %7 = inttoptr i32 %add1.1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #7
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host, align 4
  %add.2 = add i32 %11, 166
  %and.2 = and i32 %add.2, 1048575
  %add1.2 = or i32 %and.2, -18874368
  %12 = inttoptr i32 %add1.2 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.2 = icmp eq i8 %14, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 100) #7
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host, align 4
  %add.3 = add i32 %16, 166
  %and.3 = and i32 %add.3, 1048575
  %add1.3 = or i32 %and.3, -18874368
  %17 = inttoptr i32 %add1.3 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 100) #7
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host, align 4
  %add.4 = add i32 %21, 166
  %and.4 = and i32 %add.4, 1048575
  %add1.4 = or i32 %and.4, -18874368
  %22 = inttoptr i32 %add1.4 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.4 = icmp eq i8 %24, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 100) #7
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host, align 4
  %add.5 = add i32 %26, 166
  %and.5 = and i32 %add.5, 1048575
  %add1.5 = or i32 %and.5, -18874368
  %27 = inttoptr i32 %add1.5 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.5 = icmp eq i8 %29, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 100) #7
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host, align 4
  %add.6 = add i32 %31, 166
  %and.6 = and i32 %add.6, 1048575
  %add1.6 = or i32 %and.6, -18874368
  %32 = inttoptr i32 %add1.6 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.6 = icmp eq i8 %34, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 100) #7
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host, align 4
  %add.7 = add i32 %36, 166
  %and.7 = and i32 %add.7, 1048575
  %add1.7 = or i32 %and.7, -18874368
  %37 = inttoptr i32 %add1.7 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.7 = icmp eq i8 %39, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 100) #7
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host, align 4
  %add.8 = add i32 %41, 166
  %and.8 = and i32 %add.8, 1048575
  %add1.8 = or i32 %and.8, -18874368
  %42 = inttoptr i32 %add1.8 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.8 = icmp eq i8 %44, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 100) #7
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %host, align 4
  %add.9 = add i32 %46, 166
  %and.9 = and i32 %add.9, 1048575
  %add1.9 = or i32 %and.9, -18874368
  %47 = inttoptr i32 %add1.9 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.9 = icmp eq i8 %49, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ], [ 1, %if.end.2.cleanup_crit_edge ], [ 1, %if.end.3.cleanup_crit_edge ], [ 1, %if.end.4.cleanup_crit_edge ], [ 1, %if.end.5.cleanup_crit_edge ], [ 1, %if.end.6.cleanup_crit_edge ], [ 1, %if.end.7.cleanup_crit_edge ], [ 1, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.9 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @se2_rd_all(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %np.036 = phi ptr [ @nvram, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %i.035 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host, align 4
  %add.i = add i32 %1, 164
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host, align 4
  %add6.i = add i32 %4, 165
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %5 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 64) #7, !srcloc !87
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i.for.body.i.i_crit_edge, %for.body
  %i.07.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %while.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host, align 4
  %add.i.i = add i32 %7, 165
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %do.body12.i, label %for.body.i.i.while.body.i.i_crit_edge

for.body.i.i.while.body.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.i.while.body.i.i_crit_edge
  %__ms.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 100, %for.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %tobool4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool4.not.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %while.end.i.i.cleanup_crit_edge, label %while.end.i.i.for.body.i.i_crit_edge

while.end.i.i.for.body.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

while.end.i.i.cleanup_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body12.i:                                      ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host, align 4
  %add16.i = add i32 %13, 164
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %14 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host, align 4
  %add24.i = add i32 %16, 165
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %17 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 64) #7, !srcloc !87
  br label %for.body.i67.i

for.body.i67.i:                                   ; preds = %while.end.i74.i.for.body.i67.i_crit_edge, %do.body12.i
  %i.07.i62.i = phi i32 [ 0, %do.body12.i ], [ %inc.i72.i, %while.end.i74.i.for.body.i67.i_crit_edge ]
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host, align 4
  %add.i63.i = add i32 %19, 165
  %and.i64.i = and i32 %add.i63.i, 1048575
  %add1.i65.i = or i32 %and.i64.i, -18874368
  %20 = inttoptr i32 %add1.i65.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %22 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i66.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i66.i, label %for.body.i67.i.for.body.i82.i_crit_edge, label %for.body.i67.i.while.body.i71.i_crit_edge

for.body.i67.i.while.body.i71.i_crit_edge:        ; preds = %for.body.i67.i
  br label %while.body.i71.i

for.body.i67.i.for.body.i82.i_crit_edge:          ; preds = %for.body.i67.i
  br label %for.body.i82.i

while.body.i71.i:                                 ; preds = %while.body.i71.i.while.body.i71.i_crit_edge, %for.body.i67.i.while.body.i71.i_crit_edge
  %__ms.06.i68.i = phi i32 [ %dec.i69.i, %while.body.i71.i.while.body.i71.i_crit_edge ], [ 100, %for.body.i67.i.while.body.i71.i_crit_edge ]
  %dec.i69.i = add nsw i32 %__ms.06.i68.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %tobool4.not.i70.i = icmp eq i32 %dec.i69.i, 0
  br i1 %tobool4.not.i70.i, label %while.end.i74.i, label %while.body.i71.i.while.body.i71.i_crit_edge

while.body.i71.i.while.body.i71.i_crit_edge:      ; preds = %while.body.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i71.i

while.end.i74.i:                                  ; preds = %while.body.i71.i
  %inc.i72.i = add nuw nsw i32 %i.07.i62.i, 1
  %exitcond.not.i73.i = icmp eq i32 %inc.i72.i, 10
  br i1 %exitcond.not.i73.i, label %while.end.i74.i.cleanup_crit_edge, label %while.end.i74.i.for.body.i67.i_crit_edge

while.end.i74.i.for.body.i67.i_crit_edge:         ; preds = %while.end.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i67.i

while.end.i74.i.cleanup_crit_edge:                ; preds = %while.end.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i82.i:                                   ; preds = %while.end.i89.i.for.body.i82.i_crit_edge, %for.body.i67.i.for.body.i82.i_crit_edge
  %i.07.i77.i = phi i32 [ %inc.i87.i, %while.end.i89.i.for.body.i82.i_crit_edge ], [ 0, %for.body.i67.i.for.body.i82.i_crit_edge ]
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host, align 4
  %add.i78.i = add i32 %25, 166
  %and.i79.i = and i32 %add.i78.i, 1048575
  %add1.i80.i = or i32 %and.i79.i, -18874368
  %26 = inttoptr i32 %add1.i80.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i81.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i81.i, label %for.body.i82.i.while.body.i86.i_crit_edge, label %for.inc

for.body.i82.i.while.body.i86.i_crit_edge:        ; preds = %for.body.i82.i
  br label %while.body.i86.i

while.body.i86.i:                                 ; preds = %while.body.i86.i.while.body.i86.i_crit_edge, %for.body.i82.i.while.body.i86.i_crit_edge
  %__ms.06.i83.i = phi i32 [ %dec.i84.i, %while.body.i86.i.while.body.i86.i_crit_edge ], [ 100, %for.body.i82.i.while.body.i86.i_crit_edge ]
  %dec.i84.i = add nsw i32 %__ms.06.i83.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  %tobool4.not.i85.i = icmp eq i32 %dec.i84.i, 0
  br i1 %tobool4.not.i85.i, label %while.end.i89.i, label %while.body.i86.i.while.body.i86.i_crit_edge

while.body.i86.i.while.body.i86.i_crit_edge:      ; preds = %while.body.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i86.i

while.end.i89.i:                                  ; preds = %while.body.i86.i
  %inc.i87.i = add nuw nsw i32 %i.07.i77.i, 1
  %exitcond.not.i88.i = icmp eq i32 %inc.i87.i, 10
  br i1 %exitcond.not.i88.i, label %while.end.i89.i.cleanup_crit_edge, label %while.end.i89.i.for.body.i82.i_crit_edge

while.end.i89.i.for.body.i82.i_crit_edge:         ; preds = %while.end.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i82.i

while.end.i89.i.cleanup_crit_edge:                ; preds = %while.end.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.i82.i
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host, align 4
  %add41.i = add i32 %31, 164
  %and42.i = and i32 %add41.i, 1048575
  %add43.i = or i32 %and42.i, -18874368
  %32 = inttoptr i32 %add43.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %34 = ptrtoint ptr %np.036 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %np.036, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host, align 4
  %add50.i = add i32 %36, 166
  %and51.i = and i32 %add50.i, 1048575
  %add52.i = or i32 %and51.i, -18874368
  %37 = inttoptr i32 %add52.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %27) #7, !srcloc !87
  %inc = add nuw nsw i32 %i.035, 1
  %incdec.ptr = getelementptr i8, ptr %np.036, i32 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.body7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.inc.for.body7_crit_edge
  %chksum.039 = phi i32 [ %phi.cast, %for.body7.for.body7_crit_edge ], [ 0, %for.inc.for.body7_crit_edge ]
  %np.138 = phi ptr [ %incdec.ptr8, %for.body7.for.body7_crit_edge ], [ @nvram, %for.inc.for.body7_crit_edge ]
  %incdec.ptr8 = getelementptr i8, ptr %np.138, i32 1
  %38 = ptrtoint ptr %np.138 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %np.138, align 1
  %conv9 = zext i8 %39 to i32
  %add = add nuw nsw i32 %chksum.039, %conv9
  %phi.cast = and i32 %add, 255
  %exitcond43.not = icmp eq ptr %np.138, getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 57, i32 2)
  br i1 %exitcond43.not, label %for.end14, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end14:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  %40 = load i8, ptr getelementptr inbounds (%struct.orc_nvram, ptr @nvram, i32 0, i32 58), align 1
  %41 = trunc i32 %add to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp17.not = icmp eq i8 %40, %41
  %. = select i1 %cmp17.not, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.end14, %while.end.i89.i.cleanup_crit_edge, %while.end.i74.i.cleanup_crit_edge, %while.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %for.end14 ], [ -1, %while.end.i89.i.cleanup_crit_edge ], [ -1, %while.end.i74.i.cleanup_crit_edge ], [ -1, %while.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_a100u2w__287_1222_inia100_pci_driver_init6, !1, !"__initcall__kmod_a100u2w__287_1222_inia100_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/a100u2w.c", i32 1222, i32 1}
!2 = !{ptr @__exitcall_inia100_pci_driver_exit, !1, !"__exitcall_inia100_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description288, !4, !"__UNIQUE_ID_description288", i1 false, i1 false}
!4 = !{!"../drivers/scsi/a100u2w.c", i32 1224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author289, !6, !"__UNIQUE_ID_author289", i1 false, i1 false}
!6 = !{!"../drivers/scsi/a100u2w.c", i32 1225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file290, !8, !"__UNIQUE_ID_file290", i1 false, i1 false}
!8 = !{!"../drivers/scsi/a100u2w.c", i32 1226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license291, !8, !"__UNIQUE_ID_license291", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/a100u2w.c", i32 1216, i32 11}
!13 = !{ptr @inia100_pci_driver, !14, !"inia100_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/scsi/a100u2w.c", i32 1215, i32 26}
!15 = !{ptr @inia100_pci_tbl, !16, !"inia100_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/scsi/a100u2w.c", i32 1209, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/a100u2w.c", i32 1092, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @inia100_probe_one._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @inia100_probe_one._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/a100u2w.c", i32 1101, i32 3}
!25 = !{ptr @inia100_probe_one._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @inia100_probe_one._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @inia100_probe_one.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/scsi/a100u2w.c", i32 1117, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/a100u2w.c", i32 1124, i32 3}
!32 = !{ptr @inia100_probe_one._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @inia100_probe_one._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/a100u2w.c", i32 1133, i32 3}
!36 = !{ptr @inia100_probe_one._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @inia100_probe_one._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/a100u2w.c", i32 1138, i32 3}
!40 = !{ptr @inia100_probe_one._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @inia100_probe_one._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/a100u2w.c", i32 1156, i32 3}
!44 = !{ptr @inia100_probe_one._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @inia100_probe_one._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/a100u2w.c", i32 1070, i32 12}
!48 = !{ptr @inia100_template, !49, !"inia100_template", i1 false, i1 false}
!49 = !{!"../drivers/scsi/a100u2w.c", i32 1068, i32 34}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/a100u2w.c", i32 891, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @inia100_build_scb._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @inia100_build_scb._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/a100u2w.c", i32 623, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @orc_device_reset._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @orc_device_reset._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @default_nvram, !61, !"default_nvram", i1 false, i1 false}
!61 = !{!"../drivers/scsi/a100u2w.c", i32 90, i32 11}
!62 = distinct !{null, !63, !"nvramp", i1 false, i1 false}
!63 = !{!"../drivers/scsi/a100u2w.c", i32 88, i32 33}
!64 = !{ptr @nvram, !65, !"nvram", i1 false, i1 false}
!65 = !{!"../drivers/scsi/a100u2w.c", i32 88, i32 25}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/a100u2w.c", i32 995, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @inia100_scb_handler._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @inia100_scb_handler._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/a100u2w.c", i32 1031, i32 3}
!73 = !{ptr @inia100_scb_handler._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @inia100_scb_handler._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4657733}
!85 = !{i64 2155092015}
!86 = !{i64 2155070648}
!87 = !{i64 4657956}
!88 = !{i64 4658351}
!89 = !{i64 2155071074}
!90 = !{i64 2155049690}
!91 = !{i64 2155046180}
!92 = !{i64 2155047793}
!93 = !{i64 2155050116}
!94 = !{i64 2155050340}
!95 = !{i64 2155050766}
!96 = !{i64 2155050990}
!97 = !{i64 2155071308}
!98 = !{i64 2155071658}
!99 = !{i64 2155072368}
!100 = !{i64 2155051345}
!101 = !{i64 2155051700}
!102 = !{i64 2155052053}
!103 = !{i64 2155052408}
!104 = !{i64 2155052759}
!105 = !{i64 2155053114}
!106 = !{i64 2155072734}
!107 = !{i64 2155079205}
!108 = !{i64 2155079505}
!109 = !{i64 2155079805}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2155080400, i64 2155080887, i64 2155080437, i64 2155080493, i64 2155080527, i64 2155080551, i64 2155080592, i64 2155080613, i64 2155080641, i64 2155080675}
!112 = !{i64 2155055544}
!113 = !{i64 2155076666}
!114 = !{i64 2155077021}
!115 = !{i64 2155077378}
!116 = !{i64 2155077733}
!117 = !{i64 2155078159}
!118 = !{i64 2155078383}
!119 = !{i64 2155073465}
!120 = !{i64 2155044567}
!121 = !{i64 2155043957}
!122 = !{!"auto-init"}
!123 = !{i64 2155055970}
!124 = !{i64 2155056206}
!125 = !{i64 2155056556}
!126 = !{i64 2155056944}
!127 = !{i64 4657533}
!128 = !{i64 2155057471}
!129 = !{i64 2155058610}
!130 = !{i64 2155059684}
!131 = !{i64 2155060211}
!132 = !{i64 2155060473}
!133 = !{i64 2155061000}
!134 = !{i64 2155061262}
!135 = !{i64 2155061789}
!136 = !{i64 2155062062}
!137 = !{i64 2155062766}
!138 = !{i64 4658153}
!139 = !{i64 2155064063}
!140 = !{i64 2155064596}
!141 = !{i64 2155065051}
!142 = !{i64 2155065651}
!143 = !{i64 2155066042}
!144 = !{i64 2155066575}
!145 = !{i64 4658571}
!146 = !{i64 2155067258}
!147 = !{i64 2155067618}
!148 = !{i64 2155067968}
!149 = !{i64 2155068325}
!150 = !{i64 2155068675}
!151 = !{i64 2155069028}
!152 = !{i64 2155069424}
!153 = !{i64 2155069937}
!154 = !{i64 2155044262}
!155 = !{i64 2155053469}
!156 = !{i64 2155053824}
!157 = !{i64 2155054177}
!158 = !{i64 2155054532}
!159 = !{i64 2155054958}
!160 = !{i64 2155055182}
