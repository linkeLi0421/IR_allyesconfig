; ModuleID = '/llk/IR_all_yes/drivers/pci/hotplug/shpchp_core.c_pt.bc'
source_filename = "../drivers/pci/hotplug/shpchp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.controller = type { %struct.mutex, %struct.mutex, i32, i32, ptr, %struct.list_head, ptr, %struct.wait_queue_head, i8, i32, i32, i32, i32, i32, ptr, %struct.timer_list }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.slot = type { i8, i8, i16, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.hotplug_slot, %struct.list_head, %struct.delayed_work, %struct.mutex, ptr, i8 }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.hpc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author236 = internal constant [113 x i8] c"shpchp.author=Dan Zink <dan.zink@compaq.com>, Greg Kroah-Hartman <greg@kroah.com>, Dely Sy <dely.l.sy@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [59 x i8] c"shpchp.description=Standard Hot Plug PCI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [39 x i8] c"shpchp.file=drivers/pci/hotplug/shpchp\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [19 x i8] c"shpchp.license=GPL\00", section ".modinfo", align 1
@__param_str_shpchp_debug = internal constant [20 x i8] c"shpchp.shpchp_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@shpchp_debug = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shpchp_debug = internal constant %struct.kernel_param { ptr @__param_str_shpchp_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @shpchp_debug } }, section "__param", align 4
@__UNIQUE_ID_shpchp_debugtype240 = internal constant [34 x i8] c"shpchp.parmtype=shpchp_debug:bool\00", section ".modinfo", align 1
@__param_str_shpchp_poll_mode = internal constant [24 x i8] c"shpchp.shpchp_poll_mode\00", align 1
@shpchp_poll_mode = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shpchp_poll_mode = internal constant %struct.kernel_param { ptr @__param_str_shpchp_poll_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @shpchp_poll_mode } }, section "__param", align 4
@__UNIQUE_ID_shpchp_poll_modetype241 = internal constant [38 x i8] c"shpchp.parmtype=shpchp_poll_mode:bool\00", section ".modinfo", align 1
@__param_str_shpchp_poll_time = internal constant [24 x i8] c"shpchp.shpchp_poll_time\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@shpchp_poll_time = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shpchp_poll_time = internal constant %struct.kernel_param { ptr @__param_str_shpchp_poll_time, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @shpchp_poll_time } }, section "__param", align 4
@__UNIQUE_ID_shpchp_poll_timetype242 = internal constant [37 x i8] c"shpchp.parmtype=shpchp_poll_time:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shpchp_debug243 = internal constant [55 x i8] c"shpchp.parm=shpchp_debug:Debugging mode enabled or not\00", section ".modinfo", align 1
@__UNIQUE_ID_shpchp_poll_mode244 = internal constant [80 x i8] c"shpchp.parm=shpchp_poll_mode:Using polling mechanism for hot-plug events or not\00", section ".modinfo", align 1
@__UNIQUE_ID_shpchp_poll_time245 = internal constant [69 x i8] c"shpchp.parm=shpchp_poll_time:Polling mechanism frequency, in seconds\00", section ".modinfo", align 1
@shpcd_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: unload_shpchpd()\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shpcd_cleanup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pci/hotplug/shpchp_core.c\00", [62 x i8] zeroinitializer }, align 32
@shpcd_cleanup._entry_ptr = internal global ptr @shpcd_cleanup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shpchp\00", [25 x i8] zeroinitializer }, align 32
@shpc_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @shpcd_pci_tbl, ptr @shpc_probe, ptr @shpc_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@shpcd_cleanup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: Standard Hot Plug PCI Controller Driver version: 0.4 unloaded\0A\00", [59 x i8] zeroinitializer }, align 32
@shpcd_cleanup._entry_ptr.6 = internal global ptr @shpcd_cleanup._entry.4, section ".printk_index", align 4
@__initcall__kmod_shpchp__246_345_shpcd_init6 = internal global ptr @shpcd_init, section ".initcall6.init", align 4
@__exitcall_shpcd_cleanup = internal global ptr @shpcd_cleanup, section ".exitcall.exit", align 4
@shpcd_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394240, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@shpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 274, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Controller initialization failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shpc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shpc_probe._entry_ptr = internal global ptr @shpc_probe._entry, section ".printk_index", align 4
@shpc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 283, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Slot initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@shpc_probe._entry_ptr.14 = internal global ptr @shpc_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shpchp-%d\00", [22 x i8] zeroinitializer }, align 32
@init_slots.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&slot->lock\00", [20 x i8] zeroinitializer }, align 32
@init_slots.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&slot->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@init_slots.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&slot->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@shpchp_hotplug_slot_ops = internal constant { %struct.hotplug_slot_ops, [60 x i8] } { %struct.hotplug_slot_ops { ptr @enable_slot, ptr @disable_slot, ptr @set_attention_status, ptr null, ptr @get_power_status, ptr @get_attention_status, ptr @get_latch_status, ptr @get_adapter_status, ptr null }, [60 x i8] zeroinitializer }, align 32
@init_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 104, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Registering domain:bus:dev=%04x:%02x:%02x hp_slot=%x sun=%x slot_device_offset=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_slots\00", [21 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr = internal global ptr @init_slots._entry, section ".printk_index", align 4
@init_slots._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 109, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pci_hp_register failed with error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@init_slots._entry_ptr.26 = internal global ptr @init_slots._entry.24, section ".printk_index", align 4
@enable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 164, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: physical_slot = %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_slot\00", [20 x i8] zeroinitializer }, align 32
@enable_slot._entry_ptr = internal global ptr @enable_slot._entry, section ".printk_index", align 4
@disable_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 174, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_slot\00", [19 x i8] zeroinitializer }, align 32
@disable_slot._entry_ptr = internal global ptr @disable_slot._entry, section ".printk_index", align 4
@set_attention_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.30, ptr @.str.2, i32 151, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_attention_status\00", [43 x i8] zeroinitializer }, align 32
@set_attention_status._entry_ptr = internal global ptr @set_attention_status._entry, section ".printk_index", align 4
@get_power_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.31, ptr @.str.2, i32 185, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_power_status\00", [47 x i8] zeroinitializer }, align 32
@get_power_status._entry_ptr = internal global ptr @get_power_status._entry, section ".printk_index", align 4
@get_attention_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.32, ptr @.str.2, i32 200, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_attention_status\00", [43 x i8] zeroinitializer }, align 32
@get_attention_status._entry_ptr = internal global ptr @get_attention_status._entry, section ".printk_index", align 4
@get_latch_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.33, ptr @.str.2, i32 215, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_latch_status\00", [47 x i8] zeroinitializer }, align 32
@get_latch_status._entry_ptr = internal global ptr @get_latch_status._entry, section ".printk_index", align 4
@get_adapter_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.34, ptr @.str.2, i32 230, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_adapter_status\00", [45 x i8] zeroinitializer }, align 32
@get_adapter_status._entry_ptr = internal global ptr @get_adapter_status._entry, section ".printk_index", align 4
@shpcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: pci_register_driver = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shpcd_init\00", [21 x i8] zeroinitializer }, align 32
@shpcd_init._entry_ptr = internal global ptr @shpcd_init._entry, section ".printk_index", align 4
@shpcd_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: Standard Hot Plug PCI Controller Driver version: 0.4\0A\00", [36 x i8] zeroinitializer }, align 32
@shpcd_init._entry_ptr.39 = internal global ptr @shpcd_init._entry.37, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"shpchp_debug\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 25, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"shpchp_poll_mode\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 26, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"shpchp_poll_time\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 27, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 340, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"shpc_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 320, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 342, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"shpcd_pci_tbl\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 314, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 274, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 283, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 88, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 94, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 95, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 98, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"shpchp_hotplug_slot_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 54, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 101, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 108, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 163, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 173, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 150, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 184, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 199, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 214, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 229, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 332, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [37 x i8] c"../drivers/pci/hotplug/shpchp_core.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 333, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_shpchp_debug243, ptr @__UNIQUE_ID_shpchp_debugtype240, ptr @__UNIQUE_ID_shpchp_poll_mode244, ptr @__UNIQUE_ID_shpchp_poll_modetype241, ptr @__UNIQUE_ID_shpchp_poll_time245, ptr @__UNIQUE_ID_shpchp_poll_timetype242, ptr @__exitcall_shpcd_cleanup, ptr @__initcall__kmod_shpchp__246_345_shpcd_init6, ptr @__param_shpchp_debug, ptr @__param_shpchp_poll_mode, ptr @__param_shpchp_poll_time, ptr @disable_slot._entry, ptr @disable_slot._entry_ptr, ptr @enable_slot._entry, ptr @enable_slot._entry_ptr, ptr @get_adapter_status._entry, ptr @get_adapter_status._entry_ptr, ptr @get_attention_status._entry, ptr @get_attention_status._entry_ptr, ptr @get_latch_status._entry, ptr @get_latch_status._entry_ptr, ptr @get_power_status._entry, ptr @get_power_status._entry_ptr, ptr @init_slots._entry, ptr @init_slots._entry.24, ptr @init_slots._entry_ptr, ptr @init_slots._entry_ptr.26, ptr @set_attention_status._entry, ptr @set_attention_status._entry_ptr, ptr @shpc_probe._entry, ptr @shpc_probe._entry.11, ptr @shpc_probe._entry_ptr, ptr @shpc_probe._entry_ptr.14, ptr @shpcd_cleanup, ptr @shpcd_cleanup._entry, ptr @shpcd_cleanup._entry.4, ptr @shpcd_cleanup._entry_ptr, ptr @shpcd_cleanup._entry_ptr.6, ptr @shpcd_init._entry, ptr @shpcd_init._entry.37, ptr @shpcd_init._entry_ptr, ptr @shpcd_init._entry_ptr.39, ptr @shpchp_debug, ptr @shpchp_poll_mode, ptr @shpchp_poll_time, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @shpc_driver, ptr @.str.5, ptr @shpcd_pci_tbl, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @init_slots.__key, ptr @.str.16, ptr @init_slots.__key.17, ptr @.str.18, ptr @init_slots.__key.19, ptr @.str.20, ptr @.str.21, ptr @shpchp_hotplug_slot_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_poll_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_poll_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpcd_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpcd_cleanup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpcd_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpchp_hotplug_slot_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slots._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_attention_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_power_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_attention_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_latch_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_adapter_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shpcd_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_slots(ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_list = getelementptr inbounds %struct.controller, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %slot_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot_list, align 4
  %cmp.not24 = icmp eq ptr %1, %slot_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %slot.0 = getelementptr i8, ptr %.pn.in25, i32 -48
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %work = getelementptr i8, ptr %.pn.in25, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #7
  %wq = getelementptr i8, ptr %.pn.in25, i32 200
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #7
  %hotplug_slot = getelementptr i8, ptr %.pn.in25, i32 -24
  tail call void @pci_hp_deregister(ptr noundef %hotplug_slot) #7
  tail call void @kfree(ptr noundef %slot.0) #7
  %cmp.not = icmp eq ptr %.pn, %slot_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_hp_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shpcd_cleanup() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @shpc_driver) #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @shpcd_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @shpc_driver, ptr noundef null, ptr noundef nonnull @.str.3) #7
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, i32 noundef %call) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shpc_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %name.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %1)
  %cmp.i = icmp eq i16 %1, 4130
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.shpc_capable.exit_crit_edge

