; ModuleID = '/llk/IR_all_yes/drivers/scsi/megaraid/megaraid_mbox.c_pt.bc'
source_filename = "../drivers/scsi/megaraid/megaraid_mbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.mraid_mmadp = type { i32, i32, i32, i16, i8, ptr, ptr, i32, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, %struct.semaphore, ptr, ptr, [5 x %struct.mm_dmapool] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mm_dmapool = type { ptr, i32, i32, ptr, %struct.spinlock, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.adapter_t = type { %struct.tasklet_struct, ptr, ptr, %struct.spinlock, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i16, [16 x [65 x i32]], ptr, i8, i16, i8, i32, i32, i8, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i32, [16 x i8], [16 x i8], i8, i8, i16, i16, i16, %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.mraid_device_t = type { ptr, i32, ptr, ptr, i32, %struct.spinlock, i32, ptr, [128 x %struct.mraid_pci_blk], ptr, [128 x %struct.mraid_pci_blk], ptr, [128 x %struct.mraid_pci_blk], ptr, [128 x %struct.mbox_ccb_t], [32 x %struct.mbox_ccb_t], [32 x %struct.mbox64_t], [75 x i8], i32, i32, i32, i8, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, i32, [64 x i16] }
%struct.mraid_pci_blk = type { ptr, i32 }
%struct.mbox_ccb_t = type { ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mbox64_t = type <{ i32, i32, %struct.mbox_t }>
%struct.mbox_t = type <{ i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, [46 x i8], i8, i8 }>
%struct.scb_t = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i16, i16, i32 }
%struct.mraid_inquiry3_t = type <{ i32, %struct.mraid_notify_t, [88 x i8], i8, i8, i8, i8, i8, i8, [5 x i8], [5 x i16], [40 x i32], [40 x i8], [40 x i8], [256 x i8], [16 x i16], [80 x i8], [263 x i8] }>
%struct.mraid_notify_t = type { i32, i8, i8, i16, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mraid_pinfo_t = type { i32, i32, [16 x i8], [16 x i8], [80 x i8], i8, i8, i8, i8, i32, i16, i16, i16, i8, [889 x i8] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.uioc = type <{ [16 x i8], i16, i16, i32, i32, i64, i32, i32, i32, [128 x i8], ptr, i32, i32, ptr, ptr, i32, %struct.list_head, ptr, ptr, i32, i8, i8, i8, [801 x i8] }>
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
%struct.mraid_passthru_t = type { i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, [32 x i8], i8, i8, i32, i32 }
%struct.mraid_epassthru_t = type { i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, [32 x i8], i8, i32, i32 }
%struct.mraid_hba_info = type { i16, i16, i16, i16, i64, i8, i8, i8, i8, i32, i32, i8, [227 x i8] }
%struct.mbox_sgl64 = type <{ i64, i32 }>
%struct.uioc_timeout = type { %struct.timer_list, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author287 = internal constant [43 x i8] c"megaraid_mbox.author=megaraidlinux@lsi.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [60 x i8] c"megaraid_mbox.description=LSI Logic MegaRAID Mailbox Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [55 x i8] c"megaraid_mbox.file=drivers/scsi/megaraid/megaraid_mbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [26 x i8] c"megaraid_mbox.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [31 x i8] c"megaraid_mbox.version=2.20.5.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megaraid_mbox\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.20.5.1\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_unconf_disks = internal constant [27 x i8] c"megaraid_mbox.unconf_disks\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@megaraid_expose_unconf_disks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_unconf_disks = internal constant %struct.kernel_param { ptr @__param_str_unconf_disks, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @megaraid_expose_unconf_disks } }, section "__param", align 4
@__UNIQUE_ID_unconf_diskstype292 = internal constant [40 x i8] c"megaraid_mbox.parmtype=unconf_disks:int\00", section ".modinfo", align 1
@__UNIQUE_ID_unconf_disks293 = internal constant [87 x i8] c"megaraid_mbox.parm=unconf_disks:Set to expose unconfigured disks to kernel (default=0)\00", section ".modinfo", align 1
@__param_str_busy_wait = internal constant [24 x i8] c"megaraid_mbox.busy_wait\00", align 1
@max_mbox_busy_wait = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_busy_wait = internal constant %struct.kernel_param { ptr @__param_str_busy_wait, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_mbox_busy_wait } }, section "__param", align 4
@__UNIQUE_ID_busy_waittype294 = internal constant [37 x i8] c"megaraid_mbox.parmtype=busy_wait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_busy_wait295 = internal constant [87 x i8] c"megaraid_mbox.parm=busy_wait:Max wait for mailbox in microseconds if busy (default=10)\00", section ".modinfo", align 1
@__param_str_max_sectors = internal constant [26 x i8] c"megaraid_mbox.max_sectors\00", align 1
@megaraid_max_sectors = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_max_sectors = internal constant %struct.kernel_param { ptr @__param_str_max_sectors, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @megaraid_max_sectors } }, section "__param", align 4
@__UNIQUE_ID_max_sectorstype296 = internal constant [39 x i8] c"megaraid_mbox.parmtype=max_sectors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_sectors297 = internal constant [86 x i8] c"megaraid_mbox.parm=max_sectors:Maximum number of sectors per IO command (default=128)\00", section ".modinfo", align 1
@__param_str_cmd_per_lun = internal constant [26 x i8] c"megaraid_mbox.cmd_per_lun\00", align 1
@megaraid_cmd_per_lun = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_cmd_per_lun = internal constant %struct.kernel_param { ptr @__param_str_cmd_per_lun, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @megaraid_cmd_per_lun } }, section "__param", align 4
@__UNIQUE_ID_cmd_per_luntype298 = internal constant [39 x i8] c"megaraid_mbox.parmtype=cmd_per_lun:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cmd_per_lun299 = internal constant [88 x i8] c"megaraid_mbox.parm=cmd_per_lun:Maximum number of commands per logical unit (default=64)\00", section ".modinfo", align 1
@__param_str_fast_load = internal constant [24 x i8] c"megaraid_mbox.fast_load\00", align 1
@megaraid_fast_load = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fast_load = internal constant %struct.kernel_param { ptr @__param_str_fast_load, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @megaraid_fast_load } }, section "__param", align 4
@__UNIQUE_ID_fast_loadtype300 = internal constant [37 x i8] c"megaraid_mbox.parmtype=fast_load:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fast_load301 = internal constant [95 x i8] c"megaraid_mbox.parm=fast_load:Faster loading of the driver, skips physical devices! (default=0)\00", section ".modinfo", align 1
@mraid_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_debug_level = internal constant [26 x i8] c"megaraid_mbox.debug_level\00", align 1
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mraid_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype302 = internal constant [39 x i8] c"megaraid_mbox.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level303 = internal constant [66 x i8] c"megaraid_mbox.parm=debug_level:Debug level for driver (default=0)\00", section ".modinfo", align 1
@megaraid_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015megaraid: unloading framework\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megaraid_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/scsi/megaraid/megaraid_mbox.c\00", [58 x i8] zeroinitializer }, align 32
@megaraid_exit._entry_ptr = internal global ptr @megaraid_exit._entry, section ".printk_index", align 4
@megaraid_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @pci_id_table_g, ptr @megaraid_probe_one, ptr @megaraid_detach_one, ptr null, ptr null, ptr @megaraid_mbox_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_megaraid_mbox__304_4059_megaraid_init6 = internal global ptr @megaraid_init, section ".initcall6.init", align 4
@__exitcall_megaraid_exit = internal global ptr @megaraid_exit, section ".exitcall.exit", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"megaraid\00", [23 x i8] zeroinitializer }, align 32
@pci_id_table_g = internal global { [15 x %struct.pci_device_id], [96 x i8] } { [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 4136, i32 14, i32 4136, i32 291, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 6496, i32 4136, i32 1312, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 6496, i32 4136, i32 1304, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1031, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 15, i32 4136, i32 330, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 19, i32 4136, i32 364, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 19, i32 4136, i32 365, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 19, i32 4136, i32 366, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 19, i32 4136, i32 367, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4136, i32 19, i32 4136, i32 368, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1032, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4126, i32 6496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 6496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1033, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016megaraid: probe new device %#4.04x:%#4.04x:%#4.04x:%#4.04x: \00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_probe_one\00", [45 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr = internal global ptr @megaraid_probe_one._entry, section ".printk_index", align 4
@megaraid_probe_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.5, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bus %d:slot %d:func %d\0A\00", [40 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.11 = internal global ptr @megaraid_probe_one._entry.9, section ".printk_index", align 4
@megaraid_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.5, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014megaraid: pci_enable_device failed\0A\00", [58 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.14 = internal global ptr @megaraid_probe_one._entry.12, section ".printk_index", align 4
@megaraid_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014megaraid: out of memory, %s %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.17 = internal global ptr @megaraid_probe_one._entry.15, section ".printk_index", align 4
@megaraid_probe_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.5, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014megaraid: dma_set_mask failed:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.20 = internal global ptr @megaraid_probe_one._entry.18, section ".printk_index", align 4
@megaraid_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adapter->lock\00", [17 x i8] zeroinitializer }, align 32
@megaraid_probe_one.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SCSI_FREE_LIST_LOCK(adapter)\00", [35 x i8] zeroinitializer }, align 32
@megaraid_probe_one.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PENDING_LIST_LOCK(adapter)\00", [37 x i8] zeroinitializer }, align 32
@megaraid_probe_one.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"COMPLETED_LIST_LOCK(adapter)\00", [35 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.5, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014megaraid: mailbox adapter did not initialize\0A\00", [48 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.30 = internal global ptr @megaraid_probe_one._entry.28, section ".printk_index", align 4
@megaraid_probe_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.5, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014megaraid: could not register with management module\0A\00", [41 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.33 = internal global ptr @megaraid_probe_one._entry.31, section ".printk_index", align 4
@megaraid_probe_one._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.5, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014megaraid: io attach failed\0A\00", [34 x i8] zeroinitializer }, align 32
@megaraid_probe_one._entry_ptr.36 = internal global ptr @megaraid_probe_one._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MegaRAID: LSI Logic Corporation\00", [32 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014megaraid: mem region busy\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_init_mbox\00", [45 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr = internal global ptr @megaraid_init_mbox._entry, section ".printk_index", align 4
@megaraid_init_mbox._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014megaraid: could not map hba memory\0A\00", [58 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.42 = internal global ptr @megaraid_init_mbox._entry.40, section ".printk_index", align 4
@megaraid_init_mbox.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&raid_dev->mailbox_lock\00", [40 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.5, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"megaraid: sync cmd failed\0A\00", [37 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.46 = internal global ptr @megaraid_init_mbox._entry.44, section ".printk_index", align 4
@megaraid_init_mbox._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.39, ptr @.str.5, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014megaraid: Couldn't register IRQ %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.49 = internal global ptr @megaraid_init_mbox._entry.47, section ".printk_index", align 4
@megaraid_init_mbox._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.39, ptr @.str.5, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014megaraid: DMA mask for 64-bit failed\0A\00", [56 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.52 = internal global ptr @megaraid_init_mbox._entry.50, section ".printk_index", align 4
@megaraid_init_mbox._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.39, ptr @.str.5, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014megaraid: 32-bit DMA mask failed\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.55 = internal global ptr @megaraid_init_mbox._entry.53, section ".printk_index", align 4
@megaraid_init_mbox._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.39, ptr @.str.5, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016megaraid mbox hba successfully initialized\0A\00", [50 x i8] zeroinitializer }, align 32
@megaraid_init_mbox._entry_ptr.58 = internal global ptr @megaraid_init_mbox._entry.56, section ".printk_index", align 4
@megaraid_alloc_cmd_packets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014megaraid: out of memory, %s %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"megaraid_alloc_cmd_packets\00", [37 x i8] zeroinitializer }, align 32
@megaraid_alloc_cmd_packets._entry_ptr = internal global ptr @megaraid_alloc_cmd_packets._entry, section ".printk_index", align 4
@megaraid_alloc_cmd_packets._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@megaraid_alloc_cmd_packets._entry_ptr.62 = internal global ptr @megaraid_alloc_cmd_packets._entry.61, section ".printk_index", align 4
@megaraid_alloc_cmd_packets._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@megaraid_alloc_cmd_packets._entry_ptr.64 = internal global ptr @megaraid_alloc_cmd_packets._entry.63, section ".printk_index", align 4
@megaraid_alloc_cmd_packets._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@megaraid_alloc_cmd_packets._entry_ptr.66 = internal global ptr @megaraid_alloc_cmd_packets._entry.65, section ".printk_index", align 4
@megaraid_alloc_cmd_packets._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.5, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012megaraid mbox: not aligned on 16-bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@megaraid_alloc_cmd_packets._entry_ptr.69 = internal global ptr @megaraid_alloc_cmd_packets._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid mbox pool\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"megaraid mbox pthru\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"megaraid mbox sg\00", [47 x i8] zeroinitializer }, align 32
@megaraid_mbox_fire_sync_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 3290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014megaraid: blocked mailbox\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"megaraid_mbox_fire_sync_cmd\00", [36 x i8] zeroinitializer }, align 32
@megaraid_mbox_fire_sync_cmd._entry_ptr = internal global ptr @megaraid_mbox_fire_sync_cmd._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@megaraid_ack_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012megaraid: command posting timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"megaraid_ack_sequence\00", [42 x i8] zeroinitializer }, align 32
@megaraid_ack_sequence._entry_ptr = internal global ptr @megaraid_ack_sequence._entry, section ".printk_index", align 4
@megaraid_mbox_product_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.77, ptr @.str.5, i32 2894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"megaraid_mbox_product_info\00", [37 x i8] zeroinitializer }, align 32
@megaraid_mbox_product_info._entry_ptr = internal global ptr @megaraid_mbox_product_info._entry, section ".printk_index", align 4
@megaraid_mbox_product_info._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.5, i32 2909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014megaraid: Inquiry3 failed\0A\00", [35 x i8] zeroinitializer }, align 32
@megaraid_mbox_product_info._entry_ptr.80 = internal global ptr @megaraid_mbox_product_info._entry.78, section ".printk_index", align 4
@megaraid_mbox_product_info._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.5, i32 2940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014megaraid: product info failed\0A\00", [63 x i8] zeroinitializer }, align 32
@megaraid_mbox_product_info._entry_ptr.83 = internal global ptr @megaraid_mbox_product_info._entry.81, section ".printk_index", align 4
@megaraid_mbox_product_info._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.5, i32 2976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015megaraid: fw version:[%s] bios version:[%s]\0A\00", [49 x i8] zeroinitializer }, align 32
@megaraid_mbox_product_info._entry_ptr.86 = internal global ptr @megaraid_mbox_product_info._entry.84, section ".printk_index", align 4
@mbox_post_sync_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 2709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015megaraid mailbox: wait for FW to boot      \00", [50 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbox_post_sync_cmd\00", [45 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr = internal global ptr @mbox_post_sync_cmd._entry, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.5, i32 2715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\08\08\08\08\08[%03d]\00", [20 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.91 = internal global ptr @mbox_post_sync_cmd._entry.89, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.5, i32 2722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0Amegaraid mailbox: status not available\0A\00", [55 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.94 = internal global ptr @mbox_post_sync_cmd._entry.92, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.5, i32 2726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\08\08\08\08\08[ok] \0A\00", [20 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.97 = internal global ptr @mbox_post_sync_cmd._entry.95, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.5, i32 2741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014megaraid mailbox: could not get poll semaphore\0A\00", [46 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.100 = internal global ptr @mbox_post_sync_cmd._entry.98, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.5, i32 2760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014megaraid mailbox: could not acknowledge\0A\00", [53 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.103 = internal global ptr @mbox_post_sync_cmd._entry.101, section ".printk_index", align 4
@mbox_post_sync_cmd._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.88, ptr @.str.5, i32 2781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd._entry_ptr.105 = internal global ptr @mbox_post_sync_cmd._entry.104, section ".printk_index", align 4
@megaraid_mbox_support_ha._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 3056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016megaraid: cluster firmware, initiator ID: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"megaraid_mbox_support_ha\00", [39 x i8] zeroinitializer }, align 32
@megaraid_mbox_support_ha._entry_ptr = internal global ptr @megaraid_mbox_support_ha._entry, section ".printk_index", align 4
@megaraid_mbox_support_random_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 3092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"megaraid: disable random deletion\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"megaraid_mbox_support_random_del\00", [63 x i8] zeroinitializer }, align 32
@megaraid_mbox_support_random_del._entry_ptr = internal global ptr @megaraid_mbox_support_random_del._entry, section ".printk_index", align 4
@megaraid_mbox_support_random_del._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.5, i32 3105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"megaraid: supports random deletion\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_mbox_support_random_del._entry_ptr.112 = internal global ptr @megaraid_mbox_support_random_del._entry.110, section ".printk_index", align 4
@megaraid_sysfs_alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.113, ptr @.str.5, i32 3775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"megaraid_sysfs_alloc_resources\00", [33 x i8] zeroinitializer }, align 32
@megaraid_sysfs_alloc_resources._entry_ptr = internal global ptr @megaraid_sysfs_alloc_resources._entry, section ".printk_index", align 4
@megaraid_sysfs_alloc_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&raid_dev->sysfs_mtx\00", [43 x i8] zeroinitializer }, align 32
@megaraid_sysfs_alloc_resources.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&raid_dev->sysfs_wait_q\00", [40 x i8] zeroinitializer }, align 32
@megaraid_mbox_dpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 2218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012megaraid critical err: invalid command %d:%d:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"megaraid_mbox_dpc\00", [46 x i8] zeroinitializer }, align 32
@megaraid_mbox_dpc._entry_ptr = internal global ptr @megaraid_mbox_dpc._entry, section ".printk_index", align 4
@megaraid_mbox_dpc._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.5, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015megaraid: aborted cmd [%x] completed\0A\00", [56 x i8] zeroinitializer }, align 32
@megaraid_mbox_dpc._entry_ptr.121 = internal global ptr @megaraid_mbox_dpc._entry.119, section ".printk_index", align 4
@megaraid_mbox_dpc._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.5, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014megaraid mailbox: invalid sg:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@megaraid_mbox_dpc._entry_ptr.124 = internal global ptr @megaraid_mbox_dpc._entry.122, section ".printk_index", align 4
@megaraid_mbox_display_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.5, i32 3320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015megaraid mailbox: status:%#x cmd:%#x id:%#x \00", [49 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"megaraid_mbox_display_scb\00", [38 x i8] zeroinitializer }, align 32
@megaraid_mbox_display_scb._entry_ptr = internal global ptr @megaraid_mbox_display_scb._entry, section ".printk_index", align 4
@megaraid_mbox_display_scb._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.5, i32 3324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sec:%#x lba:%#x addr:%#x ld:%d sg:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@megaraid_mbox_display_scb._entry_ptr.129 = internal global ptr @megaraid_mbox_display_scb._entry.127, section ".printk_index", align 4
@megaraid_mbox_display_scb._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.5, i32 3328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\015scsi cmnd: \00", [18 x i8] zeroinitializer }, align 32
@megaraid_mbox_display_scb._entry_ptr.132 = internal global ptr @megaraid_mbox_display_scb._entry.130, section ".printk_index", align 4
@megaraid_mbox_display_scb._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.5, i32 3331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%#2.02x \00", [23 x i8] zeroinitializer }, align 32
@megaraid_mbox_display_scb._entry_ptr.135 = internal global ptr @megaraid_mbox_display_scb._entry.133, section ".printk_index", align 4
@megaraid_mbox_display_scb._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.5, i32 3334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@megaraid_mbox_display_scb._entry_ptr.138 = internal global ptr @megaraid_mbox_display_scb._entry.136, section ".printk_index", align 4
@megaraid_cmm_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.139, ptr @.str.5, i32 3408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"megaraid_cmm_register\00", [42 x i8] zeroinitializer }, align 32
@megaraid_cmm_register._entry_ptr = internal global ptr @megaraid_cmm_register._entry, section ".printk_index", align 4
@megaraid_cmm_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USER_FREE_LIST_LOCK(adapter)\00", [35 x i8] zeroinitializer }, align 32
@megaraid_cmm_register._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.139, ptr @.str.5, i32 3463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014megaraid mbox: did not register with CMM\0A\00", [52 x i8] zeroinitializer }, align 32
@megaraid_cmm_register._entry_ptr.143 = internal global ptr @megaraid_cmm_register._entry.141, section ".printk_index", align 4
@megaraid_mbox_mm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.5, i32 3507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014megaraid: unsupported management action:%#2x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"megaraid_mbox_mm_handler\00", [39 x i8] zeroinitializer }, align 32
@megaraid_mbox_mm_handler._entry_ptr = internal global ptr @megaraid_mbox_mm_handler._entry, section ".printk_index", align 4
@megaraid_mbox_mm_handler._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.5, i32 3516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014megaraid: reject management request, detaching\0A\00", [46 x i8] zeroinitializer }, align 32
@megaraid_mbox_mm_handler._entry_ptr.148 = internal global ptr @megaraid_mbox_mm_handler._entry.146, section ".printk_index", align 4
@megaraid_mbox_mm_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 3567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014megaraid mbox: bug in cmm handler, lost resources\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"megaraid_mbox_mm_command\00", [39 x i8] zeroinitializer }, align 32
@megaraid_mbox_mm_command._entry_ptr = internal global ptr @megaraid_mbox_mm_command._entry, section ".printk_index", align 4
@megaraid_mbox_mm_command._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.5, i32 3599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015megaraid mbox: LD delete, timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@megaraid_mbox_mm_command._entry_ptr.153 = internal global ptr @megaraid_mbox_mm_command._entry.151, section ".printk_index", align 4
@megaraid_mbox_mm_command._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.5, i32 3616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015megaraid mbox: LD delete, mailbox busy\0A\00", [54 x i8] zeroinitializer }, align 32
@megaraid_mbox_mm_command._entry_ptr.156 = internal global ptr @megaraid_mbox_mm_command._entry.154, section ".printk_index", align 4
@wait_till_fw_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.5, i32 3658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016megaraid: FW has %d pending commands\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_till_fw_empty\00", [45 x i8] zeroinitializer }, align 32
@wait_till_fw_empty._entry_ptr = internal global ptr @wait_till_fw_empty._entry, section ".printk_index", align 4
@megaraid_template_g = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @megaraid_queue_command, ptr null, ptr null, ptr @.str.164, ptr null, ptr null, ptr null, ptr null, ptr @megaraid_abort_handler, ptr null, ptr null, ptr null, ptr @megaraid_reset_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr null, i32 0, i32 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 4, i32 0, ptr @megaraid_shost_groups, ptr @megaraid_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@megaraid_io_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014megaraid mbox: scsi_register failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_io_attach\00", [45 x i8] zeroinitializer }, align 32
@megaraid_io_attach._entry_ptr = internal global ptr @megaraid_io_attach._entry, section ".printk_index", align 4
@megaraid_io_attach._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.5, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014megaraid mbox: scsi_add_host failed\0A\00", [57 x i8] zeroinitializer }, align 32
@megaraid_io_attach._entry_ptr.163 = internal global ptr @megaraid_io_attach._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LSI Logic MegaRAID driver\00", [38 x i8] zeroinitializer }, align 32
@megaraid_shost_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @megaraid_shost_group, ptr null], [24 x i8] zeroinitializer }, align 32
@megaraid_sdev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @megaraid_sdev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__const.megaraid_mbox_build_cmd.skip = private unnamed_addr constant [9 x i8] c"skipping\00", align 1
@__const.megaraid_mbox_build_cmd.scan = private unnamed_addr constant [9 x i8] c"scanning\00", align 1
@megaraid_mbox_build_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.165, ptr @.str.5, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"megaraid_mbox_build_cmd\00", [40 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr = internal global ptr @megaraid_mbox_build_cmd._entry, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.5, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016scsi[%d]: scanning scsi channel %d\00", [59 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.168 = internal global ptr @megaraid_mbox_build_cmd._entry.166, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.165, ptr @.str.5, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" [virtual] for logical drives\0A\00", [33 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.171 = internal global ptr @megaraid_mbox_build_cmd._entry.169, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.165, ptr @.str.5, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014megaraid: unsupported CDB length\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.174 = internal global ptr @megaraid_mbox_build_cmd._entry.172, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.165, ptr @.str.5, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016megaraid[%d]: physical device scan re-enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.177 = internal global ptr @megaraid_mbox_build_cmd._entry.175, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.165, ptr @.str.5, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016scsi[%d]: %s scsi channel %d [Phy %d]\00", [56 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.180 = internal global ptr @megaraid_mbox_build_cmd._entry.178, section ".printk_index", align 4
@megaraid_mbox_build_cmd._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.165, ptr @.str.5, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" for non-raid devices\0A\00", [41 x i8] zeroinitializer }, align 32
@megaraid_mbox_build_cmd._entry_ptr.183 = internal global ptr @megaraid_mbox_build_cmd._entry.181, section ".printk_index", align 4
@megaraid_abort_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.5, i32 2394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014megaraid: aborting cmd=%x <c=%d t=%d l=%d>\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"megaraid_abort_handler\00", [41 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr = internal global ptr @megaraid_abort_handler._entry, section ".printk_index", align 4
@megaraid_abort_handler._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.5, i32 2399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015megaraid: hw error, not aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.188 = internal global ptr @megaraid_abort_handler._entry.186, section ".printk_index", align 4
@megaraid_abort_handler._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.185, ptr @.str.5, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014megaraid: %d[%d:%d], abort from completed list\0A\00", [46 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.191 = internal global ptr @megaraid_abort_handler._entry.189, section ".printk_index", align 4
@megaraid_abort_handler._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.185, ptr @.str.5, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014megaraid abort: [%d:%d], driver owner\0A\00", [55 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.194 = internal global ptr @megaraid_abort_handler._entry.192, section ".printk_index", align 4
@megaraid_abort_handler._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.185, ptr @.str.5, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014megaraid abort: %d[%d:%d], invalid state\0A\00", [52 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.197 = internal global ptr @megaraid_abort_handler._entry.195, section ".printk_index", align 4
@megaraid_abort_handler._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.185, ptr @.str.5, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014megaraid abort: %d[%d:%d], fw owner\0A\00", [57 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.200 = internal global ptr @megaraid_abort_handler._entry.198, section ".printk_index", align 4
@megaraid_abort_handler._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.185, ptr @.str.5, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014megaraid abort: do now own\0A\00", [34 x i8] zeroinitializer }, align 32
@megaraid_abort_handler._entry_ptr.203 = internal global ptr @megaraid_abort_handler._entry.201, section ".printk_index", align 4
@megaraid_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.5, i32 2534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015megaraid: hw error, cannot reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"megaraid_reset_handler\00", [41 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr = internal global ptr @megaraid_reset_handler._entry, section ".printk_index", align 4
@megaraid_reset_handler._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.5, i32 2550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014megaraid: IOCTL packet with %d[%d:%d] being reset\0A\00", [43 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.208 = internal global ptr @megaraid_reset_handler._entry.206, section ".printk_index", align 4
@megaraid_reset_handler._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.205, ptr @.str.5, i32 2562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014megaraid: %d[%d:%d], reset from pending list\0A\00", [48 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.211 = internal global ptr @megaraid_reset_handler._entry.209, section ".printk_index", align 4
@megaraid_reset_handler._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.205, ptr @.str.5, i32 2566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014megaraid: IO packet with %d[%d:%d] being reset\0A\00", [46 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.214 = internal global ptr @megaraid_reset_handler._entry.212, section ".printk_index", align 4
@megaraid_reset_handler._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.205, ptr @.str.5, i32 2581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015megaraid: %d outstanding commands. Max wait %d sec\0A\00", [42 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.217 = internal global ptr @megaraid_reset_handler._entry.215, section ".printk_index", align 4
@megaraid_reset_handler._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.205, ptr @.str.5, i32 2595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"megaraid mbox: Wait for %d commands to complete:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.220 = internal global ptr @megaraid_reset_handler._entry.218, section ".printk_index", align 4
@megaraid_reset_handler._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.205, ptr @.str.5, i32 2611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014megaraid mbox: critical hardware error!\0A\00", [53 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.223 = internal global ptr @megaraid_reset_handler._entry.221, section ".printk_index", align 4
@megaraid_reset_handler._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.205, ptr @.str.5, i32 2620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015megaraid mbox: reset sequence completed successfully\0A\00", [40 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.226 = internal global ptr @megaraid_reset_handler._entry.224, section ".printk_index", align 4
@megaraid_reset_handler._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.205, ptr @.str.5, i32 2637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016megaraid: reservation reset\0A\00", [33 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.229 = internal global ptr @megaraid_reset_handler._entry.227, section ".printk_index", align 4
@megaraid_reset_handler._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.205, ptr @.str.5, i32 2642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014megaraid: reservation reset failed\0A\00", [58 x i8] zeroinitializer }, align 32
@megaraid_reset_handler._entry_ptr.232 = internal global ptr @megaraid_reset_handler._entry.230, section ".printk_index", align 4
@mbox_post_sync_cmd_fast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.5, i32 2829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012megaraid: fast sync command timed out\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mbox_post_sync_cmd_fast\00", [40 x i8] zeroinitializer }, align 32
@mbox_post_sync_cmd_fast._entry_ptr = internal global ptr @mbox_post_sync_cmd_fast._entry, section ".printk_index", align 4
@megaraid_shost_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @megaraid_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@megaraid_shost_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_megaraid_mbox_app_hndl, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_megaraid_mbox_app_hndl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @megaraid_mbox_app_hndl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"megaraid_mbox_app_hndl\00", [41 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@megaraid_sdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @megaraid_sdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@megaraid_sdev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_megaraid_mbox_ld, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_megaraid_mbox_ld = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @megaraid_mbox_ld_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"megaraid_mbox_ld\00", [47 x i8] zeroinitializer }, align 32
@megaraid_mbox_ld_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.5, i32 4047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015megaraid: sysfs get ld map failed: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"megaraid_mbox_ld_show\00", [42 x i8] zeroinitializer }, align 32
@megaraid_mbox_ld_show._entry_ptr = internal global ptr @megaraid_mbox_ld_show._entry, section ".printk_index", align 4
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d %d %d %d\0A\00", [19 x i8] zeroinitializer }, align 32
@megaraid_sysfs_get_ldmap.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&timeout.timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@megaraid_sysfs_get_ldmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.5, i32 3931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015megaraid: sysfs get ld map timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"megaraid_sysfs_get_ldmap\00", [39 x i8] zeroinitializer }, align 32
@megaraid_sysfs_get_ldmap._entry_ptr = internal global ptr @megaraid_sysfs_get_ldmap._entry, section ".printk_index", align 4
@megaraid_sysfs_get_ldmap._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.243, ptr @.str.5, i32 3945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015megaraid: get ld map failed with %x\0A\00", [57 x i8] zeroinitializer }, align 32
@megaraid_sysfs_get_ldmap._entry_ptr.246 = internal global ptr @megaraid_sysfs_get_ldmap._entry.244, section ".printk_index", align 4
@megaraid_sysfs_get_ldmap._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.243, ptr @.str.5, i32 3950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015megaraid: could not issue ldmap command:%x\0A\00", [50 x i8] zeroinitializer }, align 32
@megaraid_sysfs_get_ldmap._entry_ptr.249 = internal global ptr @megaraid_sysfs_get_ldmap._entry.247, section ".printk_index", align 4
@megaraid_mbox_flush_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.5, i32 3207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"megaraid: flush adapter failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"megaraid_mbox_flush_cache\00", [38 x i8] zeroinitializer }, align 32
@megaraid_mbox_flush_cache._entry_ptr = internal global ptr @megaraid_mbox_flush_cache._entry, section ".printk_index", align 4
@megaraid_mbox_flush_cache._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.5, i32 3213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"megaraid: flush disks cache failed\0A\00", [60 x i8] zeroinitializer }, align 32
@megaraid_mbox_flush_cache._entry_ptr.254 = internal global ptr @megaraid_mbox_flush_cache._entry.252, section ".printk_index", align 4
@megaraid_detach_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.5, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\012megaraid: Invalid detach on %#4.04x:%#4.04x:%#4.04x:%#4.04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"megaraid_detach_one\00", [44 x i8] zeroinitializer }, align 32
@megaraid_detach_one._entry_ptr = internal global ptr @megaraid_detach_one._entry, section ".printk_index", align 4
@megaraid_detach_one._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.5, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015megaraid: detaching device %#4.04x:%#4.04x:%#4.04x:%#4.04x\0A\00", [34 x i8] zeroinitializer }, align 32
@megaraid_detach_one._entry_ptr.259 = internal global ptr @megaraid_detach_one._entry.257, section ".printk_index", align 4
@megaraid_io_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.5, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016megaraid: io detach\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"megaraid_io_detach\00", [45 x i8] zeroinitializer }, align 32
@megaraid_io_detach._entry_ptr = internal global ptr @megaraid_io_detach._entry, section ".printk_index", align 4
@megaraid_mbox_shutdown.counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@megaraid_mbox_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.5, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014megaraid: null device in shutdown\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"megaraid_mbox_shutdown\00", [41 x i8] zeroinitializer }, align 32
@megaraid_mbox_shutdown._entry_ptr = internal global ptr @megaraid_mbox_shutdown._entry, section ".printk_index", align 4
@megaraid_mbox_shutdown._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.263, ptr @.str.5, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016megaraid: flushing adapter %d...\00", [61 x i8] zeroinitializer }, align 32
@megaraid_mbox_shutdown._entry_ptr.266 = internal global ptr @megaraid_mbox_shutdown._entry.264, section ".printk_index", align 4
@megaraid_mbox_shutdown._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.263, ptr @.str.5, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"done\0A\00", [26 x i8] zeroinitializer }, align 32
@megaraid_mbox_shutdown._entry_ptr.269 = internal global ptr @megaraid_mbox_shutdown._entry.267, section ".printk_index", align 4
@megaraid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.5, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016megaraid: %s %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"megaraid_init\00", [18 x i8] zeroinitializer }, align 32
@megaraid_init._entry_ptr = internal global ptr @megaraid_init._entry, section ".printk_index", align 4
@.str.272 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(Release Date: Thu Nov 16 15:32:35 EST 2006)\00", [51 x i8] zeroinitializer }, align 32
@megaraid_init._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.271, ptr @.str.5, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014megaraid mailbox: max commands per lun reset to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@megaraid_init._entry_ptr.275 = internal global ptr @megaraid_init._entry.273, section ".printk_index", align 4
@megaraid_init._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.271, ptr @.str.5, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014megaraid: could not register hotplug support.\0A\00", [47 x i8] zeroinitializer }, align 32
@megaraid_init._entry_ptr.278 = internal global ptr @megaraid_init._entry.276, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1315, i64 17699]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 4136]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 16, i64 15, i64 19]
@__sancov_gen_cov_switch_values.281 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.282 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 195, i64 227]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196608]
@__sancov_gen_cov_switch_values.284 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 8, i64 10, i64 18, i64 22, i64 23, i64 26, i64 37, i64 40, i64 42, i64 168, i64 170]
@__sancov_gen_cov_switch_values.285 = internal global [5 x i64] [i64 3, i64 16, i64 6, i64 10, i64 12]
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 140, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [29 x i8] c"megaraid_expose_unconf_disks\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 149, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant [19 x i8] c"max_mbox_busy_wait\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 157, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant [21 x i8] c"megaraid_max_sectors\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 165, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant [21 x i8] c"megaraid_cmd_per_lun\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 173, i32 21 }
@___asan_gen_.307 = private unnamed_addr constant [19 x i8] c"megaraid_fast_load\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 184, i32 21 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"mraid_debug_level\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 195, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 387, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"megaraid_pci_driver\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 292, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 293, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"pci_id_table_g\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 202, i32 29 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 411, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 416, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 420, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 433, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 450, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 458, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 463, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 466, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 469, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 474, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 483, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 495, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 728, i32 32 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 730, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 740, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 747, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 759, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 770, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 870, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 875, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 886, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 973, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1000, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1021, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1029, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1051, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1144, i32 47 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1172, i32 49 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1193, i32 45 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3290, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2089, i32 5 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2892, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2909, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2939, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2974, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2708, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2714, i32 5 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2721, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2726, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2740, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2759, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2781, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3054, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3092, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3105, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3773, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3782, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3784, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2216, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2241, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2262, i32 5 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3318, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3322, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3328, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3331, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3334, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3406, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3417, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3462, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3505, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3515, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3566, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3598, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3615, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3656, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant [20 x i8] c"megaraid_template_g\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 328, i32 34 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 623, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 647, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 330, i32 13 }
@___asan_gen_.760 = private unnamed_addr constant [22 x i8] c"megaraid_shost_groups\00", align 1
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c"megaraid_sdev_groups\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1550, i32 5 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1565, i32 5 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1570, i32 5 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1708, i32 5 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1778, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1791, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 1796, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2391, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2398, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2415, i32 4 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2445, i32 4 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2477, i32 5 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2483, i32 5 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2492, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2533, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2548, i32 4 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2560, i32 5 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2564, i32 5 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2578, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2592, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2610, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2619, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2636, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2641, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 2828, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c"megaraid_shost_group\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 313, i32 1 }
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c"megaraid_shost_attrs\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 308, i32 26 }
@___asan_gen_.931 = private unnamed_addr constant [32 x i8] c"dev_attr_megaraid_mbox_app_hndl\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 305, i32 8 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3982, i32 26 }
@___asan_gen_.940 = private unnamed_addr constant [20 x i8] c"megaraid_sdev_group\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 323, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant [20 x i8] c"megaraid_sdev_attrs\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 318, i32 26 }
@___asan_gen_.946 = private unnamed_addr constant [26 x i8] c"dev_attr_megaraid_mbox_ld\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 315, i32 8 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 4045, i32 4 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 4051, i32 27 }
@___asan_gen_.964 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3912, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3930, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3944, i32 4 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3949, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3207, i32 3 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 3213, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 536, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 544, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 672, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 591, i32 14 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 594, i32 3 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 600, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 605, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 354, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 360, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1076 = private constant [41 x i8] c"../drivers/scsi/megaraid/megaraid_mbox.c\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1076, i32 371, i32 3 }
@llvm.compiler.used = appending global [387 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_busy_wait295, ptr @__UNIQUE_ID_busy_waittype294, ptr @__UNIQUE_ID_cmd_per_lun299, ptr @__UNIQUE_ID_cmd_per_luntype298, ptr @__UNIQUE_ID_debug_level303, ptr @__UNIQUE_ID_debug_leveltype302, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_fast_load301, ptr @__UNIQUE_ID_fast_loadtype300, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_max_sectors297, ptr @__UNIQUE_ID_max_sectorstype296, ptr @__UNIQUE_ID_unconf_disks293, ptr @__UNIQUE_ID_unconf_diskstype292, ptr @__UNIQUE_ID_version291, ptr @__exitcall_megaraid_exit, ptr @__initcall__kmod_megaraid_mbox__304_4059_megaraid_init6, ptr @__modver_attr, ptr @__param_busy_wait, ptr @__param_cmd_per_lun, ptr @__param_debug_level, ptr @__param_fast_load, ptr @__param_max_sectors, ptr @__param_unconf_disks, ptr @mbox_post_sync_cmd._entry, ptr @mbox_post_sync_cmd._entry.101, ptr @mbox_post_sync_cmd._entry.104, ptr @mbox_post_sync_cmd._entry.89, ptr @mbox_post_sync_cmd._entry.92, ptr @mbox_post_sync_cmd._entry.95, ptr @mbox_post_sync_cmd._entry.98, ptr @mbox_post_sync_cmd._entry_ptr, ptr @mbox_post_sync_cmd._entry_ptr.100, ptr @mbox_post_sync_cmd._entry_ptr.103, ptr @mbox_post_sync_cmd._entry_ptr.105, ptr @mbox_post_sync_cmd._entry_ptr.91, ptr @mbox_post_sync_cmd._entry_ptr.94, ptr @mbox_post_sync_cmd._entry_ptr.97, ptr @mbox_post_sync_cmd_fast._entry, ptr @mbox_post_sync_cmd_fast._entry_ptr, ptr @megaraid_abort_handler._entry, ptr @megaraid_abort_handler._entry.186, ptr @megaraid_abort_handler._entry.189, ptr @megaraid_abort_handler._entry.192, ptr @megaraid_abort_handler._entry.195, ptr @megaraid_abort_handler._entry.198, ptr @megaraid_abort_handler._entry.201, ptr @megaraid_abort_handler._entry_ptr, ptr @megaraid_abort_handler._entry_ptr.188, ptr @megaraid_abort_handler._entry_ptr.191, ptr @megaraid_abort_handler._entry_ptr.194, ptr @megaraid_abort_handler._entry_ptr.197, ptr @megaraid_abort_handler._entry_ptr.200, ptr @megaraid_abort_handler._entry_ptr.203, ptr @megaraid_ack_sequence._entry, ptr @megaraid_ack_sequence._entry_ptr, ptr @megaraid_alloc_cmd_packets._entry, ptr @megaraid_alloc_cmd_packets._entry.61, ptr @megaraid_alloc_cmd_packets._entry.63, ptr @megaraid_alloc_cmd_packets._entry.65, ptr @megaraid_alloc_cmd_packets._entry.67, ptr @megaraid_alloc_cmd_packets._entry_ptr, ptr @megaraid_alloc_cmd_packets._entry_ptr.62, ptr @megaraid_alloc_cmd_packets._entry_ptr.64, ptr @megaraid_alloc_cmd_packets._entry_ptr.66, ptr @megaraid_alloc_cmd_packets._entry_ptr.69, ptr @megaraid_cmm_register._entry, ptr @megaraid_cmm_register._entry.141, ptr @megaraid_cmm_register._entry_ptr, ptr @megaraid_cmm_register._entry_ptr.143, ptr @megaraid_detach_one._entry, ptr @megaraid_detach_one._entry.257, ptr @megaraid_detach_one._entry_ptr, ptr @megaraid_detach_one._entry_ptr.259, ptr @megaraid_exit, ptr @megaraid_exit._entry, ptr @megaraid_exit._entry_ptr, ptr @megaraid_init._entry, ptr @megaraid_init._entry.273, ptr @megaraid_init._entry.276, ptr @megaraid_init._entry_ptr, ptr @megaraid_init._entry_ptr.275, ptr @megaraid_init._entry_ptr.278, ptr @megaraid_init_mbox._entry, ptr @megaraid_init_mbox._entry.40, ptr @megaraid_init_mbox._entry.44, ptr @megaraid_init_mbox._entry.47, ptr @megaraid_init_mbox._entry.50, ptr @megaraid_init_mbox._entry.53, ptr @megaraid_init_mbox._entry.56, ptr @megaraid_init_mbox._entry_ptr, ptr @megaraid_init_mbox._entry_ptr.42, ptr @megaraid_init_mbox._entry_ptr.46, ptr @megaraid_init_mbox._entry_ptr.49, ptr @megaraid_init_mbox._entry_ptr.52, ptr @megaraid_init_mbox._entry_ptr.55, ptr @megaraid_init_mbox._entry_ptr.58, ptr @megaraid_io_attach._entry, ptr @megaraid_io_attach._entry.161, ptr @megaraid_io_attach._entry_ptr, ptr @megaraid_io_attach._entry_ptr.163, ptr @megaraid_io_detach._entry, ptr @megaraid_io_detach._entry_ptr, ptr @megaraid_mbox_build_cmd._entry, ptr @megaraid_mbox_build_cmd._entry.166, ptr @megaraid_mbox_build_cmd._entry.169, ptr @megaraid_mbox_build_cmd._entry.172, ptr @megaraid_mbox_build_cmd._entry.175, ptr @megaraid_mbox_build_cmd._entry.178, ptr @megaraid_mbox_build_cmd._entry.181, ptr @megaraid_mbox_build_cmd._entry_ptr, ptr @megaraid_mbox_build_cmd._entry_ptr.168, ptr @megaraid_mbox_build_cmd._entry_ptr.171, ptr @megaraid_mbox_build_cmd._entry_ptr.174, ptr @megaraid_mbox_build_cmd._entry_ptr.177, ptr @megaraid_mbox_build_cmd._entry_ptr.180, ptr @megaraid_mbox_build_cmd._entry_ptr.183, ptr @megaraid_mbox_display_scb._entry, ptr @megaraid_mbox_display_scb._entry.127, ptr @megaraid_mbox_display_scb._entry.130, ptr @megaraid_mbox_display_scb._entry.133, ptr @megaraid_mbox_display_scb._entry.136, ptr @megaraid_mbox_display_scb._entry_ptr, ptr @megaraid_mbox_display_scb._entry_ptr.129, ptr @megaraid_mbox_display_scb._entry_ptr.132, ptr @megaraid_mbox_display_scb._entry_ptr.135, ptr @megaraid_mbox_display_scb._entry_ptr.138, ptr @megaraid_mbox_dpc._entry, ptr @megaraid_mbox_dpc._entry.119, ptr @megaraid_mbox_dpc._entry.122, ptr @megaraid_mbox_dpc._entry_ptr, ptr @megaraid_mbox_dpc._entry_ptr.121, ptr @megaraid_mbox_dpc._entry_ptr.124, ptr @megaraid_mbox_fire_sync_cmd._entry, ptr @megaraid_mbox_fire_sync_cmd._entry_ptr, ptr @megaraid_mbox_flush_cache._entry, ptr @megaraid_mbox_flush_cache._entry.252, ptr @megaraid_mbox_flush_cache._entry_ptr, ptr @megaraid_mbox_flush_cache._entry_ptr.254, ptr @megaraid_mbox_ld_show._entry, ptr @megaraid_mbox_ld_show._entry_ptr, ptr @megaraid_mbox_mm_command._entry, ptr @megaraid_mbox_mm_command._entry.151, ptr @megaraid_mbox_mm_command._entry.154, ptr @megaraid_mbox_mm_command._entry_ptr, ptr @megaraid_mbox_mm_command._entry_ptr.153, ptr @megaraid_mbox_mm_command._entry_ptr.156, ptr @megaraid_mbox_mm_handler._entry, ptr @megaraid_mbox_mm_handler._entry.146, ptr @megaraid_mbox_mm_handler._entry_ptr, ptr @megaraid_mbox_mm_handler._entry_ptr.148, ptr @megaraid_mbox_product_info._entry, ptr @megaraid_mbox_product_info._entry.78, ptr @megaraid_mbox_product_info._entry.81, ptr @megaraid_mbox_product_info._entry.84, ptr @megaraid_mbox_product_info._entry_ptr, ptr @megaraid_mbox_product_info._entry_ptr.80, ptr @megaraid_mbox_product_info._entry_ptr.83, ptr @megaraid_mbox_product_info._entry_ptr.86, ptr @megaraid_mbox_shutdown._entry, ptr @megaraid_mbox_shutdown._entry.264, ptr @megaraid_mbox_shutdown._entry.267, ptr @megaraid_mbox_shutdown._entry_ptr, ptr @megaraid_mbox_shutdown._entry_ptr.266, ptr @megaraid_mbox_shutdown._entry_ptr.269, ptr @megaraid_mbox_support_ha._entry, ptr @megaraid_mbox_support_ha._entry_ptr, ptr @megaraid_mbox_support_random_del._entry, ptr @megaraid_mbox_support_random_del._entry.110, ptr @megaraid_mbox_support_random_del._entry_ptr, ptr @megaraid_mbox_support_random_del._entry_ptr.112, ptr @megaraid_probe_one._entry, ptr @megaraid_probe_one._entry.12, ptr @megaraid_probe_one._entry.15, ptr @megaraid_probe_one._entry.18, ptr @megaraid_probe_one._entry.28, ptr @megaraid_probe_one._entry.31, ptr @megaraid_probe_one._entry.34, ptr @megaraid_probe_one._entry.9, ptr @megaraid_probe_one._entry_ptr, ptr @megaraid_probe_one._entry_ptr.11, ptr @megaraid_probe_one._entry_ptr.14, ptr @megaraid_probe_one._entry_ptr.17, ptr @megaraid_probe_one._entry_ptr.20, ptr @megaraid_probe_one._entry_ptr.30, ptr @megaraid_probe_one._entry_ptr.33, ptr @megaraid_probe_one._entry_ptr.36, ptr @megaraid_reset_handler._entry, ptr @megaraid_reset_handler._entry.206, ptr @megaraid_reset_handler._entry.209, ptr @megaraid_reset_handler._entry.212, ptr @megaraid_reset_handler._entry.215, ptr @megaraid_reset_handler._entry.218, ptr @megaraid_reset_handler._entry.221, ptr @megaraid_reset_handler._entry.224, ptr @megaraid_reset_handler._entry.227, ptr @megaraid_reset_handler._entry.230, ptr @megaraid_reset_handler._entry_ptr, ptr @megaraid_reset_handler._entry_ptr.208, ptr @megaraid_reset_handler._entry_ptr.211, ptr @megaraid_reset_handler._entry_ptr.214, ptr @megaraid_reset_handler._entry_ptr.217, ptr @megaraid_reset_handler._entry_ptr.220, ptr @megaraid_reset_handler._entry_ptr.223, ptr @megaraid_reset_handler._entry_ptr.226, ptr @megaraid_reset_handler._entry_ptr.229, ptr @megaraid_reset_handler._entry_ptr.232, ptr @megaraid_sysfs_alloc_resources._entry, ptr @megaraid_sysfs_alloc_resources._entry_ptr, ptr @megaraid_sysfs_get_ldmap._entry, ptr @megaraid_sysfs_get_ldmap._entry.244, ptr @megaraid_sysfs_get_ldmap._entry.247, ptr @megaraid_sysfs_get_ldmap._entry_ptr, ptr @megaraid_sysfs_get_ldmap._entry_ptr.246, ptr @megaraid_sysfs_get_ldmap._entry_ptr.249, ptr @wait_till_fw_empty._entry, ptr @wait_till_fw_empty._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @megaraid_expose_unconf_disks, ptr @max_mbox_busy_wait, ptr @megaraid_max_sectors, ptr @megaraid_cmd_per_lun, ptr @megaraid_fast_load, ptr @mraid_debug_level, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @megaraid_pci_driver, ptr @.str.6, ptr @pci_id_table_g, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @megaraid_probe_one.__key, ptr @.str.21, ptr @megaraid_probe_one.__key.22, ptr @.str.23, ptr @megaraid_probe_one.__key.24, ptr @.str.25, ptr @megaraid_probe_one.__key.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @megaraid_init_mbox.__key, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @megaraid_sysfs_alloc_resources.__key, ptr @.str.114, ptr @megaraid_sysfs_alloc_resources.__key.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @megaraid_cmm_register.__key, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @megaraid_template_g, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @megaraid_shost_groups, ptr @megaraid_sdev_groups, ptr @.str.165, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @megaraid_shost_group, ptr @megaraid_shost_attrs, ptr @dev_attr_megaraid_mbox_app_hndl, ptr @.str.235, ptr @.str.236, ptr @megaraid_sdev_group, ptr @megaraid_sdev_attrs, ptr @dev_attr_megaraid_mbox_ld, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @megaraid_sysfs_get_ldmap.__key, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @megaraid_mbox_shutdown.counter, ptr @.str.262, ptr @.str.263, ptr @.str.265, ptr @.str.268, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.274, ptr @.str.277], section "llvm.metadata"
@0 = internal global [264 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_expose_unconf_disks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_mbox_busy_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_max_sectors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_cmd_per_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_fast_load to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id_table_g to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_probe_one._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init_mbox._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_alloc_cmd_packets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_alloc_cmd_packets._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_alloc_cmd_packets._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_alloc_cmd_packets._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_alloc_cmd_packets._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_fire_sync_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_ack_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_product_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_product_info._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_product_info._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_product_info._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_support_ha._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_support_random_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_support_random_del._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_alloc_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_alloc_resources.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_dpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_dpc._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_dpc._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_display_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_display_scb._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_display_scb._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_display_scb._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_display_scb._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_cmm_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_cmm_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_cmm_register._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_mm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_mm_handler._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_mm_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_mm_command._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_mm_command._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_till_fw_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_template_g to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_io_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_io_attach._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_build_cmd._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_abort_handler._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_reset_handler._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_post_sync_cmd_fast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_shost_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_shost_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_megaraid_mbox_app_hndl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sdev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_megaraid_mbox_ld to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_ld_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_get_ldmap.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_get_ldmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_get_ldmap._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_sysfs_get_ldmap._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_flush_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_flush_cache._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_detach_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_detach_one._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_io_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_shutdown.counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_shutdown._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mbox_shutdown._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_init._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @megaraid_pci_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.272) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @megaraid_cmd_per_lun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp1 = icmp ugt i32 %1, 128
  br i1 %cmp1, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp3 = icmp sgt i32 %2, -1
  br i1 %cmp3, label %do.end7, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, i32 noundef 128) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.then2.if.end10_crit_edge
  store i32 128, ptr @megaraid_cmd_per_lun, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @__pci_register_driver(ptr noundef nonnull @megaraid_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then14:                                        ; preds = %if.end11
  %3 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp15 = icmp sgt i32 %3, -1
  br i1 %cmp15, label %do.end19, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.then14.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %adp.i = alloca %struct.mraid_mmadp, align 4
  %raw_mbox.i.i = alloca [66 x i8], align 1
  %pinfo_dma_h.i.i = alloca i32, align 4
  %magic64.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.end, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %1 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vendor, align 8
  %conv = zext i16 %2 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %conv1 = zext i16 %4 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %5 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_vendor, align 4
  %conv2 = zext i16 %6 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %7 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_device, align 2
  %conv3 = zext i16 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #13
  %.pr = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp4 = icmp sgt i32 %.pr, -1
  br i1 %cmp4, label %do.end9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number, align 4
  %conv11 = zext i8 %12 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %13 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %14, 3
  %and = and i32 %shr, 31
  %and13 = and i32 %14, 7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv11, i32 noundef %and, i32 noundef %and13) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end9, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %call16 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end15
  %15 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp18 = icmp sgt i32 %15, -1
  br i1 %cmp18, label %do.end23, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  tail call void @pci_set_master(ptr noundef %pdev) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 4544) #14
  %cmp29 = icmp eq ptr %call7.i.i, null
  br i1 %cmp29, label %if.then31, label %if.end41

if.then31:                                        ; preds = %if.end27
  %17 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp32 = icmp sgt i32 %17, -1
  br i1 %cmp32, label %do.end37, label %if.then31.out_probe_one_crit_edge

if.then31.out_probe_one_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_probe_one

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef 434) #13
  br label %out_probe_one

if.end41:                                         ; preds = %if.end27
  %bus42 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %bus42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus42, align 8
  %number43 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %number43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number43, align 4
  %conv44 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv44, 8
  %devfn45 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %22 = ptrtoint ptr %devfn45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devfn45, align 4
  %or = or i32 %shl, %23
  %unique_id = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %unique_id, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %irq46 = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 20
  %27 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq46, align 8
  %pdev47 = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pdev47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pdev, ptr %pdev47, align 8
  %being_detached = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %being_detached, i32 noundef 4) #10
  %29 = ptrtoint ptr %being_detached to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %being_detached, align 4
  %30 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev47, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call49 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body62, label %if.then51

if.then51:                                        ; preds = %if.end41
  %32 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp52 = icmp sgt i32 %32, -1
  br i1 %cmp52, label %do.end57, label %if.then51.out_free_adapter_crit_edge

if.then51.out_free_adapter_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_adapter

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 451) #13
  br label %out_free_adapter

do.body62:                                        ; preds = %if.end41
  %lock = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @megaraid_probe_one.__key, i16 noundef signext 3) #10
  %kscb_pool = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %kscb_pool to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %kscb_pool, ptr %kscb_pool, align 8
  %prev.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %kscb_pool, ptr %prev.i, align 4
  %kscb_pool_lock = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %kscb_pool_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @megaraid_probe_one.__key.22, i16 noundef signext 3) #10
  %pend_list = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %pend_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %pend_list, ptr %pend_list, align 4
  %prev.i154 = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pend_list, ptr %prev.i154, align 8
  %pend_list_lock = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %pend_list_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @megaraid_probe_one.__key.24, i16 noundef signext 3) #10
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %completed_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %completed_list, ptr %completed_list, align 8
  %prev.i155 = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %prev.i155 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %completed_list, ptr %prev.i155, align 4
  %completed_list_lock = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %completed_list_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @megaraid_probe_one.__key.26, i16 noundef signext 3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic64.i) #10
  %39 = ptrtoint ptr %magic64.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %magic64.i, align 4, !annotation !548
  %ito.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 21
  %40 = ptrtoint ptr %ito.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 30, ptr %ito.i, align 4
  %41 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev47, align 8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 13588, i32 noundef 3520, i32 noundef 2) #15
  %cmp.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp.i, label %do.body62.if.then81_crit_edge, label %if.end.i

do.body62.if.then81_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.end.i:                                         ; preds = %do.body62
  %raid_device.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 15
  %43 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i.i.i, ptr %raid_device.i, align 8
  %44 = load i32, ptr @megaraid_fast_load, align 4
  %fast_load.i = getelementptr inbounds %struct.mraid_device_t, ptr %call1.i.i.i.i, i32 0, i32 20
  %45 = ptrtoint ptr %fast_load.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %fast_load.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 47
  %46 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %resource.i, align 8
  %baseport.i = getelementptr inbounds %struct.mraid_device_t, ptr %call1.i.i.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %baseport.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %baseport.i, align 64
  %call2.i = tail call i32 @pci_request_regions(ptr noundef %42, ptr noundef nonnull @.str.37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end9.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %49 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp5.i = icmp sgt i32 %49, -1
  br i1 %cmp5.i, label %do.end.i, label %if.then4.i.out_free_raid_dev.i_crit_edge

if.then4.i.out_free_raid_dev.i_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_raid_dev.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %out_free_raid_dev.i

if.end9.i:                                        ; preds = %if.end.i
  %50 = ptrtoint ptr %baseport.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %baseport.i, align 64
  %call11.i = tail call ptr @ioremap(i32 noundef %51, i32 noundef 128) #10
  %baseaddr.i = getelementptr inbounds %struct.mraid_device_t, ptr %call1.i.i.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call11.i, ptr %baseaddr.i, align 4
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.then13.i, label %do.body23.i

if.then13.i:                                      ; preds = %if.end9.i
  %53 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp14.i = icmp sgt i32 %53, -1
  br i1 %cmp14.i, label %do.end18.i, label %if.then13.i.out_release_regions.i_crit_edge

if.then13.i.out_release_regions.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release_regions.i

do.end18.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %out_release_regions.i

do.body23.i:                                      ; preds = %if.end9.i
  %mailbox_lock.i = getelementptr inbounds %struct.mraid_device_t, ptr %call1.i.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %mailbox_lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @megaraid_init_mbox.__key, i16 noundef signext 3) #10
  %54 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %raid_device.i, align 8
  %56 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev47, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %una_mbox64_dma.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 74, ptr noundef %una_mbox64_dma.i.i, i32 noundef 3264, i32 noundef 0) #10
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i, ptr %55, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %do.body23.i
  %59 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.i = icmp sgt i32 %59, -1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.out_iounmap.i_crit_edge

if.then.i.i.out_iounmap.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_iounmap.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 975) #13
  br label %out_iounmap.i

if.end6.i.i:                                      ; preds = %do.body23.i
  %mbox32.i.i = getelementptr inbounds %struct.mbox64_t, ptr %call.i.i.i, i32 0, i32 2
  %mbox.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 2
  %60 = ptrtoint ptr %mbox32.i.i to i32
  %add.i.i = add i32 %60, 15
  %and.i.i = and i32 %add.i.i, -16
  %61 = inttoptr i32 %and.i.i to ptr
  %62 = ptrtoint ptr %mbox.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %mbox.i.i, align 4
  %sub.i.i = add i32 %and.i.i, -8
  %63 = inttoptr i32 %sub.i.i to ptr
  %mbox64.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %mbox64.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %mbox64.i.i, align 4
  %65 = ptrtoint ptr %una_mbox64_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %una_mbox64_dma.i.i, align 4
  %add15.i.i = sub i32 8, %60
  %sub.ptr.sub.i.i = add i32 %add15.i.i, %and.i.i
  %add16.i.i = add i32 %sub.ptr.sub.i.i, %66
  %mbox_dma.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 4
  %67 = ptrtoint ptr %mbox_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add16.i.i, ptr %mbox_dma.i.i, align 4
  %ibuf_dma_h.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 23
  %call.i187.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %ibuf_dma_h.i.i, i32 noundef 3264, i32 noundef 0) #10
  %ibuf.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 22
  %68 = ptrtoint ptr %ibuf.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i187.i.i, ptr %ibuf.i.i, align 8
  %tobool20.not.i.i = icmp eq ptr %call.i187.i.i, null
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.end30.i.i

if.then21.i.i:                                    ; preds = %if.end6.i.i
  %69 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp22.i.i = icmp sgt i32 %69, -1
  br i1 %cmp22.i.i, label %do.end26.i.i, label %if.then21.i.i.out_free_common_mbox.i.i_crit_edge

if.then21.i.i.out_free_common_mbox.i.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_common_mbox.i.i

do.end26.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 1002) #13
  br label %out_free_common_mbox.i.i

if.end30.i.i:                                     ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 5632) #14
  %kscb_list.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %kscb_list.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i.i.i, ptr %kscb_list.i.i, align 4
  %cmp33.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end43.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  %72 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp35.i.i = icmp sgt i32 %72, -1
  br i1 %cmp35.i.i, label %do.end39.i.i, label %if.then34.i.i.out_free_ibuf.i.i_crit_edge

if.then34.i.i.out_free_ibuf.i.i_crit_edge:        ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_ibuf.i.i

do.end39.i.i:                                     ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 1023) #13
  br label %out_free_ibuf.i.i

if.end43.i.i:                                     ; preds = %if.end30.i.i
  %73 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %raid_device.i, align 8
  %75 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev47, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %call.i188.i.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.70, ptr noundef %dev.i.i.i, i32 noundef 90, i32 noundef 16, i32 noundef 0) #10
  %mbox_pool_handle.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 9
  %77 = ptrtoint ptr %mbox_pool_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i188.i.i, ptr %mbox_pool_handle.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %call.i188.i.i, null
  br i1 %cmp.i.i.i, label %if.end43.i.i.if.then46.i.i_crit_edge, label %if.end.i.i.i

if.end43.i.i.if.then46.i.i_crit_edge:             ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.end.i.i.i:                                     ; preds = %if.end43.i.i
  %mbox_pool.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 8
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0101.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 128
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i
  %i.0101.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %78 = ptrtoint ptr %mbox_pool_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mbox_pool_handle.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool.i.i.i, i32 %i.0101.i.i.i
  %dma_addr.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool.i.i.i, i32 %i.0101.i.i.i, i32 1
  %call4.i.i.i = tail call ptr @dma_pool_alloc(ptr noundef %79, i32 noundef 3264, ptr noundef %dma_addr.i.i.i) #10
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call4.i.i.i, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.then46.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.if.then46.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %81 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev47, align 8
  %dev11.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %call12.i.i.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.71, ptr noundef %dev11.i.i.i, i32 noundef 68, i32 noundef 128, i32 noundef 0) #10
  %epthru_pool_handle.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 11
  %83 = ptrtoint ptr %epthru_pool_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call12.i.i.i, ptr %epthru_pool_handle.i.i.i, align 4
  %cmp14.i.i.i = icmp eq ptr %call12.i.i.i, null
  br i1 %cmp14.i.i.i, label %for.end.i.i.i.if.then46.i.i_crit_edge, label %if.end16.i.i.i

for.end.i.i.i.if.then46.i.i_crit_edge:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.end16.i.i.i:                                   ; preds = %for.end.i.i.i
  %epthru_pool.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 10
  br label %for.body20.i.i.i

for.cond18.i.i.i:                                 ; preds = %for.body20.i.i.i
  %inc33.i.i.i = add nuw nsw i32 %i.1102.i.i.i, 1
  %exitcond106.not.i.i.i = icmp eq i32 %inc33.i.i.i, 128
  br i1 %exitcond106.not.i.i.i, label %for.end34.i.i.i, label %for.cond18.i.i.i.for.body20.i.i.i_crit_edge

for.cond18.i.i.i.for.body20.i.i.i_crit_edge:      ; preds = %for.cond18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20.i.i.i

for.body20.i.i.i:                                 ; preds = %for.cond18.i.i.i.for.body20.i.i.i_crit_edge, %if.end16.i.i.i
  %i.1102.i.i.i = phi i32 [ 0, %if.end16.i.i.i ], [ %inc33.i.i.i, %for.cond18.i.i.i.for.body20.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %epthru_pool_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %epthru_pool_handle.i.i.i, align 4
  %arrayidx22.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool.i.i.i, i32 %i.1102.i.i.i
  %dma_addr23.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool.i.i.i, i32 %i.1102.i.i.i, i32 1
  %call24.i.i.i = tail call ptr @dma_pool_alloc(ptr noundef %85, i32 noundef 3264, ptr noundef %dma_addr23.i.i.i) #10
  %86 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call24.i.i.i, ptr %arrayidx22.i.i.i, align 4
  %tobool29.not.i.i.i = icmp eq ptr %call24.i.i.i, null
  br i1 %tobool29.not.i.i.i, label %for.body20.i.i.i.if.then46.i.i_crit_edge, label %for.cond18.i.i.i

for.body20.i.i.i.if.then46.i.i_crit_edge:         ; preds = %for.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

for.end34.i.i.i:                                  ; preds = %for.cond18.i.i.i
  %87 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev47, align 8
  %dev36.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %call37.i.i.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.72, ptr noundef %dev36.i.i.i, i32 noundef 384, i32 noundef 512, i32 noundef 0) #10
  %sg_pool_handle.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 13
  %89 = ptrtoint ptr %sg_pool_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call37.i.i.i, ptr %sg_pool_handle.i.i.i, align 4
  %cmp39.i.i.i = icmp eq ptr %call37.i.i.i, null
  br i1 %cmp39.i.i.i, label %for.end34.i.i.i.if.then46.i.i_crit_edge, label %if.end41.i.i.i

for.end34.i.i.i.if.then46.i.i_crit_edge:          ; preds = %for.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.end41.i.i.i:                                   ; preds = %for.end34.i.i.i
  %sg_pool.i.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %74, i32 0, i32 12
  br label %for.body45.i.i.i

for.cond43.i.i.i:                                 ; preds = %for.body45.i.i.i
  %inc58.i.i.i = add nuw nsw i32 %i.2103.i.i.i, 1
  %exitcond107.not.i.i.i = icmp eq i32 %inc58.i.i.i, 128
  br i1 %exitcond107.not.i.i.i, label %if.end55.i.i, label %for.cond43.i.i.i.for.body45.i.i.i_crit_edge

for.cond43.i.i.i.for.body45.i.i.i_crit_edge:      ; preds = %for.cond43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.i.i.i

for.body45.i.i.i:                                 ; preds = %for.cond43.i.i.i.for.body45.i.i.i_crit_edge, %if.end41.i.i.i
  %i.2103.i.i.i = phi i32 [ 0, %if.end41.i.i.i ], [ %inc58.i.i.i, %for.cond43.i.i.i.for.body45.i.i.i_crit_edge ]
  %90 = ptrtoint ptr %sg_pool_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sg_pool_handle.i.i.i, align 4
  %arrayidx47.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %sg_pool.i.i.i, i32 %i.2103.i.i.i
  %dma_addr48.i.i.i = getelementptr %struct.mraid_pci_blk, ptr %sg_pool.i.i.i, i32 %i.2103.i.i.i, i32 1
  %call49.i.i.i = tail call ptr @dma_pool_alloc(ptr noundef %91, i32 noundef 3264, ptr noundef %dma_addr48.i.i.i) #10
  %92 = ptrtoint ptr %arrayidx47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call49.i.i.i, ptr %arrayidx47.i.i.i, align 4
  %tobool54.not.i.i.i = icmp eq ptr %call49.i.i.i, null
  br i1 %tobool54.not.i.i.i, label %for.body45.i.i.i.if.then46.i.i_crit_edge, label %for.cond43.i.i.i

for.body45.i.i.i.if.then46.i.i_crit_edge:         ; preds = %for.body45.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46.i.i

if.then46.i.i:                                    ; preds = %for.body45.i.i.i.if.then46.i.i_crit_edge, %for.end34.i.i.i.if.then46.i.i_crit_edge, %for.body20.i.i.i.if.then46.i.i_crit_edge, %for.end.i.i.i.if.then46.i.i_crit_edge, %for.body.i.i.i.if.then46.i.i_crit_edge, %if.end43.i.i.if.then46.i.i_crit_edge
  tail call fastcc void @megaraid_mbox_teardown_dma_pools(ptr noundef %call7.i.i) #10
  %93 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp47.i.i = icmp sgt i32 %93, -1
  br i1 %cmp47.i.i, label %do.end51.i.i, label %if.then46.i.i.out_free_scb_list.i.i_crit_edge

if.then46.i.i.out_free_scb_list.i.i_crit_edge:    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_scb_list.i.i

do.end51.i.i:                                     ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call53.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 1031) #13
  br label %out_free_scb_list.i.i

if.end55.i.i:                                     ; preds = %for.cond43.i.i.i
  %epthru_pool.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 10
  %sg_pool.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 12
  %mbox_pool.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 8
  %ccb_list.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %55, i32 0, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end55.i.i
  %i.0193.i.i = phi i32 [ 0, %if.end55.i.i ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %94 = ptrtoint ptr %kscb_list.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %kscb_list.i.i, align 4
  %add.ptr61.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i
  %arrayidx.i.i = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool.i.i, i32 %i.0193.i.i
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr62.i.i = getelementptr i8, ptr %97, i32 16
  %mbox63.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 1
  %98 = ptrtoint ptr %mbox63.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr62.i.i, ptr %mbox63.i.i, align 4
  %99 = ptrtoint ptr %add.ptr61.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr62.i.i, ptr %add.ptr61.i.i, align 4
  %100 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr68.i.i = getelementptr i8, ptr %100, i32 8
  %mbox6469.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 2
  %101 = ptrtoint ptr %mbox6469.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr68.i.i, ptr %mbox6469.i.i, align 4
  %dma_addr.i.i = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool.i.i, i32 %i.0193.i.i, i32 1
  %102 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma_addr.i.i, align 4
  %add71.i.i = add i32 %103, 16
  %mbox_dma_h.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 3
  %104 = ptrtoint ptr %mbox_dma_h.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add71.i.i, ptr %mbox_dma_h.i.i, align 4
  %and73.i.i = and i32 %103, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end84.i.i, label %if.then75.i.i

if.then75.i.i:                                    ; preds = %for.body.i.i
  %105 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp76.i.i = icmp sgt i32 %105, -1
  br i1 %cmp76.i.i, label %do.end80.i.i, label %if.then75.i.i.out_teardown_dma_pools.i.i_crit_edge

if.then75.i.i.out_teardown_dma_pools.i.i_crit_edge: ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_teardown_dma_pools.i.i

do.end80.i.i:                                     ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call82.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  br label %out_teardown_dma_pools.i.i

if.end84.i.i:                                     ; preds = %for.body.i.i
  %add.ptr.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i
  %arrayidx85.i.i = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool.i.i, i32 %i.0193.i.i
  %106 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx85.i.i, align 4
  %epthru.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 9
  %108 = ptrtoint ptr %epthru.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %epthru.i.i, align 4
  %dma_addr88.i.i = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool.i.i, i32 %i.0193.i.i, i32 1
  %109 = ptrtoint ptr %dma_addr88.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_addr88.i.i, align 4
  %epthru_dma_h.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 10
  %111 = ptrtoint ptr %epthru_dma_h.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %epthru_dma_h.i.i, align 4
  %pthru.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 7
  %112 = ptrtoint ptr %pthru.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %107, ptr %pthru.i.i, align 4
  %pthru_dma_h.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 8
  %113 = ptrtoint ptr %pthru_dma_h.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %pthru_dma_h.i.i, align 4
  %arrayidx91.i.i = getelementptr %struct.mraid_pci_blk, ptr %sg_pool.i.i, i32 %i.0193.i.i
  %114 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx91.i.i, align 4
  %sgl64.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 4
  %116 = ptrtoint ptr %sgl64.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %sgl64.i.i, align 4
  %dma_addr94.i.i = getelementptr %struct.mraid_pci_blk, ptr %sg_pool.i.i, i32 %i.0193.i.i, i32 1
  %117 = ptrtoint ptr %dma_addr94.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr94.i.i, align 4
  %sgl_dma_h.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 6
  %119 = ptrtoint ptr %sgl_dma_h.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %sgl_dma_h.i.i, align 4
  %sgl32.i.i = getelementptr %struct.mbox_ccb_t, ptr %ccb_list.i.i, i32 %i.0193.i.i, i32 5
  %120 = ptrtoint ptr %sgl32.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %115, ptr %sgl32.i.i, align 4
  %121 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr61.i.i, ptr %add.ptr.i.i, align 4
  %gp.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 2
  %122 = ptrtoint ptr %gp.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %gp.i.i, align 4
  %sno.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 3
  %123 = ptrtoint ptr %sno.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %i.0193.i.i, ptr %sno.i.i, align 4
  %scp.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 4
  %124 = ptrtoint ptr %scp.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %scp.i.i, align 4
  %state.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 5
  %125 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %state.i.i, align 4
  %dma_direction.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 6
  %126 = ptrtoint ptr %dma_direction.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 3, ptr %dma_direction.i.i, align 4
  %dma_type.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 7
  %127 = ptrtoint ptr %dma_type.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %dma_type.i.i, align 4
  %dev_channel.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 8
  %128 = ptrtoint ptr %dev_channel.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -1, ptr %dev_channel.i.i, align 4
  %dev_target.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 9
  %129 = ptrtoint ptr %dev_target.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %dev_target.i.i, align 2
  %list.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 1
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %131, ptr noundef %kscb_pool) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end84.i.i.list_add_tail.exit.i.i_crit_edge

if.end84.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %list.i.i, ptr %prev.i, align 4
  %133 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %kscb_pool, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.scb_t, ptr %95, i32 %i.0193.i.i, i32 1, i32 1
  %134 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %list.i.i, ptr %131, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end84.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0193.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %if.end30.i, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

out_teardown_dma_pools.i.i:                       ; preds = %do.end80.i.i, %if.then75.i.i.out_teardown_dma_pools.i.i_crit_edge
  tail call fastcc void @megaraid_mbox_teardown_dma_pools(ptr noundef %call7.i.i) #10
  br label %out_free_scb_list.i.i

out_free_scb_list.i.i:                            ; preds = %out_teardown_dma_pools.i.i, %do.end51.i.i, %if.then46.i.i.out_free_scb_list.i.i_crit_edge
  %136 = ptrtoint ptr %kscb_list.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %kscb_list.i.i, align 4
  tail call void @kfree(ptr noundef %137) #10
  br label %out_free_ibuf.i.i

out_free_ibuf.i.i:                                ; preds = %out_free_scb_list.i.i, %do.end39.i.i, %if.then34.i.i.out_free_ibuf.i.i_crit_edge
  %138 = ptrtoint ptr %ibuf.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ibuf.i.i, align 8
  %140 = ptrtoint ptr %ibuf_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ibuf_dma_h.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %139, i32 noundef %141, i32 noundef 0) #10
  br label %out_free_common_mbox.i.i

out_free_common_mbox.i.i:                         ; preds = %out_free_ibuf.i.i, %do.end26.i.i, %if.then21.i.i.out_free_common_mbox.i.i_crit_edge
  %142 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev47, align 8
  %dev102.i.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %144 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %55, align 4
  %146 = ptrtoint ptr %una_mbox64_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %una_mbox64_dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev102.i.i, i32 noundef 74, ptr noundef %145, i32 noundef %147, i32 noundef 0) #10
  br label %out_iounmap.i

if.end30.i:                                       ; preds = %list_add_tail.exit.i.i
  %148 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %raid_device.i, align 8
  %mbox1.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %mbox1.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mbox1.i.i, align 4
  %busy.i.i.i = getelementptr inbounds %struct.mbox_t, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %busy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i.i275.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i.i275.i, label %if.end30.i.if.end.i.i_crit_edge, label %if.then.i.i.i

if.end30.i.if.end.i.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 5368700) #10
  %155 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %busy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool3.not14.not.i.i.i = icmp eq i8 %156, 0
  br i1 %tobool3.not14.not.i.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %if.then.i.i.i.for.body.i.i278.i_crit_edge

if.then.i.i.i.for.body.i.i278.i_crit_edge:        ; preds = %if.then.i.i.i
  br label %for.body.i.i278.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.i278.i:                                ; preds = %for.body.i.i278.i.for.body.i.i278.i_crit_edge, %if.then.i.i.i.for.body.i.i278.i_crit_edge
  %i.015.i.i.i = phi i32 [ %inc.i.i276.i, %for.body.i.i278.i.for.body.i.i278.i_crit_edge ], [ 0, %if.then.i.i.i.for.body.i.i278.i_crit_edge ]
  tail call void @msleep(i32 noundef 1) #10
  %inc.i.i276.i = add nuw nsw i32 %i.015.i.i.i, 1
  %157 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %busy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool3.not.i.i.i = icmp ne i8 %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.015.i.i.i)
  %cmp.i.i277.i = icmp ult i32 %i.015.i.i.i, 999
  %or.cond.i.i.i = select i1 %tobool3.not.i.i.i, i1 %cmp.i.i277.i, i1 false
  br i1 %or.cond.i.i.i, label %for.body.i.i278.i.for.body.i.i278.i_crit_edge, label %if.end.i.i279.i

for.body.i.i278.i.for.body.i.i278.i_crit_edge:    ; preds = %for.body.i.i278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i278.i

if.end.i.i279.i:                                  ; preds = %for.body.i.i278.i
  br i1 %cmp.i.i277.i, label %if.end.i.i279.i.if.end.i.i_crit_edge, label %if.then.i280.i

if.end.i.i279.i.if.end.i.i_crit_edge:             ; preds = %if.end.i.i279.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i280.i:                                   ; preds = %if.end.i.i279.i
  %159 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %cmp34.i.i = icmp sgt i32 %159, -1
  br i1 %cmp34.i.i, label %do.end39.i286.i, label %if.then.i280.i.if.end42.i_crit_edge

if.then.i280.i.if.end42.i_crit_edge:              ; preds = %if.then.i280.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.end.i.i:                                       ; preds = %if.end.i.i279.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge, %if.end30.i.if.end.i.i_crit_edge
  %160 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %151, align 1
  %raw_mbox.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %151, i32 1
  %161 = getelementptr inbounds i8, ptr %151, i32 2
  %162 = call ptr @memset(ptr %161, i32 0, i32 13)
  %163 = ptrtoint ptr %raw_mbox.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -2, ptr %raw_mbox.sroa.6.0..sroa_idx.i.i, align 1
  %164 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %busy.i.i.i, align 1
  %poll.i.i = getelementptr inbounds %struct.mbox_t, ptr %151, i32 0, i32 12
  %165 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %poll.i.i, align 1
  %ack.i.i = getelementptr inbounds %struct.mbox_t, ptr %151, i32 0, i32 13
  %166 = ptrtoint ptr %ack.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %ack.i.i, align 1
  %numstatus.i.i = getelementptr inbounds %struct.mbox_t, ptr %151, i32 0, i32 9
  %167 = ptrtoint ptr %numstatus.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %numstatus.i.i, align 1
  %status3.i.i = getelementptr inbounds %struct.mbox_t, ptr %151, i32 0, i32 10
  %168 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %status3.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  tail call void @arm_heavy_mb() #10
  %mbox_dma.i281.i = getelementptr inbounds %struct.mraid_device_t, ptr %149, i32 0, i32 4
  %169 = ptrtoint ptr %mbox_dma.i281.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mbox_dma.i281.i, align 4
  %or.i.i = or i32 %170, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %baseaddr.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %149, i32 0, i32 7
  %172 = ptrtoint ptr %baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %baseaddr.i.i, align 4
  %add.ptr.i282.i = getelementptr i8, ptr %173, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.i, i32 %171) #10, !srcloc !551
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i.i
  %i.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i284.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %174 = ptrtoint ptr %numstatus.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %numstatus.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i283.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i283.i, label %land.rhs.i.i, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %176 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %cmp8.i.i = icmp eq i8 %177, -1
  br i1 %cmp8.i.i, label %while.body.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  tail call void @msleep(i32 noundef 1) #10
  %inc.i284.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i284.i, 60001
  br i1 %exitcond.i.i, label %while.end.ithread-pre-split.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.end.ithread-pre-split.i:                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %numstatus.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %.pr.i = load i8, ptr %numstatus.i.i, align 1
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.ithread-pre-split.i, %land.rhs.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %179 = phi i8 [ %.pr.i, %while.end.ithread-pre-split.i ], [ 0, %land.rhs.i.i.while.end.i.i_crit_edge ], [ %175, %while.cond.i.i.while.end.i.i_crit_edge ]
  %tobool32.not.i = phi i1 [ false, %while.end.ithread-pre-split.i ], [ true, %while.cond.i.i.while.end.i.i_crit_edge ], [ true, %land.rhs.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %179)
  %cmp16.i.i = icmp ne i8 %179, 1
  %180 = ptrtoint ptr %baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %baseaddr.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %181, i32 44
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #10, !srcloc !553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !555
  tail call void @arm_heavy_mb() #10
  %183 = ptrtoint ptr %baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %baseaddr.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %184, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %182) #10, !srcloc !551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !556
  tail call void @arm_heavy_mb() #10
  %185 = ptrtoint ptr %baseaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %baseaddr.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %186, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 33554432) #10, !srcloc !551
  %or.cond.i = and i1 %cmp16.i.i, %tobool32.not.i
  br i1 %or.cond.i, label %while.end.i.i.if.end42.i_crit_edge, label %while.end.i.i.if.then33.i_crit_edge

while.end.i.i.if.then33.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33.i

while.end.i.i.if.end42.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

do.end39.i286.i:                                  ; preds = %if.then.i280.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i285.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %if.then33.i

if.then33.i:                                      ; preds = %do.end39.i286.i, %while.end.i.i.if.then33.i_crit_edge
  %.pr319.i = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr319.i)
  %cmp34.i = icmp sgt i32 %.pr319.i, -1
  br i1 %cmp34.i, label %do.end38.i, label %if.then33.i.if.end42.i_crit_edge

if.then33.i.if.end42.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

do.end38.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end38.i, %if.then33.i.if.end42.i_crit_edge, %while.end.i.i.if.end42.i_crit_edge, %if.then.i280.i.if.end42.i_crit_edge
  %187 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %irq46, align 8
  %call.i.i156 = tail call i32 @request_threaded_irq(i32 noundef %188, ptr noundef nonnull @megaraid_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool44.not.i = icmp eq i32 %call.i.i156, 0
  br i1 %tobool44.not.i, label %if.end55.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end42.i
  %189 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %189)
  %cmp46.i = icmp sgt i32 %189, -1
  br i1 %cmp46.i, label %do.end50.i, label %if.then45.i.out_alloc_cmds.i_crit_edge

if.then45.i.out_alloc_cmds.i_crit_edge:           ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_alloc_cmds.i

do.end50.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %irq46, align 8
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %191) #13
  br label %out_alloc_cmds.i

if.end55.i:                                       ; preds = %if.end42.i
  %192 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %raid_device.i, align 8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinfo_dma_h.i.i) #10
  %194 = ptrtoint ptr %pinfo_dma_h.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %pinfo_dma_h.i.i, align 4, !annotation !548
  %195 = getelementptr inbounds i8, ptr %raw_mbox.i.i, i32 1
  %196 = call ptr @memset(ptr %195, i32 0, i32 65)
  %197 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev47, align 8
  %dev.i289.i = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44
  %call.i.i290.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i289.i, i32 noundef 1024, ptr noundef nonnull %pinfo_dma_h.i.i, i32 noundef 3264, i32 noundef 0) #10
  %cmp.i291.i = icmp eq ptr %call.i.i290.i, null
  br i1 %cmp.i291.i, label %if.then.i292.i, label %if.end5.i.i

if.then.i292.i:                                   ; preds = %if.end55.i
  %199 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %199)
  %cmp2.i.i = icmp sgt i32 %199, -1
  br i1 %cmp2.i.i, label %do.end.i293.i, label %if.then.i292.i.megaraid_mbox_product_info.exit.thread.i_crit_edge

if.then.i292.i.megaraid_mbox_product_info.exit.thread.i_crit_edge: ; preds = %if.then.i292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_product_info.exit.thread.i

do.end.i293.i:                                    ; preds = %if.then.i292.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.77, i32 noundef 2894) #13
  br label %megaraid_mbox_product_info.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end55.i
  %200 = ptrtoint ptr %ibuf_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ibuf_dma_h.i.i, align 4
  %xferaddr.i.i = getelementptr inbounds %struct.mbox_t, ptr %raw_mbox.i.i, i32 0, i32 4
  %202 = ptrtoint ptr %xferaddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %xferaddr.i.i, align 1
  %203 = ptrtoint ptr %ibuf.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ibuf.i.i, align 8
  %205 = call ptr @memset(ptr %204, i32 0, i32 4096)
  %206 = ptrtoint ptr %raw_mbox.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -95, ptr %raw_mbox.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [66 x i8], ptr %raw_mbox.i.i, i32 0, i32 2
  %207 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 15, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr inbounds [66 x i8], ptr %raw_mbox.i.i, i32 0, i32 3
  %208 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 2, ptr %arrayidx7.i.i, align 1
  %call9.i.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %raw_mbox.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %cmp10.not.i.i, label %if.end22.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end5.i.i
  %209 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %209)
  %cmp12.i.i = icmp sgt i32 %209, -1
  br i1 %cmp12.i.i, label %do.end16.i.i, label %if.then11.i.i.if.end19.i.i_crit_edge

if.then11.i.i.if.end19.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

do.end16.i.i:                                     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #13
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %do.end16.i.i, %if.then11.i.i.if.end19.i.i_crit_edge
  %210 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev47, align 8
  %dev21.i.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  %212 = ptrtoint ptr %pinfo_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pinfo_dma_h.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev21.i.i, i32 noundef 1024, ptr noundef nonnull %call.i.i290.i, i32 noundef %213, i32 noundef 0) #10
  br label %megaraid_mbox_product_info.exit.thread.i

if.end22.i.i:                                     ; preds = %if.end5.i.i
  %214 = ptrtoint ptr %ibuf.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ibuf.i.i, align 8
  br label %for.body.i298.i

for.body.i298.i:                                  ; preds = %for.body.i298.i.for.body.i298.i_crit_edge, %if.end22.i.i
  %i.0112.i.i = phi i32 [ 0, %if.end22.i.i ], [ %inc.i296.i, %for.body.i298.i.for.body.i298.i_crit_edge ]
  %arrayidx25.i.i = getelementptr %struct.mraid_inquiry3_t, ptr %215, i32 0, i32 14, i32 %i.0112.i.i
  %216 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx25.i.i, align 1
  %arrayidx27.i.i = getelementptr %struct.mraid_device_t, ptr %193, i32 0, i32 17, i32 %i.0112.i.i
  %218 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx27.i.i, align 1
  %inc.i296.i = add nuw nsw i32 %i.0112.i.i, 1
  %exitcond.not.i297.i = icmp eq i32 %inc.i296.i, 75
  br i1 %exitcond.not.i297.i, label %for.end.i.i, label %for.body.i298.i.for.body.i298.i_crit_edge

for.body.i298.i.for.body.i298.i_crit_edge:        ; preds = %for.body.i298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i298.i

for.end.i.i:                                      ; preds = %for.body.i298.i
  %219 = call ptr @memset(ptr %195, i32 0, i32 65)
  %220 = ptrtoint ptr %pinfo_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %pinfo_dma_h.i.i, align 4
  %222 = ptrtoint ptr %xferaddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %221, ptr %xferaddr.i.i, align 1
  %223 = ptrtoint ptr %raw_mbox.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -95, ptr %raw_mbox.i.i, align 1
  %224 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 14, ptr %arrayidx6.i.i, align 1
  %call33.i.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %call7.i.i, ptr noundef nonnull %raw_mbox.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %cmp34.not.i.i, label %if.end46.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %for.end.i.i
  %225 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %225)
  %cmp36.i.i = icmp sgt i32 %225, -1
  br i1 %cmp36.i.i, label %do.end40.i.i, label %if.then35.i.i.if.end43.i299.i_crit_edge

if.then35.i.i.if.end43.i299.i_crit_edge:          ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i299.i

do.end40.i.i:                                     ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #13
  br label %if.end43.i299.i

if.end43.i299.i:                                  ; preds = %do.end40.i.i, %if.then35.i.i.if.end43.i299.i_crit_edge
  %226 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdev47, align 8
  %dev45.i.i = getelementptr inbounds %struct.pci_dev, ptr %227, i32 0, i32 44
  %228 = ptrtoint ptr %pinfo_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %pinfo_dma_h.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev45.i.i, i32 noundef 1024, ptr noundef nonnull %call.i.i290.i, i32 noundef %229, i32 noundef 0) #10
  br label %megaraid_mbox_product_info.exit.thread.i

if.end46.i.i:                                     ; preds = %for.end.i.i
  %nchannels.i.i = getelementptr inbounds %struct.mraid_pinfo_t, ptr %call.i.i290.i, i32 0, i32 6
  %230 = ptrtoint ptr %nchannels.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %nchannels.i.i, align 1
  %max_channel.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 16
  %232 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %max_channel.i.i, align 4
  %max_target.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 17
  %233 = ptrtoint ptr %max_target.i.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 41, ptr %max_target.i.i, align 2
  %max_lun.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 18
  %234 = ptrtoint ptr %max_lun.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 8, ptr %max_lun.i.i, align 8
  %max_cmds.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 27
  %235 = ptrtoint ptr %max_cmds.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 128, ptr %max_cmds.i.i, align 8
  %fw_version.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 28
  %bios_version.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 29
  %fw_version51.i.i = getelementptr inbounds %struct.mraid_pinfo_t, ptr %call.i.i290.i, i32 0, i32 2
  %236 = call ptr @memset(ptr %fw_version.i.i, i32 0, i32 32)
  %237 = ptrtoint ptr %fw_version51.i.i to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %fw_version51.i.i, align 1
  %239 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %fw_version.i.i, align 4
  %arrayidx54.i.i = getelementptr %struct.adapter_t, ptr %call7.i.i, i32 0, i32 28, i32 4
  %240 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %arrayidx54.i.i, align 8
  %bios_version57.i.i = getelementptr inbounds %struct.mraid_pinfo_t, ptr %call.i.i290.i, i32 0, i32 3
  %241 = ptrtoint ptr %bios_version57.i.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 4)
  %242 = load i32, ptr %bios_version57.i.i, align 1
  %243 = ptrtoint ptr %bios_version.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %bios_version.i.i, align 4
  %arrayidx60.i.i = getelementptr %struct.adapter_t, ptr %call7.i.i, i32 0, i32 29, i32 4
  %244 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %arrayidx60.i.i, align 8
  %245 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %245)
  %cmp61.i.i = icmp sgt i32 %245, -1
  br i1 %cmp61.i.i, label %do.end65.i.i, label %if.end46.i.i.if.end59.i_crit_edge

if.end46.i.i.if.end59.i_crit_edge:                ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

do.end65.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call71.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %fw_version.i.i, ptr noundef %bios_version.i.i) #13
  br label %if.end59.i

megaraid_mbox_product_info.exit.thread.i:         ; preds = %if.end43.i299.i, %if.end19.i.i, %do.end.i293.i, %if.then.i292.i.megaraid_mbox_product_info.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfo_dma_h.i.i) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox.i.i) #10
  br label %out_free_irq.i

if.end59.i:                                       ; preds = %do.end65.i.i, %if.end46.i.i.if.end59.i_crit_edge
  %246 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pdev47, align 8
  %dev74.i.i = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44
  %248 = ptrtoint ptr %pinfo_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pinfo_dma_h.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev74.i.i, i32 noundef 1024, ptr noundef nonnull %call.i.i290.i, i32 noundef %249, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfo_dma_h.i.i) #10
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox.i.i) #10
  %max_cdb_sz.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 30
  %250 = ptrtoint ptr %max_cdb_sz.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 10, ptr %max_cdb_sz.i, align 4
  %call60.i = call fastcc i32 @megaraid_mbox_extended_cdb(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp eq i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then62.i, label %if.end59.i.if.end64.i_crit_edge

if.end59.i.if.end64.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %251 = ptrtoint ptr %max_cdb_sz.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 16, ptr %max_cdb_sz.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end64.i_crit_edge
  %ha.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 31
  %252 = ptrtoint ptr %ha.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %ha.i, align 1
  %init_id.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 32
  %253 = ptrtoint ptr %init_id.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 -1, ptr %init_id.i, align 2
  %call66.i = call fastcc i32 @megaraid_mbox_support_ha(ptr noundef %call7.i.i, ptr noundef %init_id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp eq i32 %call66.i, 0
  br i1 %cmp67.i, label %if.then68.i, label %if.end64.i.if.end70.i_crit_edge

if.end64.i.if.end70.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = ptrtoint ptr %ha.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 1, ptr %ha.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then68.i, %if.end64.i.if.end70.i_crit_edge
  call fastcc void @megaraid_mbox_setup_device_map(ptr noundef %call7.i.i) #10
  %call71.i = call fastcc i32 @megaraid_mbox_support_random_del(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end84.i_crit_edge, label %if.end70.i.for.body.i_crit_edge

if.end70.i.for.body.i_crit_edge:                  ; preds = %if.end70.i
  br label %for.body.i

if.end70.i.if.end84.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end70.i.for.body.i_crit_edge
  %i.0323.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end70.i.for.body.i_crit_edge ]
  %255 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %max_channel.i.i, align 4
  %idxprom.i = zext i8 %256 to i32
  %arrayidx76.i = getelementptr %struct.adapter_t, ptr %call7.i.i, i32 0, i32 14, i32 %idxprom.i, i32 %i.0323.i
  %257 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx76.i, align 4
  %add.i = add i32 %258, 128
  store i32 %add.i, ptr %arrayidx76.i, align 4
  %inc.i = add nuw nsw i32 %i.0323.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %max_channel.i.i, align 4
  %idxprom79.i = zext i8 %260 to i32
  %261 = ptrtoint ptr %init_id.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %init_id.i, align 2
  %idxprom82.i = zext i16 %262 to i32
  %arrayidx83.i = getelementptr %struct.adapter_t, ptr %call7.i.i, i32 0, i32 14, i32 %idxprom79.i, i32 %idxprom82.i
  %263 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 255, ptr %arrayidx83.i, align 4
  %random_del_supported.i = getelementptr inbounds %struct.mraid_device_t, ptr %call1.i.i.i.i, i32 0, i32 28
  %264 = ptrtoint ptr %random_del_supported.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 1, ptr %random_del_supported.i, align 16
  br label %if.end84.i

if.end84.i:                                       ; preds = %for.end.i, %if.end70.i.if.end84.i_crit_edge
  %call85.i = call fastcc i32 @megaraid_mbox_get_max_sg(ptr noundef %call7.i.i) #10
  %conv.i = trunc i32 %call85.i to i16
  %sglen.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 13
  %265 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %conv.i, ptr %sglen.i, align 4
  call fastcc void @megaraid_mbox_enum_raid_scsi(ptr noundef %call7.i.i) #10
  %266 = load i32, ptr @megaraid_max_sectors, align 4
  %conv86.i = trunc i32 %266 to i16
  %max_sectors.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 33
  %267 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv86.i, ptr %max_sectors.i, align 8
  %268 = load i32, ptr @megaraid_cmd_per_lun, align 4
  %conv87.i = trunc i32 %268 to i16
  %cmd_per_lun.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 34
  %269 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv87.i, ptr %cmd_per_lun.i, align 2
  %call88.i = call fastcc i32 @megaraid_sysfs_alloc_resources(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.not.i = icmp eq i32 %call88.i, 0
  br i1 %cmp89.not.i, label %if.end92.i, label %if.end84.i.out_free_irq.i_crit_edge

if.end84.i.out_free_irq.i_crit_edge:              ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_irq.i

if.end92.i:                                       ; preds = %if.end84.i
  %270 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pdev47, align 8
  %call94.i = call i32 @pci_read_config_dword(ptr noundef %271, i32 noundef 164, ptr noundef nonnull %magic64.i) #10
  %272 = ptrtoint ptr %magic64.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %magic64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 665, i32 %273)
  %cmp95.i = icmp eq i32 %273, 665
  br i1 %cmp95.i, label %land.lhs.true.i, label %if.end92.i.lor.lhs.false.i_crit_edge

if.end92.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end92.i
  %274 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pdev47, align 8
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %275, i32 0, i32 10
  %276 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %subsystem_device.i, align 2
  %278 = zext i16 %277 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values)
  switch i16 %277, label %land.lhs.true.i.if.then164.i_crit_edge [
    i16 1315, label %land.lhs.true.i.lor.lhs.false.i_crit_edge
    i16 17699, label %land.lhs.true.i.lor.lhs.false.i_crit_edge186
  ]

land.lhs.true.i.lor.lhs.false.i_crit_edge186:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i.if.then164.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge186, %if.end92.i.lor.lhs.false.i_crit_edge
  %279 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pdev47, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 7
  %281 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %vendor.i, align 8
  %283 = zext i16 %282 to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.279)
  switch i16 %282, label %lor.lhs.false.i.if.end194.i_crit_edge [
    i16 4096, label %land.lhs.true111.i
    i16 4136, label %land.lhs.true146.i
  ]

lor.lhs.false.i.if.end194.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

land.lhs.true111.i:                               ; preds = %lor.lhs.false.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 8
  %284 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %device.i, align 2
  %.off = add i16 %285, -1031
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %land.lhs.true111.i.if.then164.i_crit_edge, label %land.lhs.true111.i.if.end194.i_crit_edge

land.lhs.true111.i.if.end194.i_crit_edge:         ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

land.lhs.true111.i.if.then164.i_crit_edge:        ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164.i

land.lhs.true146.i:                               ; preds = %lor.lhs.false.i
  %device148.i = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 8
  %286 = ptrtoint ptr %device148.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %device148.i, align 2
  %288 = zext i16 %287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %288, ptr @__sancov_gen_cov_switch_values.280)
  switch i16 %287, label %land.lhs.true146.i.if.end194.i_crit_edge [
    i16 15, label %land.lhs.true146.i.if.then164.i_crit_edge
    i16 19, label %land.lhs.true146.i.if.then164.i_crit_edge187
  ]

land.lhs.true146.i.if.then164.i_crit_edge187:     ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164.i

land.lhs.true146.i.if.then164.i_crit_edge:        ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164.i

land.lhs.true146.i.if.end194.i_crit_edge:         ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

if.then164.i:                                     ; preds = %land.lhs.true146.i.if.then164.i_crit_edge, %land.lhs.true146.i.if.then164.i_crit_edge187, %land.lhs.true111.i.if.then164.i_crit_edge, %land.lhs.true.i.if.then164.i_crit_edge
  %289 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pdev47, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  %call166.i = call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.then164.i.if.end194.i_crit_edge, label %if.then168.i

if.then164.i.if.end194.i_crit_edge:               ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

if.then168.i:                                     ; preds = %if.then164.i
  %291 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %291)
  %cmp169.i = icmp sgt i32 %291, -1
  br i1 %cmp169.i, label %do.end174.i, label %if.then168.i.if.end177.i_crit_edge

if.then168.i.if.end177.i_crit_edge:               ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i

do.end174.i:                                      ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  %call176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #13
  br label %if.end177.i

if.end177.i:                                      ; preds = %do.end174.i, %if.then168.i.if.end177.i_crit_edge
  %292 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %pdev47, align 8
  %dev179.i = getelementptr inbounds %struct.pci_dev, ptr %293, i32 0, i32 44
  %call180.i = call i32 @dma_set_mask(ptr noundef %dev179.i, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %if.end177.i.if.end194.i_crit_edge, label %if.then182.i

if.end177.i.if.end194.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

if.then182.i:                                     ; preds = %if.end177.i
  %294 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %294)
  %cmp183.i = icmp sgt i32 %294, -1
  br i1 %cmp183.i, label %do.end188.i, label %if.then182.i.out_free_sysfs_res.i_crit_edge

if.then182.i.out_free_sysfs_res.i_crit_edge:      ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_sysfs_res.i

do.end188.i:                                      ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #12
  %call190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %out_free_sysfs_res.i

if.end194.i:                                      ; preds = %if.end177.i.if.end194.i_crit_edge, %if.then164.i.if.end194.i_crit_edge, %land.lhs.true146.i.if.end194.i_crit_edge, %land.lhs.true111.i.if.end194.i_crit_edge, %lor.lhs.false.i.if.end194.i_crit_edge
  %295 = ptrtoint ptr %call7.i.i to i32
  call void @tasklet_init(ptr noundef %call7.i.i, ptr noundef nonnull @megaraid_mbox_dpc, i32 noundef %295) #10
  %296 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp195.i = icmp sgt i32 %296, 0
  br i1 %cmp195.i, label %do.end200.i, label %if.end194.i.if.end91_crit_edge

if.end194.i.if.end91_crit_edge:                   ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.end200.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #12
  %call202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %if.end91

out_free_sysfs_res.i:                             ; preds = %do.end188.i, %if.then182.i.out_free_sysfs_res.i_crit_edge
  call fastcc void @megaraid_sysfs_free_resources(ptr noundef %call7.i.i) #10
  br label %out_free_irq.i

out_free_irq.i:                                   ; preds = %out_free_sysfs_res.i, %if.end84.i.out_free_irq.i_crit_edge, %megaraid_mbox_product_info.exit.thread.i
  %297 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %irq46, align 8
  %call205.i = call ptr @free_irq(i32 noundef %298, ptr noundef %call7.i.i) #10
  br label %out_alloc_cmds.i

out_alloc_cmds.i:                                 ; preds = %out_free_irq.i, %do.end50.i, %if.then45.i.out_alloc_cmds.i_crit_edge
  %299 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %raid_device.i, align 8
  call fastcc void @megaraid_mbox_teardown_dma_pools(ptr noundef %call7.i.i) #10
  %301 = ptrtoint ptr %kscb_list.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %kscb_list.i.i, align 4
  call void @kfree(ptr noundef %302) #10
  %303 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pdev47, align 8
  %dev.i304.i = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 44
  %305 = ptrtoint ptr %ibuf.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ibuf.i.i, align 8
  %307 = ptrtoint ptr %ibuf_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ibuf_dma_h.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i304.i, i32 noundef 4096, ptr noundef %306, i32 noundef %308, i32 noundef 0) #10
  %309 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pdev47, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44
  %311 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %300, align 4
  %una_mbox64_dma.i307.i = getelementptr inbounds %struct.mraid_device_t, ptr %300, i32 0, i32 1
  %313 = ptrtoint ptr %una_mbox64_dma.i307.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %una_mbox64_dma.i307.i, align 4
  call void @dma_free_attrs(ptr noundef %dev2.i.i, i32 noundef 74, ptr noundef %312, i32 noundef %314, i32 noundef 0) #10
  br label %out_iounmap.i

out_iounmap.i:                                    ; preds = %out_alloc_cmds.i, %out_free_common_mbox.i.i, %do.end.i.i, %if.then.i.i.out_iounmap.i_crit_edge
  %315 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %baseaddr.i, align 4
  call void @iounmap(ptr noundef %316) #10
  br label %out_release_regions.i

out_release_regions.i:                            ; preds = %out_iounmap.i, %do.end18.i, %if.then13.i.out_release_regions.i_crit_edge
  call void @pci_release_regions(ptr noundef %42) #10
  br label %out_free_raid_dev.i

out_free_raid_dev.i:                              ; preds = %out_release_regions.i, %do.end.i, %if.then4.i.out_free_raid_dev.i_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #10
  br label %if.then81

if.then81:                                        ; preds = %out_free_raid_dev.i, %do.body62.if.then81_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic64.i) #10
  %317 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %317)
  %cmp82 = icmp sgt i32 %317, -1
  br i1 %cmp82, label %do.end87, label %if.then81.out_free_adapter_crit_edge

if.then81.out_free_adapter_crit_edge:             ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_adapter

do.end87:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %out_free_adapter

if.end91:                                         ; preds = %do.end200.i, %if.end194.i.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic64.i) #10
  %318 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %raid_device.i, align 8
  call void @llvm.lifetime.start.p0(i64 476, ptr nonnull %adp.i) #10
  %320 = call ptr @memset(ptr %adp.i, i32 255, i32 476)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %321 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %321, i32 noundef 3520, i32 noundef 1408) #14
  %uscb_list.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 24
  %322 = ptrtoint ptr %uscb_list.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %call7.i.i.i.i, ptr %uscb_list.i, align 8
  %cmp.i158 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i158, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end91
  %323 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %323)
  %cmp2.i = icmp sgt i32 %323, -1
  br i1 %cmp2.i, label %do.end.i159, label %if.then95.thread

if.then95.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 476, ptr nonnull %adp.i) #10
  br label %out_fini_mbox

do.end.i159:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.139, i32 noundef 3408) #13
  br label %if.then95

if.end5.i:                                        ; preds = %if.end91
  %uscb_pool.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 25
  %324 = ptrtoint ptr %uscb_pool.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile ptr %uscb_pool.i, ptr %uscb_pool.i, align 4
  %prev.i.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 25, i32 1
  %325 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %uscb_pool.i, ptr %prev.i.i, align 8
  %uscb_pool_lock.i = getelementptr inbounds %struct.adapter_t, ptr %call7.i.i, i32 0, i32 26
  call void @__raw_spin_lock_init(ptr noundef %uscb_pool_lock.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @megaraid_cmm_register.__key, i16 noundef signext 3) #10
  %uccb_list.i = getelementptr inbounds %struct.mraid_device_t, ptr %319, i32 0, i32 15
  %umbox64.i = getelementptr inbounds %struct.mraid_device_t, ptr %319, i32 0, i32 16
  br label %for.body.i162

for.body.i162:                                    ; preds = %list_add_tail.exit.i.for.body.i162_crit_edge, %if.end5.i
  %i.070.i = phi i32 [ 0, %if.end5.i ], [ %inc.i164, %list_add_tail.exit.i.for.body.i162_crit_edge ]
  %326 = ptrtoint ptr %uscb_list.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %uscb_list.i, align 8
  %add.ptr.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i
  %add.ptr12.i = getelementptr %struct.mbox_ccb_t, ptr %uccb_list.i, i32 %i.070.i
  %328 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %add.ptr12.i, ptr %add.ptr.i, align 4
  %add.ptr15.i = getelementptr %struct.mbox64_t, ptr %umbox64.i, i32 %i.070.i
  %mbox64.i = getelementptr %struct.mbox_ccb_t, ptr %uccb_list.i, i32 %i.070.i, i32 2
  %329 = ptrtoint ptr %mbox64.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %add.ptr15.i, ptr %mbox64.i, align 4
  %mbox32.i = getelementptr %struct.mbox64_t, ptr %umbox64.i, i32 %i.070.i, i32 2
  %mbox.i = getelementptr %struct.mbox_ccb_t, ptr %uccb_list.i, i32 %i.070.i, i32 1
  %330 = ptrtoint ptr %mbox.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %mbox32.i, ptr %mbox.i, align 4
  %331 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %mbox32.i, ptr %add.ptr12.i, align 4
  %gp.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 2
  %332 = ptrtoint ptr %gp.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %gp.i, align 4
  %add.i160 = add nuw nsw i32 %i.070.i, 128
  %sno.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 3
  %333 = ptrtoint ptr %sno.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %add.i160, ptr %sno.i, align 4
  %scp.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 4
  %334 = ptrtoint ptr %scp.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr null, ptr %scp.i, align 4
  %state.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 5
  %335 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %state.i, align 4
  %dma_direction.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 6
  %336 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 3, ptr %dma_direction.i, align 4
  %dma_type.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 7
  %337 = ptrtoint ptr %dma_type.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 0, ptr %dma_type.i, align 4
  %dev_channel.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 8
  %338 = ptrtoint ptr %dev_channel.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 -1, ptr %dev_channel.i, align 4
  %dev_target.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 9
  %339 = ptrtoint ptr %dev_target.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 -1, ptr %dev_target.i, align 2
  %list.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 1
  %340 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i161 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %341, ptr noundef %uscb_pool.i) #10
  br i1 %call.i.i.i161, label %if.end.i.i.i163, label %for.body.i162.list_add_tail.exit.i_crit_edge

for.body.i162.list_add_tail.exit.i_crit_edge:     ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i163:                                  ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #12
  %342 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %list.i, ptr %prev.i.i, align 8
  %343 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %uscb_pool.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.scb_t, ptr %327, i32 %i.070.i, i32 1, i32 1
  %344 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %341, ptr %prev3.i.i.i, align 4
  %345 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %345)
  store volatile ptr %list.i, ptr %341, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i163, %for.body.i162.list_add_tail.exit.i_crit_edge
  %inc.i164 = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i165 = icmp eq i32 %inc.i164, 32
  br i1 %exitcond.not.i165, label %for.end.i166, label %list_add_tail.exit.i.for.body.i162_crit_edge

list_add_tail.exit.i.for.body.i162_crit_edge:     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i162

for.end.i166:                                     ; preds = %list_add_tail.exit.i
  %346 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %unique_id, align 4
  %348 = ptrtoint ptr %adp.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %adp.i, align 4
  %drvr_type.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 1
  %349 = ptrtoint ptr %drvr_type.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 1, ptr %drvr_type.i, align 4
  %drvr_data.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 2
  %350 = ptrtoint ptr %drvr_data.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %295, ptr %drvr_data.i, align 4
  %351 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %pdev47, align 8
  %pdev20.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 5
  %353 = ptrtoint ptr %pdev20.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %352, ptr %pdev20.i, align 4
  %issue_uioc.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 6
  %354 = ptrtoint ptr %issue_uioc.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr @megaraid_mbox_mm_handler, ptr %issue_uioc.i, align 4
  %timeout.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 3
  %355 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 300, ptr %timeout.i, align 4
  %max_kioc.i = getelementptr inbounds %struct.mraid_mmadp, ptr %adp.i, i32 0, i32 4
  %356 = ptrtoint ptr %max_kioc.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 32, ptr %max_kioc.i, align 2
  %call21.i = call i32 @mraid_mm_register_adp(ptr noundef nonnull %adp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.end105, label %if.then23.i

if.then23.i:                                      ; preds = %for.end.i166
  %357 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %357)
  %cmp24.i = icmp sgt i32 %357, -1
  br i1 %cmp24.i, label %do.end28.i, label %if.then23.i.if.end31.i_crit_edge

if.then23.i.if.end31.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.then23.i.if.end31.i_crit_edge
  %358 = ptrtoint ptr %uscb_list.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %uscb_list.i, align 8
  call void @kfree(ptr noundef %359) #10
  br label %if.then95

if.then95:                                        ; preds = %if.end31.i, %do.end.i159
  %.pr173 = load i32, ptr @mraid_debug_level, align 4
  call void @llvm.lifetime.end.p0(i64 476, ptr nonnull %adp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr173)
  %cmp96 = icmp sgt i32 %.pr173, -1
  br i1 %cmp96, label %do.end101, label %if.then95.out_fini_mbox_crit_edge

if.then95.out_fini_mbox_crit_edge:                ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_fini_mbox

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %out_fini_mbox

if.end105:                                        ; preds = %for.end.i166
  call void @llvm.lifetime.end.p0(i64 476, ptr nonnull %adp.i) #10
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %360 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call106 = call fastcc i32 @megaraid_io_attach(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.end105.cleanup_crit_edge, label %if.then109

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109:                                       ; preds = %if.end105
  %361 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %361)
  %cmp110 = icmp sgt i32 %361, -1
  br i1 %cmp110, label %do.end115, label %if.then109.out_cmm_unreg_crit_edge

if.then109.out_cmm_unreg_crit_edge:               ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_cmm_unreg

do.end115:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %out_cmm_unreg

out_cmm_unreg:                                    ; preds = %do.end115, %if.then109.out_cmm_unreg_crit_edge
  call fastcc void @megaraid_cmm_unregister(ptr noundef nonnull %call7.i.i)
  br label %out_fini_mbox

out_fini_mbox:                                    ; preds = %out_cmm_unreg, %do.end101, %if.then95.out_fini_mbox_crit_edge, %if.then95.thread
  call fastcc void @megaraid_fini_mbox(ptr noundef nonnull %call7.i.i)
  br label %out_free_adapter

out_free_adapter:                                 ; preds = %out_fini_mbox, %do.end87, %if.then81.out_free_adapter_crit_edge, %do.end57, %if.then51.out_free_adapter_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out_probe_one

out_probe_one:                                    ; preds = %out_free_adapter, %do.end37, %if.then31.out_probe_one_crit_edge
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %out_probe_one, %if.end105.cleanup_crit_edge, %do.end23, %if.then17.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_probe_one ], [ -19, %do.end23 ], [ -19, %if.then17.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_detach_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vendor, align 8
  %conv = zext i16 %4 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %conv2 = zext i16 %6 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %7 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor, align 4
  %conv3 = zext i16 %8 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %9 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_device, align 2
  %conv4 = zext i16 %10 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp, label %do.end11, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %vendor13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %11 = ptrtoint ptr %vendor13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor13, align 8
  %conv14 = zext i16 %12 to i32
  %device15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %13 = ptrtoint ptr %device15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device15, align 2
  %conv16 = zext i16 %14 to i32
  %subsystem_vendor17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %15 = ptrtoint ptr %subsystem_vendor17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor17, align 4
  %conv18 = zext i16 %16 to i32
  %subsystem_device19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %17 = ptrtoint ptr %subsystem_device19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %subsystem_device19, align 2
  %conv20 = zext i16 %18 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end11, %if.else.if.end23_crit_edge
  %host24 = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %host24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host24, align 4
  %being_detached = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %being_detached, i32 noundef 4) #10
  %21 = ptrtoint ptr %being_detached to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %being_detached, align 4
  %22 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp sgt i32 %22, 0
  br i1 %cmp.i, label %do.end.i, label %if.end23.megaraid_io_detach.exit_crit_edge

if.end23.megaraid_io_detach.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_io_detach.exit

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #13
  br label %megaraid_io_detach.exit

megaraid_io_detach.exit:                          ; preds = %do.end.i, %if.end23.megaraid_io_detach.exit_crit_edge
  %23 = ptrtoint ptr %host24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host24, align 4
  tail call void @scsi_remove_host(ptr noundef %24) #10
  %uscb_list.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %uscb_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uscb_list.i, align 4
  tail call void @kfree(ptr noundef %26) #10
  %unique_id.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unique_id.i, align 4
  %call.i42 = tail call i32 @mraid_mm_unregister_adp(i32 noundef %28) #10
  tail call fastcc void @megaraid_fini_mbox(ptr noundef nonnull %1)
  tail call void @kfree(ptr noundef nonnull %1) #10
  tail call void @scsi_host_put(ptr noundef %20) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %megaraid_io_detach.exit, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_mbox_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  %raw_mbox.i = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %cmp, label %do.end8, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @megaraid_mbox_shutdown.counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @megaraid_mbox_shutdown.counter, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, i32 noundef %3) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end3.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox.i) #10
  %4 = getelementptr inbounds i8, ptr %raw_mbox.i, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 65)
  %6 = ptrtoint ptr %raw_mbox.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %raw_mbox.i, align 1
  %call.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef nonnull %1, ptr noundef nonnull %raw_mbox.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end11.if.end5.i_crit_edge, label %if.then.i

if.end11.if.end5.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end11
  %7 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2.i = icmp sgt i32 %7, -1
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.then.i.if.end5.i_crit_edge, %if.end11.if.end5.i_crit_edge
  %8 = ptrtoint ptr %raw_mbox.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %raw_mbox.i, align 1
  %call8.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef nonnull %1, ptr noundef nonnull %raw_mbox.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge, label %if.then10.i

if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_flush_cache.exit

if.then10.i:                                      ; preds = %if.end5.i
  %9 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp11.i = icmp sgt i32 %9, -1
  br i1 %cmp11.i, label %do.end15.i, label %megaraid_mbox_flush_cache.exit.thread

megaraid_mbox_flush_cache.exit.thread:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox.i) #10
  br label %cleanup

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #13
  br label %megaraid_mbox_flush_cache.exit

megaraid_mbox_flush_cache.exit:                   ; preds = %do.end15.i, %if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge
  %.pr = load i32, ptr @mraid_debug_level, align 4
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp12 = icmp sgt i32 %.pr, -1
  br i1 %cmp12, label %do.end16, label %megaraid_mbox_flush_cache.exit.cleanup_crit_edge

megaraid_mbox_flush_cache.exit.cleanup_crit_edge: ; preds = %megaraid_mbox_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end16:                                         ; preds = %megaraid_mbox_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %megaraid_mbox_flush_cache.exit.cleanup_crit_edge, %megaraid_mbox_flush_cache.exit.thread, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_io_attach(ptr noundef %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull @megaraid_template_g, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %hostdata, align 8
  %host4 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %host4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %host4, align 4
  %irq = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq5 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 47
  %5 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq5, align 8
  %unique_id = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 19
  %6 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unique_id, align 4
  %unique_id6 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 23
  %8 = ptrtoint ptr %unique_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %unique_id6, align 8
  %max_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 27
  %9 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_cmds, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %11 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %can_queue, align 4
  %init_id = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 32
  %12 = ptrtoint ptr %init_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %init_id, align 2
  %conv = zext i16 %13 to i32
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 25
  %14 = ptrtoint ptr %this_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %this_id, align 8
  %sglen = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 13
  %15 = ptrtoint ptr %sglen to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sglen, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %17 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sg_tablesize, align 2
  %max_sectors = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 33
  %18 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_sectors, align 4
  %conv7 = zext i16 %19 to i32
  %max_sectors8 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 30
  %20 = ptrtoint ptr %max_sectors8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv7, ptr %max_sectors8, align 8
  %cmd_per_lun = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 34
  %21 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cmd_per_lun, align 2
  %cmd_per_lun9 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 27
  %23 = ptrtoint ptr %cmd_per_lun9 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %cmd_per_lun9, align 8
  %max_channel = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16
  %24 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_channel, align 4
  %conv10 = zext i8 %25 to i32
  %max_channel11 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %26 = ptrtoint ptr %max_channel11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv10, ptr %max_channel11, align 8
  %max_target = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 17
  %27 = ptrtoint ptr %max_target to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_target, align 2
  %conv12 = zext i16 %28 to i32
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %29 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv12, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 18
  %30 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_lun, align 4
  %conv13 = zext i8 %31 to i64
  %max_lun14 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %32 = ptrtoint ptr %max_lun14 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv13, ptr %max_lun14, align 8
  %pdev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end3
  %35 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp18 = icmp sgt i32 %35, -1
  br i1 %cmp18, label %do.end23, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.then17.if.end26_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @scsi_scan_host(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end26, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end26 ], [ 0, %if.end27 ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_cmm_unregister(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uscb_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %uscb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uscb_list, align 4
  tail call void @kfree(ptr noundef %1) #10
  %unique_id = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 19
  %2 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unique_id, align 4
  %call = tail call i32 @mraid_mm_unregister_adp(i32 noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_fini_mbox(ptr noundef %adapter) unnamed_addr #3 align 64 {
entry:
  %raw_mbox.i = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox.i) #10
  %2 = getelementptr inbounds i8, ptr %raw_mbox.i, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 65)
  %4 = ptrtoint ptr %raw_mbox.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %raw_mbox.i, align 1
  %call.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %5 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2.i = icmp sgt i32 %5, -1
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %6 = ptrtoint ptr %raw_mbox.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -2, ptr %raw_mbox.i, align 1
  %call8.i = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge, label %if.then10.i

if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_flush_cache.exit

if.then10.i:                                      ; preds = %if.end5.i
  %7 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp11.i = icmp sgt i32 %7, -1
  br i1 %cmp11.i, label %do.end15.i, label %if.then10.i.megaraid_mbox_flush_cache.exit_crit_edge

if.then10.i.megaraid_mbox_flush_cache.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_flush_cache.exit

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #13
  br label %megaraid_mbox_flush_cache.exit

megaraid_mbox_flush_cache.exit:                   ; preds = %do.end15.i, %if.then10.i.megaraid_mbox_flush_cache.exit_crit_edge, %if.end5.i.megaraid_mbox_flush_cache.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox.i) #10
  tail call void @tasklet_kill(ptr noundef %adapter) #10
  %8 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %raid_device, align 4
  %sysfs_uioc.i = getelementptr inbounds %struct.mraid_device_t, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %sysfs_uioc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysfs_uioc.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %sysfs_mbox64.i = getelementptr inbounds %struct.mraid_device_t, ptr %9, i32 0, i32 24
  %12 = ptrtoint ptr %sysfs_mbox64.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sysfs_mbox64.i, align 4
  tail call void @kfree(ptr noundef %13) #10
  %sysfs_buffer.i = getelementptr inbounds %struct.mraid_device_t, ptr %9, i32 0, i32 25
  %14 = ptrtoint ptr %sysfs_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysfs_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %megaraid_mbox_flush_cache.exit.megaraid_sysfs_free_resources.exit_crit_edge, label %if.then.i9

megaraid_mbox_flush_cache.exit.megaraid_sysfs_free_resources.exit_crit_edge: ; preds = %megaraid_mbox_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_sysfs_free_resources.exit

if.then.i9:                                       ; preds = %megaraid_mbox_flush_cache.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %sysfs_buffer_dma.i = getelementptr inbounds %struct.mraid_device_t, ptr %9, i32 0, i32 26
  %18 = ptrtoint ptr %sysfs_buffer_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysfs_buffer_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #10
  br label %megaraid_sysfs_free_resources.exit

megaraid_sysfs_free_resources.exit:               ; preds = %if.then.i9, %megaraid_mbox_flush_cache.exit.megaraid_sysfs_free_resources.exit_crit_edge
  %20 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raid_device, align 4
  tail call fastcc void @megaraid_mbox_teardown_dma_pools(ptr noundef %adapter) #10
  %kscb_list.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 6
  %22 = ptrtoint ptr %kscb_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kscb_list.i, align 4
  tail call void @kfree(ptr noundef %23) #10
  %pdev.i11 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %24 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %ibuf.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %26 = ptrtoint ptr %ibuf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ibuf.i, align 4
  %ibuf_dma_h.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 23
  %28 = ptrtoint ptr %ibuf_dma_h.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ibuf_dma_h.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i12, i32 noundef 4096, ptr noundef %27, i32 noundef %29, i32 noundef 0) #10
  %30 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i11, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %21, align 4
  %una_mbox64_dma.i = getelementptr inbounds %struct.mraid_device_t, ptr %21, i32 0, i32 1
  %34 = ptrtoint ptr %una_mbox64_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %una_mbox64_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef 74, ptr noundef %33, i32 noundef %35, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 20
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %37, ptr noundef %adapter) #10
  %baseaddr = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %baseaddr, align 4
  tail call void @iounmap(ptr noundef %39) #10
  %40 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i11, align 4
  tail call void @pci_release_regions(ptr noundef %41) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_isr(i32 noundef %irq, ptr noundef %devp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @megaraid_ack_sequence(ptr noundef %devp)
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %devp, i32 0, i32 4
  %0 = ptrtoint ptr %quiescent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %quiescent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @megaraid_mbox_runpendq(ptr noundef %devp, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool1.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_mbox_extended_cdb(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  %raw_mbox = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox) #10
  %0 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 65)
  %ibuf_dma_h = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 23
  %2 = ptrtoint ptr %ibuf_dma_h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibuf_dma_h, align 4
  %xferaddr = getelementptr inbounds %struct.mbox_t, ptr %raw_mbox, i32 0, i32 4
  %4 = ptrtoint ptr %xferaddr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %xferaddr, align 1
  %ibuf = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %5 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibuf, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 4096)
  %8 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -92, ptr %raw_mbox, align 1
  %arrayidx2 = getelementptr inbounds [66 x i8], ptr %raw_mbox, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 22, ptr %arrayidx2, align 1
  %call = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %spec.select = sext i1 %cmp.not to i32
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_mbox_support_ha(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %init_id) unnamed_addr #3 align 64 {
entry:
  %raw_mbox = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox) #10
  %0 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 65)
  %ibuf_dma_h = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 23
  %2 = ptrtoint ptr %ibuf_dma_h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibuf_dma_h, align 4
  %xferaddr = getelementptr inbounds %struct.mbox_t, ptr %raw_mbox, i32 0, i32 4
  %4 = ptrtoint ptr %xferaddr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %xferaddr, align 1
  %ibuf = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %5 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibuf, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 4096)
  %8 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 125, ptr %raw_mbox, align 1
  %9 = ptrtoint ptr %init_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 7, ptr %init_id, align 2
  %call = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibuf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i16
  %14 = ptrtoint ptr %init_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %init_id, align 2
  %15 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp4 = icmp sgt i32 %15, -1
  br i1 %cmp4, label %do.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = zext i8 %13 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %conv7) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %rval.0 = phi i32 [ -1, %entry.if.end9_crit_edge ], [ 0, %do.end ], [ 0, %if.then.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox) #10
  ret i32 %rval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_mbox_setup_device_map(ptr nocapture noundef %adapter) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_id = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 32
  %max_channel = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %init_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %init_id, align 2
  %2 = trunc i32 %indvars.iv to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %2)
  %cmp4 = icmp ule i16 %1, %2
  %sub = sext i1 %cmp4 to i32
  %cond = add nsw i32 %indvars.iv, %sub
  %3 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %max_channel, align 4
  %idxprom = zext i8 %4 to i32
  %arrayidx9 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 14, i32 %idxprom, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %arrayidx9, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 65
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %6 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_channel, align 4
  %idxprom12 = zext i8 %7 to i32
  %8 = ptrtoint ptr %init_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %init_id, align 2
  %idxprom15 = zext i16 %9 to i32
  %arrayidx16 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 14, i32 %idxprom12, i32 %idxprom15
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %arrayidx16, align 4
  %11 = load i8, ptr %max_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2163.not = icmp eq i8 %11, 0
  br i1 %cmp2163.not, label %for.end.for.end41_crit_edge, label %for.end.for.cond24.preheader_crit_edge

for.end.for.cond24.preheader_crit_edge:           ; preds = %for.end
  br label %for.cond24.preheader

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.cond24.preheader:                             ; preds = %for.inc39.for.cond24.preheader_crit_edge, %for.end.for.cond24.preheader_crit_edge
  %indvars.iv69 = phi i32 [ %indvars.iv.next70, %for.inc39.for.cond24.preheader_crit_edge ], [ 0, %for.end.for.cond24.preheader_crit_edge ]
  %shl = shl nuw nsw i32 %indvars.iv69, 8
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond24.preheader
  %indvars.iv66 = phi i32 [ 0, %for.cond24.preheader ], [ %indvars.iv.next67, %for.body28.for.body28_crit_edge ]
  %or = or i32 %shl, %indvars.iv66
  %arrayidx35 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 14, i32 %indvars.iv69, i32 %indvars.iv66
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx35, align 4
  %indvars.iv.next67 = add nuw nsw i32 %indvars.iv66, 1
  %exitcond68.not = icmp eq i32 %indvars.iv.next67, 65
  br i1 %exitcond68.not, label %for.inc39, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

for.inc39:                                        ; preds = %for.body28
  %indvars.iv.next70 = add nuw nsw i32 %indvars.iv69, 1
  %13 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_channel, align 4
  %15 = zext i8 %14 to i32
  %cmp21 = icmp ult i32 %indvars.iv.next70, %15
  br i1 %cmp21, label %for.inc39.for.cond24.preheader_crit_edge, label %for.inc39.for.end41_crit_edge

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.inc39.for.cond24.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.preheader

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %for.end.for.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_mbox_support_random_del(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  %raw_mbox = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox) #10
  %pdev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4126, i16 %3)
  %cmp = icmp eq i16 %3, 4126
  br i1 %cmp, label %land.lhs.true, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6496, i16 %5)
  %cmp4 = icmp eq i16 %5, 6496
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true6:                                   ; preds = %land.lhs.true
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %7)
  %cmp9 = icmp eq i16 %7, 4136
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true6.if.end52_crit_edge

land.lhs.true6.if.end52_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1297, i16 %9)
  %cmp14 = icmp eq i16 %9, 1297
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true11.if.end52_crit_edge

land.lhs.true11.if.end52_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %fw_version = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 28
  %10 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %11)
  %cmp18 = icmp ugt i8 %11, 54
  br i1 %cmp18, label %land.lhs.true16.if.then_crit_edge, label %lor.lhs.false

land.lhs.true16.if.then_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %11)
  %cmp23 = icmp eq i8 %11, 54
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false.if.end52_crit_edge

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %arrayidx27 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 28, i32 2
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %13)
  %cmp29 = icmp ugt i8 %13, 54
  br i1 %cmp29, label %land.lhs.true25.if.then_crit_edge, label %land.lhs.true37

land.lhs.true25.if.then_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true37:                                  ; preds = %land.lhs.true25
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %15)
  %cmp41 = icmp eq i8 %15, 54
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true37.if.end52_crit_edge

land.lhs.true37.if.end52_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true43:                                  ; preds = %land.lhs.true37
  %arrayidx45 = getelementptr %struct.adapter_t, ptr %adapter, i32 0, i32 28, i32 3
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %17)
  %cmp47 = icmp ugt i8 %17, 49
  br i1 %cmp47, label %land.lhs.true43.if.then_crit_edge, label %land.lhs.true43.if.end52_crit_edge

land.lhs.true43.if.end52_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true43.if.then_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %land.lhs.true43.if.then_crit_edge, %land.lhs.true25.if.then_crit_edge, %land.lhs.true16.if.then_crit_edge
  %18 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp49 = icmp sgt i32 %18, 0
  br i1 %cmp49, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end52:                                         ; preds = %land.lhs.true43.if.end52_crit_edge, %land.lhs.true37.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge, %land.lhs.true11.if.end52_crit_edge, %land.lhs.true6.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %entry.if.end52_crit_edge
  %19 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 65)
  %21 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -92, ptr %raw_mbox, align 1
  %arrayidx54 = getelementptr inbounds [66 x i8], ptr %raw_mbox, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 42, ptr %arrayidx54, align 1
  %call56 = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59:                                        ; preds = %if.end52
  %23 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp60 = icmp sgt i32 %23, 0
  br i1 %cmp60, label %if.then59.cleanup.sink.split_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then59.cleanup.sink.split_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then59.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.111.sink = phi ptr [ @.str.108, %if.then.cleanup.sink.split_crit_edge ], [ @.str.111, %if.then59.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 1, %if.then59.cleanup.sink.split_crit_edge ]
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.111.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then59.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 1, %if.then59.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_mbox_get_max_sg(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  %raw_mbox = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox) #10
  %0 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 65)
  %ibuf_dma_h = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 23
  %2 = ptrtoint ptr %ibuf_dma_h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibuf_dma_h, align 4
  %xferaddr = getelementptr inbounds %struct.mbox_t, ptr %raw_mbox, i32 0, i32 4
  %4 = ptrtoint ptr %xferaddr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %xferaddr, align 1
  %ibuf = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %5 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibuf, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 4096)
  %8 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -92, ptr %raw_mbox, align 1
  %arrayidx2 = getelementptr inbounds [66 x i8], ptr %raw_mbox, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx2, align 1
  %call = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibuf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nsg.0 = phi i32 [ %conv, %if.then ], [ 26, %entry.if.end_crit_edge ]
  %14 = tail call i32 @llvm.umin.i32(i32 %nsg.0, i32 32)
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox) #10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_mbox_enum_raid_scsi(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  %raw_mbox = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %raw_mbox) #10
  %2 = getelementptr inbounds i8, ptr %raw_mbox, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 65)
  %ibuf_dma_h = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 23
  %4 = ptrtoint ptr %ibuf_dma_h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ibuf_dma_h, align 4
  %xferaddr = getelementptr inbounds %struct.mbox_t, ptr %raw_mbox, i32 0, i32 4
  %6 = ptrtoint ptr %xferaddr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %xferaddr, align 1
  %ibuf = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 22
  %7 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibuf, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 4096)
  %10 = ptrtoint ptr %raw_mbox to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -87, ptr %raw_mbox, align 1
  %channel_class = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %channel_class to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %channel_class, align 4
  %call = call fastcc i32 @mbox_post_sync_cmd(ptr noundef %adapter, ptr noundef nonnull %raw_mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ibuf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = ptrtoint ptr %channel_class to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %channel_class, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %raw_mbox) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_sysfs_alloc_resources(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #14
  %sysfs_uioc = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %sysfs_uioc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %sysfs_uioc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 74) #14
  %sysfs_mbox64 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %sysfs_mbox64 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i28, ptr %sysfs_mbox64, align 4
  %pdev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %sysfs_buffer_dma = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 26
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %sysfs_buffer_dma, i32 noundef 3264, i32 noundef 0) #10
  %sysfs_buffer = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %sysfs_buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %sysfs_buffer, align 4
  %9 = ptrtoint ptr %sysfs_uioc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysfs_uioc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %sysfs_mbox64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysfs_mbox64, align 4
  %tobool5.not = icmp eq ptr %12, null
  %tobool8.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.do.body12_crit_edge

lor.lhs.false.do.body12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.113, i32 noundef 3775) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raid_device, align 4
  %sysfs_uioc.i = getelementptr inbounds %struct.mraid_device_t, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %sysfs_uioc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysfs_uioc.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  %sysfs_mbox64.i = getelementptr inbounds %struct.mraid_device_t, ptr %15, i32 0, i32 24
  %18 = ptrtoint ptr %sysfs_mbox64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sysfs_mbox64.i, align 4
  tail call void @kfree(ptr noundef %19) #10
  %sysfs_buffer.i = getelementptr inbounds %struct.mraid_device_t, ptr %15, i32 0, i32 25
  %20 = ptrtoint ptr %sysfs_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sysfs_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.do.body12_crit_edge, label %if.then.i

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %sysfs_buffer_dma.i = getelementptr inbounds %struct.mraid_device_t, ptr %15, i32 0, i32 26
  %24 = ptrtoint ptr %sysfs_buffer_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sysfs_buffer_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %21, i32 noundef %25, i32 noundef 0) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then.i, %if.end.do.body12_crit_edge, %lor.lhs.false.do.body12_crit_edge
  %rval.0 = phi i32 [ 0, %lor.lhs.false.do.body12_crit_edge ], [ -12, %if.end.do.body12_crit_edge ], [ -12, %if.then.i ]
  %sysfs_mtx = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %sysfs_mtx, ptr noundef nonnull @.str.114, ptr noundef nonnull @megaraid_sysfs_alloc_resources.__key) #10
  %sysfs_wait_q = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 27
  tail call void @__init_waitqueue_head(ptr noundef %sysfs_wait_q, ptr noundef nonnull @.str.116, ptr noundef nonnull @megaraid_sysfs_alloc_resources.__key.115) #10
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_mbox_dpc(i32 noundef %devp) #3 align 64 {
entry:
  %clist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %devp to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clist) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devp)
  %tobool.not = icmp eq i32 %devp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.list_head, ptr %clist, i32 0, i32 1
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 15
  %2 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_device, align 4
  %4 = ptrtoint ptr %clist to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %clist, ptr %clist, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %clist, ptr %1, align 4
  %completed_list_lock = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 12
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %completed_list_lock) #10
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 11
  %6 = ptrtoint ptr %completed_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %completed_list, align 4
  %cmp.i.not.i = icmp eq ptr %7, %completed_list
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %clist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clist, align 4
  %prev2.i.i = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %clist, ptr %prev3.i.i, align 4
  store ptr %7, ptr %clist, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %11, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev6.i.i, align 4
  %15 = ptrtoint ptr %completed_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %completed_list, ptr %completed_list, align 4
  store ptr %completed_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %completed_list_lock, i32 noundef %call3) #10
  %16 = ptrtoint ptr %clist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clist, align 4
  %cmp13.not305 = icmp eq ptr %17, %clist
  br i1 %cmp13.not305, label %list_splice_init.exit.cleanup_crit_edge, label %for.body.lr.ph

list_splice_init.exit.cleanup_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %max_channel = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 16
  %channel_class = getelementptr inbounds %struct.mraid_device_t, ptr %3, i32 0, i32 21
  %kscb_pool_lock.i = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 8
  %kscb_pool.i = getelementptr inbounds %struct.adapter_t, ptr %0, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in306 = phi ptr [ %17, %for.body.lr.ph ], [ %.pn312, %for.inc.for.body_crit_edge ]
  %scb.0311 = getelementptr i8, ptr %.pn.in306, i32 -4
  %18 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn312 = load ptr, ptr %.pn.in306, align 4
  %status15 = getelementptr i8, ptr %.pn.in306, i32 36
  %19 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status15, align 4
  %scp16 = getelementptr i8, ptr %.pn.in306, i32 16
  %21 = ptrtoint ptr %scp16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scp16, align 4
  %23 = ptrtoint ptr %scb.0311 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scb.0311, align 4
  %pthru18 = getelementptr inbounds %struct.mbox_ccb_t, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pthru18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pthru18, align 4
  %epthru19 = getelementptr inbounds %struct.mbox_ccb_t, ptr %24, i32 0, i32 9
  %27 = ptrtoint ptr %epthru19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %epthru19, align 4
  %mbox20 = getelementptr inbounds %struct.mbox_ccb_t, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %mbox20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mbox20, align 4
  %state = getelementptr i8, ptr %.pn.in306, i32 20
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp21.not = icmp eq i32 %32, 4
  br i1 %cmp21.not, label %if.end40, label %if.then23

if.then23:                                        ; preds = %for.body
  %33 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp24 = icmp sgt i32 %33, -1
  br i1 %cmp24, label %do.end29, label %if.then23.do.body34_crit_edge

if.then23.do.body34_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %sno = getelementptr i8, ptr %.pn.in306, i32 12
  %34 = ptrtoint ptr %sno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sno, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %35, i32 noundef %32, ptr noundef %22) #13
  br label %do.body34

do.body34:                                        ; preds = %do.end29, %if.then23.do.body34_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #10, !srcloc !557
  unreachable

if.end40:                                         ; preds = %for.body
  %sno41 = getelementptr i8, ptr %.pn.in306, i32 12
  %36 = ptrtoint ptr %sno41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sno41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %37)
  %cmp42 = icmp ugt i32 %37, 127
  br i1 %cmp42, label %if.then44, label %if.end63

if.then44:                                        ; preds = %if.end40
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %state, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in306) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then44.list_del_init.exit_crit_edge

if.then44.list_del_init.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in306, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in306, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then44.list_del_init.exit_crit_edge
  %45 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.pn.in306, ptr %.pn.in306, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in306, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn.in306, ptr %prev.i3.i, align 4
  %gp = getelementptr i8, ptr %.pn.in306, i32 8
  %47 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gp, align 4
  %49 = inttoptr i32 %48 to ptr
  %status48 = getelementptr inbounds %struct.uioc, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %status48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %status48, align 4
  call fastcc void @megaraid_mbox_mm_done(ptr noundef nonnull %0, ptr noundef %scb.0311)
  br label %for.inc

if.end63:                                         ; preds = %if.end40
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 1
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 17
  %53 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel, align 4
  %55 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_channel, align 4
  %conv64 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv64)
  %cmp65.not = icmp eq i32 %54, %conv64
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 16
  %57 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmnd, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %60)
  %cmp68 = icmp ne i8 %60, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp70 = icmp ne i32 %20, 0
  %or.cond = select i1 %cmp68, i1 true, i1 %cmp70
  %brmerge = select i1 %or.cond, i1 true, i1 %cmp65.not
  br i1 %brmerge, label %if.end124, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.end63
  %61 = ptrtoint ptr %channel_class to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %channel_class, align 4
  %conv76 = zext i8 %62 to i32
  %dev_channel = getelementptr i8, ptr %.pn.in306, i32 32
  %63 = ptrtoint ptr %dev_channel to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dev_channel, align 4
  %conv77 = zext i16 %64 to i32
  %65 = shl nuw i32 1, %conv77
  %66 = and i32 %65, %conv76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool79.not = icmp eq i32 %66, 0
  br i1 %tobool79.not, label %land.lhs.true75.sw.epilog.thread295_crit_edge, label %if.then80

land.lhs.true75.sw.epilog.thread295_crit_edge:    ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread295

if.then80:                                        ; preds = %land.lhs.true75
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 17
  %67 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdb.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %and.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !558

do.body2.i:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

sg_page.exit:                                     ; preds = %if.then80
  %and.i = and i32 %70, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool83.not = icmp eq i32 %and.i, 0
  br i1 %tobool83.not, label %if.else, label %if.end96

if.else:                                          ; preds = %sg_page.exit
  %71 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp87 = icmp sgt i32 %71, -1
  br i1 %cmp87, label %do.end92, label %if.else.if.then101_crit_edge

if.else.if.then101_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

do.end92:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef 2264) #13
  br label %if.then101

if.end96:                                         ; preds = %sg_page.exit
  %72 = inttoptr i32 %and.i to ptr
  %call1.i = call ptr @page_address(ptr noundef nonnull %72) #10
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %74
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i, align 1
  %77 = and i8 %76, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp99 = icmp eq i8 %77, 0
  br i1 %cmp99, label %if.end96.if.then101_crit_edge, label %if.end96.sw.epilog.thread295_crit_edge

if.end96.sw.epilog.thread295_crit_edge:           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread295

if.end96.if.then101_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.then101:                                       ; preds = %if.end96.if.then101_crit_edge, %do.end92, %if.else.if.then101_crit_edge
  %78 = ptrtoint ptr %dev_channel to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %dev_channel, align 4
  %conv103 = zext i16 %79 to i32
  %mul = shl nuw nsw i32 %conv103, 4
  %dev_target = getelementptr i8, ptr %.pn.in306, i32 34
  %80 = ptrtoint ptr %dev_target to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %dev_target, align 2
  %conv104 = zext i16 %81 to i32
  %add = add nuw nsw i32 %mul, %conv104
  %arrayidx105 = getelementptr %struct.mraid_device_t, ptr %3, i32 0, i32 17, i32 %add
  %82 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx105, align 1
  %84 = and i8 %83, 15
  %.off = add nsw i8 %84, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %if.then101.sw.default_crit_edge, label %lor.lhs.false118

if.then101.sw.default_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

lor.lhs.false118:                                 ; preds = %if.then101
  %85 = load i32, ptr @megaraid_expose_unconf_disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp119 = icmp eq i32 %85, 0
  br i1 %cmp119, label %lor.lhs.false118.sw.default_crit_edge, label %lor.lhs.false118.sw.epilog.thread295_crit_edge

lor.lhs.false118.sw.epilog.thread295_crit_edge:   ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread295

lor.lhs.false118.sw.default_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

if.end124:                                        ; preds = %if.end63
  %.mux = select i1 %or.cond, i32 %20, i32 0
  %86 = zext i32 %.mux to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %.mux, label %if.end124.sw.default_crit_edge [
    i32 0, label %if.end124.sw.epilog.thread295_crit_edge
    i32 2, label %sw.bb125
    i32 8, label %sw.bb149
  ]

if.end124.sw.epilog.thread295_crit_edge:          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread295

if.end124.sw.default_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.epilog.thread295:                              ; preds = %if.end124.sw.epilog.thread295_crit_edge, %lor.lhs.false118.sw.epilog.thread295_crit_edge, %if.end96.sw.epilog.thread295_crit_edge, %land.lhs.true75.sw.epilog.thread295_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %87 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %result, align 4
  br label %if.end182

sw.bb125:                                         ; preds = %if.end124
  %88 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %30, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %89, label %if.else146 [
    i8 3, label %sw.bb125.if.then134_crit_edge
    i8 -61, label %sw.bb125.if.then134_crit_edge348
    i8 -29, label %if.then141
  ]

sw.bb125.if.then134_crit_edge348:                 ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

sw.bb125.if.then134_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

if.then134:                                       ; preds = %sw.bb125.if.then134_crit_edge, %sw.bb125.if.then134_crit_edge348
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 21
  %91 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sense_buffer, align 4
  %reqsensearea = getelementptr inbounds %struct.mraid_passthru_t, ptr %26, i32 0, i32 9
  %93 = call ptr @memcpy(ptr %92, ptr %reqsensearea, i32 14)
  %result135 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %94 = ptrtoint ptr %result135 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %result135, align 4
  br label %if.then181

if.then141:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #12
  %sense_buffer142 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 21
  %95 = ptrtoint ptr %sense_buffer142 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sense_buffer142, align 4
  %reqsensearea143 = getelementptr inbounds %struct.mraid_epassthru_t, ptr %28, i32 0, i32 12
  %97 = call ptr @memcpy(ptr %96, ptr %reqsensearea143, i32 14)
  %result145 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %98 = ptrtoint ptr %result145 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %result145, align 4
  br label %if.then181

if.else146:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #12
  call void @scsi_build_sense(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.then181

sw.bb149:                                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %result150 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %99 = ptrtoint ptr %result150 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 131080, ptr %result150, align 4
  br label %if.then181

sw.default:                                       ; preds = %if.end124.sw.default_crit_edge, %lor.lhs.false118.sw.default_crit_edge, %if.then101.sw.default_crit_edge
  %status.0292 = phi i32 [ %.mux, %if.end124.sw.default_crit_edge ], [ 240, %lor.lhs.false118.sw.default_crit_edge ], [ 240, %if.then101.sw.default_crit_edge ]
  %100 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cmnd, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp154 = icmp eq i8 %103, 0
  br i1 %cmp154, label %sw.default.sw.epilog_crit_edge, label %if.else158

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else158:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0292)
  %cmp159 = icmp eq i32 %status.0292, 1
  %104 = and i8 %103, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %104)
  %switch275 = icmp eq i8 %104, 22
  %or.cond276 = select i1 %cmp159, i1 %switch275, i1 false
  br i1 %or.cond276, label %if.then173, label %if.else175

if.then173:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  %result174 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %105 = ptrtoint ptr %result174 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 458776, ptr %result174, align 4
  br label %if.then181

if.else175:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #12
  %or176 = or i32 %status.0292, 262144
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else175, %sw.default.sw.epilog_crit_edge
  %.sink = phi i32 [ %or176, %if.else175 ], [ 458776, %sw.default.sw.epilog_crit_edge ]
  %result157 = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 24
  %106 = ptrtoint ptr %result157 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink, ptr %result157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0292)
  %tobool180.not = icmp eq i32 %status.0292, 0
  br i1 %tobool180.not, label %sw.epilog.if.end182_crit_edge, label %sw.epilog.if.then181_crit_edge

sw.epilog.if.then181_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

sw.epilog.if.end182_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then181:                                       ; preds = %sw.epilog.if.then181_crit_edge, %if.then173, %sw.bb149, %if.else146, %if.then141, %if.then134
  %107 = ptrtoint ptr %scb.0311 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %scb.0311, align 4
  %109 = ptrtoint ptr %scp16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %scp16, align 4
  %mbox3.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %108, i32 0, i32 1
  %111 = ptrtoint ptr %mbox3.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mbox3.i, align 4
  %113 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp.i = icmp sgt i32 %113, 2
  br i1 %cmp.i, label %if.end.i, label %if.then181.if.end15.i_crit_edge

if.then181.if.end15.i_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end.i:                                         ; preds = %if.then181
  %114 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %status15, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %112, align 1
  %conv.i = zext i8 %117 to i32
  %118 = ptrtoint ptr %sno41 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sno41, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %115, i32 noundef %conv.i, i32 noundef %119) #13
  %.pr.i = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp4.i = icmp sgt i32 %.pr.i, 2
  br i1 %cmp4.i, label %do.end9.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %numsectors.i = getelementptr inbounds %struct.mbox_t, ptr %112, i32 0, i32 2
  %120 = ptrtoint ptr %numsectors.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %numsectors.i, align 1
  %conv11.i = zext i16 %121 to i32
  %lba.i = getelementptr inbounds %struct.mbox_t, ptr %112, i32 0, i32 3
  %122 = ptrtoint ptr %lba.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %lba.i, align 1
  %xferaddr.i = getelementptr inbounds %struct.mbox_t, ptr %112, i32 0, i32 4
  %124 = ptrtoint ptr %xferaddr.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %xferaddr.i, align 1
  %logdrv.i = getelementptr inbounds %struct.mbox_t, ptr %112, i32 0, i32 5
  %126 = ptrtoint ptr %logdrv.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %logdrv.i, align 1
  %conv12.i = zext i8 %127 to i32
  %numsge.i = getelementptr inbounds %struct.mbox_t, ptr %112, i32 0, i32 6
  %128 = ptrtoint ptr %numsge.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %numsge.i, align 1
  %conv13.i = zext i8 %129 to i32
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %conv11.i, i32 noundef %123, i32 noundef %125, i32 noundef %conv12.i, i32 noundef %conv13.i) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end9.i, %if.end.i.if.end15.i_crit_edge, %if.then181.if.end15.i_crit_edge
  %tobool.not.i = icmp eq ptr %110, null
  br i1 %tobool.not.i, label %if.end15.i.if.end182_crit_edge, label %if.end17.i

if.end15.i.if.end182_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.end17.i:                                       ; preds = %if.end15.i
  %130 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp18.i = icmp sgt i32 %130, 2
  br i1 %cmp18.i, label %do.end23.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.end17.i.if.end26.i_crit_edge
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %110, i32 0, i32 14
  %131 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %cmd_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp283.not.i = icmp eq i16 %132, 0
  br i1 %cmp283.not.i, label %if.end26.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %110, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %133 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp30.i = icmp sgt i32 %133, 2
  br i1 %cmp30.i, label %do.end35.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end35.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cmnd.i, align 4
  %arrayidx.i = getelementptr i8, ptr %135, i32 %i.04.i
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i, align 1
  %conv37.i = zext i8 %137 to i32
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %conv37.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end35.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %138 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %cmd_len.i, align 4
  %conv27.i = zext i16 %139 to i32
  %cmp28.i = icmp ult i32 %inc.i, %conv27.i
  br i1 %cmp28.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end26.i.for.end.i_crit_edge
  %140 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp40.i = icmp sgt i32 %140, 2
  br i1 %cmp40.i, label %do.end45.i, label %for.end.i.if.end182_crit_edge

for.end.i.if.end182_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

do.end45.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #13
  br label %if.end182

if.end182:                                        ; preds = %do.end45.i, %for.end.i.if.end182_crit_edge, %if.end15.i.if.end182_crit_edge, %sw.epilog.if.end182_crit_edge, %sw.epilog.thread295
  call void @scsi_dma_unmap(ptr noundef %22) #10
  %call.i.i278 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in306) #10
  br i1 %call.i.i278, label %if.end.i.i281, label %if.end182.list_del_init.exit283_crit_edge

if.end182.list_del_init.exit283_crit_edge:        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit283

if.end.i.i281:                                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i279 = getelementptr inbounds %struct.list_head, ptr %.pn.in306, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i279 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i279, align 4
  %143 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %.pn.in306, align 4
  %prev1.i.i.i280 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev1.i.i.i280 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev1.i.i.i280, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %144, ptr %142, align 4
  br label %list_del_init.exit283

list_del_init.exit283:                            ; preds = %if.end.i.i281, %if.end182.list_del_init.exit283_crit_edge
  %147 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %.pn.in306, ptr %.pn.in306, align 4
  %prev.i3.i282 = getelementptr %struct.list_head, ptr %.pn.in306, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i3.i282 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %.pn.in306, ptr %prev.i3.i282, align 4
  %149 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %state, align 4
  %150 = ptrtoint ptr %scp16 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %scp16, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i) #10
  %151 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %kscb_pool.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in306, ptr noundef %kscb_pool.i, ptr noundef %152) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit283.megaraid_dealloc_scb.exit_crit_edge

list_del_init.exit283.megaraid_dealloc_scb.exit_crit_edge: ; preds = %list_del_init.exit283
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_dealloc_scb.exit

if.end.i.i.i:                                     ; preds = %list_del_init.exit283
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i284 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %prev1.i.i.i284 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %.pn.in306, ptr %prev1.i.i.i284, align 4
  %154 = ptrtoint ptr %.pn.in306 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %152, ptr %.pn.in306, align 4
  %155 = ptrtoint ptr %prev.i3.i282 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %kscb_pool.i, ptr %prev.i3.i282, align 4
  %156 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %.pn.in306, ptr %kscb_pool.i, align 4
  br label %megaraid_dealloc_scb.exit

megaraid_dealloc_scb.exit:                        ; preds = %if.end.i.i.i, %list_del_init.exit283.megaraid_dealloc_scb.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i, i32 noundef %call2.i) #10
  call void @scsi_done(ptr noundef %22) #10
  br label %for.inc

for.inc:                                          ; preds = %megaraid_dealloc_scb.exit, %list_del_init.exit
  %cmp13.not = icmp eq ptr %.pn312, %clist
  br i1 %cmp13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %list_splice_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clist) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_sysfs_free_resources(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  %sysfs_uioc = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %sysfs_uioc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysfs_uioc, align 4
  tail call void @kfree(ptr noundef %3) #10
  %sysfs_mbox64 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %sysfs_mbox64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysfs_mbox64, align 4
  tail call void @kfree(ptr noundef %5) #10
  %sysfs_buffer = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %sysfs_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysfs_buffer, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %sysfs_buffer_dma = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %sysfs_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysfs_buffer_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_mbox_teardown_dma_pools(ptr nocapture noundef readonly %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  %sg_pool = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 12
  %sg_pool_handle = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 13
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %for.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.mraid_pci_blk, ptr %sg_pool, i32 %i.069
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %4 = ptrtoint ptr %sg_pool_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_pool_handle, align 4
  %dma_addr = getelementptr %struct.mraid_pci_blk, ptr %sg_pool, i32 %i.069, i32 1
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %7) #10
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %8 = ptrtoint ptr %sg_pool_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg_pool_handle, align 4
  tail call void @dma_pool_destroy(ptr noundef %9) #10
  %epthru_pool = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 10
  %epthru_pool_handle = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 11
  br label %land.rhs8

land.rhs8:                                        ; preds = %for.body13.land.rhs8_crit_edge, %for.end
  %i.170 = phi i32 [ 0, %for.end ], [ %inc19, %for.body13.land.rhs8_crit_edge ]
  %arrayidx9 = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool, i32 %i.170
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.rhs8.for.end20_crit_edge, label %for.body13

land.rhs8.for.end20_crit_edge:                    ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body13:                                       ; preds = %land.rhs8
  %12 = ptrtoint ptr %epthru_pool_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %epthru_pool_handle, align 4
  %dma_addr17 = getelementptr %struct.mraid_pci_blk, ptr %epthru_pool, i32 %i.170, i32 1
  %14 = ptrtoint ptr %dma_addr17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr17, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef nonnull %11, i32 noundef %15) #10
  %inc19 = add nuw nsw i32 %i.170, 1
  %exitcond72.not = icmp eq i32 %inc19, 128
  br i1 %exitcond72.not, label %for.body13.for.end20_crit_edge, label %for.body13.land.rhs8_crit_edge

for.body13.land.rhs8_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs8

for.body13.for.end20_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.end20:                                        ; preds = %for.body13.for.end20_crit_edge, %land.rhs8.for.end20_crit_edge
  %16 = ptrtoint ptr %epthru_pool_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epthru_pool_handle, align 4
  tail call void @dma_pool_destroy(ptr noundef %17) #10
  %mbox_pool = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 8
  %mbox_pool_handle = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 9
  br label %land.rhs25

land.rhs25:                                       ; preds = %for.body30.land.rhs25_crit_edge, %for.end20
  %i.271 = phi i32 [ 0, %for.end20 ], [ %inc36, %for.body30.land.rhs25_crit_edge ]
  %arrayidx26 = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool, i32 %i.271
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %land.rhs25.for.end37_crit_edge, label %for.body30

land.rhs25.for.end37_crit_edge:                   ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body30:                                       ; preds = %land.rhs25
  %20 = ptrtoint ptr %mbox_pool_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbox_pool_handle, align 4
  %dma_addr34 = getelementptr %struct.mraid_pci_blk, ptr %mbox_pool, i32 %i.271, i32 1
  %22 = ptrtoint ptr %dma_addr34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr34, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %19, i32 noundef %23) #10
  %inc36 = add nuw nsw i32 %i.271, 1
  %exitcond73.not = icmp eq i32 %inc36, 128
  br i1 %exitcond73.not, label %for.body30.for.end37_crit_edge, label %for.body30.land.rhs25_crit_edge

for.body30.land.rhs25_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs25

for.body30.for.end37_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.end37:                                        ; preds = %for.body30.for.end37_crit_edge, %land.rhs25.for.end37_crit_edge
  %24 = ptrtoint ptr %mbox_pool_handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbox_pool_handle, align 4
  tail call void @dma_pool_destroy(ptr noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_ack_sequence(ptr noundef %adapter) unnamed_addr #3 align 64 {
entry:
  %clist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clist) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %clist, i32 0, i32 1
  %mbox1 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbox1, align 4
  %5 = ptrtoint ptr %clist to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %clist, ptr %clist, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clist, ptr %2, align 4
  %mailbox_lock = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 5
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mailbox_lock) #10
  %baseaddr = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %baseaddr, align 4
  %add.ptr156 = getelementptr i8, ptr %8, i32 44
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #10, !srcloc !553
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !560
  call void @__sanitizer_cov_trace_const_cmp4(i32 873594896, i32 %9)
  %cmp10.not157 = icmp eq i32 %9, 873594896
  br i1 %cmp10.not157, label %if.end.lr.ph, label %entry.do.end95_crit_edge

entry.do.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

if.end.lr.ph:                                     ; preds = %entry
  %numstatus = getelementptr inbounds %struct.mbox_t, ptr %4, i32 0, i32 9
  %outstanding_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 5
  %kscb_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 6
  %uscb_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 24
  %status = getelementptr inbounds %struct.mbox_t, ptr %4, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %do.body89.if.end_crit_edge, %if.end.lr.ph
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !561
  call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %baseaddr, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 873594896) #10, !srcloc !551
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end
  %i.0152 = phi i32 [ 0, %if.end ], [ %inc, %if.end24.for.body_crit_edge ]
  %12 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp20.not = icmp eq i8 %13, -1
  br i1 %cmp20.not, label %if.end24, label %for.end

if.end24:                                         ; preds = %for.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !562
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, 1048575
  br i1 %exitcond.not, label %for.end.thread, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.thread:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %numstatus to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %numstatus, align 1
  br label %do.body89

for.end:                                          ; preds = %for.body
  %15 = ptrtoint ptr %numstatus to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %numstatus, align 1
  %conv26 = zext i8 %13 to i32
  %16 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outstanding_cmds, align 4
  %sub = sub i32 %17, %conv26
  store i32 %sub, ptr %outstanding_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp29154.not = icmp eq i8 %13, 0
  br i1 %cmp29154.not, label %for.end.do.body89_crit_edge, label %for.end.for.cond32.preheader_crit_edge

for.end.for.cond32.preheader_crit_edge:           ; preds = %for.end
  br label %for.cond32.preheader

for.end.do.body89_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89

for.cond32.preheader:                             ; preds = %list_add_tail.exit.for.cond32.preheader_crit_edge, %for.end.for.cond32.preheader_crit_edge
  %i.1155 = phi i32 [ %inc87, %list_add_tail.exit.for.cond32.preheader_crit_edge ], [ 0, %for.end.for.cond32.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.mbox_t, ptr %4, i32 0, i32 11, i32 %i.1155
  br label %for.body35

for.body35:                                       ; preds = %if.end41.for.body35_crit_edge, %for.cond32.preheader
  %j.0153 = phi i32 [ 0, %for.cond32.preheader ], [ %inc43, %if.end41.for.body35_crit_edge ]
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp38.not = icmp eq i8 %19, -1
  br i1 %cmp38.not, label %if.end41, label %for.end44.thread

for.end44.thread:                                 ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %arrayidx, align 1
  br label %if.end70

if.end41:                                         ; preds = %for.body35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !563
  %inc43 = add nuw nsw i32 %j.0153, 1
  %exitcond159.not = icmp eq i32 %inc43, 1048575
  br i1 %exitcond159.not, label %for.end44, label %if.end41.for.body35_crit_edge

if.end41.for.body35_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end44:                                        ; preds = %if.end41
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %arrayidx, align 1
  store i8 -1, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %cmp52 = icmp eq i8 %.pr, -1
  br i1 %cmp52, label %if.then54, label %for.end44.if.end70_crit_edge

for.end44.if.end70_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then54:                                        ; preds = %for.end44
  %22 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp55 = icmp sgt i32 %22, -1
  br i1 %cmp55, label %do.end60, label %if.then54.do.body64_crit_edge

if.then54.do.body64_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

do.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #13
  br label %do.body64

do.body64:                                        ; preds = %do.end60, %if.then54.do.body64_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2092, 0\0A.popsection", ""() #10, !srcloc !564
  unreachable

if.end70:                                         ; preds = %for.end44.if.end70_crit_edge, %for.end44.thread
  %23 = phi i8 [ %19, %for.end44.thread ], [ %.pr, %for.end44.if.end70_crit_edge ]
  %conv51167 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp73 = icmp slt i8 %23, 0
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %uscb_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uscb_list, align 4
  %sub78 = add nsw i32 %conv51167, -128
  %add.ptr79 = getelementptr %struct.scb_t, ptr %25, i32 %sub78
  br label %if.end83

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %kscb_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kscb_list, align 4
  %add.ptr82 = getelementptr %struct.scb_t, ptr %27, i32 %conv51167
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then75
  %scb.0 = phi ptr [ %add.ptr79, %if.then75 ], [ %add.ptr82, %if.else ]
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status, align 1
  %conv84 = zext i8 %29 to i32
  %status85 = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 10
  %30 = ptrtoint ptr %status85 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv84, ptr %status85, align 4
  %list = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %32, ptr noundef nonnull %clist) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end83.list_add_tail.exit_crit_edge

if.end83.list_add_tail.exit_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %2, align 4
  %34 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %clist, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.scb_t, ptr %scb.0, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %32, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end83.list_add_tail.exit_crit_edge
  %inc87 = add nuw nsw i32 %i.1155, 1
  %exitcond160.not = icmp eq i32 %inc87, %conv26
  br i1 %exitcond160.not, label %list_add_tail.exit.do.body89_crit_edge, label %list_add_tail.exit.for.cond32.preheader_crit_edge

list_add_tail.exit.for.cond32.preheader_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond32.preheader

list_add_tail.exit.do.body89_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89

do.body89:                                        ; preds = %list_add_tail.exit.do.body89_crit_edge, %for.end.do.body89_crit_edge, %for.end.thread
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !565
  call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %baseaddr, align 4
  %add.ptr93 = getelementptr i8, ptr %38, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 33554432) #10, !srcloc !551
  %39 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %baseaddr, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 44
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !553
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !560
  %cmp10.not = icmp eq i32 %41, 873594896
  br i1 %cmp10.not, label %do.body89.if.end_crit_edge, label %do.body89.do.end95_crit_edge

do.body89.do.end95_crit_edge:                     ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

do.body89.if.end_crit_edge:                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end95:                                         ; preds = %do.body89.do.end95_crit_edge, %entry.do.end95_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.do.end95_crit_edge ], [ 1, %do.body89.do.end95_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mailbox_lock, i32 noundef %call3) #10
  %completed_list_lock = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 12
  %call105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %completed_list_lock) #10
  %42 = ptrtoint ptr %clist to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %clist, align 4
  %cmp.i.not.i = icmp eq ptr %43, %clist
  br i1 %cmp.i.not.i, label %do.end95.list_splice.exit_crit_edge, label %if.then.i

do.end95.list_splice.exit_crit_edge:              ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice.exit

if.then.i:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 11
  %44 = ptrtoint ptr %completed_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %completed_list, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 4
  %prev3.i.i148 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i148 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %completed_list, ptr %prev3.i.i148, align 4
  store ptr %43, ptr %completed_list, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %45, ptr %47, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %do.end95.list_splice.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %completed_list_lock, i32 noundef %call105) #10
  br i1 %cmp10.not157, label %if.then111, label %list_splice.exit.if.end112_crit_edge

list_splice.exit.if.end112_crit_edge:             ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then111:                                       ; preds = %list_splice.exit
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %adapter, i32 0, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i149, label %if.then111.if.end112_crit_edge

if.then111.if.end112_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then.i149:                                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  call void @__tasklet_schedule(ptr noundef %adapter) #10
  br label %if.end112

if.end112:                                        ; preds = %if.then.i149, %if.then111.if.end112_crit_edge, %list_splice.exit.if.end112_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clist) #10
  ret i32 %handled.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_mbox_runpendq(ptr noundef %adapter, ptr noundef %scb_q) unnamed_addr #3 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pend_list_lock = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_list_lock) #10
  %tobool.not = icmp eq ptr %scb_q, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.scb_t, ptr %scb_q, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %state, align 4
  %list = getelementptr inbounds %struct.scb_t, ptr %scb_q, i32 0, i32 1
  %pend_list = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef %pend_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pend_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.scb_t, ptr %scb_q, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 4
  %7 = ptrtoint ptr %quiescent to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %quiescent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %pend_list9 = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 9
  %9 = ptrtoint ptr %pend_list9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pend_list9, align 4
  %cmp.i.not108 = icmp eq ptr %10, %pend_list9
  br i1 %cmp.i.not108, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.do.body12_crit_edge

while.cond.preheader.do.body12_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body12

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %do.body59.do.body12_crit_edge, %while.cond.preheader.do.body12_crit_edge
  %11 = phi ptr [ %31, %do.body59.do.body12_crit_edge ], [ %10, %while.cond.preheader.do.body12_crit_edge ]
  %flags.0109 = phi i32 [ %call67, %do.body59.do.body12_crit_edge ], [ %call2, %while.cond.preheader.do.body12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %12 = ptrtoint ptr %pend_list_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %pend_list_lock, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body21, label %do.end29, !prof !566

do.body21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1882, 0\0A.popsection", ""() #10, !srcloc !567
  unreachable

do.end29:                                         ; preds = %do.body12
  %add.ptr = getelementptr i8, ptr %11, i32 -4
  %call.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #10
  br i1 %call.i.i96, label %if.end.i.i97, label %do.end29.list_del_init.exit_crit_edge

do.end29.list_del_init.exit_crit_edge:            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i97:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i97, %do.end29.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_list_lock, i32 noundef %flags.0109) #10
  %state34 = getelementptr i8, ptr %11, i32 20
  %22 = ptrtoint ptr %state34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %state34, align 4
  %call35 = tail call fastcc i32 @mbox_post_cmd(ptr noundef %adapter, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %do.body59, label %do.body40

do.body40:                                        ; preds = %list_del_init.exit
  %state34.le = getelementptr i8, ptr %11, i32 20
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_list_lock) #10
  %23 = ptrtoint ptr %state34.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state34.le, align 4
  %24 = ptrtoint ptr %pend_list9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pend_list9, align 4
  %call.i.i98 = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %pend_list9, ptr noundef %25) #10
  br i1 %call.i.i98, label %if.end.i.i100, label %do.body40.cleanup_crit_edge

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i100:                                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i3.i.le = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %11, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %11, align 4
  %28 = ptrtoint ptr %prev.i3.i.le to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pend_list9, ptr %prev.i3.i.le, align 4
  %29 = ptrtoint ptr %pend_list9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %11, ptr %pend_list9, align 4
  br label %cleanup

do.body59:                                        ; preds = %list_del_init.exit
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_list_lock) #10
  %30 = ptrtoint ptr %pend_list9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %pend_list9, align 4
  %cmp.i.not = icmp eq ptr %31, %pend_list9
  br i1 %cmp.i.not, label %do.body59.cleanup_crit_edge, label %do.body59.do.body12_crit_edge

do.body59.do.body12_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.body59.cleanup_crit_edge, %if.end.i.i100, %do.body40.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %flags.0.lcssa.sink = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %call48, %do.body40.cleanup_crit_edge ], [ %call48, %if.end.i.i100 ], [ %call2, %while.cond.preheader.cleanup_crit_edge ], [ %call67, %do.body59.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_list_lock, i32 noundef %flags.0.lcssa.sink) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mbox_post_cmd(ptr nocapture noundef %adapter, ptr nocapture noundef readonly %scb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  %2 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb, align 4
  %mbox2 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mbox2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox2, align 4
  %mbox643 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mbox643 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox643, align 4
  %mailbox_lock = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mailbox_lock) #10
  %busy = getelementptr inbounds %struct.mbox_t, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %entry.do.body10_crit_edge, !prof !558

entry.do.body10_crit_edge:                        ; preds = %entry
  br label %do.body10

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.body10:                                        ; preds = %land.rhs.do.body10_crit_edge, %entry.do.body10_crit_edge
  %i.0 = phi i32 [ %inc, %land.rhs.do.body10_crit_edge ], [ 0, %entry.do.body10_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !568
  %11 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %do.body10.if.end22_crit_edge, label %land.rhs

do.body10.if.end22_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.rhs:                                         ; preds = %do.body10
  %inc = add nuw i32 %i.0, 1
  %13 = load i32, ptr @max_mbox_busy_wait, align 4
  %cmp15 = icmp ult i32 %inc, %13
  br i1 %cmp15, label %land.rhs.do.body10_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.do.body10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

if.end22:                                         ; preds = %do.body10.if.end22_crit_edge, %entry.if.end22_crit_edge
  %mbox6423 = getelementptr inbounds %struct.mbox_ccb_t, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %mbox6423 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbox6423, align 4
  %16 = call ptr @memcpy(ptr %7, ptr %15, i32 22)
  %sno = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 3
  %17 = ptrtoint ptr %sno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sno, align 4
  %conv24 = trunc i32 %18 to i8
  %cmdid = getelementptr inbounds %struct.mbox_t, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %cmdid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv24, ptr %cmdid, align 1
  %outstanding_cmds = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 5
  %20 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outstanding_cmds, align 4
  %inc25 = add i32 %21, 1
  store i32 %inc25, ptr %outstanding_cmds, align 4
  %22 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %busy, align 1
  %poll = getelementptr inbounds %struct.mbox_t, ptr %5, i32 0, i32 12
  %23 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %poll, align 1
  %ack = getelementptr inbounds %struct.mbox_t, ptr %5, i32 0, i32 13
  %24 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ack, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !569
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !570
  tail call void @arm_heavy_mb() #10
  %mbox_dma = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mbox_dma, align 4
  %or = or i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %baseaddr = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %baseaddr, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #10, !srcloc !551
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -1, %land.rhs.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mailbox_lock, i32 noundef %call5) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mbox_post_sync_cmd(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %raw_mbox) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 15
  %0 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raid_device, align 4
  %mbox1 = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox1, align 4
  %busy.i = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 5368700) #10
  %7 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %busy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not14.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not14.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %9 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %busy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not.i = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.015.i)
  %cmp.i = icmp ult i32 %i.015.i, 999
  %or.cond.i = select i1 %tobool3.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %blocked_mailbox

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = call ptr @memcpy(ptr %3, ptr %raw_mbox, i32 15)
  %cmdid = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %cmdid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %cmdid, align 1
  %13 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %busy.i, align 1
  %poll = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %poll, align 1
  %ack = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ack, align 1
  %numstatus = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %numstatus to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %numstatus, align 1
  %status2 = getelementptr inbounds %struct.mbox_t, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %status2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !571
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !572
  tail call void @arm_heavy_mb() #10
  %mbox_dma = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_dma, align 4
  %or = or i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %baseaddr = getelementptr inbounds %struct.mraid_device_t, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %baseaddr, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #10, !srcloc !551
  %23 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp7 = icmp eq i8 %24, -1
  br i1 %cmp7, label %if.then9, label %if.end.if.end72_crit_edge

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then9:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 5368700) #10
  %26 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp12221 = icmp eq i8 %27, -1
  br i1 %cmp12221, label %if.then9.for.body_crit_edge, label %if.then9.if.end72_crit_edge

if.then9.if.end72_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %i.0222 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !573
  tail call void @msleep(i32 noundef 1) #10
  %inc = add nuw nsw i32 %i.0222, 1
  %28 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp12 = icmp eq i8 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.0222)
  %cmp14 = icmp ult i32 %i.0222, 999
  %or.cond = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %phi.cmp236 = icmp eq i32 %inc, 1000
  br i1 %phi.cmp236, label %if.then18, label %for.end.if.end72_crit_edge

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then18:                                        ; preds = %for.end
  %30 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp19 = icmp sgt i32 %30, -1
  br i1 %cmp19, label %do.end24, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.then18.if.end26_crit_edge
  %31 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp30223 = icmp eq i8 %32, -1
  br i1 %cmp30223, label %if.end26.for.body36_crit_edge, label %if.end26.if.end61_crit_edge

if.end26.if.end61_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end26.for.body36_crit_edge:                    ; preds = %if.end26
  br label %for.body36

for.body36:                                       ; preds = %if.end45.for.body36_crit_edge, %if.end26.for.body36_crit_edge
  %i.1224 = phi i32 [ %inc47, %if.end45.for.body36_crit_edge ], [ 0, %if.end26.for.body36_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !574
  %33 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp37 = icmp sgt i32 %33, -1
  br i1 %cmp37, label %do.end42, label %for.body36.if.end45_crit_edge

for.body36.if.end45_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end42:                                         ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nuw nsw i32 180, %i.1224
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %sub) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %for.body36.if.end45_crit_edge
  tail call void @msleep(i32 noundef 1000) #10
  %inc47 = add nuw nsw i32 %i.1224, 1
  %34 = ptrtoint ptr %numstatus to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %numstatus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp30 = icmp eq i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %i.1224)
  %cmp33 = icmp ult i32 %i.1224, 179
  %or.cond217 = select i1 %cmp30, i1 %cmp33, i1 false
  br i1 %or.cond217, label %if.end45.for.body36_crit_edge, label %for.end48

if.end45.for.body36_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36

for.end48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %inc47)
  %phi.cmp237 = icmp eq i32 %inc47, 180
  br i1 %phi.cmp237, label %if.then51, label %for.end48.if.end61_crit_edge

for.end48.if.end61_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then51:                                        ; preds = %for.end48
  %36 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp52 = icmp sgt i32 %36, -1
  br i1 %cmp52, label %do.end57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #13
  br label %cleanup

if.end61:                                         ; preds = %for.end48.if.end61_crit_edge, %if.end26.if.end61_crit_edge
  %37 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp62 = icmp sgt i32 %37, -1
  br i1 %cmp62, label %do.end67, label %if.end61.if.end72_crit_edge

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %if.end61.if.end72_crit_edge, %for.end.if.end72_crit_edge, %if.then9.if.end72_crit_edge, %if.end.if.end72_crit_edge
  %38 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %39)
  %cmp75.not = icmp eq i8 %39, 119
  br i1 %cmp75.not, label %if.end72.do.body105_crit_edge, label %if.then77

if.end72.do.body105_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

if.then77:                                        ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 5368700) #10
  %41 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %42)
  %cmp81.not227.not = icmp eq i8 %42, 119
  br i1 %cmp81.not227.not, label %if.then77.do.body105_crit_edge, label %if.then77.for.body87_crit_edge

if.then77.for.body87_crit_edge:                   ; preds = %if.then77
  br label %for.body87

if.then77.do.body105_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %if.then77.for.body87_crit_edge
  %i.2228 = phi i32 [ %inc89, %for.body87.for.body87_crit_edge ], [ 0, %if.then77.for.body87_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !575
  tail call void @msleep(i32 noundef 1) #10
  %inc89 = add nuw nsw i32 %i.2228, 1
  %43 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %44)
  %cmp81.not = icmp ne i8 %44, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.2228)
  %cmp84 = icmp ult i32 %i.2228, 999
  %or.cond218 = select i1 %cmp81.not, i1 %cmp84, i1 false
  br i1 %or.cond218, label %for.body87.for.body87_crit_edge, label %for.end90

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87

for.end90:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc89)
  %phi.cmp = icmp eq i32 %inc89, 1000
  br i1 %phi.cmp, label %if.then93, label %for.end90.do.body105_crit_edge

for.end90.do.body105_crit_edge:                   ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

if.then93:                                        ; preds = %for.end90
  %45 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp94 = icmp sgt i32 %45, -1
  br i1 %cmp94, label %do.end99, label %if.then93.cleanup_crit_edge

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end99:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #13
  br label %cleanup

do.body105:                                       ; preds = %for.end90.do.body105_crit_edge, %if.then77.do.body105_crit_edge, %if.end72.do.body105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !576
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %mbox_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mbox_dma, align 4
  %or109 = or i32 %47, 2
  %48 = tail call i32 @llvm.bswap.i32(i32 %or109)
  %49 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %baseaddr, align 4
  %add.ptr111 = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %48) #10, !srcloc !551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !577
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %baseaddr, align 4
  %add.ptr116 = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #10, !srcloc !553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !578
  %54 = and i32 %53, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not = icmp eq i32 %54, 0
  br i1 %tobool.not, label %do.body105.if.end152_crit_edge, label %if.then120

do.body105.if.end152_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then120:                                       ; preds = %do.body105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 5368700) #10
  %56 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %baseaddr, align 4
  %add.ptr125230 = getelementptr i8, ptr %57, i32 32
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125230) #10, !srcloc !553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !579
  %59 = and i32 %58, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool130.not231.not = icmp eq i32 %59, 0
  br i1 %tobool130.not231.not, label %if.then120.if.end152_crit_edge, label %if.then120.for.body135_crit_edge

if.then120.for.body135_crit_edge:                 ; preds = %if.then120
  br label %for.body135

if.then120.if.end152_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %if.then120.for.body135_crit_edge
  %i.3232 = phi i32 [ %inc137, %for.body135.for.body135_crit_edge ], [ 0, %if.then120.for.body135_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !580
  tail call void @msleep(i32 noundef 1) #10
  %inc137 = add nuw nsw i32 %i.3232, 1
  %60 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %baseaddr, align 4
  %add.ptr125 = getelementptr i8, ptr %61, i32 32
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #10, !srcloc !553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !579
  %63 = and i32 %62, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool130.not = icmp ne i32 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.3232)
  %cmp132 = icmp ult i32 %i.3232, 999
  %or.cond219 = select i1 %tobool130.not, i1 %cmp132, i1 false
  br i1 %or.cond219, label %for.body135.for.body135_crit_edge, label %for.end138

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body135

for.end138:                                       ; preds = %for.body135
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc137)
  %phi.cmp235 = icmp eq i32 %inc137, 1000
  br i1 %phi.cmp235, label %if.then141, label %for.end138.if.end152_crit_edge

for.end138.if.end152_crit_edge:                   ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then141:                                       ; preds = %for.end138
  %64 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp142 = icmp sgt i32 %64, -1
  br i1 %cmp142, label %do.end147, label %if.then141.cleanup_crit_edge

if.then141.cleanup_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end147:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #13
  br label %cleanup

if.end152:                                        ; preds = %for.end138.if.end152_crit_edge, %if.then120.if.end152_crit_edge, %do.body105.if.end152_crit_edge
  %65 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %poll, align 1
  %66 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 119, ptr %ack, align 1
  %67 = ptrtoint ptr %status2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %status2, align 1
  %conv165 = zext i8 %68 to i32
  %69 = call ptr @memset(ptr %numstatus, i32 255, i32 48)
  br label %cleanup

blocked_mailbox:                                  ; preds = %if.end.i
  %70 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp166 = icmp sgt i32 %70, -1
  br i1 %cmp166, label %do.end171, label %blocked_mailbox.cleanup_crit_edge

blocked_mailbox.cleanup_crit_edge:                ; preds = %blocked_mailbox
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end171:                                        ; preds = %blocked_mailbox
  call void @__sanitizer_cov_trace_pc() #12
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end171, %blocked_mailbox.cleanup_crit_edge, %if.end152, %do.end147, %if.then141.cleanup_crit_edge, %do.end99, %if.then93.cleanup_crit_edge, %do.end57, %if.then51.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv165, %if.end152 ], [ -1, %do.end57 ], [ -1, %if.then51.cleanup_crit_edge ], [ -1, %do.end99 ], [ -1, %if.then93.cleanup_crit_edge ], [ -1, %do.end147 ], [ -1, %if.then141.cleanup_crit_edge ], [ -1, %do.end171 ], [ -1, %blocked_mailbox.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @megaraid_mbox_mm_done(ptr noundef %adapter, ptr noundef %scb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gp = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 2
  %0 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gp, align 4
  %2 = inttoptr i32 %1 to ptr
  %cmdbuf = getelementptr inbounds %struct.uioc, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %cmdbuf, align 4
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  %status = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %conv1 = trunc i32 %7 to i8
  %mbox32 = getelementptr inbounds %struct.mbox64_t, ptr %5, i32 0, i32 2
  %status2 = getelementptr inbounds %struct.mbox64_t, ptr %5, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %status2, align 1
  %state = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 4
  %scp = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 4
  %10 = ptrtoint ptr %scp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %scp, align 4
  %uscb_pool_lock = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 26
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uscb_pool_lock) #10
  %list = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 1
  %uscb_pool = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 25
  %11 = ptrtoint ptr %uscb_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uscb_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %uscb_pool, ptr noundef %12) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.scb_t, ptr %scb, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %uscb_pool, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %uscb_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %uscb_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uscb_pool_lock, i32 noundef %call6) #10
  %17 = ptrtoint ptr %mbox32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mbox32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -92, i8 %18)
  %cmp11 = icmp eq i8 %18, -92
  br i1 %cmp11, label %land.lhs.true, label %list_add.exit.if.end_crit_edge

list_add.exit.if.end_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %list_add.exit
  %arrayidx13 = getelementptr %struct.mbox64_t, ptr %5, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %20)
  %cmp15 = icmp eq i8 %20, 28
  br i1 %cmp15, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %quiescent = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 4
  %21 = ptrtoint ptr %quiescent to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %quiescent, align 4
  %dec = add i8 %22, -1
  store i8 %dec, ptr %quiescent, align 4
  tail call fastcc void @megaraid_mbox_runpendq(ptr noundef %adapter, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %list_add.exit.if.end_crit_edge
  %done = getelementptr inbounds %struct.uioc, ptr %2, i32 0, i32 17
  %23 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %done, align 16
  tail call void %24(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_mbox_mm_handler(i32 noundef %drvr_data, ptr noundef %kioc, i32 noundef %action) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp.not = icmp eq i32 %action, 1
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp1 = icmp sgt i32 %0, -1
  br i1 %cmp1, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %action) #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %1 = inttoptr i32 %drvr_data to ptr
  %being_detached = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %being_detached, i32 noundef 4) #10
  %2 = ptrtoint ptr %being_detached to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %being_detached, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end3
  %4 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp6 = icmp sgt i32 %4, -1
  br i1 %cmp6, label %do.end10, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %opcode = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opcode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %6, label %sw.default [
    i32 196608, label %sw.bb
    i32 0, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %buf_vaddr = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 18
  %8 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_vaddr, align 4
  %pdev.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor.i, align 8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %9, align 256
  %15 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device.i, align 2
  %pci_device_id.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %pci_device_id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %pci_device_id.i, align 2
  %19 = load ptr, ptr %pdev.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_vendor.i, align 4
  %subsys_vendor_id.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %subsys_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %subsys_vendor_id.i, align 4
  %23 = load ptr, ptr %pdev.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_device.i, align 2
  %subsys_device_id.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 3
  %26 = ptrtoint ptr %subsys_device_id.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %subsys_device_id.i, align 2
  %27 = load ptr, ptr %pdev.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %number.i, align 4
  %pci_bus.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 5
  %32 = ptrtoint ptr %pci_bus.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %pci_bus.i, align 16
  %33 = load ptr, ptr %pdev.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devfn.i, align 4
  %conv.i = trunc i32 %35 to i8
  %pci_dev_fn.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %pci_dev_fn.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %pci_dev_fn.i, align 1
  %37 = load ptr, ptr %pdev.i, align 4
  %devfn7.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %devfn7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn7.i, align 4
  %40 = trunc i32 %39 to i8
  %41 = lshr i8 %40, 3
  %pci_slot.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 7
  %42 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %pci_slot.i, align 2
  %host.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host.i, align 4
  %irq.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 47
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i, align 8
  %conv9.i = trunc i32 %46 to i8
  %irq10.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 8
  %47 = ptrtoint ptr %irq10.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv9.i, ptr %irq10.i, align 1
  %raid_device.i = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 15
  %48 = ptrtoint ptr %raid_device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %raid_device.i, align 4
  %baseport.i = getelementptr inbounds %struct.mraid_device_t, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %baseport.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %baseport.i, align 4
  %conv11.i = zext i32 %51 to i64
  %baseport12.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 4
  %52 = ptrtoint ptr %baseport12.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv11.i, ptr %baseport12.i, align 8
  %conv14.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %53 = load ptr, ptr %pdev.i, align 4
  %devfn16.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %devfn16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devfn16.i, align 4
  %or.i = or i32 %55, %shl.i
  %unique_id.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 9
  %56 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i, ptr %unique_id.i, align 4
  %57 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %host_no.i, align 4
  %host_no18.i = getelementptr inbounds %struct.mraid_hba_info, ptr %9, i32 0, i32 10
  %60 = ptrtoint ptr %host_no18.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %host_no18.i, align 8
  %status = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 8
  %61 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %status, align 4
  %done = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 17
  %62 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %done, align 16
  tail call void %63(ptr noundef %kioc) #10
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @megaraid_mbox_mm_command(ptr noundef %1, ptr noundef %kioc)
  br label %cleanup

sw.default:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %status19 = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 8
  %66 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -22, ptr %status19, align 4
  %done20 = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 17
  %67 = ptrtoint ptr %done20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %done20, align 16
  tail call void %68(ptr noundef %kioc) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb17, %sw.bb, %do.end10, %if.then5.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call18, %sw.bb17 ], [ %65, %sw.bb ], [ -524, %do.end ], [ -524, %if.then.cleanup_crit_edge ], [ -19, %do.end10 ], [ -19, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mraid_mm_register_adp(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @megaraid_mbox_mm_command(ptr noundef %adapter, ptr noundef %kioc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uscb_pool = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 25
  %uscb_pool_lock = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 26
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uscb_pool_lock) #10
  %0 = ptrtoint ptr %uscb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %uscb_pool, align 4
  %cmp.i.not = icmp eq ptr %1, %uscb_pool
  br i1 %cmp.i.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp6 = icmp sgt i32 %2, -1
  br i1 %cmp6, label %do.end11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #13
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uscb_pool_lock, i32 noundef %call2) #10
  br label %cleanup

if.end15:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del_init.exit_crit_edge

if.end15.list_del_init.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end15.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uscb_pool_lock, i32 noundef %call2) #10
  %state = getelementptr i8, ptr %1, i32 20
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  %dma_type = getelementptr i8, ptr %1, i32 28
  %12 = ptrtoint ptr %dma_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_type, align 4
  %dma_direction = getelementptr i8, ptr %1, i32 24
  %13 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %dma_direction, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %cmdbuf = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 5
  %16 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %cmdbuf, align 4
  %conv19 = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv19 to ptr
  %mbox32 = getelementptr inbounds %struct.mbox64_t, ptr %18, i32 0, i32 2
  %mbox6420 = getelementptr inbounds %struct.mbox_ccb_t, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %mbox6420 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbox6420, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %18, i32 74)
  %22 = ptrtoint ptr %kioc to i32
  %gp = getelementptr i8, ptr %1, i32 8
  %23 = ptrtoint ptr %gp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %gp, align 4
  %24 = ptrtoint ptr %mbox32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mbox32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -92, i8 %25)
  %cmp22 = icmp eq i8 %25, -92
  br i1 %cmp22, label %land.lhs.true, label %list_del_init.exit.if.end61_crit_edge

list_del_init.exit.if.end61_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true:                                    ; preds = %list_del_init.exit
  %arrayidx24 = getelementptr %struct.mbox64_t, ptr %18, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %27)
  %cmp26 = icmp eq i8 %27, 28
  br i1 %cmp26, label %if.then28, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then28:                                        ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %quiescent.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 4
  %28 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %quiescent.i, align 4
  %inc.i = add i8 %29, 1
  store i8 %inc.i, ptr %quiescent.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %outstanding_cmds.i = getelementptr inbounds %struct.adapter_t, ptr %adapter, i32 0, i32 5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.then28
  %i.024.i = phi i32 [ 0, %if.then28 ], [ %inc16.i, %if.end.i.land.rhs.i_crit_edge ]
  %30 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %outstanding_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end42_crit_edge, label %for.body.i

land.rhs.i.if.end42_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

for.body.i:                                       ; preds = %land.rhs.i
  %32 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp8.i = icmp sgt i32 %32, 0
  br i1 %cmp8.i, label %do.end12.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef %31) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end12.i, %for.body.i.if.end.i_crit_edge
  tail call void @msleep(i32 noundef 1000) #10
  %inc16.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, 60
  br i1 %exitcond.not.i, label %wait_till_fw_empty.exit, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

wait_till_fw_empty.exit:                          ; preds = %if.end.i
  %33 = ptrtoint ptr %outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %outstanding_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool30.not = icmp eq i32 %.pr, 0
  br i1 %tobool30.not, label %wait_till_fw_empty.exit.if.end42_crit_edge, label %if.then31

wait_till_fw_empty.exit.if.end42_crit_edge:       ; preds = %wait_till_fw_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then31:                                        ; preds = %wait_till_fw_empty.exit
  %34 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp32 = icmp sgt i32 %34, -1
  br i1 %cmp32, label %do.end37, label %if.then31.if.end40_crit_edge

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.then31.if.end40_crit_edge
  %status = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 8
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -62, ptr %status, align 4
  %status41 = getelementptr i8, ptr %1, i32 36
  %36 = ptrtoint ptr %status41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %status41, align 4
  tail call fastcc void @megaraid_mbox_mm_done(ptr noundef %adapter, ptr noundef %add.ptr)
  br label %cleanup

if.end42:                                         ; preds = %wait_till_fw_empty.exit.if.end42_crit_edge, %land.rhs.i.if.end42_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %1, ptr %1, align 4
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %prev.i3.i, align 4
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %state, align 4
  %call45 = tail call fastcc i32 @mbox_post_cmd(ptr noundef %adapter, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end42.cleanup_crit_edge, label %if.then48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.end42
  %40 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp49 = icmp sgt i32 %40, -1
  br i1 %cmp49, label %do.end54, label %if.then48.if.end57_crit_edge

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #13
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.then48.if.end57_crit_edge
  %status58 = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 8
  %41 = ptrtoint ptr %status58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -16, ptr %status58, align 4
  %status59 = getelementptr i8, ptr %1, i32 36
  %42 = ptrtoint ptr %status59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %status59, align 4
  tail call fastcc void @megaraid_mbox_mm_done(ptr noundef %adapter, ptr noundef %add.ptr)
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %list_del_init.exit.if.end61_crit_edge
  tail call fastcc void @megaraid_mbox_runpendq(ptr noundef %adapter, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end57, %if.end42.cleanup_crit_edge, %if.end40, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ -62, %if.end40 ], [ -16, %if.end57 ], [ 0, %if.end61 ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_queue_command(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #3 align 64 {
entry:
  %skip.i.i = alloca [9 x i8], align 1
  %scan.i.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata.i, align 8
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %result.i, align 4
  %raid_device.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 15
  %9 = ptrtoint ptr %raid_device.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %raid_device.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %skip.i.i) #10
  %11 = call ptr @memcpy(ptr %skip.i.i, ptr @__const.megaraid_mbox_build_cmd.skip, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %scan.i.i) #10
  %12 = call ptr @memcpy(ptr %scan.i.i, ptr @__const.megaraid_mbox_build_cmd.scan, i32 9)
  %channel1.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel1.i.i, align 4
  %max_channel.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 16
  %15 = ptrtoint ptr %max_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_channel.i.i, align 4
  %conv.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %14, %conv.i.i
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 8
  %arrayidx5.i.i = getelementptr %struct.adapter_t, ptr %7, i32 0, i32 14, i32 %14, i32 %18
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i.i, align 4
  br i1 %cmp.i.i, label %if.then22.i.i, label %if.else317.i.i

if.then22.i.i:                                    ; preds = %entry
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %21 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmnd.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.284)
  switch i8 %24, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 26, label %sw.bb40.i.i
    i8 18, label %sw.bb58.i.i
    i8 37, label %if.then22.i.i.sw.bb96.i.i_crit_edge
    i8 8, label %if.then22.i.i.sw.bb136.i.i_crit_edge
    i8 10, label %if.then22.i.i.sw.bb136.i.i_crit_edge8
    i8 40, label %if.then22.i.i.sw.bb136.i.i_crit_edge9
    i8 42, label %if.then22.i.i.sw.bb136.i.i_crit_edge10
    i8 -88, label %if.then22.i.i.sw.bb136.i.i_crit_edge11
    i8 -86, label %if.then22.i.i.sw.bb136.i.i_crit_edge12
    i8 22, label %if.then22.i.i.sw.bb285.i.i_crit_edge
    i8 23, label %if.then22.i.i.sw.bb285.i.i_crit_edge13
  ]

if.then22.i.i.sw.bb285.i.i_crit_edge13:           ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb285.i.i

if.then22.i.i.sw.bb285.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb285.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge12:           ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge11:           ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge10:           ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge9:            ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge8:            ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb136.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136.i.i

if.then22.i.i.sw.bb96.i.i_crit_edge:              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb96.i.i

sw.bb.i.i:                                        ; preds = %if.then22.i.i
  %ha.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 31
  %26 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ha.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.end27.i.i

if.then26.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end27.i.i:                                     ; preds = %sw.bb.i.i
  %kscb_pool.i.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 7
  %kscb_pool_lock.i.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 8
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i.i.i) #10
  %29 = ptrtoint ptr %kscb_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %kscb_pool.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %30, %kscb_pool.i.i.i
  br i1 %cmp.i.not.i.i.i, label %megaraid_alloc_scb.exit.thread.i.i, label %if.end.i.i.i

megaraid_alloc_scb.exit.thread.i.i:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i.i.i, i32 noundef %call2.i.i.i) #10
  br label %if.then29.i.i

if.end.i.i.i:                                     ; preds = %if.end27.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.megaraid_alloc_scb.exit.i.i_crit_edge

if.end.i.i.i.megaraid_alloc_scb.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_alloc_scb.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %megaraid_alloc_scb.exit.i.i

megaraid_alloc_scb.exit.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.megaraid_alloc_scb.exit.i.i_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %30, ptr %30, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %prev.i3.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i.i.i, i32 noundef %call2.i.i.i) #10
  %state.i.i.i = getelementptr i8, ptr %30, i32 20
  %39 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %state.i.i.i, align 4
  %scp9.i.i.i = getelementptr i8, ptr %30, i32 16
  %40 = ptrtoint ptr %scp9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cmd, ptr %scp9.i.i.i, align 4
  %dma_type.i.i.i = getelementptr i8, ptr %30, i32 28
  %41 = ptrtoint ptr %dma_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dma_type.i.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool28.not.i.i, label %megaraid_alloc_scb.exit.i.i.if.then29.i.i_crit_edge, label %if.end31.i.i

megaraid_alloc_scb.exit.i.i.if.then29.i.i_crit_edge: ; preds = %megaraid_alloc_scb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29.i.i

if.then29.i.i:                                    ; preds = %megaraid_alloc_scb.exit.i.i.if.then29.i.i_crit_edge, %megaraid_alloc_scb.exit.thread.i.i
  %42 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end31.i.i:                                     ; preds = %megaraid_alloc_scb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %43 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sc_data_direction.i.i, align 4
  %dma_direction.i.i = getelementptr i8, ptr %30, i32 24
  %45 = ptrtoint ptr %dma_direction.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dma_direction.i.i, align 4
  %dev_channel.i.i = getelementptr i8, ptr %30, i32 32
  %46 = ptrtoint ptr %dev_channel.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 255, ptr %dev_channel.i.i, align 4
  %conv32.i.i = trunc i32 %20 to i16
  %dev_target.i.i = getelementptr i8, ptr %30, i32 34
  %47 = ptrtoint ptr %dev_target.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv32.i.i, ptr %dev_target.i.i, align 2
  %48 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 110, ptr %51, align 1
  %53 = load ptr, ptr %49, align 4
  %arrayidx36.i.i = getelementptr i8, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %arrayidx36.i.i, align 1
  %conv37.i.i = trunc i32 %20 to i8
  %55 = load ptr, ptr %49, align 4
  %arrayidx39.i.i = getelementptr i8, ptr %55, i32 3
  %56 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv37.i.i, ptr %arrayidx39.i.i, align 1
  br label %megaraid_mbox_build_cmd.exit.thread120.i

sw.bb40.i.i:                                      ; preds = %if.then22.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %57 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdb.i.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %and.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !558

do.body2.i.i.i:                                   ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

sg_page.exit.i.i:                                 ; preds = %sw.bb40.i.i
  %and.i.i.i = and i32 %60, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool43.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool43.not.i.i, label %if.else50.i.i, label %sg_virt.exit.i.i

sg_virt.exit.i.i:                                 ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef nonnull %61) #10
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i635.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %63
  %64 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx48.i.i = getelementptr i8, ptr %65, i32 4
  %66 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %67 to i32
  %68 = call ptr @memset(ptr %add.ptr.i635.i.i, i32 0, i32 %conv49.i.i)
  br label %if.end56.i.i

if.else50.i.i:                                    ; preds = %sg_page.exit.i.i
  %69 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp51.i.i = icmp sgt i32 %69, -1
  br i1 %cmp51.i.i, label %do.end.i.i, label %if.else50.i.i.if.end56.i.i_crit_edge

if.else50.i.i.if.end56.i.i_crit_edge:             ; preds = %if.else50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i.i

do.end.i.i:                                       ; preds = %if.else50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call54.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef 1552) #13
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %do.end.i.i, %if.else50.i.i.if.end56.i.i_crit_edge, %sg_virt.exit.i.i
  %70 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

sw.bb58.i.i:                                      ; preds = %if.then22.i.i
  %last_disp.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %10, i32 0, i32 18
  %71 = ptrtoint ptr %last_disp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %last_disp.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %and61.i.i = and i32 %72, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then63.i.i, label %sw.bb58.i.i.if.end88.i.i_crit_edge

sw.bb58.i.i.if.end88.i.i_crit_edge:               ; preds = %sw.bb58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i.i

if.then63.i.i:                                    ; preds = %sw.bb58.i.i
  %73 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp64.i.i = icmp sgt i32 %73, -1
  br i1 %cmp64.i.i, label %if.end74.i.i, label %if.then63.i.i.if.end83.i.i_crit_edge

if.then63.i.i.if.end83.i.i_crit_edge:             ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i.i

if.end74.i.i:                                     ; preds = %if.then63.i.i
  %host.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 2
  %74 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host.i.i, align 4
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %host_no.i.i, align 4
  %call73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %77, i32 noundef %14) #13
  %.pr.i.i = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr.i.i)
  %cmp75.i.i = icmp sgt i32 %.pr.i.i, -1
  br i1 %cmp75.i.i, label %do.end80.i.i, label %if.end74.i.i.if.end83.i.i_crit_edge

if.end74.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i.i

do.end80.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call82.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #13
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %do.end80.i.i, %if.end74.i.i.if.end83.i.i_crit_edge, %if.then63.i.i.if.end83.i.i_crit_edge
  %78 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device.i, align 4
  %channel85.i.i = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %channel85.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel85.i.i, align 4
  %shl86.i.i = shl nuw i32 1, %81
  %82 = ptrtoint ptr %last_disp.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last_disp.i.i, align 4
  %or.i.i = or i32 %83, %shl86.i.i
  store i32 %or.i.i, ptr %last_disp.i.i, align 4
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.end83.i.i, %sw.bb58.i.i.if.end88.i.i_crit_edge
  %84 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx90.i.i = getelementptr i8, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx90.i.i, align 1
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool93.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool93.not.i.i, label %if.end88.i.i.sw.bb96.i.i_crit_edge, label %if.then94.i.i

if.end88.i.i.sw.bb96.i.i_crit_edge:               ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb96.i.i

if.then94.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @scsi_build_sense(ptr noundef %cmd, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #10
  br label %megaraid_mbox_build_cmd.exit.thread.i

sw.bb96.i.i:                                      ; preds = %if.end88.i.i.sw.bb96.i.i_crit_edge, %if.then22.i.i.sw.bb96.i.i_crit_edge
  %89 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device.i, align 4
  %lun.i.i = getelementptr inbounds %struct.scsi_device, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %lun.i.i, align 8
  %conv98.i.i = trunc i64 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv98.i.i)
  %tobool99.not.i.i = icmp eq i32 %conv98.i.i, 0
  br i1 %tobool99.not.i.i, label %if.end102.i.i, label %if.then100.i.i

if.then100.i.i:                                   ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end102.i.i:                                    ; preds = %sw.bb96.i.i
  %rem.i.i = srem i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %rem.i.i)
  %cmp103.i.i = icmp sgt i32 %rem.i.i, 39
  br i1 %cmp103.i.i, label %if.then105.i.i, label %if.end107.i.i

if.then105.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end107.i.i:                                    ; preds = %if.end102.i.i
  %kscb_pool.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 7
  %kscb_pool_lock.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i.i) #10
  %95 = ptrtoint ptr %kscb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %kscb_pool.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %96, %kscb_pool.i.i
  br i1 %cmp.i.not.i.i, label %megaraid_alloc_scb.exit.thread.i, label %if.end.i.i

megaraid_alloc_scb.exit.thread.i:                 ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i.i, i32 noundef %call2.i.i) #10
  br label %if.then110.i.i

if.end.i.i:                                       ; preds = %if.end107.i.i
  %add.ptr.i.i = getelementptr i8, ptr %96, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %96) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.megaraid_alloc_scb.exit.i_crit_edge

if.end.i.i.megaraid_alloc_scb.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_alloc_scb.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i, align 4
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  %prev1.i.i.i.i110.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i.i110.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %megaraid_alloc_scb.exit.i

megaraid_alloc_scb.exit.i:                        ; preds = %if.end.i.i.i.i, %if.end.i.i.megaraid_alloc_scb.exit.i_crit_edge
  %103 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %96, ptr %96, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %96, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i.i, i32 noundef %call2.i.i) #10
  %state.i.i = getelementptr i8, ptr %96, i32 20
  %105 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %state.i.i, align 4
  %scp9.i.i = getelementptr i8, ptr %96, i32 16
  %106 = ptrtoint ptr %scp9.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %cmd, ptr %scp9.i.i, align 4
  %dma_type.i111.i = getelementptr i8, ptr %96, i32 28
  %107 = ptrtoint ptr %dma_type.i111.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %dma_type.i111.i, align 4
  %tobool109.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool109.not.i.i, label %megaraid_alloc_scb.exit.i.if.then110.i.i_crit_edge, label %if.end112.i.i

megaraid_alloc_scb.exit.i.if.then110.i.i_crit_edge: ; preds = %megaraid_alloc_scb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110.i.i

if.then110.i.i:                                   ; preds = %megaraid_alloc_scb.exit.i.if.then110.i.i_crit_edge, %megaraid_alloc_scb.exit.thread.i
  %108 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end112.i.i:                                    ; preds = %megaraid_alloc_scb.exit.i
  %109 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i.i, align 4
  %dev_channel114.i.i = getelementptr i8, ptr %96, i32 32
  %111 = ptrtoint ptr %dev_channel114.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 255, ptr %dev_channel114.i.i, align 4
  %conv115.i.i = trunc i32 %20 to i16
  %dev_target116.i.i = getelementptr i8, ptr %96, i32 34
  %112 = ptrtoint ptr %dev_target116.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv115.i.i, ptr %dev_target116.i.i, align 2
  %pthru117.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %110, i32 0, i32 7
  %113 = ptrtoint ptr %pthru117.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pthru117.i.i, align 4
  %mbox118.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %110, i32 0, i32 1
  %115 = ptrtoint ptr %mbox118.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mbox118.i.i, align 4
  %mbox64119.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %110, i32 0, i32 2
  %117 = ptrtoint ptr %mbox64119.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mbox64119.i.i, align 4
  %119 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i.i = load i8, ptr %114, align 1
  %bf.clear121.i.i = and i8 %bf.load.i.i, 14
  %reqsenselen.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 8
  %120 = ptrtoint ptr %reqsenselen.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 14, ptr %reqsenselen.i.i, align 1
  %bf.set125.i.i = or i8 %bf.clear121.i.i, 17
  store i8 %bf.set125.i.i, ptr %114, align 1
  %conv126.i.i = trunc i32 %20 to i8
  %logdrv.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 1
  %121 = ptrtoint ptr %logdrv.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv126.i.i, ptr %logdrv.i.i, align 1
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %122 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %cmd_len.i.i, align 4
  %conv127.i.i = trunc i16 %123 to i8
  %cdblen.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 7
  %124 = ptrtoint ptr %cdblen.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv127.i.i, ptr %cdblen.i.i, align 1
  %cdb.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 6
  %125 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cmnd.i.i, align 4
  %127 = load i16, ptr %cmd_len.i.i, align 4
  %conv130.i.i = zext i16 %127 to i32
  %128 = call ptr @memcpy(ptr %cdb.i.i, ptr %126, i32 %conv130.i.i)
  %129 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -61, ptr %116, align 1
  %sc_data_direction131.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %130 = ptrtoint ptr %sc_data_direction131.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sc_data_direction131.i.i, align 4
  %dma_direction132.i.i = getelementptr i8, ptr %96, i32 24
  %132 = ptrtoint ptr %dma_direction132.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %dma_direction132.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %133 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i.i.i, align 4
  %dataxferlen.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 13
  %135 = ptrtoint ptr %dataxferlen.i.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %dataxferlen.i.i, align 1
  %sgl_dma_h.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %110, i32 0, i32 6
  %136 = ptrtoint ptr %sgl_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sgl_dma_h.i.i, align 4
  %dataxferaddr.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 12
  %138 = ptrtoint ptr %dataxferaddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %dataxferaddr.i.i, align 1
  %139 = ptrtoint ptr %scp9.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %scp9.i.i, align 4
  %141 = load ptr, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @scsi_dma_map(ptr noundef %140) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i106.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i106.i, label %if.end112.i.i.do.body6.i.i_crit_edge, label %lor.rhs.i.i, !prof !566

if.end112.i.i.do.body6.i.i_crit_edge:             ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

lor.rhs.i.i:                                      ; preds = %if.end112.i.i
  %sglen.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 13
  %142 = ptrtoint ptr %sglen.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %sglen.i.i, align 4
  %conv.i107.i = zext i16 %143 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv.i107.i)
  %cmp3.i.i = icmp ugt i32 %call.i.i, %conv.i107.i
  br i1 %cmp3.i.i, label %lor.rhs.i.i.do.body6.i.i_crit_edge, label %do.end11.i.i, !prof !566

lor.rhs.i.i.do.body6.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %lor.rhs.i.i.do.body6.i.i_crit_edge, %if.end112.i.i.do.body6.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1350, 0\0A.popsection", ""() #10, !srcloc !581
  unreachable

do.end11.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %do.end11.i.i.megaraid_mbox_mksgl.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.end11.i.i.megaraid_mbox_mksgl.exit.i_crit_edge: ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end11.i.i
  %144 = ptrtoint ptr %dma_type.i111.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %dma_type.i111.i, align 4
  %sdb.i.i108.i = getelementptr inbounds %struct.scsi_cmnd, ptr %140, i32 0, i32 17
  %145 = ptrtoint ptr %sdb.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sdb.i.i108.i, align 4
  %sgl64.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %141, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.041.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sgl.040.i.i = phi ptr [ %146, %for.body.lr.ph.i.i ], [ %call21.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i, i32 0, i32 3
  %147 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma_address.i.i, align 4
  %conv18.i.i = zext i32 %148 to i64
  %149 = ptrtoint ptr %sgl64.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sgl64.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mbox_sgl64, ptr %150, i32 %i.041.i.i
  %151 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i, i32 0, i32 4
  %152 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_length.i.i, align 4
  %154 = load ptr, ptr %sgl64.i.i, align 4
  %length.i.i = getelementptr %struct.mbox_sgl64, ptr %154, i32 %i.041.i.i, i32 1
  %155 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 %153, ptr %length.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %call21.i.i = tail call ptr @sg_next(ptr noundef %sgl.040.i.i) #10
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.megaraid_mbox_mksgl.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.megaraid_mbox_mksgl.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i

megaraid_mbox_mksgl.exit.i:                       ; preds = %for.body.i.i.megaraid_mbox_mksgl.exit.i_crit_edge, %do.end11.i.i.megaraid_mbox_mksgl.exit.i_crit_edge
  %conv135.i.i = trunc i32 %call.i.i to i8
  %numsge.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %114, i32 0, i32 10
  %156 = ptrtoint ptr %numsge.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv135.i.i, ptr %numsge.i.i, align 1
  %xferaddr.i.i = getelementptr inbounds %struct.mbox_t, ptr %116, i32 0, i32 4
  %157 = ptrtoint ptr %xferaddr.i.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 -1, ptr %xferaddr.i.i, align 1
  %pthru_dma_h.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %110, i32 0, i32 8
  %158 = ptrtoint ptr %pthru_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pthru_dma_h.i.i, align 4
  %160 = ptrtoint ptr %118 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %159, ptr %118, align 1
  %xferaddr_hi.i.i = getelementptr inbounds %struct.mbox64_t, ptr %118, i32 0, i32 1
  %161 = ptrtoint ptr %xferaddr_hi.i.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 0, ptr %xferaddr_hi.i.i, align 1
  br label %megaraid_mbox_build_cmd.exit.i

sw.bb136.i.i:                                     ; preds = %if.then22.i.i.sw.bb136.i.i_crit_edge, %if.then22.i.i.sw.bb136.i.i_crit_edge8, %if.then22.i.i.sw.bb136.i.i_crit_edge9, %if.then22.i.i.sw.bb136.i.i_crit_edge10, %if.then22.i.i.sw.bb136.i.i_crit_edge11, %if.then22.i.i.sw.bb136.i.i_crit_edge12
  %kscb_pool.i636.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 7
  %kscb_pool_lock.i637.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 8
  %call2.i638.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i637.i.i) #10
  %162 = ptrtoint ptr %kscb_pool.i636.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile ptr, ptr %kscb_pool.i636.i.i, align 4
  %cmp.i.not.i639.i.i = icmp eq ptr %163, %kscb_pool.i636.i.i
  br i1 %cmp.i.not.i639.i.i, label %megaraid_alloc_scb.exit653.thread.i.i, label %if.end.i643.i.i

megaraid_alloc_scb.exit653.thread.i.i:            ; preds = %sw.bb136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i637.i.i, i32 noundef %call2.i638.i.i) #10
  br label %if.then139.i.i

if.end.i643.i.i:                                  ; preds = %sw.bb136.i.i
  %add.ptr.i641.i.i = getelementptr i8, ptr %163, i32 -4
  %call.i.i.i642.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %163) #10
  br i1 %call.i.i.i642.i.i, label %if.end.i.i.i646.i.i, label %if.end.i643.i.i.megaraid_alloc_scb.exit653.i.i_crit_edge

if.end.i643.i.i.megaraid_alloc_scb.exit653.i.i_crit_edge: ; preds = %if.end.i643.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_alloc_scb.exit653.i.i

if.end.i.i.i646.i.i:                              ; preds = %if.end.i643.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i644.i.i = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %prev.i.i.i644.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %prev.i.i.i644.i.i, align 4
  %166 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %163, align 4
  %prev1.i.i.i.i645.i.i = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %prev1.i.i.i.i645.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %165, ptr %prev1.i.i.i.i645.i.i, align 4
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %167, ptr %165, align 4
  br label %megaraid_alloc_scb.exit653.i.i

megaraid_alloc_scb.exit653.i.i:                   ; preds = %if.end.i.i.i646.i.i, %if.end.i643.i.i.megaraid_alloc_scb.exit653.i.i_crit_edge
  %170 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %163, ptr %163, align 4
  %prev.i3.i.i647.i.i = getelementptr %struct.list_head, ptr %163, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i3.i.i647.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %163, ptr %prev.i3.i.i647.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i637.i.i, i32 noundef %call2.i638.i.i) #10
  %state.i648.i.i = getelementptr i8, ptr %163, i32 20
  %172 = ptrtoint ptr %state.i648.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %state.i648.i.i, align 4
  %scp9.i649.i.i = getelementptr i8, ptr %163, i32 16
  %173 = ptrtoint ptr %scp9.i649.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %cmd, ptr %scp9.i649.i.i, align 4
  %dma_type.i650.i.i = getelementptr i8, ptr %163, i32 28
  %174 = ptrtoint ptr %dma_type.i650.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %dma_type.i650.i.i, align 4
  %tobool138.not.i.i = icmp eq ptr %add.ptr.i641.i.i, null
  br i1 %tobool138.not.i.i, label %megaraid_alloc_scb.exit653.i.i.if.then139.i.i_crit_edge, label %if.end141.i.i

megaraid_alloc_scb.exit653.i.i.if.then139.i.i_crit_edge: ; preds = %megaraid_alloc_scb.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139.i.i

if.then139.i.i:                                   ; preds = %megaraid_alloc_scb.exit653.i.i.if.then139.i.i_crit_edge, %megaraid_alloc_scb.exit653.thread.i.i
  %175 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end141.i.i:                                    ; preds = %megaraid_alloc_scb.exit653.i.i
  %176 = ptrtoint ptr %add.ptr.i641.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i641.i.i, align 4
  %dev_channel143.i.i = getelementptr i8, ptr %163, i32 32
  %178 = ptrtoint ptr %dev_channel143.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 255, ptr %dev_channel143.i.i, align 4
  %conv144.i.i = trunc i32 %20 to i16
  %dev_target145.i.i = getelementptr i8, ptr %163, i32 34
  %179 = ptrtoint ptr %dev_target145.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv144.i.i, ptr %dev_target145.i.i, align 2
  %mbox146.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %177, i32 0, i32 1
  %180 = ptrtoint ptr %mbox146.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mbox146.i.i, align 4
  %mbox64147.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %177, i32 0, i32 2
  %182 = ptrtoint ptr %mbox64147.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mbox64147.i.i, align 4
  %conv148.i.i = trunc i32 %20 to i8
  %logdrv149.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 5
  %184 = ptrtoint ptr %logdrv149.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv148.i.i, ptr %logdrv149.i.i, align 1
  %185 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cmnd.i.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 1
  %189 = and i8 %188, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool154.not.i.i = icmp eq i8 %189, 0
  %conv156.i.i = select i1 %tobool154.not.i.i, i8 -89, i8 -88
  %190 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv156.i.i, ptr %181, align 1
  %cmd_len158.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %191 = ptrtoint ptr %cmd_len158.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %cmd_len158.i.i, align 4
  %193 = zext i16 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.285)
  switch i16 %192, label %if.else262.i.i [
    i16 6, label %if.then162.i.i
    i16 10, label %if.then187.i.i
    i16 12, label %if.then222.i.i
  ]

if.then162.i.i:                                   ; preds = %if.end141.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx164.i.i = getelementptr i8, ptr %195, i32 4
  %196 = ptrtoint ptr %arrayidx164.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx164.i.i, align 1
  %conv166.i.i = zext i8 %197 to i16
  %numsectors.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 2
  %198 = ptrtoint ptr %numsectors.i.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 %conv166.i.i, ptr %numsectors.i.i, align 1
  %199 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx168.i.i = getelementptr i8, ptr %199, i32 1
  %200 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx168.i.i, align 1
  %conv169.i.i = zext i8 %201 to i32
  %shl170.i.i = shl nuw nsw i32 %conv169.i.i, 16
  %arrayidx172.i.i = getelementptr i8, ptr %199, i32 2
  %202 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx172.i.i, align 1
  %conv173.i.i = zext i8 %203 to i32
  %shl174.i.i = shl nuw nsw i32 %conv173.i.i, 8
  %arrayidx177.i.i = getelementptr i8, ptr %199, i32 3
  %204 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx177.i.i, align 1
  %conv178.i.i = zext i8 %205 to i32
  %lba.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 3
  %shl170.masked.i.i = and i32 %shl170.i.i, 2031616
  %or175.masked.i.i = or i32 %shl170.masked.i.i, %shl174.i.i
  %and181.i.i = or i32 %or175.masked.i.i, %conv178.i.i
  %206 = ptrtoint ptr %lba.i.i to i32
  call void @__asan_storeN_noabort(i32 %206, i32 4)
  store i32 %and181.i.i, ptr %lba.i.i, align 1
  br label %if.end275.i.i

if.then187.i.i:                                   ; preds = %if.end141.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx189.i.i = getelementptr i8, ptr %208, i32 8
  %209 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx189.i.i, align 1
  %conv190.i.i = zext i8 %210 to i16
  %arrayidx192.i.i = getelementptr i8, ptr %208, i32 7
  %211 = ptrtoint ptr %arrayidx192.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx192.i.i, align 1
  %conv193.i.i = zext i8 %212 to i16
  %shl194.i.i = shl nuw i16 %conv193.i.i, 8
  %or195.i.i = or i16 %shl194.i.i, %conv190.i.i
  %numsectors197.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 2
  %213 = ptrtoint ptr %numsectors197.i.i to i32
  call void @__asan_storeN_noabort(i32 %213, i32 2)
  store i16 %or195.i.i, ptr %numsectors197.i.i, align 1
  %214 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx199.i.i = getelementptr i8, ptr %214, i32 2
  %215 = ptrtoint ptr %arrayidx199.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx199.i.i, align 1
  %conv200.i.i = zext i8 %216 to i32
  %shl201.i.i = shl nuw i32 %conv200.i.i, 24
  %arrayidx203.i.i = getelementptr i8, ptr %214, i32 3
  %217 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx203.i.i, align 1
  %conv204.i.i = zext i8 %218 to i32
  %shl205.i.i = shl nuw nsw i32 %conv204.i.i, 16
  %or206.i.i = or i32 %shl205.i.i, %shl201.i.i
  %arrayidx208.i.i = getelementptr i8, ptr %214, i32 4
  %219 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx208.i.i, align 1
  %conv209.i.i = zext i8 %220 to i32
  %shl210.i.i = shl nuw nsw i32 %conv209.i.i, 8
  %or211.i.i = or i32 %or206.i.i, %shl210.i.i
  %arrayidx213.i.i = getelementptr i8, ptr %214, i32 5
  %221 = ptrtoint ptr %arrayidx213.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx213.i.i, align 1
  %conv214.i.i = zext i8 %222 to i32
  %or215.i.i = or i32 %or211.i.i, %conv214.i.i
  %lba216.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 3
  %223 = ptrtoint ptr %lba216.i.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %or215.i.i, ptr %lba216.i.i, align 1
  br label %if.end275.i.i

if.then222.i.i:                                   ; preds = %if.end141.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx224.i.i = getelementptr i8, ptr %225, i32 2
  %226 = ptrtoint ptr %arrayidx224.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx224.i.i, align 1
  %conv225.i.i = zext i8 %227 to i32
  %shl226.i.i = shl nuw i32 %conv225.i.i, 24
  %arrayidx228.i.i = getelementptr i8, ptr %225, i32 3
  %228 = ptrtoint ptr %arrayidx228.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx228.i.i, align 1
  %conv229.i.i = zext i8 %229 to i32
  %shl230.i.i = shl nuw nsw i32 %conv229.i.i, 16
  %or231.i.i = or i32 %shl230.i.i, %shl226.i.i
  %arrayidx233.i.i = getelementptr i8, ptr %225, i32 4
  %230 = ptrtoint ptr %arrayidx233.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx233.i.i, align 1
  %conv234.i.i = zext i8 %231 to i32
  %shl235.i.i = shl nuw nsw i32 %conv234.i.i, 8
  %or236.i.i = or i32 %or231.i.i, %shl235.i.i
  %arrayidx238.i.i = getelementptr i8, ptr %225, i32 5
  %232 = ptrtoint ptr %arrayidx238.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx238.i.i, align 1
  %conv239.i.i = zext i8 %233 to i32
  %or240.i.i = or i32 %or236.i.i, %conv239.i.i
  %lba241.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 3
  %234 = ptrtoint ptr %lba241.i.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 %or240.i.i, ptr %lba241.i.i, align 1
  %235 = load ptr, ptr %cmnd.i.i, align 4
  %arrayidx252.i.i = getelementptr i8, ptr %235, i32 8
  %236 = ptrtoint ptr %arrayidx252.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx252.i.i, align 1
  %conv253.i.i = zext i8 %237 to i16
  %shl254.i.i = shl nuw i16 %conv253.i.i, 8
  %arrayidx257.i.i = getelementptr i8, ptr %235, i32 9
  %238 = ptrtoint ptr %arrayidx257.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx257.i.i, align 1
  %conv258.i.i = zext i8 %239 to i16
  %or259.i.i = or i16 %shl254.i.i, %conv258.i.i
  %numsectors261.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 2
  %240 = ptrtoint ptr %numsectors261.i.i to i32
  call void @__asan_storeN_noabort(i32 %240, i32 2)
  store i16 %or259.i.i, ptr %numsectors261.i.i, align 1
  br label %if.end275.i.i

if.else262.i.i:                                   ; preds = %if.end141.i.i
  %241 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %cmp263.i.i = icmp sgt i32 %241, -1
  br i1 %cmp263.i.i, label %do.end268.i.i, label %if.else262.i.i.if.end271.i.i_crit_edge

if.else262.i.i.if.end271.i.i_crit_edge:           ; preds = %if.else262.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end271.i.i

do.end268.i.i:                                    ; preds = %if.else262.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call270.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #13
  br label %if.end271.i.i

if.end271.i.i:                                    ; preds = %do.end268.i.i, %if.else262.i.i.if.end271.i.i_crit_edge
  %242 = ptrtoint ptr %state.i648.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %state.i648.i.i, align 4
  %243 = ptrtoint ptr %scp9.i649.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %scp9.i649.i.i, align 4
  %call2.i656.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i637.i.i) #10
  %244 = ptrtoint ptr %kscb_pool.i636.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %kscb_pool.i636.i.i, align 4
  %call.i.i.i658.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %163, ptr noundef %kscb_pool.i636.i.i, ptr noundef %245) #10
  br i1 %call.i.i.i658.i.i, label %if.end.i.i.i659.i.i, label %if.end271.i.i.megaraid_dealloc_scb.exit.i.i_crit_edge

if.end271.i.i.megaraid_dealloc_scb.exit.i.i_crit_edge: ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_dealloc_scb.exit.i.i

if.end.i.i.i659.i.i:                              ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %163, ptr %prev1.i.i.i.i.i, align 4
  %247 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %245, ptr %163, align 4
  %248 = ptrtoint ptr %prev.i3.i.i647.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %kscb_pool.i636.i.i, ptr %prev.i3.i.i647.i.i, align 4
  %249 = ptrtoint ptr %kscb_pool.i636.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %163, ptr %kscb_pool.i636.i.i, align 4
  br label %megaraid_dealloc_scb.exit.i.i

megaraid_dealloc_scb.exit.i.i:                    ; preds = %if.end.i.i.i659.i.i, %if.end271.i.i.megaraid_dealloc_scb.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i637.i.i, i32 noundef %call2.i656.i.i) #10
  %250 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end275.i.i:                                    ; preds = %if.then222.i.i, %if.then187.i.i, %if.then162.i.i
  %sc_data_direction276.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %251 = ptrtoint ptr %sc_data_direction276.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %sc_data_direction276.i.i, align 4
  %dma_direction277.i.i = getelementptr i8, ptr %163, i32 24
  %253 = ptrtoint ptr %dma_direction277.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %dma_direction277.i.i, align 4
  %sgl_dma_h278.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %177, i32 0, i32 6
  %254 = ptrtoint ptr %sgl_dma_h278.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %sgl_dma_h278.i.i, align 4
  %256 = ptrtoint ptr %183 to i32
  call void @__asan_storeN_noabort(i32 %256, i32 4)
  store i32 %255, ptr %183, align 1
  %257 = ptrtoint ptr %scp9.i649.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %scp9.i649.i.i, align 4
  %259 = ptrtoint ptr %add.ptr.i641.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %add.ptr.i641.i.i, align 4
  %call.i.i.i = tail call i32 @scsi_dma_map(ptr noundef %258) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end275.i.i.do.body6.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !566

if.end275.i.i.do.body6.i.i.i_crit_edge:           ; preds = %if.end275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end275.i.i
  %sglen.i.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 13
  %261 = ptrtoint ptr %sglen.i.i.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %sglen.i.i.i, align 4
  %conv.i.i.i = zext i16 %262 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %conv.i.i.i)
  %cmp3.i.i.i = icmp ugt i32 %call.i.i.i, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %lor.rhs.i.i.i.do.body6.i.i.i_crit_edge, label %do.end11.i.i.i, !prof !566

lor.rhs.i.i.i.do.body6.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i.i

do.body6.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body6.i.i.i_crit_edge, %if.end275.i.i.do.body6.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1350, 0\0A.popsection", ""() #10, !srcloc !581
  unreachable

do.end11.i.i.i:                                   ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.end11.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

do.end11.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge: ; preds = %do.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %do.end11.i.i.i
  %263 = ptrtoint ptr %dma_type.i650.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 1, ptr %dma_type.i650.i.i, align 4
  %sdb.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %258, i32 0, i32 17
  %264 = ptrtoint ptr %sdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sdb.i.i.i.i, align 4
  %sgl64.i.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %260, i32 0, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.041.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %sgl.040.i.i.i = phi ptr [ %265, %for.body.lr.ph.i.i.i ], [ %call21.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i.i, i32 0, i32 3
  %266 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %dma_address.i.i.i, align 4
  %conv18.i.i.i = zext i32 %267 to i64
  %268 = ptrtoint ptr %sgl64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sgl64.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mbox_sgl64, ptr %269, i32 %i.041.i.i.i
  %270 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 8)
  store i64 %conv18.i.i.i, ptr %arrayidx.i.i.i, align 1
  %dma_length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i.i, i32 0, i32 4
  %271 = ptrtoint ptr %dma_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %dma_length.i.i.i, align 4
  %273 = load ptr, ptr %sgl64.i.i.i, align 4
  %length.i661.i.i = getelementptr %struct.mbox_sgl64, ptr %273, i32 %i.041.i.i.i, i32 1
  %274 = ptrtoint ptr %length.i661.i.i to i32
  call void @__asan_storeN_noabort(i32 %274, i32 4)
  store i32 %272, ptr %length.i661.i.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.041.i.i.i, 1
  %call21.i.i.i = tail call ptr @sg_next(ptr noundef %sgl.040.i.i.i) #10
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %call.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i.i

megaraid_mbox_mksgl.exit.i.i:                     ; preds = %for.body.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge, %do.end11.i.i.i.megaraid_mbox_mksgl.exit.i.i_crit_edge
  %conv281.i.i = trunc i32 %call.i.i.i to i8
  %numsge282.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 6
  %275 = ptrtoint ptr %numsge282.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv281.i.i, ptr %numsge282.i.i, align 1
  %xferaddr283.i.i = getelementptr inbounds %struct.mbox_t, ptr %181, i32 0, i32 4
  %276 = ptrtoint ptr %xferaddr283.i.i to i32
  call void @__asan_storeN_noabort(i32 %276, i32 4)
  store i32 -1, ptr %xferaddr283.i.i, align 1
  %xferaddr_hi284.i.i = getelementptr inbounds %struct.mbox64_t, ptr %183, i32 0, i32 1
  %277 = ptrtoint ptr %xferaddr_hi284.i.i to i32
  call void @__asan_storeN_noabort(i32 %277, i32 4)
  store i32 0, ptr %xferaddr_hi284.i.i, align 1
  br label %megaraid_mbox_build_cmd.exit.i

sw.bb285.i.i:                                     ; preds = %if.then22.i.i.sw.bb285.i.i_crit_edge, %if.then22.i.i.sw.bb285.i.i_crit_edge13
  %ha286.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 31
  %278 = ptrtoint ptr %ha286.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ha286.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool287.not.i.i = icmp eq i8 %279, 0
  br i1 %tobool287.not.i.i, label %if.then288.i.i, label %if.end290.i.i

if.then288.i.i:                                   ; preds = %sw.bb285.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %280 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end290.i.i:                                    ; preds = %sw.bb285.i.i
  %kscb_pool.i662.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 7
  %kscb_pool_lock.i663.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 8
  %call2.i664.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i663.i.i) #10
  %281 = ptrtoint ptr %kscb_pool.i662.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load volatile ptr, ptr %kscb_pool.i662.i.i, align 4
  %cmp.i.not.i665.i.i = icmp eq ptr %282, %kscb_pool.i662.i.i
  br i1 %cmp.i.not.i665.i.i, label %megaraid_alloc_scb.exit679.thread.i.i, label %if.end.i669.i.i

megaraid_alloc_scb.exit679.thread.i.i:            ; preds = %if.end290.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i663.i.i, i32 noundef %call2.i664.i.i) #10
  br label %if.then293.i.i

if.end.i669.i.i:                                  ; preds = %if.end290.i.i
  %add.ptr.i667.i.i = getelementptr i8, ptr %282, i32 -4
  %call.i.i.i668.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %282) #10
  br i1 %call.i.i.i668.i.i, label %if.end.i.i.i672.i.i, label %if.end.i669.i.i.megaraid_alloc_scb.exit679.i.i_crit_edge

if.end.i669.i.i.megaraid_alloc_scb.exit679.i.i_crit_edge: ; preds = %if.end.i669.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_alloc_scb.exit679.i.i

if.end.i.i.i672.i.i:                              ; preds = %if.end.i669.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i670.i.i = getelementptr inbounds %struct.list_head, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %prev.i.i.i670.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %prev.i.i.i670.i.i, align 4
  %285 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %282, align 4
  %prev1.i.i.i.i671.i.i = getelementptr inbounds %struct.list_head, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %prev1.i.i.i.i671.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %284, ptr %prev1.i.i.i.i671.i.i, align 4
  %288 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %288)
  store volatile ptr %286, ptr %284, align 4
  br label %megaraid_alloc_scb.exit679.i.i

megaraid_alloc_scb.exit679.i.i:                   ; preds = %if.end.i.i.i672.i.i, %if.end.i669.i.i.megaraid_alloc_scb.exit679.i.i_crit_edge
  %289 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile ptr %282, ptr %282, align 4
  %prev.i3.i.i673.i.i = getelementptr inbounds %struct.list_head, ptr %282, i32 0, i32 1
  %290 = ptrtoint ptr %prev.i3.i.i673.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %282, ptr %prev.i3.i.i673.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i663.i.i, i32 noundef %call2.i664.i.i) #10
  %state.i674.i.i = getelementptr i8, ptr %282, i32 20
  %291 = ptrtoint ptr %state.i674.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 1, ptr %state.i674.i.i, align 4
  %scp9.i675.i.i = getelementptr i8, ptr %282, i32 16
  %292 = ptrtoint ptr %scp9.i675.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %cmd, ptr %scp9.i675.i.i, align 4
  %dma_type.i676.i.i = getelementptr i8, ptr %282, i32 28
  %293 = ptrtoint ptr %dma_type.i676.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %dma_type.i676.i.i, align 4
  %tobool292.not.i.i = icmp eq ptr %add.ptr.i667.i.i, null
  br i1 %tobool292.not.i.i, label %megaraid_alloc_scb.exit679.i.i.if.then293.i.i_crit_edge, label %if.end295.i.i

megaraid_alloc_scb.exit679.i.i.if.then293.i.i_crit_edge: ; preds = %megaraid_alloc_scb.exit679.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then293.i.i

if.then293.i.i:                                   ; preds = %megaraid_alloc_scb.exit679.i.i.if.then293.i.i_crit_edge, %megaraid_alloc_scb.exit679.thread.i.i
  %294 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end295.i.i:                                    ; preds = %megaraid_alloc_scb.exit679.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %295 = ptrtoint ptr %add.ptr.i667.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %add.ptr.i667.i.i, align 4
  %dev_channel297.i.i = getelementptr i8, ptr %282, i32 32
  %297 = ptrtoint ptr %dev_channel297.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 255, ptr %dev_channel297.i.i, align 4
  %conv298.i.i = trunc i32 %20 to i16
  %dev_target299.i.i = getelementptr i8, ptr %282, i32 34
  %298 = ptrtoint ptr %dev_target299.i.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv298.i.i, ptr %dev_target299.i.i, align 2
  %299 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %296, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 110, ptr %300, align 1
  %302 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cmnd.i.i, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %303, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %305)
  %cmp305.i.i = icmp eq i8 %305, 22
  %conv308.i.i = select i1 %cmp305.i.i, i8 1, i8 2
  %306 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %296, align 4
  %arrayidx310.i.i = getelementptr i8, ptr %307, i32 2
  %308 = ptrtoint ptr %arrayidx310.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %conv308.i.i, ptr %arrayidx310.i.i, align 1
  %conv311.i.i = trunc i32 %20 to i8
  %309 = load ptr, ptr %296, align 4
  %arrayidx313.i.i = getelementptr i8, ptr %309, i32 3
  %310 = ptrtoint ptr %arrayidx313.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv311.i.i, ptr %arrayidx313.i.i, align 1
  %sc_data_direction314.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %311 = ptrtoint ptr %sc_data_direction314.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %sc_data_direction314.i.i, align 4
  %dma_direction315.i.i = getelementptr i8, ptr %282, i32 24
  %313 = ptrtoint ptr %dma_direction315.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %dma_direction315.i.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread120.i

sw.default.i.i:                                   ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %314 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.else317.i.i:                                   ; preds = %entry
  %315 = lshr i32 %20, 8
  %and.i.i = and i32 %315, 255
  %and20.i.i = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and20.i.i)
  %cmp318.i.i = icmp ugt i32 %and20.i.i, 15
  br i1 %cmp318.i.i, label %if.else317.i.i.if.then325.i.i_crit_edge, label %lor.lhs.false.i.i

if.else317.i.i.if.then325.i.i_crit_edge:          ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then325.i.i

lor.lhs.false.i.i:                                ; preds = %if.else317.i.i
  %lun321.i.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %316 = ptrtoint ptr %lun321.i.i to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %lun321.i.i, align 8
  %318 = and i64 %317, 4294967288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %318)
  %cmp323.not.i.i = icmp eq i64 %318, 0
  br i1 %cmp323.not.i.i, label %if.end327.i.i, label %lor.lhs.false.i.i.if.then325.i.i_crit_edge

lor.lhs.false.i.i.if.then325.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then325.i.i

if.then325.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then325.i.i_crit_edge, %if.else317.i.i.if.then325.i.i_crit_edge
  %319 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end327.i.i:                                    ; preds = %lor.lhs.false.i.i
  %fast_load.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %10, i32 0, i32 20
  %320 = ptrtoint ptr %fast_load.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %fast_load.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool328.not.i.i = icmp ne i32 %321, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and20.i.i)
  %cmp329.i.i = icmp eq i32 %and20.i.i, 15
  %or.cond.i.i = select i1 %tobool328.not.i.i, i1 %cmp329.i.i, i1 false
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i.i)
  %cmp336.i.i = icmp eq i32 %14, %sub.i.i
  %or.cond712.i.i = select i1 %or.cond.i.i, i1 %cmp336.i.i, i1 false
  br i1 %or.cond712.i.i, label %if.then338.i.i, label %if.end327.i.i.if.end351.i.i_crit_edge

if.end327.i.i.if.end351.i.i_crit_edge:            ; preds = %if.end327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end351.i.i

if.then338.i.i:                                   ; preds = %if.end327.i.i
  %322 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %322)
  %cmp339.i.i = icmp sgt i32 %322, -1
  br i1 %cmp339.i.i, label %do.end344.i.i, label %if.then338.i.i.if.end349.i.i_crit_edge

if.then338.i.i.if.end349.i.i_crit_edge:           ; preds = %if.then338.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end349.i.i

do.end344.i.i:                                    ; preds = %if.then338.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %host346.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 2
  %323 = ptrtoint ptr %host346.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %host346.i.i, align 4
  %host_no347.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %324, i32 0, i32 17
  %325 = ptrtoint ptr %host_no347.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %host_no347.i.i, align 4
  %call348.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %326) #13
  br label %if.end349.i.i

if.end349.i.i:                                    ; preds = %do.end344.i.i, %if.then338.i.i.if.end349.i.i_crit_edge
  %327 = ptrtoint ptr %fast_load.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %fast_load.i.i, align 4
  br label %if.end351.i.i

if.end351.i.i:                                    ; preds = %if.end349.i.i, %if.end327.i.i.if.end351.i.i_crit_edge
  %last_disp352.i.i = getelementptr inbounds %struct.mraid_device_t, ptr %10, i32 0, i32 18
  %328 = ptrtoint ptr %last_disp352.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %last_disp352.i.i, align 4
  %330 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %device.i, align 4
  %channel354.i.i = getelementptr inbounds %struct.scsi_device, ptr %331, i32 0, i32 17
  %332 = ptrtoint ptr %channel354.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %channel354.i.i, align 4
  %shl355.i.i = shl nuw i32 1, %333
  %and356.i.i = and i32 %shl355.i.i, %329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356.i.i)
  %tobool357.not.i.i = icmp eq i32 %and356.i.i, 0
  br i1 %tobool357.not.i.i, label %if.then358.i.i, label %if.end351.i.i.if.end391.i.i_crit_edge

if.end351.i.i.if.end391.i.i_crit_edge:            ; preds = %if.end351.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391.i.i

if.then358.i.i:                                   ; preds = %if.end351.i.i
  %334 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %334)
  %cmp364.i.i = icmp sgt i32 %334, -1
  br i1 %cmp364.i.i, label %if.end376.i.i, label %if.then358.i.i.if.end385.i.i_crit_edge

if.then358.i.i.if.end385.i.i_crit_edge:           ; preds = %if.then358.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385.i.i

if.end376.i.i:                                    ; preds = %if.then358.i.i
  %335 = ptrtoint ptr %fast_load.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %fast_load.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool360.not.i.i = icmp eq i32 %336, 0
  %cond363.i.i = select i1 %tobool360.not.i.i, ptr %scan.i.i, ptr %skip.i.i
  %host371.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 2
  %337 = ptrtoint ptr %host371.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %host371.i.i, align 4
  %host_no372.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %338, i32 0, i32 17
  %339 = ptrtoint ptr %host_no372.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %host_no372.i.i, align 4
  %call375.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i32 noundef %340, ptr noundef nonnull %cond363.i.i, i32 noundef %333, i32 noundef %and.i.i) #13
  %.pr708.i.i = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr708.i.i)
  %cmp377.i.i = icmp sgt i32 %.pr708.i.i, -1
  br i1 %cmp377.i.i, label %do.end382.i.i, label %if.end376.i.i.if.end385.i.i_crit_edge

if.end376.i.i.if.end385.i.i_crit_edge:            ; preds = %if.end376.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385.i.i

do.end382.i.i:                                    ; preds = %if.end376.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call384.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182) #13
  br label %if.end385.i.i

if.end385.i.i:                                    ; preds = %do.end382.i.i, %if.end376.i.i.if.end385.i.i_crit_edge, %if.then358.i.i.if.end385.i.i_crit_edge
  %341 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %device.i, align 4
  %channel387.i.i = getelementptr inbounds %struct.scsi_device, ptr %342, i32 0, i32 17
  %343 = ptrtoint ptr %channel387.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %channel387.i.i, align 4
  %shl388.i.i = shl nuw i32 1, %344
  %345 = ptrtoint ptr %last_disp352.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %last_disp352.i.i, align 4
  %or390.i.i = or i32 %346, %shl388.i.i
  store i32 %or390.i.i, ptr %last_disp352.i.i, align 4
  br label %if.end391.i.i

if.end391.i.i:                                    ; preds = %if.end385.i.i, %if.end351.i.i.if.end391.i.i_crit_edge
  %347 = ptrtoint ptr %fast_load.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %fast_load.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool393.not.i.i = icmp eq i32 %348, 0
  br i1 %tobool393.not.i.i, label %if.end396.i.i, label %if.then394.i.i

if.then394.i.i:                                   ; preds = %if.end391.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %349 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 262144, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end396.i.i:                                    ; preds = %if.end391.i.i
  %kscb_pool.i680.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 7
  %kscb_pool_lock.i681.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 8
  %call2.i682.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i681.i.i) #10
  %350 = ptrtoint ptr %kscb_pool.i680.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load volatile ptr, ptr %kscb_pool.i680.i.i, align 4
  %cmp.i.not.i683.i.i = icmp eq ptr %351, %kscb_pool.i680.i.i
  br i1 %cmp.i.not.i683.i.i, label %megaraid_alloc_scb.exit697.thread.i.i, label %if.end.i687.i.i

megaraid_alloc_scb.exit697.thread.i.i:            ; preds = %if.end396.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i681.i.i, i32 noundef %call2.i682.i.i) #10
  br label %if.then399.i.i

if.end.i687.i.i:                                  ; preds = %if.end396.i.i
  %add.ptr.i685.i.i = getelementptr i8, ptr %351, i32 -4
  %call.i.i.i686.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %351) #10
  br i1 %call.i.i.i686.i.i, label %if.end.i.i.i690.i.i, label %if.end.i687.i.i.megaraid_alloc_scb.exit697.i.i_crit_edge

if.end.i687.i.i.megaraid_alloc_scb.exit697.i.i_crit_edge: ; preds = %if.end.i687.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_alloc_scb.exit697.i.i

if.end.i.i.i690.i.i:                              ; preds = %if.end.i687.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i688.i.i = getelementptr inbounds %struct.list_head, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %prev.i.i.i688.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %prev.i.i.i688.i.i, align 4
  %354 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %351, align 4
  %prev1.i.i.i.i689.i.i = getelementptr inbounds %struct.list_head, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %prev1.i.i.i.i689.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %353, ptr %prev1.i.i.i.i689.i.i, align 4
  %357 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %357)
  store volatile ptr %355, ptr %353, align 4
  br label %megaraid_alloc_scb.exit697.i.i

megaraid_alloc_scb.exit697.i.i:                   ; preds = %if.end.i.i.i690.i.i, %if.end.i687.i.i.megaraid_alloc_scb.exit697.i.i_crit_edge
  %358 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %358)
  store volatile ptr %351, ptr %351, align 4
  %prev.i3.i.i691.i.i = getelementptr inbounds %struct.list_head, ptr %351, i32 0, i32 1
  %359 = ptrtoint ptr %prev.i3.i.i691.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %351, ptr %prev.i3.i.i691.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i681.i.i, i32 noundef %call2.i682.i.i) #10
  %state.i692.i.i = getelementptr i8, ptr %351, i32 20
  %360 = ptrtoint ptr %state.i692.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 1, ptr %state.i692.i.i, align 4
  %scp9.i693.i.i = getelementptr i8, ptr %351, i32 16
  %361 = ptrtoint ptr %scp9.i693.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %cmd, ptr %scp9.i693.i.i, align 4
  %dma_type.i694.i.i = getelementptr i8, ptr %351, i32 28
  %362 = ptrtoint ptr %dma_type.i694.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %dma_type.i694.i.i, align 4
  %tobool398.not.i.i = icmp eq ptr %add.ptr.i685.i.i, null
  br i1 %tobool398.not.i.i, label %megaraid_alloc_scb.exit697.i.i.if.then399.i.i_crit_edge, label %if.end401.i.i

megaraid_alloc_scb.exit697.i.i.if.then399.i.i_crit_edge: ; preds = %megaraid_alloc_scb.exit697.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then399.i.i

if.then399.i.i:                                   ; preds = %megaraid_alloc_scb.exit697.i.i.if.then399.i.i_crit_edge, %megaraid_alloc_scb.exit697.thread.i.i
  %363 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 458752, ptr %result.i, align 4
  br label %megaraid_mbox_build_cmd.exit.thread.i

if.end401.i.i:                                    ; preds = %megaraid_alloc_scb.exit697.i.i
  %364 = ptrtoint ptr %add.ptr.i685.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %add.ptr.i685.i.i, align 4
  %conv403.i.i = trunc i32 %and.i.i to i16
  %dev_channel404.i.i = getelementptr i8, ptr %351, i32 32
  %366 = ptrtoint ptr %dev_channel404.i.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %conv403.i.i, ptr %dev_channel404.i.i, align 4
  %conv405.i.i = trunc i32 %and20.i.i to i16
  %dev_target406.i.i = getelementptr i8, ptr %351, i32 34
  %367 = ptrtoint ptr %dev_target406.i.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv405.i.i, ptr %dev_target406.i.i, align 2
  %sc_data_direction407.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %368 = ptrtoint ptr %sc_data_direction407.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %sc_data_direction407.i.i, align 4
  %dma_direction408.i.i = getelementptr i8, ptr %351, i32 24
  %370 = ptrtoint ptr %dma_direction408.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %dma_direction408.i.i, align 4
  %mbox409.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %365, i32 0, i32 1
  %371 = ptrtoint ptr %mbox409.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %mbox409.i.i, align 4
  %mbox64410.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %365, i32 0, i32 2
  %373 = ptrtoint ptr %mbox64410.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mbox64410.i.i, align 4
  %max_cdb_sz.i.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 30
  %375 = ptrtoint ptr %max_cdb_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %max_cdb_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %376)
  %cmp412.i.i = icmp eq i8 %376, 16
  br i1 %cmp412.i.i, label %if.then414.i.i, label %if.else419.i.i

if.then414.i.i:                                   ; preds = %if.end401.i.i
  %377 = ptrtoint ptr %372 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 -29, ptr %372, align 1
  %378 = ptrtoint ptr %add.ptr.i685.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %add.ptr.i685.i.i, align 4
  %epthru2.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %379, i32 0, i32 9
  %380 = ptrtoint ptr %epthru2.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %epthru2.i.i, align 4
  %382 = ptrtoint ptr %dev_channel404.i.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %dev_channel404.i.i, align 4
  %384 = ptrtoint ptr %dev_target406.i.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %dev_target406.i.i, align 2
  %386 = ptrtoint ptr %381 to i32
  call void @__asan_load1_noabort(i32 %386)
  %bf.load.i50.i = load i8, ptr %381, align 1
  %bf.clear.i51.i = and i8 %bf.load.i50.i, 14
  %bf.set6.i52.i = or i8 %bf.clear.i51.i, -112
  store i8 %bf.set6.i52.i, ptr %381, align 1
  %channel10.i53.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 2
  %387 = ptrtoint ptr %channel10.i53.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %channel10.i53.i, align 1
  %388 = shl i16 %383, 4
  %or49.i54.i = or i16 %388, %385
  %conv13.i55.i = trunc i16 %or49.i54.i to i8
  %target14.i56.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 3
  %389 = ptrtoint ptr %target14.i56.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv13.i55.i, ptr %target14.i56.i, align 1
  %390 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %device.i, align 4
  %lun.i58.i = getelementptr inbounds %struct.scsi_device, ptr %391, i32 0, i32 18
  %392 = ptrtoint ptr %lun.i58.i to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %lun.i58.i, align 8
  %conv16.i59.i = trunc i64 %393 to i8
  %logdrv.i60.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 1
  %394 = ptrtoint ptr %logdrv.i60.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %conv16.i59.i, ptr %logdrv.i60.i, align 1
  %reqsenselen.i61.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 11
  %395 = ptrtoint ptr %reqsenselen.i61.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 14, ptr %reqsenselen.i61.i, align 1
  %cmd_len.i62.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %396 = ptrtoint ptr %cmd_len.i62.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %cmd_len.i62.i, align 4
  %conv17.i63.i = trunc i16 %397 to i8
  %cdblen.i64.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 6
  %398 = ptrtoint ptr %cdblen.i64.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %conv17.i63.i, ptr %cdblen.i64.i, align 1
  %cdb.i65.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 8
  %cmnd.i66.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %399 = ptrtoint ptr %cmnd.i66.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cmnd.i66.i, align 4
  %401 = load i16, ptr %cmd_len.i62.i, align 4
  %conv19.i67.i = zext i16 %401 to i32
  %402 = call ptr @memcpy(ptr %cdb.i65.i, ptr %400, i32 %conv19.i67.i)
  %length.i.i68.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %403 = ptrtoint ptr %length.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %length.i.i68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i69.i = icmp eq i32 %404, 0
  br i1 %tobool.not.i69.i, label %if.else.i103.i, label %if.then.i76.i

if.then.i76.i:                                    ; preds = %if.then414.i.i
  %dataxferlen.i70.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 15
  %405 = ptrtoint ptr %dataxferlen.i70.i to i32
  call void @__asan_storeN_noabort(i32 %405, i32 4)
  store i32 %404, ptr %dataxferlen.i70.i, align 1
  %sgl_dma_h.i71.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %379, i32 0, i32 6
  %406 = ptrtoint ptr %sgl_dma_h.i71.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %sgl_dma_h.i71.i, align 4
  %dataxferaddr.i72.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 14
  %408 = ptrtoint ptr %dataxferaddr.i72.i to i32
  call void @__asan_storeN_noabort(i32 %408, i32 4)
  store i32 %407, ptr %dataxferaddr.i72.i, align 1
  %409 = ptrtoint ptr %scp9.i693.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %scp9.i693.i.i, align 4
  %411 = ptrtoint ptr %add.ptr.i685.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %add.ptr.i685.i.i, align 4
  %call.i.i74.i = call i32 @scsi_dma_map(ptr noundef %410) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i)
  %cmp.i.i75.i = icmp slt i32 %call.i.i74.i, 0
  br i1 %cmp.i.i75.i, label %if.then.i76.i.do.body6.i.i81.i_crit_edge, label %lor.rhs.i.i80.i, !prof !566

if.then.i76.i.do.body6.i.i81.i_crit_edge:         ; preds = %if.then.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i81.i

lor.rhs.i.i80.i:                                  ; preds = %if.then.i76.i
  %sglen.i.i77.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 13
  %413 = ptrtoint ptr %sglen.i.i77.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %sglen.i.i77.i, align 4
  %conv.i.i78.i = zext i16 %414 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i74.i, i32 %conv.i.i78.i)
  %cmp3.i.i79.i = icmp ugt i32 %call.i.i74.i, %conv.i.i78.i
  br i1 %cmp3.i.i79.i, label %lor.rhs.i.i80.i.do.body6.i.i81.i_crit_edge, label %do.end11.i.i83.i, !prof !566

lor.rhs.i.i80.i.do.body6.i.i81.i_crit_edge:       ; preds = %lor.rhs.i.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i81.i

do.body6.i.i81.i:                                 ; preds = %lor.rhs.i.i80.i.do.body6.i.i81.i_crit_edge, %if.then.i76.i.do.body6.i.i81.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1350, 0\0A.popsection", ""() #10, !srcloc !581
  unreachable

do.end11.i.i83.i:                                 ; preds = %lor.rhs.i.i80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i)
  %tobool12.not.i.i82.i = icmp eq i32 %call.i.i74.i, 0
  br i1 %tobool12.not.i.i82.i, label %do.end11.i.i83.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge, label %for.body.lr.ph.i.i87.i

do.end11.i.i83.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge: ; preds = %do.end11.i.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i100.i

for.body.lr.ph.i.i87.i:                           ; preds = %do.end11.i.i83.i
  %415 = ptrtoint ptr %dma_type.i694.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 1, ptr %dma_type.i694.i.i, align 4
  %sdb.i.i.i85.i = getelementptr inbounds %struct.scsi_cmnd, ptr %410, i32 0, i32 17
  %416 = ptrtoint ptr %sdb.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %sdb.i.i.i85.i, align 4
  %sgl64.i.i86.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %412, i32 0, i32 4
  br label %for.body.i.i98.i

for.body.i.i98.i:                                 ; preds = %for.body.i.i98.i.for.body.i.i98.i_crit_edge, %for.body.lr.ph.i.i87.i
  %i.041.i.i88.i = phi i32 [ 0, %for.body.lr.ph.i.i87.i ], [ %inc.i.i95.i, %for.body.i.i98.i.for.body.i.i98.i_crit_edge ]
  %sgl.040.i.i89.i = phi ptr [ %417, %for.body.lr.ph.i.i87.i ], [ %call21.i.i96.i, %for.body.i.i98.i.for.body.i.i98.i_crit_edge ]
  %dma_address.i.i90.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i89.i, i32 0, i32 3
  %418 = ptrtoint ptr %dma_address.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %dma_address.i.i90.i, align 4
  %conv18.i.i91.i = zext i32 %419 to i64
  %420 = ptrtoint ptr %sgl64.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %sgl64.i.i86.i, align 4
  %arrayidx.i.i92.i = getelementptr %struct.mbox_sgl64, ptr %421, i32 %i.041.i.i88.i
  %422 = ptrtoint ptr %arrayidx.i.i92.i to i32
  call void @__asan_storeN_noabort(i32 %422, i32 8)
  store i64 %conv18.i.i91.i, ptr %arrayidx.i.i92.i, align 1
  %dma_length.i.i93.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i89.i, i32 0, i32 4
  %423 = ptrtoint ptr %dma_length.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %dma_length.i.i93.i, align 4
  %425 = load ptr, ptr %sgl64.i.i86.i, align 4
  %length.i51.i94.i = getelementptr %struct.mbox_sgl64, ptr %425, i32 %i.041.i.i88.i, i32 1
  %426 = ptrtoint ptr %length.i51.i94.i to i32
  call void @__asan_storeN_noabort(i32 %426, i32 4)
  store i32 %424, ptr %length.i51.i94.i, align 1
  %inc.i.i95.i = add nuw nsw i32 %i.041.i.i88.i, 1
  %call21.i.i96.i = call ptr @sg_next(ptr noundef %sgl.040.i.i89.i) #10
  %exitcond.not.i.i97.i = icmp eq i32 %inc.i.i95.i, %call.i.i74.i
  br i1 %exitcond.not.i.i97.i, label %for.body.i.i98.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge, label %for.body.i.i98.i.for.body.i.i98.i_crit_edge

for.body.i.i98.i.for.body.i.i98.i_crit_edge:      ; preds = %for.body.i.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i98.i

for.body.i.i98.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge: ; preds = %for.body.i.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i100.i

megaraid_mbox_mksgl.exit.i100.i:                  ; preds = %for.body.i.i98.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge, %do.end11.i.i83.i.megaraid_mbox_mksgl.exit.i100.i_crit_edge
  %conv22.i99.i = trunc i32 %call.i.i74.i to i8
  br label %megaraid_mbox_prepare_epthru.exit.i

if.else.i103.i:                                   ; preds = %if.then414.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dataxferaddr23.i101.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 14
  %427 = ptrtoint ptr %dataxferaddr23.i101.i to i32
  call void @__asan_storeN_noabort(i32 %427, i32 4)
  store i32 0, ptr %dataxferaddr23.i101.i, align 1
  %dataxferlen24.i102.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 15
  %428 = ptrtoint ptr %dataxferlen24.i102.i to i32
  call void @__asan_storeN_noabort(i32 %428, i32 4)
  store i32 0, ptr %dataxferlen24.i102.i, align 1
  br label %megaraid_mbox_prepare_epthru.exit.i

megaraid_mbox_prepare_epthru.exit.i:              ; preds = %if.else.i103.i, %megaraid_mbox_mksgl.exit.i100.i
  %.sink.i104.i = phi i8 [ 0, %if.else.i103.i ], [ %conv22.i99.i, %megaraid_mbox_mksgl.exit.i100.i ]
  %numsge25.i105.i = getelementptr inbounds %struct.mraid_epassthru_t, ptr %381, i32 0, i32 9
  %429 = ptrtoint ptr %numsge25.i105.i to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %.sink.i104.i, ptr %numsge25.i105.i, align 1
  %epthru_dma_h.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %365, i32 0, i32 10
  %430 = ptrtoint ptr %epthru_dma_h.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %epthru_dma_h.i.i, align 4
  %432 = ptrtoint ptr %374 to i32
  call void @__asan_storeN_noabort(i32 %432, i32 4)
  store i32 %431, ptr %374, align 1
  %xferaddr_hi417.i.i = getelementptr inbounds %struct.mbox64_t, ptr %374, i32 0, i32 1
  %433 = ptrtoint ptr %xferaddr_hi417.i.i to i32
  call void @__asan_storeN_noabort(i32 %433, i32 4)
  store i32 0, ptr %xferaddr_hi417.i.i, align 1
  %xferaddr418.i.i = getelementptr inbounds %struct.mbox_t, ptr %372, i32 0, i32 4
  %434 = ptrtoint ptr %xferaddr418.i.i to i32
  call void @__asan_storeN_noabort(i32 %434, i32 4)
  store i32 -1, ptr %xferaddr418.i.i, align 1
  br label %megaraid_mbox_build_cmd.exit.i

if.else419.i.i:                                   ; preds = %if.end401.i.i
  %435 = ptrtoint ptr %372 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 -61, ptr %372, align 1
  %436 = ptrtoint ptr %add.ptr.i685.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %add.ptr.i685.i.i, align 4
  %pthru2.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %437, i32 0, i32 7
  %438 = ptrtoint ptr %pthru2.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %pthru2.i.i, align 4
  %440 = ptrtoint ptr %dev_channel404.i.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %dev_channel404.i.i, align 4
  %442 = ptrtoint ptr %dev_target406.i.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %dev_target406.i.i, align 2
  %444 = ptrtoint ptr %439 to i32
  call void @__asan_load1_noabort(i32 %444)
  %bf.load.i11.i = load i8, ptr %439, align 1
  %bf.clear.i.i = and i8 %bf.load.i11.i, 14
  %bf.set6.i.i = or i8 %bf.clear.i.i, -112
  store i8 %bf.set6.i.i, ptr %439, align 1
  %channel10.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 2
  %445 = ptrtoint ptr %channel10.i.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %channel10.i.i, align 1
  %446 = shl i16 %441, 4
  %or49.i.i = or i16 %446, %443
  %conv13.i.i = trunc i16 %or49.i.i to i8
  %target14.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 3
  %447 = ptrtoint ptr %target14.i.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %conv13.i.i, ptr %target14.i.i, align 1
  %448 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %device.i, align 4
  %lun.i13.i = getelementptr inbounds %struct.scsi_device, ptr %449, i32 0, i32 18
  %450 = ptrtoint ptr %lun.i13.i to i32
  call void @__asan_load8_noabort(i32 %450)
  %451 = load i64, ptr %lun.i13.i, align 8
  %conv16.i.i = trunc i64 %451 to i8
  %logdrv.i14.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 1
  %452 = ptrtoint ptr %logdrv.i14.i to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %conv16.i.i, ptr %logdrv.i14.i, align 1
  %reqsenselen.i15.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 8
  %453 = ptrtoint ptr %reqsenselen.i15.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 14, ptr %reqsenselen.i15.i, align 1
  %cmd_len.i16.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %454 = ptrtoint ptr %cmd_len.i16.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %cmd_len.i16.i, align 4
  %conv17.i.i = trunc i16 %455 to i8
  %cdblen.i17.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 7
  %456 = ptrtoint ptr %cdblen.i17.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %conv17.i.i, ptr %cdblen.i17.i, align 1
  %cdb.i18.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 6
  %cmnd.i19.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %457 = ptrtoint ptr %cmnd.i19.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cmnd.i19.i, align 4
  %459 = load i16, ptr %cmd_len.i16.i, align 4
  %conv19.i.i = zext i16 %459 to i32
  %460 = call ptr @memcpy(ptr %cdb.i18.i, ptr %458, i32 %conv19.i.i)
  %length.i.i20.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %461 = ptrtoint ptr %length.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %length.i.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %462)
  %tobool.not.i.i = icmp eq i32 %462, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else419.i.i
  %dataxferlen.i21.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 13
  %463 = ptrtoint ptr %dataxferlen.i21.i to i32
  call void @__asan_storeN_noabort(i32 %463, i32 4)
  store i32 %462, ptr %dataxferlen.i21.i, align 1
  %sgl_dma_h.i22.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %437, i32 0, i32 6
  %464 = ptrtoint ptr %sgl_dma_h.i22.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %sgl_dma_h.i22.i, align 4
  %dataxferaddr.i23.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 12
  %466 = ptrtoint ptr %dataxferaddr.i23.i to i32
  call void @__asan_storeN_noabort(i32 %466, i32 4)
  store i32 %465, ptr %dataxferaddr.i23.i, align 1
  %467 = ptrtoint ptr %scp9.i693.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %scp9.i693.i.i, align 4
  %469 = ptrtoint ptr %add.ptr.i685.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %add.ptr.i685.i.i, align 4
  %call.i.i24.i = call i32 @scsi_dma_map(ptr noundef %468) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp.i.i25.i = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp.i.i25.i, label %if.then.i.i.do.body6.i.i30.i_crit_edge, label %lor.rhs.i.i29.i, !prof !566

if.then.i.i.do.body6.i.i30.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i30.i

lor.rhs.i.i29.i:                                  ; preds = %if.then.i.i
  %sglen.i.i26.i = getelementptr inbounds %struct.adapter_t, ptr %7, i32 0, i32 13
  %471 = ptrtoint ptr %sglen.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %sglen.i.i26.i, align 4
  %conv.i.i27.i = zext i16 %472 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i24.i, i32 %conv.i.i27.i)
  %cmp3.i.i28.i = icmp ugt i32 %call.i.i24.i, %conv.i.i27.i
  br i1 %cmp3.i.i28.i, label %lor.rhs.i.i29.i.do.body6.i.i30.i_crit_edge, label %do.end11.i.i32.i, !prof !566

lor.rhs.i.i29.i.do.body6.i.i30.i_crit_edge:       ; preds = %lor.rhs.i.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i30.i

do.body6.i.i30.i:                                 ; preds = %lor.rhs.i.i29.i.do.body6.i.i30.i_crit_edge, %if.then.i.i.do.body6.i.i30.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1350, 0\0A.popsection", ""() #10, !srcloc !581
  unreachable

do.end11.i.i32.i:                                 ; preds = %lor.rhs.i.i29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %tobool12.not.i.i31.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %tobool12.not.i.i31.i, label %do.end11.i.i32.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge, label %for.body.lr.ph.i.i36.i

do.end11.i.i32.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge: ; preds = %do.end11.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i47.i

for.body.lr.ph.i.i36.i:                           ; preds = %do.end11.i.i32.i
  %473 = ptrtoint ptr %dma_type.i694.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 1, ptr %dma_type.i694.i.i, align 4
  %sdb.i.i.i34.i = getelementptr inbounds %struct.scsi_cmnd, ptr %468, i32 0, i32 17
  %474 = ptrtoint ptr %sdb.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %sdb.i.i.i34.i, align 4
  %sgl64.i.i35.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %470, i32 0, i32 4
  br label %for.body.i.i46.i

for.body.i.i46.i:                                 ; preds = %for.body.i.i46.i.for.body.i.i46.i_crit_edge, %for.body.lr.ph.i.i36.i
  %i.041.i.i37.i = phi i32 [ 0, %for.body.lr.ph.i.i36.i ], [ %inc.i.i43.i, %for.body.i.i46.i.for.body.i.i46.i_crit_edge ]
  %sgl.040.i.i38.i = phi ptr [ %475, %for.body.lr.ph.i.i36.i ], [ %call21.i.i44.i, %for.body.i.i46.i.for.body.i.i46.i_crit_edge ]
  %dma_address.i.i39.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i38.i, i32 0, i32 3
  %476 = ptrtoint ptr %dma_address.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %dma_address.i.i39.i, align 4
  %conv18.i.i40.i = zext i32 %477 to i64
  %478 = ptrtoint ptr %sgl64.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %sgl64.i.i35.i, align 4
  %arrayidx.i.i41.i = getelementptr %struct.mbox_sgl64, ptr %479, i32 %i.041.i.i37.i
  %480 = ptrtoint ptr %arrayidx.i.i41.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 8)
  store i64 %conv18.i.i40.i, ptr %arrayidx.i.i41.i, align 1
  %dma_length.i.i42.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.040.i.i38.i, i32 0, i32 4
  %481 = ptrtoint ptr %dma_length.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %dma_length.i.i42.i, align 4
  %483 = load ptr, ptr %sgl64.i.i35.i, align 4
  %length.i51.i.i = getelementptr %struct.mbox_sgl64, ptr %483, i32 %i.041.i.i37.i, i32 1
  %484 = ptrtoint ptr %length.i51.i.i to i32
  call void @__asan_storeN_noabort(i32 %484, i32 4)
  store i32 %482, ptr %length.i51.i.i, align 1
  %inc.i.i43.i = add nuw nsw i32 %i.041.i.i37.i, 1
  %call21.i.i44.i = call ptr @sg_next(ptr noundef %sgl.040.i.i38.i) #10
  %exitcond.not.i.i45.i = icmp eq i32 %inc.i.i43.i, %call.i.i24.i
  br i1 %exitcond.not.i.i45.i, label %for.body.i.i46.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge, label %for.body.i.i46.i.for.body.i.i46.i_crit_edge

for.body.i.i46.i.for.body.i.i46.i_crit_edge:      ; preds = %for.body.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i46.i

for.body.i.i46.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge: ; preds = %for.body.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_mbox_mksgl.exit.i47.i

megaraid_mbox_mksgl.exit.i47.i:                   ; preds = %for.body.i.i46.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge, %do.end11.i.i32.i.megaraid_mbox_mksgl.exit.i47.i_crit_edge
  %conv22.i.i = trunc i32 %call.i.i24.i to i8
  br label %megaraid_mbox_prepare_pthru.exit.i

if.else.i.i:                                      ; preds = %if.else419.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dataxferaddr23.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 12
  %485 = ptrtoint ptr %dataxferaddr23.i.i to i32
  call void @__asan_storeN_noabort(i32 %485, i32 4)
  store i32 0, ptr %dataxferaddr23.i.i, align 1
  %dataxferlen24.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 13
  %486 = ptrtoint ptr %dataxferlen24.i.i to i32
  call void @__asan_storeN_noabort(i32 %486, i32 4)
  store i32 0, ptr %dataxferlen24.i.i, align 1
  br label %megaraid_mbox_prepare_pthru.exit.i

megaraid_mbox_prepare_pthru.exit.i:               ; preds = %if.else.i.i, %megaraid_mbox_mksgl.exit.i47.i
  %.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ %conv22.i.i, %megaraid_mbox_mksgl.exit.i47.i ]
  %numsge25.i.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %439, i32 0, i32 10
  %487 = ptrtoint ptr %numsge25.i.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %.sink.i.i, ptr %numsge25.i.i, align 1
  %pthru_dma_h421.i.i = getelementptr inbounds %struct.mbox_ccb_t, ptr %365, i32 0, i32 8
  %488 = ptrtoint ptr %pthru_dma_h421.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %pthru_dma_h421.i.i, align 4
  %490 = ptrtoint ptr %374 to i32
  call void @__asan_storeN_noabort(i32 %490, i32 4)
  store i32 %489, ptr %374, align 1
  %xferaddr_hi423.i.i = getelementptr inbounds %struct.mbox64_t, ptr %374, i32 0, i32 1
  %491 = ptrtoint ptr %xferaddr_hi423.i.i to i32
  call void @__asan_storeN_noabort(i32 %491, i32 4)
  store i32 0, ptr %xferaddr_hi423.i.i, align 1
  %xferaddr424.i.i = getelementptr inbounds %struct.mbox_t, ptr %372, i32 0, i32 4
  %492 = ptrtoint ptr %xferaddr424.i.i to i32
  call void @__asan_storeN_noabort(i32 %492, i32 4)
  store i32 -1, ptr %xferaddr424.i.i, align 1
  br label %megaraid_mbox_build_cmd.exit.i

megaraid_mbox_build_cmd.exit.thread.i:            ; preds = %if.then399.i.i, %if.then394.i.i, %if.then325.i.i, %sw.default.i.i, %if.then293.i.i, %if.then288.i.i, %megaraid_dealloc_scb.exit.i.i, %if.then139.i.i, %if.then110.i.i, %if.then105.i.i, %if.then100.i.i, %if.then94.i.i, %if.end56.i.i, %if.then29.i.i, %if.then26.i.i
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %scan.i.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %skip.i.i) #10
  call void @scsi_done(ptr noundef %cmd) #10
  br label %megaraid_queue_command_lck.exit

megaraid_mbox_build_cmd.exit.thread120.i:         ; preds = %if.end295.i.i, %if.end31.i.i
  %retval.0.i.ph.i = phi ptr [ %add.ptr.i.i.i, %if.end31.i.i ], [ %add.ptr.i667.i.i, %if.end295.i.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %scan.i.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %skip.i.i) #10
  br label %if.end.i

megaraid_mbox_build_cmd.exit.i:                   ; preds = %megaraid_mbox_prepare_pthru.exit.i, %megaraid_mbox_prepare_epthru.exit.i, %megaraid_mbox_mksgl.exit.i.i, %megaraid_mbox_mksgl.exit.i
  %retval.0.i.i = phi ptr [ %add.ptr.i641.i.i, %megaraid_mbox_mksgl.exit.i.i ], [ %add.ptr.i.i, %megaraid_mbox_mksgl.exit.i ], [ %add.ptr.i685.i.i, %megaraid_mbox_prepare_pthru.exit.i ], [ %add.ptr.i685.i.i, %megaraid_mbox_prepare_epthru.exit.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %scan.i.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %skip.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %megaraid_mbox_build_cmd.exit.i, %megaraid_mbox_build_cmd.exit.thread120.i
  %retval.0.i125.i = phi ptr [ %retval.0.i.ph.i, %megaraid_mbox_build_cmd.exit.thread120.i ], [ %retval.0.i.i, %megaraid_mbox_build_cmd.exit.i ]
  call fastcc void @megaraid_mbox_runpendq(ptr noundef %7, ptr noundef nonnull %retval.0.i125.i) #10
  br label %megaraid_queue_command_lck.exit

megaraid_queue_command_lck.exit:                  ; preds = %if.end.i, %megaraid_mbox_build_cmd.exit.thread.i
  %493 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %494, i32 noundef %call2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_abort_handler(ptr noundef %scp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raid_device, align 4
  %8 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i32
  %channel = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lun, align 8
  %conv6 = trunc i64 %18 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %conv, i32 noundef %14, i32 noundef %16, i32 noundef %conv6) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hw_error = getelementptr inbounds %struct.mraid_device_t, ptr %7, i32 0, i32 19
  %19 = ptrtoint ptr %hw_error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %if.end
  %21 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp8 = icmp sgt i32 %21, -1
  br i1 %cmp8, label %do.end13, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %completed_list_lock = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 12
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %completed_list_lock) #10
  %completed_list = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end17
  %.pn.in.in = phi ptr [ %completed_list, %if.end17 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp36.not = icmp eq ptr %.pn.in, %completed_list
  br i1 %cmp36.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %scp38 = getelementptr i8, ptr %.pn.in, i32 16
  %23 = ptrtoint ptr %scp38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scp38, align 4
  %cmp39 = icmp eq ptr %24, %scp
  br i1 %cmp39, label %if.then41, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then41:                                        ; preds = %for.body
  %scp38.le = getelementptr i8, ptr %.pn.in, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_del_init.exit_crit_edge

if.then41.list_del_init.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then41.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  %33 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp43 = icmp sgt i32 %33, -1
  br i1 %cmp43, label %do.end48, label %list_del_init.exit.if.end53_crit_edge

list_del_init.exit.if.end53_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end48:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sno = getelementptr i8, ptr %.pn.in, i32 12
  %34 = ptrtoint ptr %sno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sno, align 4
  %dev_channel = getelementptr i8, ptr %.pn.in, i32 32
  %36 = ptrtoint ptr %dev_channel to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dev_channel, align 4
  %conv50 = zext i16 %37 to i32
  %dev_target = getelementptr i8, ptr %.pn.in, i32 34
  %38 = ptrtoint ptr %dev_target to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dev_target, align 2
  %conv51 = zext i16 %39 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %35, i32 noundef %conv50, i32 noundef %conv51) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %list_del_init.exit.if.end53_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 24
  %40 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 327680, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %scp) #10
  %state.i = getelementptr i8, ptr %.pn.in, i32 20
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %state.i, align 4
  %42 = ptrtoint ptr %scp38.le to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %scp38.le, align 4
  %kscb_pool_lock.i = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i) #10
  %kscb_pool.i = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 7
  %43 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %kscb_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in, ptr noundef %kscb_pool.i, ptr noundef %44) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end53.megaraid_dealloc_scb.exit_crit_edge

if.end53.megaraid_dealloc_scb.exit_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_dealloc_scb.exit

if.end.i.i.i:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i247 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i247 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.pn.in, ptr %prev1.i.i.i247, align 4
  %46 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %.pn.in, align 4
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %kscb_pool.i, ptr %prev.i3.i, align 4
  %48 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %.pn.in, ptr %kscb_pool.i, align 4
  br label %megaraid_dealloc_scb.exit

megaraid_dealloc_scb.exit:                        ; preds = %if.end.i.i.i, %if.end53.megaraid_dealloc_scb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i, i32 noundef %call2.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %completed_list_lock, i32 noundef %call24) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %completed_list_lock, i32 noundef %call24) #10
  %pend_list_lock = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 10
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_list_lock) #10
  %pend_list = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 9
  br label %for.cond84

for.cond84:                                       ; preds = %for.body90.for.cond84_crit_edge, %for.end
  %.pn244.in.in = phi ptr [ %pend_list, %for.end ], [ %.pn244.in, %for.body90.for.cond84_crit_edge ]
  %49 = ptrtoint ptr %.pn244.in.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn244.in = load ptr, ptr %.pn244.in.in, align 4
  %cmp87.not = icmp eq ptr %.pn244.in, %pend_list
  br i1 %cmp87.not, label %for.end118, label %for.body90

for.body90:                                       ; preds = %for.cond84
  %scp91 = getelementptr i8, ptr %.pn244.in, i32 16
  %50 = ptrtoint ptr %scp91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scp91, align 4
  %cmp92 = icmp eq ptr %51, %scp
  br i1 %cmp92, label %if.then94, label %for.body90.for.cond84_crit_edge

for.body90.for.cond84_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond84

if.then94:                                        ; preds = %for.body90
  %scp91.le = getelementptr i8, ptr %.pn244.in, i32 16
  %call.i.i248 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn244.in) #10
  br i1 %call.i.i248, label %if.end.i.i251, label %if.then94.list_del_init.exit253_crit_edge

if.then94.list_del_init.exit253_crit_edge:        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit253

if.end.i.i251:                                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i249 = getelementptr inbounds %struct.list_head, ptr %.pn244.in, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i249 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i249, align 4
  %54 = ptrtoint ptr %.pn244.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.pn244.in, align 4
  %prev1.i.i.i250 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i250 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i250, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit253

list_del_init.exit253:                            ; preds = %if.end.i.i251, %if.then94.list_del_init.exit253_crit_edge
  %58 = ptrtoint ptr %.pn244.in to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %.pn244.in, ptr %.pn244.in, align 4
  %prev.i3.i252 = getelementptr %struct.list_head, ptr %.pn244.in, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i3.i252 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %.pn244.in, ptr %prev.i3.i252, align 4
  %60 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp96 = icmp sgt i32 %60, -1
  br i1 %cmp96, label %do.end101, label %list_del_init.exit253.if.end108_crit_edge

list_del_init.exit253.if.end108_crit_edge:        ; preds = %list_del_init.exit253
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.end101:                                        ; preds = %list_del_init.exit253
  call void @__sanitizer_cov_trace_pc() #12
  %dev_channel103 = getelementptr i8, ptr %.pn244.in, i32 32
  %61 = ptrtoint ptr %dev_channel103 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dev_channel103, align 4
  %conv104 = zext i16 %62 to i32
  %dev_target105 = getelementptr i8, ptr %.pn244.in, i32 34
  %63 = ptrtoint ptr %dev_target105 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dev_target105, align 2
  %conv106 = zext i16 %64 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %conv104, i32 noundef %conv106) #13
  br label %if.end108

if.end108:                                        ; preds = %do.end101, %list_del_init.exit253.if.end108_crit_edge
  %result109 = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 24
  %65 = ptrtoint ptr %result109 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 327680, ptr %result109, align 4
  tail call void @scsi_done(ptr noundef %scp) #10
  %state.i254 = getelementptr i8, ptr %.pn244.in, i32 20
  %66 = ptrtoint ptr %state.i254 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %state.i254, align 4
  %67 = ptrtoint ptr %scp91.le to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %scp91.le, align 4
  %kscb_pool_lock.i256 = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 8
  %call2.i257 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i256) #10
  %kscb_pool.i259 = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %kscb_pool.i259 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %kscb_pool.i259, align 4
  %call.i.i.i260 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn244.in, ptr noundef %kscb_pool.i259, ptr noundef %69) #10
  br i1 %call.i.i.i260, label %if.end.i.i.i263, label %if.end108.megaraid_dealloc_scb.exit264_crit_edge

if.end108.megaraid_dealloc_scb.exit264_crit_edge: ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_dealloc_scb.exit264

if.end.i.i.i263:                                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i261 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i261 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %.pn244.in, ptr %prev1.i.i.i261, align 4
  %71 = ptrtoint ptr %.pn244.in to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %.pn244.in, align 4
  %72 = ptrtoint ptr %prev.i3.i252 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %kscb_pool.i259, ptr %prev.i3.i252, align 4
  %73 = ptrtoint ptr %kscb_pool.i259 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %.pn244.in, ptr %kscb_pool.i259, align 4
  br label %megaraid_dealloc_scb.exit264

megaraid_dealloc_scb.exit264:                     ; preds = %if.end.i.i.i263, %if.end108.megaraid_dealloc_scb.exit264_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i256, i32 noundef %call2.i257) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_list_lock, i32 noundef %call70) #10
  br label %cleanup

for.end118:                                       ; preds = %for.cond84
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_list_lock, i32 noundef %call70) #10
  %lock = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %kscb_list = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 6
  br label %for.body123

for.body123:                                      ; preds = %for.inc167.for.body123_crit_edge, %for.end118
  %found.0271 = phi i32 [ 0, %for.end118 ], [ %found.1, %for.inc167.for.body123_crit_edge ]
  %i.0269 = phi i32 [ 0, %for.end118 ], [ %inc, %for.inc167.for.body123_crit_edge ]
  %74 = ptrtoint ptr %kscb_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %kscb_list, align 4
  %scp125 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 4
  %76 = ptrtoint ptr %scp125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %scp125, align 4
  %cmp126 = icmp eq ptr %77, %scp
  br i1 %cmp126, label %if.then128, label %for.body123.for.inc167_crit_edge

for.body123.for.inc167_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc167

if.then128:                                       ; preds = %for.body123
  %state = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 5
  %78 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state, align 4
  %and = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool129.not = icmp eq i32 %and, 0
  %80 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp131 = icmp sgt i32 %80, -1
  br i1 %tobool129.not, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.then128
  br i1 %cmp131, label %do.end136, label %if.then130.do.body145_crit_edge

if.then130.do.body145_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145

do.end136:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  %sno138 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 3
  %81 = ptrtoint ptr %sno138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sno138, align 4
  %dev_channel139 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 8
  %83 = ptrtoint ptr %dev_channel139 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dev_channel139, align 4
  %conv140 = zext i16 %84 to i32
  %dev_target141 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 9
  %85 = ptrtoint ptr %dev_target141 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dev_target141, align 2
  %conv142 = zext i16 %86 to i32
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %82, i32 noundef %conv140, i32 noundef %conv142) #13
  br label %do.body145

do.body145:                                       ; preds = %do.end136, %if.then130.do.body145_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/megaraid/megaraid_mbox.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2480, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

if.else:                                          ; preds = %if.then128
  br i1 %cmp131, label %do.end156, label %if.else.for.inc167_crit_edge

if.else.for.inc167_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc167

do.end156:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sno158 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 3
  %87 = ptrtoint ptr %sno158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sno158, align 4
  %dev_channel159 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 8
  %89 = ptrtoint ptr %dev_channel159 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dev_channel159, align 4
  %conv160 = zext i16 %90 to i32
  %dev_target161 = getelementptr %struct.scb_t, ptr %75, i32 %i.0269, i32 9
  %91 = ptrtoint ptr %dev_target161 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %dev_target161, align 2
  %conv162 = zext i16 %92 to i32
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %88, i32 noundef %conv160, i32 noundef %conv162) #13
  br label %for.inc167

for.inc167:                                       ; preds = %do.end156, %if.else.for.inc167_crit_edge, %for.body123.for.inc167_crit_edge
  %found.1 = phi i32 [ 1, %do.end156 ], [ 1, %if.else.for.inc167_crit_edge ], [ %found.0271, %for.body123.for.inc167_crit_edge ]
  %inc = add nuw nsw i32 %i.0269, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end168, label %for.inc167.for.body123_crit_edge

for.inc167.for.body123_crit_edge:                 ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body123

for.end168:                                       ; preds = %for.inc167
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool170.not = icmp eq i32 %found.1, 0
  br i1 %tobool170.not, label %if.then171, label %for.end168.cleanup_crit_edge

for.end168.cleanup_crit_edge:                     ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then171:                                       ; preds = %for.end168
  %93 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp172 = icmp sgt i32 %93, -1
  br i1 %cmp172, label %do.end177, label %if.then171.cleanup_crit_edge

if.then171.cleanup_crit_edge:                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end177:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end177, %if.then171.cleanup_crit_edge, %for.end168.cleanup_crit_edge, %megaraid_dealloc_scb.exit264, %megaraid_dealloc_scb.exit, %do.end13, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %megaraid_dealloc_scb.exit ], [ 8194, %megaraid_dealloc_scb.exit264 ], [ 8195, %do.end13 ], [ 8195, %if.then7.cleanup_crit_edge ], [ 8194, %do.end177 ], [ 8194, %if.then171.cleanup_crit_edge ], [ 8195, %for.end168.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_reset_handler(ptr noundef readonly %scp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata, align 8
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raid_device, align 4
  %hw_error = getelementptr inbounds %struct.mraid_device_t, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %hw_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body5, label %if.then

if.then:                                          ; preds = %entry
  %10 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp sgt i32 %10, -1
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #13
  br label %cleanup

do.body5:                                         ; preds = %entry
  %pend_list_lock = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 10
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_list_lock) #10
  %pend_list = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %pend_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pend_list, align 4
  %cmp21.not234 = icmp eq ptr %12, %pend_list
  br i1 %cmp21.not234, label %do.body5.for.end_crit_edge, label %for.body.lr.ph

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body5
  %kscb_pool_lock.i = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 8
  %kscb_pool.i = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in235 = phi ptr [ %12, %for.body.lr.ph ], [ %.pn238, %for.inc.for.body_crit_edge ]
  %scb.0237 = getelementptr i8, ptr %.pn.in235, i32 -4
  %13 = ptrtoint ptr %.pn.in235 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn238 = load ptr, ptr %.pn.in235, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in235) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in235, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in235 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in235, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in235 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in235, ptr %.pn.in235, align 4
  %prev.i3.i = getelementptr %struct.list_head, ptr %.pn.in235, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in235, ptr %prev.i3.i, align 4
  %sno = getelementptr i8, ptr %.pn.in235, i32 12
  %22 = ptrtoint ptr %sno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %23)
  %cmp24 = icmp ugt i32 %23, 127
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %list_del_init.exit
  %24 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp27 = icmp sgt i32 %24, -1
  br i1 %cmp27, label %do.end32, label %if.then26.if.end38_crit_edge

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %dev_channel = getelementptr i8, ptr %.pn.in235, i32 32
  %25 = ptrtoint ptr %dev_channel to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dev_channel, align 4
  %conv35 = zext i16 %26 to i32
  %dev_target = getelementptr i8, ptr %.pn.in235, i32 34
  %27 = ptrtoint ptr %dev_target to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dev_target, align 2
  %conv36 = zext i16 %28 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %23, i32 noundef %conv35, i32 noundef %conv36) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %if.then26.if.end38_crit_edge
  %status = getelementptr i8, ptr %.pn.in235, i32 36
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %status, align 4
  %gp = getelementptr i8, ptr %.pn.in235, i32 8
  %30 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gp, align 4
  %32 = inttoptr i32 %31 to ptr
  %status39 = getelementptr inbounds %struct.uioc, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %status39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -14, ptr %status39, align 4
  tail call fastcc void @megaraid_mbox_mm_done(ptr noundef %5, ptr noundef %scb.0237)
  br label %for.inc

if.else:                                          ; preds = %list_del_init.exit
  %scp40 = getelementptr i8, ptr %.pn.in235, i32 16
  %34 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp44 = icmp sgt i32 %34, -1
  br i1 %cmp44, label %if.end73.sink.split, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end73.sink.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %scp40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scp40, align 4
  %cmp41 = icmp eq ptr %36, %scp
  %.str.210..str.213 = select i1 %cmp41, ptr @.str.210, ptr @.str.213
  %dev_channel67 = getelementptr i8, ptr %.pn.in235, i32 32
  %37 = ptrtoint ptr %dev_channel67 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dev_channel67, align 4
  %conv68 = zext i16 %38 to i32
  %dev_target69 = getelementptr i8, ptr %.pn.in235, i32 34
  %39 = ptrtoint ptr %dev_target69 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dev_target69, align 2
  %conv70 = zext i16 %40 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.210..str.213, i32 noundef %23, i32 noundef %conv68, i32 noundef %conv70) #13
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.else.if.end73_crit_edge
  %41 = ptrtoint ptr %scp40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scp40, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %42, i32 0, i32 24
  %43 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 524288, ptr %result, align 4
  %44 = load ptr, ptr %scp40, align 4
  tail call void @scsi_done(ptr noundef %44) #10
  %state.i = getelementptr i8, ptr %.pn.in235, i32 20
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %state.i, align 4
  %46 = ptrtoint ptr %scp40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %scp40, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kscb_pool_lock.i) #10
  %47 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kscb_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in235, ptr noundef %kscb_pool.i, ptr noundef %48) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end73.megaraid_dealloc_scb.exit_crit_edge

if.end73.megaraid_dealloc_scb.exit_crit_edge:     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_dealloc_scb.exit

if.end.i.i.i:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i228 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i228 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %.pn.in235, ptr %prev1.i.i.i228, align 4
  %50 = ptrtoint ptr %.pn.in235 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %.pn.in235, align 4
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %kscb_pool.i, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %kscb_pool.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %.pn.in235, ptr %kscb_pool.i, align 4
  br label %megaraid_dealloc_scb.exit

megaraid_dealloc_scb.exit:                        ; preds = %if.end.i.i.i, %if.end73.megaraid_dealloc_scb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kscb_pool_lock.i, i32 noundef %call2.i) #10
  br label %for.inc

for.inc:                                          ; preds = %megaraid_dealloc_scb.exit, %if.end38
  %cmp21.not = icmp eq ptr %.pn238, %pend_list
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body5.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_list_lock, i32 noundef %call9) #10
  %outstanding_cmds = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 5
  %53 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %outstanding_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool83.not = icmp eq i32 %54, 0
  br i1 %tobool83.not, label %for.end.for.body99.preheader_crit_edge, label %if.then84

for.end.for.body99.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body99.preheader

if.then84:                                        ; preds = %for.end
  %55 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp85 = icmp sgt i32 %55, -1
  br i1 %cmp85, label %do.end90, label %if.then84.for.body99.preheader_crit_edge

if.then84.for.body99.preheader_crit_edge:         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body99.preheader

do.end90:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %54, i32 noundef 300) #13
  br label %for.body99.preheader

for.body99.preheader:                             ; preds = %do.end90, %if.then84.for.body99.preheader_crit_edge, %for.end.for.body99.preheader_crit_edge
  br label %for.body99

for.body99:                                       ; preds = %if.end118.for.body99_crit_edge, %for.body99.preheader
  %i.0239 = phi i32 [ %inc, %if.end118.for.body99_crit_edge ], [ 0, %for.body99.preheader ]
  %call100 = tail call fastcc i32 @megaraid_ack_sequence(ptr noundef %5)
  %rem = urem i32 %i.0239, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool101.not = icmp eq i32 %rem, 0
  br i1 %tobool101.not, label %if.then102, label %for.body99.if.end113_crit_edge

for.body99.if.end113_crit_edge:                   ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then102:                                       ; preds = %for.body99
  %56 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp103 = icmp sgt i32 %56, -1
  br i1 %cmp103, label %do.end108, label %if.then102.if.end113_crit_edge

if.then102.if.end113_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.end108:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %outstanding_cmds, align 4
  %sub = sub nuw nsw i32 300, %i.0239
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %58, i32 noundef %sub) #13
  br label %if.end113

if.end113:                                        ; preds = %do.end108, %if.then102.if.end113_crit_edge, %for.body99.if.end113_crit_edge
  %59 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %outstanding_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp115 = icmp eq i32 %60, 0
  br i1 %cmp115, label %if.end113.for.end120_crit_edge, label %if.end118

if.end113.for.end120_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end120

if.end118:                                        ; preds = %if.end113
  tail call void @msleep(i32 noundef 1000) #10
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %if.end118.for.end120_crit_edge, label %if.end118.for.body99_crit_edge

if.end118.for.body99_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body99

if.end118.for.end120_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end120

for.end120:                                       ; preds = %if.end118.for.end120_crit_edge, %if.end113.for.end120_crit_edge
  %lock = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %61 = ptrtoint ptr %outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %outstanding_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool122.not = icmp eq i32 %62, 0
  %63 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp135 = icmp sgt i32 %63, -1
  br i1 %tobool122.not, label %if.else134, label %if.then123

if.then123:                                       ; preds = %for.end120
  br i1 %cmp135, label %do.end129, label %if.then123.if.end132_crit_edge

if.then123.if.end132_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

do.end129:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222) #13
  br label %if.end132

if.end132:                                        ; preds = %do.end129, %if.then123.if.end132_crit_edge
  %64 = ptrtoint ptr %hw_error to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %hw_error, align 4
  br label %out

if.else134:                                       ; preds = %for.end120
  br i1 %cmp135, label %do.end140, label %if.else134.if.end144_crit_edge

if.else134.if.end144_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

do.end140:                                        ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #13
  br label %if.end144

if.end144:                                        ; preds = %do.end140, %if.else134.if.end144_crit_edge
  %ha = getelementptr inbounds %struct.adapter_t, ptr %5, i32 0, i32 31
  %65 = ptrtoint ptr %ha to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ha, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool145.not = icmp eq i8 %66, 0
  br i1 %tobool145.not, label %if.end144.out_crit_edge, label %if.end147

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end147:                                        ; preds = %if.end144
  %67 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %raid_device, align 4
  %mbox1.i = getelementptr inbounds %struct.mraid_device_t, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %mbox1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mbox1.i, align 4
  %busy.i = getelementptr inbounds %struct.mbox_t, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %busy.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end147.if.else164_crit_edge

if.end147.if.else164_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else164

if.end.i:                                         ; preds = %if.end147
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 110, ptr %70, align 1
  %raw_mbox.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %70, i32 1
  %raw_mbox.sroa.5229.0..sroa_idx = getelementptr inbounds i8, ptr %70, i32 2
  %74 = ptrtoint ptr %raw_mbox.sroa.5229.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %raw_mbox.sroa.5229.0..sroa_idx, align 1
  %raw_mbox.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %70, i32 3
  %75 = call ptr @memset(ptr %raw_mbox.sroa.6.0..sroa_idx, i32 255, i32 11)
  %76 = ptrtoint ptr %raw_mbox.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -2, ptr %raw_mbox.sroa.5.0..sroa_idx, align 1
  %77 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %busy.i, align 1
  %poll.i = getelementptr inbounds %struct.mbox_t, ptr %70, i32 0, i32 12
  %78 = ptrtoint ptr %poll.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %poll.i, align 1
  %ack.i = getelementptr inbounds %struct.mbox_t, ptr %70, i32 0, i32 13
  %79 = ptrtoint ptr %ack.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %ack.i, align 1
  %numstatus.i = getelementptr inbounds %struct.mbox_t, ptr %70, i32 0, i32 9
  %80 = ptrtoint ptr %numstatus.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %numstatus.i, align 1
  %status.i = getelementptr inbounds %struct.mbox_t, ptr %70, i32 0, i32 10
  %81 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %status.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !583
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !584
  tail call void @arm_heavy_mb() #10
  %mbox_dma.i = getelementptr inbounds %struct.mraid_device_t, ptr %68, i32 0, i32 4
  %82 = ptrtoint ptr %mbox_dma.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mbox_dma.i, align 4
  %or.i = or i32 %83, 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %baseaddr.i = getelementptr inbounds %struct.mraid_device_t, ptr %68, i32 0, i32 7
  %85 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %baseaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %84) #10, !srcloc !551
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.end.i
  %i.053.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %numstatus.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %numstatus.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %cmp7.not.i = icmp eq i8 %88, -1
  br i1 %cmp7.not.i, label %if.end10.i, label %for.body.i.mbox_post_sync_cmd_fast.exit_crit_edge

for.body.i.mbox_post_sync_cmd_fast.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mbox_post_sync_cmd_fast.exit

if.end10.i:                                       ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !585
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 42949600) #10
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65535
  br i1 %exitcond.not.i, label %if.then13.i, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then13.i:                                      ; preds = %if.end10.i
  %90 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp14.i = icmp sgt i32 %90, -1
  br i1 %cmp14.i, label %do.end19.i, label %if.then13.i.mbox_post_sync_cmd_fast.exit_crit_edge

if.then13.i.mbox_post_sync_cmd_fast.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mbox_post_sync_cmd_fast.exit

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #13
  br label %mbox_post_sync_cmd_fast.exit

mbox_post_sync_cmd_fast.exit:                     ; preds = %do.end19.i, %if.then13.i.mbox_post_sync_cmd_fast.exit_crit_edge, %for.body.i.mbox_post_sync_cmd_fast.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !586
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %mbox_dma.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mbox_dma.i, align 4
  %or26.i = or i32 %92, 2
  %93 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #10
  %94 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %baseaddr.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %95, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %93) #10, !srcloc !551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !587
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp152 = icmp eq i8 %97, 0
  br i1 %cmp152, label %if.then154, label %mbox_post_sync_cmd_fast.exit.if.else164_crit_edge

mbox_post_sync_cmd_fast.exit.if.else164_crit_edge: ; preds = %mbox_post_sync_cmd_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else164

if.then154:                                       ; preds = %mbox_post_sync_cmd_fast.exit
  %98 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp155 = icmp sgt i32 %98, -1
  br i1 %cmp155, label %do.end160, label %if.then154.out_crit_edge

if.then154.out_crit_edge:                         ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end160:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #13
  br label %out

if.else164:                                       ; preds = %mbox_post_sync_cmd_fast.exit.if.else164_crit_edge, %if.end147.if.else164_crit_edge
  %99 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp165 = icmp sgt i32 %99, -1
  br i1 %cmp165, label %do.end170, label %if.else164.out_crit_edge

if.else164.out_crit_edge:                         ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end170:                                        ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #12
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #13
  br label %out

out:                                              ; preds = %do.end170, %if.else164.out_crit_edge, %do.end160, %if.then154.out_crit_edge, %if.end144.out_crit_edge, %if.end132
  %rval.0 = phi i32 [ 8195, %if.end132 ], [ 8194, %do.end160 ], [ 8194, %if.then154.out_crit_edge ], [ 8195, %do.end170 ], [ 8195, %if.else164.out_crit_edge ], [ 8194, %if.end144.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %out ], [ 8195, %do.end ], [ 8195, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_mbox_app_hndl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %unique_id = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unique_id, align 4
  %call = tail call i32 @mraid_mm_adapter_app_handle(i32 noundef %3) #10
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 8, ptr noundef nonnull @.str.236, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mraid_mm_adapter_app_handle(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @megaraid_mbox_ld_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %timeout.i = alloca %struct.uioc_timeout, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raid_device, align 4
  %random_del_supported = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %random_del_supported to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %random_del_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %channel = getelementptr i8, ptr %dev, i32 -276
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %max_channel = getelementptr inbounds %struct.adapter_t, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %max_channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_channel, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timeout.i) #10
  %12 = call ptr @memset(ptr %timeout.i, i32 255, i32 48)
  %sysfs_mtx.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %sysfs_mtx.i, i32 noundef 0) #10
  %sysfs_uioc.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 23
  %13 = ptrtoint ptr %sysfs_uioc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sysfs_uioc.i, align 4
  %sysfs_mbox64.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 24
  %15 = ptrtoint ptr %sysfs_mbox64.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sysfs_mbox64.i, align 4
  %sysfs_buffer.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 25
  %17 = ptrtoint ptr %sysfs_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sysfs_buffer.i, align 4
  %19 = call ptr @memset(ptr %14, i32 0, i32 1024)
  %20 = call ptr @memset(ptr %16, i32 0, i32 74)
  %21 = call ptr @memset(ptr %18, i32 0, i32 128)
  %mbox32.i = getelementptr inbounds %struct.mbox64_t, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %16 to i32
  %conv.i = zext i32 %22 to i64
  %cmdbuf.i = getelementptr inbounds %struct.uioc, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %conv.i, ptr %cmdbuf.i, align 4
  %buf_vaddr.i = getelementptr inbounds %struct.uioc, ptr %14, i32 0, i32 18
  %24 = ptrtoint ptr %buf_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %buf_vaddr.i, align 4
  %status.i = getelementptr inbounds %struct.uioc, ptr %14, i32 0, i32 8
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -61, ptr %status.i, align 4
  %done.i = getelementptr inbounds %struct.uioc, ptr %14, i32 0, i32 17
  %26 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @megaraid_sysfs_get_ldmap_done, ptr %done.i, align 16
  %sysfs_buffer_dma.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 26
  %27 = ptrtoint ptr %sysfs_buffer_dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sysfs_buffer_dma.i, align 4
  %xferaddr.i = getelementptr inbounds %struct.mbox64_t, ptr %16, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %xferaddr.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %xferaddr.i, align 1
  %30 = ptrtoint ptr %mbox32.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -92, ptr %mbox32.i, align 1
  %arrayidx1.i = getelementptr %struct.mbox64_t, ptr %16, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 24, ptr %arrayidx1.i, align 1
  %uioc2.i = getelementptr inbounds %struct.uioc_timeout, ptr %timeout.i, i32 0, i32 1
  %32 = ptrtoint ptr %uioc2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %14, ptr %uioc2.i, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timeout.i, ptr noundef nonnull @megaraid_sysfs_get_ldmap_timeout, i32 noundef 0, ptr noundef nonnull @.str.241, ptr noundef nonnull @megaraid_sysfs_get_ldmap.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %33, 6000
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %timeout.i, i32 0, i32 1
  %34 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef nonnull %timeout.i) #10
  %call.i = call fastcc i32 @megaraid_mbox_mm_command(ptr noundef %3, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body7.i, label %if.else56.i

do.body7.i:                                       ; preds = %if.then
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 3924) #10
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %36)
  %cmp14.not.i = icmp eq i32 %36, -61
  br i1 %cmp14.not.i, label %if.end.i, label %do.body7.i.do.end25.i_crit_edge

do.body7.i.do.end25.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i

if.end.i:                                         ; preds = %do.body7.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %37 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %sysfs_wait_q.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 27
  %call17116.i = call i32 @prepare_to_wait_event(ptr noundef %sysfs_wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %39)
  %cmp19.not117.i = icmp eq i32 %39, -61
  br i1 %cmp19.not117.i, label %if.end.i.cleanup.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #10
  %call17.i = call i32 @prepare_to_wait_event(ptr noundef %sysfs_wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status.i, align 4
  %cmp19.not.i = icmp eq i32 %41, -61
  br i1 %cmp19.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %sysfs_wait_q.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %status.i, align 4
  br label %do.end25.i

do.end25.i:                                       ; preds = %for.end.i, %do.body7.i.do.end25.i_crit_edge
  %43 = phi i32 [ %36, %do.body7.i.do.end25.i_crit_edge ], [ %.pr.i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %43)
  %cmp27.i = icmp eq i32 %43, -62
  br i1 %cmp27.i, label %if.then29.i, label %if.end41.i

if.then29.i:                                      ; preds = %do.end25.i
  %44 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp30.i = icmp sgt i32 %44, -1
  br i1 %cmp30.i, label %do.end35.i, label %if.then29.i.megaraid_sysfs_get_ldmap.exit_crit_edge

if.then29.i.megaraid_sysfs_get_ldmap.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_sysfs_get_ldmap.exit

do.end35.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #13
  br label %if.else45.i

if.end41.i:                                       ; preds = %do.end25.i
  %status39.i = getelementptr inbounds %struct.mbox64_t, ptr %16, i32 0, i32 2, i32 10
  %45 = ptrtoint ptr %status39.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %status39.i, align 1
  %conv40.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp42.i = icmp eq i8 %46, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.end41.i.if.else45.i_crit_edge

if.end41.i.if.else45.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else45.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %curr_ldmap.i = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 29
  %47 = call ptr @memcpy(ptr %curr_ldmap.i, ptr %18, i32 128)
  br label %megaraid_sysfs_get_ldmap.exit

if.else45.i:                                      ; preds = %if.end41.i.if.else45.i_crit_edge, %do.end35.i
  %rval.0112.ph.i = phi i32 [ -62, %do.end35.i ], [ %conv40.i, %if.end41.i.if.else45.i_crit_edge ]
  %.pr113.i = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr113.i)
  %cmp46.i = icmp sgt i32 %.pr113.i, -1
  br i1 %cmp46.i, label %do.end51.i, label %if.else45.i.megaraid_sysfs_get_ldmap.exit_crit_edge

if.else45.i.megaraid_sysfs_get_ldmap.exit_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_sysfs_get_ldmap.exit

do.end51.i:                                       ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef %rval.0112.ph.i) #13
  br label %megaraid_sysfs_get_ldmap.exit

if.else56.i:                                      ; preds = %if.then
  %48 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp57.i = icmp sgt i32 %48, -1
  br i1 %cmp57.i, label %do.end62.i, label %if.else56.i.megaraid_sysfs_get_ldmap.exit_crit_edge

if.else56.i.megaraid_sysfs_get_ldmap.exit_crit_edge: ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %megaraid_sysfs_get_ldmap.exit

do.end62.i:                                       ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #12
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %call.i) #13
  br label %megaraid_sysfs_get_ldmap.exit

megaraid_sysfs_get_ldmap.exit:                    ; preds = %do.end62.i, %if.else56.i.megaraid_sysfs_get_ldmap.exit_crit_edge, %do.end51.i, %if.else45.i.megaraid_sysfs_get_ldmap.exit_crit_edge, %if.then44.i, %if.then29.i.megaraid_sysfs_get_ldmap.exit_crit_edge
  %rval.1.i = phi i32 [ 0, %if.then44.i ], [ %rval.0112.ph.i, %do.end51.i ], [ %rval.0112.ph.i, %if.else45.i.megaraid_sysfs_get_ldmap.exit_crit_edge ], [ %call.i, %do.end62.i ], [ %call.i, %if.else56.i.megaraid_sysfs_get_ldmap.exit_crit_edge ], [ -62, %if.then29.i.megaraid_sysfs_get_ldmap.exit_crit_edge ]
  %call68.i = call i32 @del_timer_sync(ptr noundef nonnull %timeout.i) #10
  call void @destroy_timer_on_stack(ptr noundef nonnull %timeout.i) #10
  call void @mutex_unlock(ptr noundef %sysfs_mtx.i) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timeout.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1.i)
  %cmp2 = icmp eq i32 %rval.1.i, 0
  br i1 %cmp2, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %megaraid_sysfs_get_ldmap.exit
  %id = getelementptr i8, ptr %dev, i32 -280
  %49 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id, align 8
  %init_id = getelementptr inbounds %struct.adapter_t, ptr %3, i32 0, i32 32
  %51 = ptrtoint ptr %init_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %init_id, align 2
  %conv8 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv8)
  %cmp9 = icmp ugt i32 %50, %conv8
  %sub = sext i1 %cmp9 to i32
  %spec.select = add i32 %50, %sub
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.050 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx12 = getelementptr %struct.mraid_device_t, ptr %5, i32 0, i32 29, i32 %i.050
  %53 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv13)
  %cmp14 = icmp eq i32 %spec.select, %conv13
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %unique_id = getelementptr inbounds %struct.adapter_t, ptr %3, i32 0, i32 19
  %55 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %unique_id, align 4
  %call21 = call i32 @mraid_mm_adapter_app_handle(i32 noundef %56) #10
  br label %if.end30

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.inc.if.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %megaraid_sysfs_get_ldmap.exit
  %57 = load i32, ptr @mraid_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp23 = icmp sgt i32 %57, -1
  br i1 %cmp23, label %do.end, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, i32 noundef %rval.1.i) #13
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.else.if.end30_crit_edge, %for.inc.if.end30_crit_edge, %if.then16, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  %scsi_id.0 = phi i32 [ %50, %if.then16 ], [ -1, %do.end ], [ -1, %if.else.if.end30_crit_edge ], [ -1, %land.lhs.true.if.end30_crit_edge ], [ -1, %entry.if.end30_crit_edge ], [ -1, %for.inc.if.end30_crit_edge ]
  %logical_drv.0 = phi i32 [ %i.050, %if.then16 ], [ -1, %do.end ], [ -1, %if.else.if.end30_crit_edge ], [ -1, %land.lhs.true.if.end30_crit_edge ], [ -1, %entry.if.end30_crit_edge ], [ -1, %for.inc.if.end30_crit_edge ]
  %ldid_map.0 = phi i32 [ %spec.select, %if.then16 ], [ -1, %do.end ], [ -1, %if.else.if.end30_crit_edge ], [ -1, %land.lhs.true.if.end30_crit_edge ], [ -1, %entry.if.end30_crit_edge ], [ -1, %for.inc.if.end30_crit_edge ]
  %app_hndl.0 = phi i32 [ %call21, %if.then16 ], [ 0, %do.end ], [ 0, %if.else.if.end30_crit_edge ], [ 0, %land.lhs.true.if.end30_crit_edge ], [ 0, %entry.if.end30_crit_edge ], [ 0, %for.inc.if.end30_crit_edge ]
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 36, ptr noundef nonnull @.str.240, i32 noundef %scsi_id.0, i32 noundef %logical_drv.0, i32 noundef %ldid_map.0, i32 noundef %app_hndl.0)
  ret i32 %call31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_sysfs_get_ldmap_done(ptr nocapture noundef %uioc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_vaddr = getelementptr inbounds %struct.uioc, ptr %uioc, i32 0, i32 18
  %0 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_vaddr, align 4
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_device, align 4
  %status = getelementptr inbounds %struct.uioc, ptr %uioc, i32 0, i32 8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %sysfs_wait_q = getelementptr inbounds %struct.mraid_device_t, ptr %3, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %sysfs_wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @megaraid_sysfs_get_ldmap_timeout(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uioc1 = getelementptr inbounds %struct.uioc_timeout, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %uioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uioc1, align 4
  %buf_vaddr = getelementptr inbounds %struct.uioc, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_vaddr, align 4
  %raid_device = getelementptr inbounds %struct.adapter_t, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %raid_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raid_device, align 4
  %status = getelementptr inbounds %struct.uioc, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -62, ptr %status, align 4
  %sysfs_wait_q = getelementptr inbounds %struct.mraid_device_t, ptr %5, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %sysfs_wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mraid_mm_unregister_adp(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !48, !49, !50, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !446, !448, !449, !451, !453, !454, !456, !458, !459, !461, !463, !464, !466, !467, !468, !469, !471, !473, !474, !476, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !491, !492, !494, !495, !496, !498, !499, !500, !501, !503, !504, !505, !507, !508, !509, !510, !512, !514, !515, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !529, !530, !531, !533, !534, !535, !537, !538}
!llvm.module.flags = !{!539, !540, !541, !542, !543, !544, !545, !546}
!llvm.ident = !{!547}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 137, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 138, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 139, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 140, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_unconf_disks, !14, !"__param_unconf_disks", i1 false, i1 false}
!14 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 150, i32 1}
!15 = !{ptr @__UNIQUE_ID_unconf_diskstype292, !14, !"__UNIQUE_ID_unconf_diskstype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_unconf_disks293, !17, !"__UNIQUE_ID_unconf_disks293", i1 false, i1 false}
!17 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 151, i32 1}
!18 = !{ptr @__param_busy_wait, !19, !"__param_busy_wait", i1 false, i1 false}
!19 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 158, i32 1}
!20 = !{ptr @__UNIQUE_ID_busy_waittype294, !19, !"__UNIQUE_ID_busy_waittype294", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_busy_wait295, !22, !"__UNIQUE_ID_busy_wait295", i1 false, i1 false}
!22 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 159, i32 1}
!23 = !{ptr @__param_max_sectors, !24, !"__param_max_sectors", i1 false, i1 false}
!24 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 166, i32 1}
!25 = !{ptr @__UNIQUE_ID_max_sectorstype296, !24, !"__UNIQUE_ID_max_sectorstype296", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_max_sectors297, !27, !"__UNIQUE_ID_max_sectors297", i1 false, i1 false}
!27 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 167, i32 1}
!28 = !{ptr @__param_cmd_per_lun, !29, !"__param_cmd_per_lun", i1 false, i1 false}
!29 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 174, i32 1}
!30 = !{ptr @__UNIQUE_ID_cmd_per_luntype298, !29, !"__UNIQUE_ID_cmd_per_luntype298", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_cmd_per_lun299, !32, !"__UNIQUE_ID_cmd_per_lun299", i1 false, i1 false}
!32 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 175, i32 1}
!33 = !{ptr @__param_fast_load, !34, !"__param_fast_load", i1 false, i1 false}
!34 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 185, i32 1}
!35 = !{ptr @__UNIQUE_ID_fast_loadtype300, !34, !"__UNIQUE_ID_fast_loadtype300", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_fast_load301, !37, !"__UNIQUE_ID_fast_load301", i1 false, i1 false}
!37 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 186, i32 1}
!38 = !{ptr @mraid_debug_level, !39, !"mraid_debug_level", i1 false, i1 false}
!39 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 195, i32 5}
!40 = !{ptr @__param_debug_level, !41, !"__param_debug_level", i1 false, i1 false}
!41 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 196, i32 1}
!42 = !{ptr @__UNIQUE_ID_debug_leveltype302, !41, !"__UNIQUE_ID_debug_leveltype302", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_debug_level303, !44, !"__UNIQUE_ID_debug_level303", i1 false, i1 false}
!44 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 197, i32 1}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 387, i32 2}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @megaraid_exit._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @megaraid_exit._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__initcall__kmod_megaraid_mbox__304_4059_megaraid_init6, !52, !"__initcall__kmod_megaraid_mbox__304_4059_megaraid_init6", i1 false, i1 false}
!52 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 4059, i32 1}
!53 = !{ptr @__exitcall_megaraid_exit, !54, !"__exitcall_megaraid_exit", i1 false, i1 false}
!54 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 4060, i32 1}
!55 = !{ptr @__param_str_unconf_disks, !14, !"__param_str_unconf_disks", i1 false, i1 false}
!56 = !{ptr @megaraid_expose_unconf_disks, !57, !"megaraid_expose_unconf_disks", i1 false, i1 false}
!57 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 149, i32 12}
!58 = !{ptr @__param_str_busy_wait, !19, !"__param_str_busy_wait", i1 false, i1 false}
!59 = !{ptr @max_mbox_busy_wait, !60, !"max_mbox_busy_wait", i1 false, i1 false}
!60 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 157, i32 21}
!61 = !{ptr @__param_str_max_sectors, !24, !"__param_str_max_sectors", i1 false, i1 false}
!62 = !{ptr @megaraid_max_sectors, !63, !"megaraid_max_sectors", i1 false, i1 false}
!63 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 165, i32 21}
!64 = !{ptr @__param_str_cmd_per_lun, !29, !"__param_str_cmd_per_lun", i1 false, i1 false}
!65 = !{ptr @megaraid_cmd_per_lun, !66, !"megaraid_cmd_per_lun", i1 false, i1 false}
!66 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 173, i32 21}
!67 = !{ptr @__param_str_fast_load, !34, !"__param_str_fast_load", i1 false, i1 false}
!68 = !{ptr @megaraid_fast_load, !69, !"megaraid_fast_load", i1 false, i1 false}
!69 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 184, i32 21}
!70 = !{ptr @__param_str_debug_level, !41, !"__param_str_debug_level", i1 false, i1 false}
!71 = !{ptr @.str.6, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 293, i32 11}
!73 = !{ptr @megaraid_pci_driver, !74, !"megaraid_pci_driver", i1 false, i1 false}
!74 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 292, i32 26}
!75 = !{ptr @pci_id_table_g, !76, !"pci_id_table_g", i1 false, i1 false}
!76 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 202, i32 29}
!77 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 411, i32 2}
!79 = !{ptr @.str.8, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @megaraid_probe_one._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @megaraid_probe_one._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 416, i32 2}
!84 = !{ptr @megaraid_probe_one._entry.9, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @megaraid_probe_one._entry_ptr.11, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.13, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 420, i32 3}
!88 = !{ptr @megaraid_probe_one._entry.12, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @megaraid_probe_one._entry_ptr.14, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 433, i32 3}
!92 = !{ptr @megaraid_probe_one._entry.15, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @megaraid_probe_one._entry_ptr.17, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 450, i32 3}
!96 = !{ptr @megaraid_probe_one._entry.18, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @megaraid_probe_one._entry_ptr.20, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @megaraid_probe_one.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 458, i32 2}
!100 = !{ptr @.str.21, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @megaraid_probe_one.__key.22, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 463, i32 2}
!103 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @megaraid_probe_one.__key.24, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 466, i32 2}
!106 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @megaraid_probe_one.__key.26, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 469, i32 2}
!109 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 474, i32 3}
!112 = !{ptr @megaraid_probe_one._entry.28, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @megaraid_probe_one._entry_ptr.30, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 483, i32 3}
!116 = !{ptr @megaraid_probe_one._entry.31, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @megaraid_probe_one._entry_ptr.33, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 495, i32 3}
!120 = !{ptr @megaraid_probe_one._entry.34, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @megaraid_probe_one._entry_ptr.36, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 728, i32 32}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 730, i32 3}
!126 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @megaraid_init_mbox._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @megaraid_init_mbox._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 740, i32 3}
!131 = !{ptr @megaraid_init_mbox._entry.40, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @megaraid_init_mbox._entry_ptr.42, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @megaraid_init_mbox.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 747, i32 2}
!135 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 759, i32 3}
!138 = !{ptr @megaraid_init_mbox._entry.44, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @megaraid_init_mbox._entry_ptr.46, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 770, i32 3}
!142 = !{ptr @megaraid_init_mbox._entry.47, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @megaraid_init_mbox._entry_ptr.49, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 870, i32 4}
!146 = !{ptr @megaraid_init_mbox._entry.50, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @megaraid_init_mbox._entry_ptr.52, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 875, i32 5}
!150 = !{ptr @megaraid_init_mbox._entry.53, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @megaraid_init_mbox._entry_ptr.55, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 886, i32 2}
!154 = !{ptr @megaraid_init_mbox._entry.56, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @megaraid_init_mbox._entry_ptr.58, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 973, i32 3}
!158 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @megaraid_alloc_cmd_packets._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @megaraid_alloc_cmd_packets._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @megaraid_alloc_cmd_packets._entry.61, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1000, i32 3}
!163 = !{ptr @megaraid_alloc_cmd_packets._entry_ptr.62, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @megaraid_alloc_cmd_packets._entry.63, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1021, i32 3}
!166 = !{ptr @megaraid_alloc_cmd_packets._entry_ptr.64, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @megaraid_alloc_cmd_packets._entry.65, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1029, i32 3}
!169 = !{ptr @megaraid_alloc_cmd_packets._entry_ptr.66, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1051, i32 4}
!172 = !{ptr @megaraid_alloc_cmd_packets._entry.67, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @megaraid_alloc_cmd_packets._entry_ptr.69, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1144, i32 47}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1172, i32 49}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1193, i32 45}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3290, i32 2}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @megaraid_mbox_fire_sync_cmd._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @megaraid_mbox_fire_sync_cmd._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2089, i32 5}
!187 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @megaraid_ack_sequence._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @megaraid_ack_sequence._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2892, i32 3}
!192 = !{ptr @megaraid_mbox_product_info._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @megaraid_mbox_product_info._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2909, i32 3}
!196 = !{ptr @megaraid_mbox_product_info._entry.78, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @megaraid_mbox_product_info._entry_ptr.80, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2939, i32 3}
!200 = !{ptr @megaraid_mbox_product_info._entry.81, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @megaraid_mbox_product_info._entry_ptr.83, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2974, i32 2}
!204 = !{ptr @megaraid_mbox_product_info._entry.84, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @megaraid_mbox_product_info._entry_ptr.86, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2708, i32 4}
!208 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mbox_post_sync_cmd._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @mbox_post_sync_cmd._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2714, i32 5}
!213 = !{ptr @mbox_post_sync_cmd._entry.89, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @mbox_post_sync_cmd._entry_ptr.91, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2721, i32 5}
!217 = !{ptr @mbox_post_sync_cmd._entry.92, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @mbox_post_sync_cmd._entry_ptr.94, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2726, i32 4}
!221 = !{ptr @mbox_post_sync_cmd._entry.95, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @mbox_post_sync_cmd._entry_ptr.97, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2740, i32 4}
!225 = !{ptr @mbox_post_sync_cmd._entry.98, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @mbox_post_sync_cmd._entry_ptr.100, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2759, i32 4}
!229 = !{ptr @mbox_post_sync_cmd._entry.101, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @mbox_post_sync_cmd._entry_ptr.103, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @mbox_post_sync_cmd._entry.104, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2781, i32 2}
!233 = !{ptr @mbox_post_sync_cmd._entry_ptr.105, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3054, i32 3}
!236 = !{ptr @.str.107, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @megaraid_mbox_support_ha._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @megaraid_mbox_support_ha._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3092, i32 3}
!241 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @megaraid_mbox_support_random_del._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @megaraid_mbox_support_random_del._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3105, i32 3}
!246 = !{ptr @megaraid_mbox_support_random_del._entry.110, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @megaraid_mbox_support_random_del._entry_ptr.112, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3773, i32 3}
!250 = !{ptr @megaraid_sysfs_alloc_resources._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @megaraid_sysfs_alloc_resources._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @megaraid_sysfs_alloc_resources.__key, !253, !"__key", i1 false, i1 false}
!253 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3782, i32 2}
!254 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @megaraid_sysfs_alloc_resources.__key.115, !256, !"__key", i1 false, i1 false}
!256 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3784, i32 2}
!257 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2216, i32 4}
!260 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @megaraid_mbox_dpc._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @megaraid_mbox_dpc._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2241, i32 4}
!265 = !{ptr @megaraid_mbox_dpc._entry.119, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @megaraid_mbox_dpc._entry_ptr.121, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2262, i32 5}
!269 = !{ptr @megaraid_mbox_dpc._entry.122, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @megaraid_mbox_dpc._entry_ptr.124, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3318, i32 2}
!273 = !{ptr @.str.126, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @megaraid_mbox_display_scb._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @megaraid_mbox_display_scb._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3322, i32 2}
!278 = !{ptr @megaraid_mbox_display_scb._entry.127, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @megaraid_mbox_display_scb._entry_ptr.129, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.131, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3328, i32 2}
!282 = !{ptr @megaraid_mbox_display_scb._entry.130, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @megaraid_mbox_display_scb._entry_ptr.132, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3331, i32 3}
!286 = !{ptr @megaraid_mbox_display_scb._entry.133, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @megaraid_mbox_display_scb._entry_ptr.135, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3334, i32 2}
!290 = !{ptr @megaraid_mbox_display_scb._entry.136, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @megaraid_mbox_display_scb._entry_ptr.138, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3406, i32 3}
!294 = !{ptr @megaraid_cmm_register._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @megaraid_cmm_register._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @megaraid_cmm_register.__key, !297, !"__key", i1 false, i1 false}
!297 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3417, i32 2}
!298 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.142, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3462, i32 3}
!301 = !{ptr @megaraid_cmm_register._entry.141, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @megaraid_cmm_register._entry_ptr.143, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.144, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3505, i32 3}
!305 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @megaraid_mbox_mm_handler._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @megaraid_mbox_mm_handler._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3515, i32 3}
!310 = !{ptr @megaraid_mbox_mm_handler._entry.146, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @megaraid_mbox_mm_handler._entry_ptr.148, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3566, i32 3}
!314 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @megaraid_mbox_mm_command._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @megaraid_mbox_mm_command._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.152, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3598, i32 4}
!319 = !{ptr @megaraid_mbox_mm_command._entry.151, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @megaraid_mbox_mm_command._entry_ptr.153, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.155, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3615, i32 4}
!323 = !{ptr @megaraid_mbox_mm_command._entry.154, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @megaraid_mbox_mm_command._entry_ptr.156, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.157, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3656, i32 3}
!327 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @wait_till_fw_empty._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @wait_till_fw_empty._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.159, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 623, i32 3}
!332 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @megaraid_io_attach._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @megaraid_io_attach._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.162, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 647, i32 3}
!337 = !{ptr @megaraid_io_attach._entry.161, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @megaraid_io_attach._entry_ptr.163, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.164, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 330, i32 13}
!341 = !{ptr @megaraid_template_g, !342, !"megaraid_template_g", i1 false, i1 false}
!342 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 328, i32 34}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1550, i32 5}
!345 = !{ptr @megaraid_mbox_build_cmd._entry, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @megaraid_mbox_build_cmd._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1565, i32 5}
!349 = !{ptr @megaraid_mbox_build_cmd._entry.166, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.168, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.170, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1570, i32 5}
!353 = !{ptr @megaraid_mbox_build_cmd._entry.169, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.171, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.173, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1708, i32 5}
!357 = !{ptr @megaraid_mbox_build_cmd._entry.172, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.174, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.176, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1778, i32 4}
!361 = !{ptr @megaraid_mbox_build_cmd._entry.175, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.177, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.179, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1791, i32 4}
!365 = !{ptr @megaraid_mbox_build_cmd._entry.178, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.180, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 1796, i32 4}
!369 = !{ptr @megaraid_mbox_build_cmd._entry.181, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @megaraid_mbox_build_cmd._entry_ptr.183, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2391, i32 2}
!373 = !{ptr @.str.185, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @megaraid_abort_handler._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @megaraid_abort_handler._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.187, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2398, i32 3}
!378 = !{ptr @megaraid_abort_handler._entry.186, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @megaraid_abort_handler._entry_ptr.188, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.190, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2415, i32 4}
!382 = !{ptr @megaraid_abort_handler._entry.189, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @megaraid_abort_handler._entry_ptr.191, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.193, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2445, i32 4}
!386 = !{ptr @megaraid_abort_handler._entry.192, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @megaraid_abort_handler._entry_ptr.194, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.196, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2477, i32 5}
!390 = !{ptr @megaraid_abort_handler._entry.195, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @megaraid_abort_handler._entry_ptr.197, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.199, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2483, i32 5}
!394 = !{ptr @megaraid_abort_handler._entry.198, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @megaraid_abort_handler._entry_ptr.200, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.202, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2492, i32 3}
!398 = !{ptr @megaraid_abort_handler._entry.201, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @megaraid_abort_handler._entry_ptr.203, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.204, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2533, i32 3}
!402 = !{ptr @.str.205, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @megaraid_reset_handler._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @megaraid_reset_handler._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.207, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2548, i32 4}
!407 = !{ptr @megaraid_reset_handler._entry.206, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @megaraid_reset_handler._entry_ptr.208, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.210, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2560, i32 5}
!411 = !{ptr @megaraid_reset_handler._entry.209, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @megaraid_reset_handler._entry_ptr.211, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.213, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2564, i32 5}
!415 = !{ptr @megaraid_reset_handler._entry.212, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @megaraid_reset_handler._entry_ptr.214, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.216, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2578, i32 3}
!419 = !{ptr @megaraid_reset_handler._entry.215, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @megaraid_reset_handler._entry_ptr.217, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.219, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2592, i32 4}
!423 = !{ptr @megaraid_reset_handler._entry.218, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @megaraid_reset_handler._entry_ptr.220, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.222, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2610, i32 3}
!427 = !{ptr @megaraid_reset_handler._entry.221, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @megaraid_reset_handler._entry_ptr.223, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.225, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2619, i32 3}
!431 = !{ptr @megaraid_reset_handler._entry.224, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @megaraid_reset_handler._entry_ptr.226, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.228, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2636, i32 3}
!435 = !{ptr @megaraid_reset_handler._entry.227, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @megaraid_reset_handler._entry_ptr.229, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.231, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2641, i32 3}
!439 = !{ptr @megaraid_reset_handler._entry.230, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @megaraid_reset_handler._entry_ptr.232, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.233, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 2828, i32 3}
!443 = !{ptr @.str.234, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @mbox_post_sync_cmd_fast._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @mbox_post_sync_cmd_fast._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @megaraid_shost_groups, !447, !"megaraid_shost_groups", i1 false, i1 false}
!447 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 313, i32 1}
!448 = !{ptr @megaraid_shost_group, !447, !"megaraid_shost_group", i1 false, i1 false}
!449 = !{ptr @megaraid_shost_attrs, !450, !"megaraid_shost_attrs", i1 false, i1 false}
!450 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 308, i32 26}
!451 = !{ptr @.str.235, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 305, i32 8}
!453 = !{ptr @dev_attr_megaraid_mbox_app_hndl, !452, !"dev_attr_megaraid_mbox_app_hndl", i1 false, i1 false}
!454 = !{ptr @.str.236, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3982, i32 26}
!456 = !{ptr @megaraid_sdev_groups, !457, !"megaraid_sdev_groups", i1 false, i1 false}
!457 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 323, i32 1}
!458 = !{ptr @megaraid_sdev_group, !457, !"megaraid_sdev_group", i1 false, i1 false}
!459 = !{ptr @megaraid_sdev_attrs, !460, !"megaraid_sdev_attrs", i1 false, i1 false}
!460 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 318, i32 26}
!461 = !{ptr @.str.237, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 315, i32 8}
!463 = !{ptr @dev_attr_megaraid_mbox_ld, !462, !"dev_attr_megaraid_mbox_ld", i1 false, i1 false}
!464 = !{ptr @.str.238, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 4045, i32 4}
!466 = !{ptr @.str.239, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @megaraid_mbox_ld_show._entry, !465, !"_entry", i1 false, i1 false}
!468 = !{ptr @megaraid_mbox_ld_show._entry_ptr, !465, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.240, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 4051, i32 27}
!471 = !{ptr @megaraid_sysfs_get_ldmap.__key, !472, !"__key", i1 false, i1 false}
!472 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3912, i32 2}
!473 = !{ptr @.str.241, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @.str.242, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3930, i32 4}
!476 = !{ptr @.str.243, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @megaraid_sysfs_get_ldmap._entry, !475, !"_entry", i1 false, i1 false}
!478 = !{ptr @megaraid_sysfs_get_ldmap._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.245, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3944, i32 4}
!481 = !{ptr @megaraid_sysfs_get_ldmap._entry.244, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @megaraid_sysfs_get_ldmap._entry_ptr.246, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.248, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3949, i32 3}
!485 = !{ptr @megaraid_sysfs_get_ldmap._entry.247, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @megaraid_sysfs_get_ldmap._entry_ptr.249, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.250, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3207, i32 3}
!489 = !{ptr @.str.251, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @megaraid_mbox_flush_cache._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @megaraid_mbox_flush_cache._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.253, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 3213, i32 3}
!494 = !{ptr @megaraid_mbox_flush_cache._entry.252, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @megaraid_mbox_flush_cache._entry_ptr.254, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.255, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 536, i32 3}
!498 = !{ptr @.str.256, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @megaraid_detach_one._entry, !497, !"_entry", i1 false, i1 false}
!500 = !{ptr @megaraid_detach_one._entry_ptr, !497, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.258, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 544, i32 3}
!503 = !{ptr @megaraid_detach_one._entry.257, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @megaraid_detach_one._entry_ptr.259, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.260, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 672, i32 2}
!507 = !{ptr @.str.261, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @megaraid_io_detach._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @megaraid_io_detach._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @megaraid_mbox_shutdown.counter, !511, !"counter", i1 false, i1 false}
!511 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 591, i32 14}
!512 = !{ptr @.str.262, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 594, i32 3}
!514 = !{ptr @.str.263, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @megaraid_mbox_shutdown._entry, !513, !"_entry", i1 false, i1 false}
!516 = !{ptr @megaraid_mbox_shutdown._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.265, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 600, i32 2}
!519 = !{ptr @megaraid_mbox_shutdown._entry.264, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @megaraid_mbox_shutdown._entry_ptr.266, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.268, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 605, i32 2}
!523 = !{ptr @megaraid_mbox_shutdown._entry.267, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @megaraid_mbox_shutdown._entry_ptr.269, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.270, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 354, i32 2}
!527 = !{ptr @.str.271, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @megaraid_init._entry, !526, !"_entry", i1 false, i1 false}
!529 = !{ptr @megaraid_init._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.272, !526, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @.str.274, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 360, i32 3}
!533 = !{ptr @megaraid_init._entry.273, !532, !"_entry", i1 false, i1 false}
!534 = !{ptr @megaraid_init._entry_ptr.275, !532, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @.str.277, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/scsi/megaraid/megaraid_mbox.c", i32 371, i32 3}
!537 = !{ptr @megaraid_init._entry.276, !536, !"_entry", i1 false, i1 false}
!538 = !{ptr @megaraid_init._entry_ptr.278, !536, !"_entry_ptr", i1 false, i1 false}
!539 = !{i32 1, !"wchar_size", i32 2}
!540 = !{i32 1, !"min_enum_size", i32 4}
!541 = !{i32 8, !"branch-target-enforcement", i32 0}
!542 = !{i32 8, !"sign-return-address", i32 0}
!543 = !{i32 8, !"sign-return-address-all", i32 0}
!544 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!545 = !{i32 7, !"uwtable", i32 1}
!546 = !{i32 7, !"frame-pointer", i32 2}
!547 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!548 = !{!"auto-init"}
!549 = !{i64 2155354257}
!550 = !{i64 2155354577}
!551 = !{i64 5486722}
!552 = !{i64 2155354918}
!553 = !{i64 5487140}
!554 = !{i64 2155355492}
!555 = !{i64 2155355774}
!556 = !{i64 2155356241}
!557 = !{i64 2155267253, i64 2155267756, i64 2155267290, i64 2155267346, i64 2155267380, i64 2155267404, i64 2155267445, i64 2155267466, i64 2155267494, i64 2155267528}
!558 = !{!"branch_weights", i32 2000, i32 1}
!559 = !{i64 2154470972, i64 2154471464, i64 2154471009, i64 2154471065, i64 2154471099, i64 2154471123, i64 2154471164, i64 2154471185, i64 2154471213, i64 2154471247}
!560 = !{i64 2155251111}
!561 = !{i64 2155251403}
!562 = !{i64 2155251702}
!563 = !{i64 2155251793}
!564 = !{i64 2155257740, i64 2155258243, i64 2155257777, i64 2155257833, i64 2155257867, i64 2155257891, i64 2155257932, i64 2155257953, i64 2155257981, i64 2155258015}
!565 = !{i64 2155259291}
!566 = !{!"branch_weights", i32 1, i32 2000}
!567 = !{i64 2155246453, i64 2155246956, i64 2155246490, i64 2155246546, i64 2155246580, i64 2155246604, i64 2155246645, i64 2155246666, i64 2155246694, i64 2155246728}
!568 = !{i64 2155230709}
!569 = !{i64 2155230890}
!570 = !{i64 2155231210}
!571 = !{i64 2155319705}
!572 = !{i64 2155320025}
!573 = !{i64 2155320908}
!574 = !{i64 2155322659}
!575 = !{i64 2155327626}
!576 = !{i64 2155329637}
!577 = !{i64 2155330035}
!578 = !{i64 2155330609}
!579 = !{i64 2155331725}
!580 = !{i64 2155331816}
!581 = !{i64 2155228085, i64 2155228588, i64 2155228122, i64 2155228178, i64 2155228212, i64 2155228236, i64 2155228277, i64 2155228298, i64 2155228326, i64 2155228360}
!582 = !{i64 2155292178, i64 2155292681, i64 2155292215, i64 2155292271, i64 2155292305, i64 2155292329, i64 2155292370, i64 2155292391, i64 2155292419, i64 2155292453}
!583 = !{i64 2155335202}
!584 = !{i64 2155335522}
!585 = !{i64 2155335870}
!586 = !{i64 2155338377}
!587 = !{i64 2155338775}
