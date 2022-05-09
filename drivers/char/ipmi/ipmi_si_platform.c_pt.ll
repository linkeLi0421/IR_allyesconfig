; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_platform.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_tryplatform = internal constant [20 x i8] c"ipmi_si.tryplatform\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@si_tryplatform = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_tryplatform = internal constant %struct.kernel_param { ptr @__param_str_tryplatform, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @si_tryplatform } }, section "__param", align 4
@__UNIQUE_ID_tryplatformtype227 = internal constant [34 x i8] c"ipmi_si.parmtype=tryplatform:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_tryplatform228 = internal constant [165 x i8] c"ipmi_si.parm=tryplatform:Setting this to zero will disable the default scan of the interfaces identified via platform interfaces besides ACPI, OpenFirmware, and DMI\00", section ".modinfo", align 1
@__param_str_tryopenfirmware = internal constant [24 x i8] c"ipmi_si.tryopenfirmware\00", align 1
@si_tryopenfirmware = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_tryopenfirmware = internal constant %struct.kernel_param { ptr @__param_str_tryopenfirmware, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @si_tryopenfirmware } }, section "__param", align 4
@__UNIQUE_ID_tryopenfirmwaretype229 = internal constant [38 x i8] c"ipmi_si.parmtype=tryopenfirmware:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_tryopenfirmware230 = internal constant [126 x i8] c"ipmi_si.parm=tryopenfirmware:Setting this to zero will disable the default scan of the interfaces identified via OpenFirmware\00", section ".modinfo", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@of_ipmi_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"ipmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ipmi-kcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"ipmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ipmi-smic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"ipmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ipmi-bt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@si_plat_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"dmi-ipmi-si\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"hardcode-ipmi-si\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"hotmod-ipmi-si\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ipmi_platform_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ipmi_probe, ptr @ipmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ipmi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si_plat_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ipmi_si_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ipmi_platform: Unable to register driver: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipmi_si_platform_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/char/ipmi/ipmi_si_platform.c\00", [59 x i8] zeroinitializer }, align 32
@ipmi_si_platform_init._entry_ptr = internal global ptr @ipmi_si_platform_init._entry, section ".printk_index", align 4
@platform_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@of_ipmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 238, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipmi_platform: probing via device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"of_ipmi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry_ptr = internal global ptr @of_ipmi_probe._entry, section ".printk_index", align 4
@of_ipmi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 249, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipmi_platform: invalid address from OF\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry_ptr.11 = internal global ptr @of_ipmi_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg-size\00", [23 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.3, i32 255, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipmi_platform: invalid regsize from OF\0A\00", [56 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry_ptr.15 = internal global ptr @of_ipmi_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg-spacing\00", [20 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 261, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ipmi_platform: invalid regspacing from OF\0A\00", [53 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry_ptr.19 = internal global ptr @of_ipmi_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.3, i32 267, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ipmi_platform: invalid regshift from OF\0A\00", [55 x i8] zeroinitializer }, align 32
@of_ipmi_probe._entry_ptr.23 = internal global ptr @of_ipmi_probe._entry.21, section ".printk_index", align 4
@of_ipmi_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.24, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ipmi_platform: addr 0x%lx regsize %d spacing %d irq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr-source\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipmi-type\00", [22 x i8] zeroinitializer }, align 32
@platform_ipmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ipmi_platform: probing via %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform_ipmi_probe\00", [44 x i8] zeroinitializer }, align 32
@platform_ipmi_probe._entry_ptr = internal global ptr @platform_ipmi_probe._entry, section ".printk_index", align 4
@platform_ipmi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 172, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ipmi_platform: ipmi-type property is invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@platform_ipmi_probe._entry_ptr.32 = internal global ptr @platform_ipmi_probe._entry.29, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slave-addr\00", [21 x i8] zeroinitializer }, align 32
@platform_ipmi_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016ipmi_platform: ipmi_si: %s: %s %#lx regsize %d spacing %d irq %d\0A\00", [60 x i8] zeroinitializer }, align 32
@platform_ipmi_probe._entry_ptr.36 = internal global ptr @platform_ipmi_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@ipmi_get_info_from_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 119, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ipmi_platform: no I/O or memory address\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ipmi_get_info_from_resources\00", [35 x i8] zeroinitializer }, align 32
@ipmi_get_info_from_resources._entry_ptr = internal global ptr @ipmi_get_info_from_resources._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"si_tryplatform\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 23, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"si_tryopenfirmware\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 28, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 449, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"of_ipmi_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 214, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"si_plat_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 440, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"ipmi_platform_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 447, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 462, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"platform_registered\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 238, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 249, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 253, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 255, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 259, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 261, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 265, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 267, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 285, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 140, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 154, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 160, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 172, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 189, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 203, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [40 x i8] c"../drivers/char/ipmi/ipmi_si_platform.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 119, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_tryopenfirmware230, ptr @__UNIQUE_ID_tryopenfirmwaretype229, ptr @__UNIQUE_ID_tryplatform228, ptr @__UNIQUE_ID_tryplatformtype227, ptr @__param_tryopenfirmware, ptr @__param_tryplatform, ptr @ipmi_get_info_from_resources._entry, ptr @ipmi_get_info_from_resources._entry_ptr, ptr @ipmi_si_platform_init._entry, ptr @ipmi_si_platform_init._entry_ptr, ptr @of_ipmi_probe._entry, ptr @of_ipmi_probe._entry.13, ptr @of_ipmi_probe._entry.17, ptr @of_ipmi_probe._entry.21, ptr @of_ipmi_probe._entry.8, ptr @of_ipmi_probe._entry_ptr, ptr @of_ipmi_probe._entry_ptr.11, ptr @of_ipmi_probe._entry_ptr.15, ptr @of_ipmi_probe._entry_ptr.19, ptr @of_ipmi_probe._entry_ptr.23, ptr @platform_ipmi_probe._entry, ptr @platform_ipmi_probe._entry.29, ptr @platform_ipmi_probe._entry.34, ptr @platform_ipmi_probe._entry_ptr, ptr @platform_ipmi_probe._entry_ptr.32, ptr @platform_ipmi_probe._entry_ptr.36, ptr @si_tryplatform, ptr @si_tryopenfirmware, ptr @.str, ptr @of_ipmi_match, ptr @si_plat_ids, ptr @ipmi_platform_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @platform_registered, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_tryplatform to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_tryopenfirmware to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_plat_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_ipmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_ipmi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_ipmi_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_get_info_from_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_remove_platform_device_by_name(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %name, ptr noundef nonnull @pdev_match_name) #6
  %tobool.not3 = icmp eq ptr %call2, null
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call4, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #6
  tail call void @put_device(ptr noundef nonnull %call4) #6
  %call = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %name, ptr noundef nonnull @pdev_match_name) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdev_match_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %io.i = alloca %struct.si_sm_io, align 4
  %type.i = alloca i8, align 1
  %slave_addr.i = alloca i8, align 1
  %addr_source.i = alloca i8, align 1
  %regsize.i = alloca i8, align 1
  %regshift.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @of_ipmi_probe(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %io.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %type.i, align 1, !annotation !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_addr.i) #6
  %3 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %slave_addr.i, align 1, !annotation !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_source.i) #6
  %4 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %addr_source.i, align 1, !annotation !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regsize.i) #6
  %5 = ptrtoint ptr %regsize.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %regsize.i, align 1, !annotation !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regshift.i) #6
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %regshift.i, align 1, !annotation !103
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %addr_source.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %addr_source.i, align 1
  br label %if.then14.i

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %.pr.i = load i8, ptr %addr_source.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr.i)
  %cmp.i = icmp ugt i8 %.pr.i, 8
  br i1 %cmp.i, label %if.end.i.platform_ipmi_probe.exit_crit_edge, label %if.end3.i