entry.shpc_capable.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %shpc_capable.exit

land.lhs.true.i:                                  ; preds = %entry
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29776, i16 %3)
  %cmp3.i = icmp eq i16 %3, 29776
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.shpc_capable.exit_crit_edge

land.lhs.true.i.shpc_capable.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %shpc_capable.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

shpc_capable.exit:                                ; preds = %land.lhs.true.i.shpc_capable.exit_crit_edge, %entry.shpc_capable.exit_crit_edge
  %call.i = tail call zeroext i8 @pci_find_capability(ptr noundef %pdev, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i.not, label %shpc_capable.exit.cleanup_crit_edge, label %shpc_capable.exit.if.end_crit_edge

shpc_capable.exit.if.end_crit_edge:               ; preds = %shpc_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

shpc_capable.exit.cleanup_crit_edge:              ; preds = %shpc_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %shpc_capable.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 336) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %slot_list = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %slot_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %slot_list, ptr %slot_list, align 4
  %prev.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slot_list, ptr %prev.i, align 8
  %call8 = tail call i32 @shpc_init(ptr noundef nonnull %call7.i.i, ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end7
  %7 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %do.body.err_out_free_ctrl_crit_edge, label %do.end

do.body.err_out_free_ctrl_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free_ctrl

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %pci_dev = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %err_out_free_ctrl

if.end17:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name.i) #7
  %num_slots.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %name.i, i32 255, i32 10)
  %12 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp180.i = icmp sgt i32 %13, 0
  br i1 %cmp180.i, label %for.body.lr.ph.i, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.body.lr.ph.i:                                 ; preds = %if.end17
  %pci_dev.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 4
  %slot_device_offset.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 8
  %hpc_ops.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 6
  %first_slot.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 10
  %slot_num_inc.i = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0181.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 256) #11
  %tobool.not.i49 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i49, label %for.body.i.do.end23_crit_edge, label %if.end.i51

for.body.i.do.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i51:                                       ; preds = %for.body.i
  %hotplug_slot2.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 12
  %conv.i = trunc i32 %i.0181.i to i8
  %hp_slot.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %hp_slot.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %hp_slot.i, align 4
  %ctrl3.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %ctrl3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %ctrl3.i, align 8
  %17 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev.i, align 8
  %subordinate.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %subordinate.i, align 4
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %number.i, align 4
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %call7.i.i.i, align 8
  %24 = ptrtoint ptr %slot_device_offset.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %slot_device_offset.i, align 4
  %conv5.i = add i8 %25, %conv.i
  %device.i50 = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %device.i50 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5.i, ptr %device.i50, align 1
  %27 = ptrtoint ptr %hpc_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hpc_ops.i, align 4
  %hpc_ops6.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %hpc_ops6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %hpc_ops6.i, align 4
  %30 = ptrtoint ptr %first_slot.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_slot.i, align 4
  %32 = ptrtoint ptr %slot_num_inc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slot_num_inc.i, align 4
  %mul.i = mul i32 %33, %i.0181.i
  %add7.i = add i32 %mul.i, %31
  %number8.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %number8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add7.i, ptr %number8.i, align 4
  %call10.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef %add7.i) #7
  %wq.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call10.i, ptr %wq.i, align 8
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.end.i51.error_slot.i_crit_edge, label %do.body.i