if.end.i.platform_ipmi_probe.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %platform_ipmi_probe.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = zext i8 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr.i, label %if.end3.i.if.then14.i_crit_edge [
    i8 5, label %if.end3.i.platform_ipmi_probe.exit_crit_edge
    i8 2, label %if.end3.i.if.end19.i_crit_edge
  ]

if.end3.i.if.end19.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end3.i.platform_ipmi_probe.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %platform_ipmi_probe.exit

if.end3.i.if.then14.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end3.i.if.then14.i_crit_edge, %if.end3.thread.i
  %10 = load i8, ptr @si_tryplatform, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not.i = icmp eq i8 %10, 0
  br i1 %tobool15.not.i, label %if.then14.i.platform_ipmi_probe.exit_crit_edge, label %if.then14.i.if.end19.i_crit_edge

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then14.i.platform_ipmi_probe.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %platform_ipmi_probe.exit

if.end19.i:                                       ; preds = %if.then14.i.if.end19.i_crit_edge, %if.end3.i.if.end19.i_crit_edge
  %call.i105.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull %type.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool22.not.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.platform_ipmi_probe.exit_crit_edge

if.end19.i.platform_ipmi_probe.exit_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %platform_ipmi_probe.exit

if.end24.i:                                       ; preds = %if.end19.i
  %11 = call ptr @memset(ptr %io.i, i32 0, i32 76)
  %12 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_source.i, align 1
  %conv25.i = zext i8 %13 to i32
  %addr_source26.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 8
  %14 = ptrtoint ptr %addr_source26.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv25.i, ptr %addr_source26.i, align 4
  %call29.i = call ptr @ipmi_addr_src_to_str(i32 noundef %conv25.i) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef %call29.i) #10
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %16, label %do.end35.i [
    i8 1, label %if.end24.i.sw.bb.i_crit_edge
    i8 2, label %if.end24.i.sw.bb.i_crit_edge14
    i8 3, label %if.end24.i.sw.bb.i_crit_edge15
    i8 0, label %if.end24.i.platform_ipmi_probe.exit_crit_edge
  ]