if.end.i51.error_slot.i_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_slot.i

do.body.i:                                        ; preds = %if.end.i51
  %lock.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 15
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_slots.__key) #7
  %work.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #7
  %36 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_slots.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry24.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 1
  %37 = ptrtoint ptr %entry24.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry24.i, ptr %entry24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry24.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 2
  %39 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @shpchp_queue_pushbutton_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_slots.__key.19) #7
  %40 = ptrtoint ptr %number8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number8.i, align 4
  %call36.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 10, ptr noundef nonnull @.str.21, i32 noundef %41) #7
  %42 = ptrtoint ptr %hotplug_slot2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @shpchp_hotplug_slot_ops, ptr %hotplug_slot2.i, align 8
  %43 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool38.not.i = icmp eq i8 %43, 0
  br i1 %tobool38.not.i, label %do.body.i.do.end58.i_crit_edge, label %do.end42.i

do.body.i.do.end58.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58.i

do.end42.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %subordinate45.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %subordinate45.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %subordinate45.i, align 4
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %domain_nr.i.i, align 8
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %call7.i.i.i, align 8
  %conv48.i = zext i8 %51 to i32
  %52 = ptrtoint ptr %device.i50 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %device.i50, align 1
  %conv50.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %hp_slot.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hp_slot.i, align 4
  %conv52.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %number8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %number8.i, align 4
  %58 = ptrtoint ptr %slot_device_offset.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %slot_device_offset.i, align 4
  %conv55.i = zext i8 %59 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %49, i32 noundef %conv48.i, i32 noundef %conv50.i, i32 noundef %conv52.i, i32 noundef %57, i32 noundef %conv55.i) #10
  br label %do.end58.i

do.end58.i:                                       ; preds = %do.end42.i, %do.body.i.do.end58.i_crit_edge
  %60 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev.i, align 8
  %subordinate60.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %subordinate60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %subordinate60.i, align 4
  %64 = ptrtoint ptr %device.i50 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %device.i50, align 1
  %conv62.i = zext i8 %65 to i32
  %call64.i = call i32 @__pci_hp_register(ptr noundef %hotplug_slot2.i, ptr noundef %63, i32 noundef %conv62.i, ptr noundef nonnull %name.i, ptr noundef null, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end72.i, label %do.end69.i

do.end69.i:                                       ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %wq.i.le = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci_dev.i, align 8
  %dev71.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.25, i32 noundef %call64.i) #10
  %68 = ptrtoint ptr %wq.i.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wq.i.le, align 8
  call void @destroy_workqueue(ptr noundef %69) #7
  br label %error_slot.i

if.end72.i:                                       ; preds = %do.end58.i
  %pwr_save.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 9
  %70 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i, label %if.end72.i.do.end5.i.i_crit_edge, label %do.end.i.i

if.end72.i.do.end5.i.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %ctrl3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl3.i, align 8
  %pci_dev.i.i = getelementptr inbounds %struct.controller, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %pci_slot.i.i.i.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %75 = ptrtoint ptr %pci_slot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci_slot.i.i.i.i, align 4
  %kobj.i.i.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %kobj.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %kobj.i.i.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31, ptr noundef %78) #10
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %if.end72.i.do.end5.i.i_crit_edge
  %79 = ptrtoint ptr %hpc_ops6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hpc_ops6.i, align 4
  %get_power_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %get_power_status.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_power_status.i.i, align 4
  %call6.i.i = call i32 %82(ptr noundef nonnull %call7.i.i.i, ptr noundef %pwr_save.i) #7
  %attention_save.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 6
  %83 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i137.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i137.i, label %do.end5.i.i.do.end5.i147.i_crit_edge, label %do.end.i143.i