if.end24.i.platform_ipmi_probe.exit_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %platform_ipmi_probe.exit

if.end24.i.sw.bb.i_crit_edge15:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end24.i.sw.bb.i_crit_edge14:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end24.i.sw.bb.i_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end24.i.sw.bb.i_crit_edge, %if.end24.i.sw.bb.i_crit_edge14, %if.end24.i.sw.bb.i_crit_edge15
  %conv31.i = zext i8 %16 to i32
  %si_type.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 18
  %18 = ptrtoint ptr %si_type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv31.i, ptr %si_type.i, align 4
  %regsize37.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 4
  %19 = ptrtoint ptr %regsize37.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %regsize37.i, align 4
  %call.i106.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %regsize.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i)
  %tobool40.not.i = icmp eq i32 %call.i106.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %sw.bb.i.if.end44.i_crit_edge

sw.bb.i.if.end44.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end35.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30) #10
  br label %platform_ipmi_probe.exit

if.then41.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %regsize.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regsize.i, align 1
  %conv42.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %regsize37.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv42.i, ptr %regsize37.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %sw.bb.i.if.end44.i_crit_edge
  %regshift45.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 5
  %23 = ptrtoint ptr %regshift45.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %regshift45.i, align 4
  %call.i107.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %regshift.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool48.not.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end44.i.if.end52.i_crit_edge

if.end44.i.if.end52.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regshift.i, align 1
  %conv50.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %regshift45.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv50.i, ptr %regshift45.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end52.i_crit_edge
  %call.i = call ptr @platform_get_mem_or_io(ptr noundef %pdev, i32 noundef 0) #6
  %tobool.not.i9 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i9, label %ipmi_get_info_from_resources.exit, label %if.end.i12

if.end.i12:                                       ; preds = %if.end52.i
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %28, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i.i, 256
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %29 = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i.i, ptr %29, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  %addr_data.i.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 7
  %33 = ptrtoint ptr %addr_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %addr_data.i.i, align 4
  %regspacing.i11 = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 3
  %34 = ptrtoint ptr %regspacing.i11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %regspacing.i11, align 4
  %call1.i = call ptr @platform_get_mem_or_io(ptr noundef %pdev, i32 noundef 1) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i12.if.end56.i_crit_edge, label %land.lhs.true.i

if.end.i12.if.end56.i_crit_edge:                  ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

land.lhs.true.i:                                  ; preds = %if.end.i12
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call1.i, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %37 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i.i, align 4
  %39 = xor i32 %38, %36
  %40 = and i32 %39, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i13 = icmp eq i32 %40, 0
  br i1 %cmp.i13, label %if.then5.i, label %land.lhs.true.i.if.end56.i_crit_edge

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call1.i, align 4
  %43 = ptrtoint ptr %addr_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr_data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp6.i = icmp ugt i32 %42, %44
  br i1 %cmp6.i, label %if.then7.i, label %if.then5.i.if.end56.i_crit_edge

if.then5.i.if.end56.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %42, %44
  %45 = ptrtoint ptr %regspacing.i11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i, ptr %regspacing.i11, align 4
  br label %if.end56.i

ipmi_get_info_from_resources.exit:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #10
  br label %platform_ipmi_probe.exit

if.end56.i:                                       ; preds = %if.then7.i, %if.then5.i.if.end56.i_crit_edge, %land.lhs.true.i.if.end56.i_crit_edge, %if.end.i12.if.end56.i_crit_edge
  %call.i108.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %slave_addr.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool59.not.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool59.not.i, label %if.else62.i, label %if.end56.i.if.end64.i_crit_edge

if.end56.i.if.end64.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.else62.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %slave_addr.i, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else62.i, %if.end56.i.if.end64.i_crit_edge
  %.sink.i = phi i8 [ %47, %if.else62.i ], [ 32, %if.end56.i.if.end64.i_crit_edge ]
  %48 = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 17
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink.i, ptr %48, align 4
  %call65.i = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %irq.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 13
  %50 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call65.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp67.i = icmp sgt i32 %call65.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %if.else70.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_setup.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 14
  %51 = ptrtoint ptr %irq_setup.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ipmi_std_irq_setup, ptr %irq_setup.i, align 4
  br label %if.end72.i

if.else70.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %irq.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else70.i, %if.then69.i
  %dev74.i = getelementptr inbounds %struct.si_sm_io, ptr %io.i, i32 0, i32 19
  %53 = ptrtoint ptr %dev74.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev.i, ptr %dev74.i, align 4
  %54 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %addr_source.i, align 1
  %conv78.i = zext i8 %55 to i32
  %call79.i = call ptr @ipmi_addr_src_to_str(i32 noundef %conv78.i) #6
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp80.i = icmp eq i32 %57, 0
  %cond.i = select i1 %cmp80.i, ptr @.str.37, ptr @.str.38
  %58 = ptrtoint ptr %addr_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr_data.i.i, align 4
  %60 = ptrtoint ptr %regsize37.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %regsize37.i, align 4
  %62 = ptrtoint ptr %regspacing.i11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %regspacing.i11, align 4
  %64 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i, align 4
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %call79.i, ptr noundef nonnull %cond.i, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #10
  %call85.i = call i32 @ipmi_si_add_smi(ptr noundef nonnull %io.i) #6
  br label %platform_ipmi_probe.exit

platform_ipmi_probe.exit:                         ; preds = %if.end72.i, %ipmi_get_info_from_resources.exit, %do.end35.i, %if.end24.i.platform_ipmi_probe.exit_crit_edge, %if.end19.i.platform_ipmi_probe.exit_crit_edge, %if.then14.i.platform_ipmi_probe.exit_crit_edge, %if.end3.i.platform_ipmi_probe.exit_crit_edge, %if.end.i.platform_ipmi_probe.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end35.i ], [ 0, %if.end72.i ], [ -22, %if.end.i.platform_ipmi_probe.exit_crit_edge ], [ -19, %if.end3.i.platform_ipmi_probe.exit_crit_edge ], [ -19, %if.then14.i.platform_ipmi_probe.exit_crit_edge ], [ -19, %if.end19.i.platform_ipmi_probe.exit_crit_edge ], [ -19, %if.end24.i.platform_ipmi_probe.exit_crit_edge ], [ -22, %ipmi_get_info_from_resources.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regshift.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regsize.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_source.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %io.i) #6
  br label %return