do.end5.i.i.do.end5.i147.i_crit_edge:             ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i147.i

do.end.i143.i:                                    ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %ctrl3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctrl3.i, align 8
  %pci_dev.i139.i = getelementptr inbounds %struct.controller, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %pci_dev.i139.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci_dev.i139.i, align 4
  %dev.i140.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %pci_slot.i.i.i141.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %88 = ptrtoint ptr %pci_slot.i.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_slot.i.i.i141.i, align 4
  %kobj.i.i.i.i142.i = getelementptr inbounds %struct.pci_slot, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %kobj.i.i.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kobj.i.i.i.i142.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i140.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, ptr noundef %91) #10
  br label %do.end5.i147.i

do.end5.i147.i:                                   ; preds = %do.end.i143.i, %do.end5.i.i.do.end5.i147.i_crit_edge
  %92 = ptrtoint ptr %hpc_ops6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hpc_ops6.i, align 4
  %get_attention_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %get_attention_status.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_attention_status.i.i, align 4
  %call6.i145.i = call i32 %95(ptr noundef nonnull %call7.i.i.i, ptr noundef %attention_save.i) #7
  %latch_save.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 8
  %96 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i150.i = icmp eq i8 %96, 0
  br i1 %tobool.not.i150.i, label %do.end5.i147.i.do.end5.i160.i_crit_edge, label %do.end.i156.i

do.end5.i147.i.do.end5.i160.i_crit_edge:          ; preds = %do.end5.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i160.i

do.end.i156.i:                                    ; preds = %do.end5.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %ctrl3.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctrl3.i, align 8
  %pci_dev.i152.i = getelementptr inbounds %struct.controller, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %pci_dev.i152.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev.i152.i, align 4
  %dev.i153.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %pci_slot.i.i.i154.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %101 = ptrtoint ptr %pci_slot.i.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pci_slot.i.i.i154.i, align 4
  %kobj.i.i.i.i155.i = getelementptr inbounds %struct.pci_slot, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %kobj.i.i.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %kobj.i.i.i.i155.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i153.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, ptr noundef %104) #10
  br label %do.end5.i160.i

do.end5.i160.i:                                   ; preds = %do.end.i156.i, %do.end5.i147.i.do.end5.i160.i_crit_edge
  %105 = ptrtoint ptr %hpc_ops6.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hpc_ops6.i, align 4
  %get_latch_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %get_latch_status.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %get_latch_status.i.i, align 4
  %call6.i158.i = call i32 %108(ptr noundef nonnull %call7.i.i.i, ptr noundef %latch_save.i) #7
  %presence_save.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 7
  %109 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i163.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i163.i, label %do.end5.i160.i.do.end5.i173.i_crit_edge, label %do.end.i169.i

do.end5.i160.i.do.end5.i173.i_crit_edge:          ; preds = %do.end5.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i173.i

do.end.i169.i:                                    ; preds = %do.end5.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %ctrl3.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctrl3.i, align 8
  %pci_dev.i165.i = getelementptr inbounds %struct.controller, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %pci_dev.i165.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci_dev.i165.i, align 4
  %dev.i166.i = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %pci_slot.i.i.i167.i = getelementptr %struct.slot, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %114 = ptrtoint ptr %pci_slot.i.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pci_slot.i.i.i167.i, align 4
  %kobj.i.i.i.i168.i = getelementptr inbounds %struct.pci_slot, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %kobj.i.i.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %kobj.i.i.i.i168.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev.i166.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, ptr noundef %117) #10
  br label %do.end5.i173.i

do.end5.i173.i:                                   ; preds = %do.end.i169.i, %do.end5.i160.i.do.end5.i173.i_crit_edge
  %118 = ptrtoint ptr %hpc_ops6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hpc_ops6.i, align 4
  %get_adapter_status.i.i = getelementptr inbounds %struct.hpc_ops, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %get_adapter_status.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %get_adapter_status.i.i, align 4
  %call6.i171.i = call i32 %121(ptr noundef nonnull %call7.i.i.i, ptr noundef %presence_save.i) #7
  %slot_list.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 13
  %122 = ptrtoint ptr %slot_list to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %slot_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %slot_list.i, ptr noundef %slot_list, ptr noundef %123) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end5.i173.i.list_add.exit.i_crit_edge