return:                                           ; preds = %platform_ipmi_probe.exit, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %platform_ipmi_probe.exit ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @ipmi_si_remove_by_dev(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_platform_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipmi_platform_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @platform_registered, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_platform_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @platform_registered, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ipmi_platform_driver) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_ipmi_probe(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  %io = alloca %struct.si_sm_io, align 4
  %resource = alloca %struct.resource, align 4
  %proplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %io) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resource) #6
  %0 = getelementptr inbounds %struct.resource, ptr %resource, i32 0, i32 3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = call ptr @memset(ptr %resource, i32 255, i32 32)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen) #6
  %4 = ptrtoint ptr %proplen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %proplen, align 4, !annotation !103
  %5 = load i8, ptr @si_tryopenfirmware, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  %call = tail call ptr @of_match_device(ptr noundef nonnull @of_ipmi_match, ptr noundef %dev) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call zeroext i1 @of_device_is_available(ptr noundef %3) #6
  br i1 %call6, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = call i32 @of_address_to_resource(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %resource) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %proplen) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %land.lhs.true

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %6 = ptrtoint ptr %proplen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %proplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not = icmp eq i32 %7, 4
  br i1 %cmp.not, label %land.lhs.true.if.end24_crit_edge, label %do.end22

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end22:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %call25 = call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %proplen) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true27

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true27:                                  ; preds = %if.end24
  %8 = ptrtoint ptr %proplen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %proplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp28.not = icmp eq i32 %9, 4
  br i1 %cmp28.not, label %land.lhs.true27.if.end34_crit_edge, label %do.end32

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end32:                                         ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true27.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %call35 = call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull %proplen) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.if.end44_crit_edge, label %land.lhs.true37

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true37:                                  ; preds = %if.end34
  %10 = ptrtoint ptr %proplen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp38.not = icmp eq i32 %11, 4
  br i1 %cmp38.not, label %land.lhs.true37.if.end44_crit_edge, label %do.end42

land.lhs.true37.if.end44_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end42:                                         ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true37.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %12 = call ptr @memset(ptr %io, i32 0, i32 68)
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  %si_type = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %16 = ptrtoint ptr %si_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %si_type, align 4
  %addr_source = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 8
  %17 = ptrtoint ptr %addr_source to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %addr_source, align 4
  %irq_setup = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 14
  %18 = ptrtoint ptr %irq_setup to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ipmi_std_irq_setup, ptr %irq_setup, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %and.i.i = and i32 %20, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i.i)
  %cmp.i = icmp ne i32 %and.i.i, 256
  %spec.select.i = zext i1 %cmp.i to i32
  %21 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %21, align 4
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource, align 4
  %addr_data.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 7
  %25 = ptrtoint ptr %addr_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr_data.i, align 4
  br i1 %tobool18.not, label %if.end44.cond.end_crit_edge, label %cond.true

if.end44.cond.end_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end44.cond.end_crit_edge
  %cond = phi i32 [ %27, %cond.true ], [ 1, %if.end44.cond.end_crit_edge ]
  %regsize47 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 4
  %28 = ptrtoint ptr %regsize47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %regsize47, align 4
  br i1 %tobool26.not, label %cond.end.cond.end52_crit_edge, label %cond.true49

cond.end.cond.end52_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end52

cond.true49:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call25, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true49, %cond.end.cond.end52_crit_edge
  %cond53 = phi i32 [ %30, %cond.true49 ], [ 1, %cond.end.cond.end52_crit_edge ]
  %regspacing54 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %31 = ptrtoint ptr %regspacing54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond53, ptr %regspacing54, align 4
  br i1 %tobool36.not, label %cond.end52.cond.end59_crit_edge, label %cond.true56

cond.end52.cond.end59_crit_edge:                  ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end59