do.end5.i173.i.list_add.exit.i_crit_edge:         ; preds = %do.end5.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.end5.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %slot_list.i, ptr %prev1.i.i.i, align 4
  %125 = ptrtoint ptr %slot_list.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %123, ptr %slot_list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.slot, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %126 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %slot_list, ptr %prev3.i.i.i, align 4
  %127 = ptrtoint ptr %slot_list to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %slot_list.i, ptr %slot_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.end5.i173.i.list_add.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0181.i, 1
  %128 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_slots.i, align 8
  %cmp.i52 = icmp slt i32 %inc.i, %129
  br i1 %cmp.i52, label %list_add.exit.i.for.body.i_crit_edge, label %list_add.exit.i.if.end26_crit_edge

list_add.exit.i.if.end26_crit_edge:               ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

error_slot.i:                                     ; preds = %do.end69.i, %if.end.i51.error_slot.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end23

do.end23:                                         ; preds = %error_slot.i, %for.body.i.do.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  %130 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pci_dev.i, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.12) #10
  br label %err_out_release_ctlr

if.end26:                                         ; preds = %list_add.exit.i.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  %call27 = call i32 @shpchp_create_ctrl_files(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %err_cleanup_slots

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %shpc_managed = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %132 = ptrtoint ptr %shpc_managed to i32
  call void @__asan_loadN_noabort(i32 %132, i32 5)
  %bf.load = load i40, ptr %shpc_managed, align 1
  %bf.set = or i40 %bf.load, 16384
  store i40 %bf.set, ptr %shpc_managed, align 1
  br label %cleanup

err_cleanup_slots:                                ; preds = %if.end26
  %133 = ptrtoint ptr %slot_list to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %slot_list, align 4
  %cmp.not24.i = icmp eq ptr %134, %slot_list
  br i1 %cmp.not24.i, label %err_cleanup_slots.err_out_release_ctlr_crit_edge, label %err_cleanup_slots.for.body.i56_crit_edge

err_cleanup_slots.for.body.i56_crit_edge:         ; preds = %err_cleanup_slots
  br label %for.body.i56

err_cleanup_slots.err_out_release_ctlr_crit_edge: ; preds = %err_cleanup_slots
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_release_ctlr

for.body.i56:                                     ; preds = %list_del.exit.i.for.body.i56_crit_edge, %err_cleanup_slots.for.body.i56_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i56_crit_edge ], [ %134, %err_cleanup_slots.for.body.i56_crit_edge ]
  %slot.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -48
  %135 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i55 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #7
  br i1 %call.i.i.i55, label %if.end.i.i.i57, label %for.body.i56.list_del.exit.i_crit_edge