cond.true56:                                      ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call35, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true56, %cond.end52.cond.end59_crit_edge
  %cond60 = phi i32 [ %33, %cond.true56 ], [ 0, %cond.end52.cond.end59_crit_edge ]
  %regshift61 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %34 = ptrtoint ptr %regshift61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond60, ptr %regshift61, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call64 = call i32 @irq_of_parse_and_map(ptr noundef %36, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 13
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call64, ptr %irq, align 4
  %dev66 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %38 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %dev66, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_ipmi_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_ipmi_probe, %if.then72)) #6
          to label %do.end79 [label %if.then72], !srcloc !105

if.then72:                                        ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %addr_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr_data.i, align 4
  %41 = ptrtoint ptr %regsize47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regsize47, align 4
  %43 = ptrtoint ptr %regspacing54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regspacing54, align 4
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_ipmi_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then72, %cond.end59
  %call80 = call i32 @ipmi_si_add_smi(ptr noundef nonnull %io) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end42, %do.end32, %do.end22, %do.end14, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -22, %do.end22 ], [ -22, %do.end32 ], [ -22, %do.end42 ], [ %call80, %do.end79 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %do.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resource) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %io) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_std_irq_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_add_smi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_addr_src_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_mem_or_io(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_remove_by_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_tryplatform, !1, !"__param_tryplatform", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_tryplatformtype227, !1, !"__UNIQUE_ID_tryplatformtype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tryplatform228, !4, !"__UNIQUE_ID_tryplatform228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 37, i32 1}
!5 = !{ptr @__param_tryopenfirmware, !6, !"__param_tryopenfirmware", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 45, i32 1}
!7 = !{ptr @__UNIQUE_ID_tryopenfirmwaretype229, !6, !"__UNIQUE_ID_tryopenfirmwaretype229", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tryopenfirmware230, !9, !"__UNIQUE_ID_tryopenfirmware230", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 46, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 449, i32 11}
!12 = !{ptr @ipmi_platform_driver, !13, !"ipmi_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 447, i32 24}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 462, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ipmi_si_platform_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipmi_si_platform_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"platform_registered", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 22, i32 13}
!22 = !{ptr @__param_str_tryplatform, !1, !"__param_str_tryplatform", i1 false, i1 false}
!23 = !{ptr @si_tryplatform, !24, !"si_tryplatform", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 23, i32 13}
!25 = !{ptr @__param_str_tryopenfirmware, !6, !"__param_str_tryopenfirmware", i1 false, i1 false}
!26 = !{ptr @si_tryopenfirmware, !27, !"si_tryopenfirmware", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 28, i32 22}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 238, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @of_ipmi_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @of_ipmi_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 249, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @of_ipmi_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @of_ipmi_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 253, i32 32}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 255, i32 3}
!44 = !{ptr @of_ipmi_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @of_ipmi_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 259, i32 35}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 261, i32 3}
!50 = !{ptr @of_ipmi_probe._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @of_ipmi_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 265, i32 33}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 267, i32 3}
!56 = !{ptr @of_ipmi_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @of_ipmi_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 285, i32 2}
!60 = !{ptr @of_ipmi_probe.__UNIQUE_ID_ddebug231, !59, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 140, i32 43}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 154, i32 43}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 160, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @platform_ipmi_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @platform_ipmi_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 172, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @platform_ipmi_probe._entry.29, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @platform_ipmi_probe._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 189, i32 43}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 203, i32 2}
!79 = !{ptr @platform_ipmi_probe._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @platform_ipmi_probe._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"si_trydmi", i1 false, i1 false}
!84 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 33, i32 22}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 119, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ipmi_get_info_from_resources._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ipmi_get_info_from_resources._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @of_ipmi_match, !91, !"of_ipmi_match", i1 false, i1 false}
!91 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 214, i32 34}
!92 = !{ptr @si_plat_ids, !93, !"si_plat_ids", i1 false, i1 false}
!93 = !{!"../drivers/char/ipmi/ipmi_si_platform.c", i32 440, i32 40}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148962586, i64 2148962591, i64 2148962604, i64 2148962648, i64 2148962682, i64 2148962703}