for.body.i56.list_del.exit.i_crit_edge:           ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i57:                                   ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i.i, align 4
  %138 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev1.i.i.i.i, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %139, ptr %137, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i57, %for.body.i56.list_del.exit.i_crit_edge
  %142 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i58 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i58, align 4
  %work.i59 = getelementptr i8, ptr %.pn.in25.i, i32 8
  %call.i60 = call zeroext i1 @cancel_delayed_work(ptr noundef %work.i59) #7
  %wq.i61 = getelementptr i8, ptr %.pn.in25.i, i32 200
  %144 = ptrtoint ptr %wq.i61 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wq.i61, align 4
  call void @destroy_workqueue(ptr noundef %145) #7
  %hotplug_slot.i = getelementptr i8, ptr %.pn.in25.i, i32 -24
  call void @pci_hp_deregister(ptr noundef %hotplug_slot.i) #7
  call void @kfree(ptr noundef %slot.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %slot_list
  br i1 %cmp.not.i, label %list_del.exit.i.err_out_release_ctlr_crit_edge, label %list_del.exit.i.for.body.i56_crit_edge

list_del.exit.i.for.body.i56_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i56

list_del.exit.i.err_out_release_ctlr_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_release_ctlr

err_out_release_ctlr:                             ; preds = %list_del.exit.i.err_out_release_ctlr_crit_edge, %err_cleanup_slots.err_out_release_ctlr_crit_edge, %do.end23
  %hpc_ops = getelementptr inbounds %struct.controller, ptr %call7.i.i, i32 0, i32 6
  %146 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hpc_ops, align 4
  %release_ctlr = getelementptr inbounds %struct.hpc_ops, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %release_ctlr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %release_ctlr, align 4
  call void %149(ptr noundef nonnull %call7.i.i) #7
  br label %err_out_free_ctrl

err_out_free_ctrl:                                ; preds = %err_out_release_ctlr, %do.end, %do.body.err_out_free_ctrl_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_ctrl, %if.end30, %if.end.cleanup_crit_edge, %shpc_capable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -19, %shpc_capable.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %err_out_free_ctrl ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shpc_remove(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shpc_managed = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %shpc_managed to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %shpc_managed, align 1
  %bf.clear = and i40 %bf.load, -16385
  store i40 %bf.clear, ptr %shpc_managed, align 1
  tail call void @shpchp_remove_ctrl_files(ptr noundef %1) #7
  %hpc_ops = getelementptr inbounds %struct.controller, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpc_ops, align 4
  %release_ctlr = getelementptr inbounds %struct.hpc_ops, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %release_ctlr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_ctlr, align 4
  tail call void %6(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shpc_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shpchp_create_ctrl_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shpchp_queue_pushbutton_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_hp_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_power_status(ptr noundef %hotplug_slot, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31, ptr noundef %8) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hpc_ops = getelementptr i8, ptr %hotplug_slot, i32 -4
  %9 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpc_ops, align 4
  %get_power_status = getelementptr inbounds %struct.hpc_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %get_power_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_power_status, align 4
  %call6 = tail call i32 %12(ptr noundef %add.ptr.i, ptr noundef %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %do.end5.if.end8_crit_edge

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_save = getelementptr i8, ptr %hotplug_slot, i32 -11
  %13 = ptrtoint ptr %pwr_save to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pwr_save, align 1
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_attention_status(ptr noundef %hotplug_slot, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, ptr noundef %8) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hpc_ops = getelementptr i8, ptr %hotplug_slot, i32 -4
  %9 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpc_ops, align 4
  %get_attention_status = getelementptr inbounds %struct.hpc_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %get_attention_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_attention_status, align 4
  %call6 = tail call i32 %12(ptr noundef %add.ptr.i, ptr noundef %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %do.end5.if.end8_crit_edge

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %attention_save = getelementptr i8, ptr %hotplug_slot, i32 -14
  %13 = ptrtoint ptr %attention_save to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %attention_save, align 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_latch_status(ptr noundef %hotplug_slot, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, ptr noundef %8) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hpc_ops = getelementptr i8, ptr %hotplug_slot, i32 -4
  %9 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpc_ops, align 4
  %get_latch_status = getelementptr inbounds %struct.hpc_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %get_latch_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_latch_status, align 4
  %call6 = tail call i32 %12(ptr noundef %add.ptr.i, ptr noundef %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %do.end5.if.end8_crit_edge

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %latch_save = getelementptr i8, ptr %hotplug_slot, i32 -12
  %13 = ptrtoint ptr %latch_save to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %latch_save, align 4
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_adapter_status(ptr noundef %hotplug_slot, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, ptr noundef %8) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hpc_ops = getelementptr i8, ptr %hotplug_slot, i32 -4
  %9 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpc_ops, align 4
  %get_adapter_status = getelementptr inbounds %struct.hpc_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %get_adapter_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_adapter_status, align 4
  %call6 = tail call i32 %12(ptr noundef %add.ptr.i, ptr noundef %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %do.end5.if.end8_crit_edge

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %presence_save = getelementptr i8, ptr %hotplug_slot, i32 -13
  %13 = ptrtoint ptr %presence_save to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %presence_save, align 1
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %value, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end5.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_slot(ptr noundef %hotplug_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %8) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %call5 = tail call i32 @shpchp_sysfs_enable_slot(ptr noundef %add.ptr.i) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_slot(ptr noundef %hotplug_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, ptr noundef %8) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %call5 = tail call i32 @shpchp_sysfs_disable_slot(ptr noundef %add.ptr.i) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_attention_status(ptr noundef %hotplug_slot, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @shpchp_debug, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl = getelementptr i8, ptr %hotplug_slot, i32 -8
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %pci_dev = getelementptr inbounds %struct.controller, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %pci_slot.i.i = getelementptr i8, ptr %hotplug_slot, i32 12
  %5 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_slot.i.i, align 4
  %kobj.i.i.i = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %kobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, ptr noundef %8) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr.i = getelementptr i8, ptr %hotplug_slot, i32 -24
  %attention_save = getelementptr i8, ptr %hotplug_slot, i32 -14
  %9 = ptrtoint ptr %attention_save to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %status, ptr %attention_save, align 2
  %hpc_ops = getelementptr i8, ptr %hotplug_slot, i32 -4
  %10 = ptrtoint ptr %hpc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpc_ops, align 4
  %set_attention_status = getelementptr inbounds %struct.hpc_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %set_attention_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_attention_status, align 4
  %call5 = tail call i32 %13(ptr noundef %add.ptr.i, i8 noundef zeroext %status) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shpchp_sysfs_enable_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shpchp_sysfs_disable_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shpchp_remove_ctrl_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__param_shpchp_debug, !8, !"__param_shpchp_debug", i1 false, i1 false}
!8 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 37, i32 1}
!9 = !{ptr @__UNIQUE_ID_shpchp_debugtype240, !8, !"__UNIQUE_ID_shpchp_debugtype240", i1 false, i1 false}
!10 = !{ptr @__param_shpchp_poll_mode, !11, !"__param_shpchp_poll_mode", i1 false, i1 false}
!11 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 38, i32 1}
!12 = !{ptr @__UNIQUE_ID_shpchp_poll_modetype241, !11, !"__UNIQUE_ID_shpchp_poll_modetype241", i1 false, i1 false}
!13 = !{ptr @__param_shpchp_poll_time, !14, !"__param_shpchp_poll_time", i1 false, i1 false}
!14 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 39, i32 1}
!15 = !{ptr @__UNIQUE_ID_shpchp_poll_timetype242, !14, !"__UNIQUE_ID_shpchp_poll_timetype242", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_shpchp_debug243, !17, !"__UNIQUE_ID_shpchp_debug243", i1 false, i1 false}
!17 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 40, i32 1}
!18 = !{ptr @__UNIQUE_ID_shpchp_poll_mode244, !19, !"__UNIQUE_ID_shpchp_poll_mode244", i1 false, i1 false}
!19 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 41, i32 1}
!20 = !{ptr @__UNIQUE_ID_shpchp_poll_time245, !21, !"__UNIQUE_ID_shpchp_poll_time245", i1 false, i1 false}
!21 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 42, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 340, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @shpcd_cleanup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @shpcd_cleanup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 342, i32 2}
!31 = !{ptr @shpcd_cleanup._entry.4, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @shpcd_cleanup._entry_ptr.6, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__initcall__kmod_shpchp__246_345_shpcd_init6, !34, !"__initcall__kmod_shpchp__246_345_shpcd_init6", i1 false, i1 false}
!34 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 345, i32 1}
!35 = !{ptr @__exitcall_shpcd_cleanup, !36, !"__exitcall_shpcd_cleanup", i1 false, i1 false}
!36 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 346, i32 1}
!37 = !{ptr @shpchp_debug, !38, !"shpchp_debug", i1 false, i1 false}
!38 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 25, i32 6}
!39 = !{ptr @shpchp_poll_mode, !40, !"shpchp_poll_mode", i1 false, i1 false}
!40 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 26, i32 6}
!41 = !{ptr @shpchp_poll_time, !42, !"shpchp_poll_time", i1 false, i1 false}
!42 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 27, i32 5}
!43 = !{ptr @__param_str_shpchp_debug, !8, !"__param_str_shpchp_debug", i1 false, i1 false}
!44 = !{ptr @__param_str_shpchp_poll_mode, !11, !"__param_str_shpchp_poll_mode", i1 false, i1 false}
!45 = !{ptr @__param_str_shpchp_poll_time, !14, !"__param_str_shpchp_poll_time", i1 false, i1 false}
!46 = !{ptr @shpc_driver, !47, !"shpc_driver", i1 false, i1 false}
!47 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 320, i32 26}
!48 = !{ptr @shpcd_pci_tbl, !49, !"shpcd_pci_tbl", i1 false, i1 false}
!49 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 314, i32 35}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 274, i32 3}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @shpc_probe._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @shpc_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 283, i32 3}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @shpc_probe._entry.11, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @shpc_probe._entry_ptr.14, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 88, i32 30}
!64 = !{ptr @init_slots.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 94, i32 3}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @init_slots.__key.17, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 95, i32 3}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @init_slots.__key.19, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 98, i32 34}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 101, i32 3}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_slots._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @init_slots._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 108, i32 4}
!81 = !{ptr @init_slots._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @init_slots._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @shpchp_hotplug_slot_ops, !84, !"shpchp_hotplug_slot_ops", i1 false, i1 false}
!84 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 54, i32 38}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 163, i32 2}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @enable_slot._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @enable_slot._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 173, i32 2}
!92 = !{ptr @disable_slot._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @disable_slot._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 150, i32 2}
!96 = !{ptr @set_attention_status._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @set_attention_status._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 184, i32 2}
!100 = !{ptr @get_power_status._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @get_power_status._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 199, i32 2}
!104 = !{ptr @get_attention_status._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @get_attention_status._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 214, i32 2}
!108 = !{ptr @get_latch_status._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @get_latch_status._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 229, i32 2}
!112 = !{ptr @get_adapter_status._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @get_adapter_status._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 332, i32 2}
!116 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @shpcd_init._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @shpcd_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/hotplug/shpchp_core.c", i32 333, i32 2}
!121 = !{ptr @shpcd_init._entry.37, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @shpcd_init._entry_ptr.39, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i8 0, i8 2}
