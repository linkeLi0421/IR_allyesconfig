; ModuleID = '/llk/IR_all_yes/drivers/input/misc/axp20x-pek.c_pt.bc'
source_filename = "../drivers/input/misc/axp20x-pek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.axp20x_info = type { ptr, i32, ptr, i32 }
%struct.axp20x_time = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.axp20x_pek = type { ptr, ptr, ptr, i32, i32 }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_axp20x_pek__227_420_axp20x_pek_driver_init6 = internal global ptr @axp20x_pek_driver_init, section ".initcall6.init", align 4
@axp20x_pek_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_pek_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_groups, ptr @axp20x_pek_pm_ops, ptr null, ptr null }, ptr @axp_pek_id_match, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_pek_driver_exit = internal global ptr @axp20x_pek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [43 x i8] c"axp20x_pek.description=axp20x Power Button\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [50 x i8] c"axp20x_pek.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [46 x i8] c"axp20x_pek.file=drivers/input/misc/axp20x-pek\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"axp20x_pek.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp20x-pek\00", [21 x i8] zeroinitializer }, align 32
@axp20x_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @axp20x_group, ptr null], [24 x i8] zeroinitializer }, align 32
@axp20x_pek_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_pek_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@axp_pek_id_match = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"axp20x-pek\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp20x_info to i32) }, %struct.platform_device_id { [20 x i8] c"axp221-pek\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp221_info to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@axp20x_pek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get platform_device_id\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp20x_pek_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/misc/axp20x-pek.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_pek_probe._entry_ptr = internal global ptr @axp20x_pek_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PEK_DBR\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PEK_DBF\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m1kbd/input2\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axp20x-pek-dbr\00", [17 x i8] zeroinitializer }, align 32
@axp20x_pek_probe_input_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request dbr IRQ#%d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"axp20x_pek_probe_input_device\00", [34 x i8] zeroinitializer }, align 32
@axp20x_pek_probe_input_device._entry_ptr = internal global ptr @axp20x_pek_probe_input_device._entry, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axp20x-pek-dbf\00", [17 x i8] zeroinitializer }, align 32
@axp20x_pek_probe_input_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request dbf IRQ#%d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@axp20x_pek_probe_input_device._entry_ptr.15 = internal global ptr @axp20x_pek_probe_input_device._entry.13, section ".printk_index", align 4
@axp20x_pek_probe_input_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't register input device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@axp20x_pek_probe_input_device._entry_ptr.18 = internal global ptr @axp20x_pek_probe_input_device._entry.16, section ".printk_index", align 4
@axp20x_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @axp20x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@axp20x_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_startup, ptr @dev_attr_shutdown, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_startup = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axp20x_show_attr_startup, ptr @axp20x_store_attr_startup }, [36 x i8] zeroinitializer }, align 32
@dev_attr_shutdown = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axp20x_show_attr_shutdown, ptr @axp20x_store_attr_shutdown }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"startup\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@axp20x_info = internal constant { %struct.axp20x_info, [16 x i8] } { %struct.axp20x_info { ptr @startup_time, i32 192, ptr @shutdown_time, i32 3 }, [16 x i8] zeroinitializer }, align 32
@axp221_info = internal constant { %struct.axp20x_info, [16 x i8] } { %struct.axp20x_info { ptr @axp221_startup_time, i32 192, ptr @shutdown_time, i32 3 }, [16 x i8] zeroinitializer }, align 32
@startup_time = internal constant { [4 x %struct.axp20x_time], [32 x i8] } { [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 128, i32 0 }, %struct.axp20x_time { i32 1000, i32 2 }, %struct.axp20x_time { i32 3000, i32 1 }, %struct.axp20x_time { i32 2000, i32 3 }], [32 x i8] zeroinitializer }, align 32
@shutdown_time = internal constant { [4 x %struct.axp20x_time], [32 x i8] } { [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 4000, i32 0 }, %struct.axp20x_time { i32 6000, i32 1 }, %struct.axp20x_time { i32 8000, i32 2 }, %struct.axp20x_time { i32 10000, i32 3 }], [32 x i8] zeroinitializer }, align 32
@axp221_startup_time = internal constant { [4 x %struct.axp20x_time], [32 x i8] } { [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 128, i32 0 }, %struct.axp20x_time { i32 1000, i32 1 }, %struct.axp20x_time { i32 2000, i32 2 }, %struct.axp20x_time { i32 3000, i32 3 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"axp20x_pek_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 411, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 415, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"axp20x_groups\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"axp20x_pek_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 391, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"axp_pek_id_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 398, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 315, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 233, i32 54 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 239, i32 54 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 252, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 261, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 263, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 270, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 272, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 279, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"axp20x_group\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 205, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"axp20x_attrs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 200, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"dev_attr_startup\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"dev_attr_shutdown\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 195, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 107, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 197, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"axp20x_info\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 74, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"axp221_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 81, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"startup_time\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 53, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"shutdown_time\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 67, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"axp221_startup_time\00", align 1
@___asan_gen_.125 = private constant [35 x i8] c"../drivers/input/misc/axp20x-pek.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 60, i32 33 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_axp20x_pek_driver_exit, ptr @__initcall__kmod_axp20x_pek__227_420_axp20x_pek_driver_init6, ptr @axp20x_pek_driver_exit, ptr @axp20x_pek_probe._entry, ptr @axp20x_pek_probe._entry_ptr, ptr @axp20x_pek_probe_input_device._entry, ptr @axp20x_pek_probe_input_device._entry.13, ptr @axp20x_pek_probe_input_device._entry.16, ptr @axp20x_pek_probe_input_device._entry_ptr, ptr @axp20x_pek_probe_input_device._entry_ptr.15, ptr @axp20x_pek_probe_input_device._entry_ptr.18, ptr @axp20x_pek_driver, ptr @.str, ptr @axp20x_groups, ptr @axp20x_pek_pm_ops, ptr @axp_pek_id_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @axp20x_group, ptr @axp20x_attrs, ptr @dev_attr_startup, ptr @dev_attr_shutdown, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @axp20x_info, ptr @axp221_info, ptr @startup_time, ptr @shutdown_time, ptr @axp221_startup_time], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_pek_id_match to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_probe_input_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_probe_input_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_pek_probe_input_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_startup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_shutdown to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp221_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp221_startup_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_pek_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_pek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_pek_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %tobool.not = icmp eq ptr %1, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %call.i28 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #9
  %irq_dbr.i = getelementptr inbounds %struct.axp20x_pek, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %irq_dbr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i28, ptr %irq_dbr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp.i = icmp slt i32 %call.i28, 0
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %regmap_irqc.i = getelementptr inbounds %struct.axp20x_dev, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %regmap_irqc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_irqc.i, align 4
  %call5.i = tail call i32 @regmap_irq_get_virq(ptr noundef %9, i32 noundef %call.i28) #9
  %10 = ptrtoint ptr %irq_dbr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call5.i, ptr %irq_dbr.i, align 4
  %call7.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #9
  %irq_dbf.i = getelementptr inbounds %struct.axp20x_pek, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %irq_dbf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7.i, ptr %irq_dbf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp9.i = icmp slt i32 %call7.i, 0
  br i1 %cmp9.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %regmap_irqc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_irqc.i, align 4
  %call15.i = tail call i32 @regmap_irq_get_virq(ptr noundef %13, i32 noundef %call7.i) #9
  %14 = ptrtoint ptr %irq_dbf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call15.i, ptr %irq_dbf.i, align 4
  %call17.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #9
  %input.i = getelementptr inbounds %struct.axp20x_pek, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17.i, ptr %input.i, align 4
  %tobool.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not.i, label %if.end12.i.cleanup_crit_edge, label %if.end20.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.i:                                       ; preds = %if.end12.i
  %16 = ptrtoint ptr %call17.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %call17.i, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call17.i, i32 0, i32 1
  %17 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.8, ptr %phys.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call17.i, i32 0, i32 40, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent.i, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call17.i, i32 noundef 1, i32 noundef 116) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call17.i, i32 0, i32 40, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %20 = ptrtoint ptr %irq_dbr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_dbr.i, align 4
  %call26.i = tail call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @axp20x_pek_irq, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end.i, label %if.end31.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %irq_dbr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_dbr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %23, i32 noundef %call26.i) #12
  br label %cleanup

if.end31.i:                                       ; preds = %if.end20.i
  %24 = ptrtoint ptr %irq_dbf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_dbf.i, align 4
  %call34.i = tail call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @axp20x_pek_irq, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %call17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %do.end39.i, label %if.end42.i

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %irq_dbf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_dbf.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %27, i32 noundef %call34.i) #12
  br label %cleanup

if.end42.i:                                       ; preds = %if.end31.i
  %call43.i = tail call i32 @input_register_device(ptr noundef nonnull %call17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end13, label %do.end48.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call43.i) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %call52.i = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #9
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data, align 4
  %30 = inttoptr i32 %29 to ptr
  %info = getelementptr inbounds %struct.axp20x_pek, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end48.i, %do.end39.i, %do.end.i, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end12.i.cleanup_crit_edge ], [ %call7.i, %if.end.i.cleanup_crit_edge ], [ %call.i28, %if.end4.cleanup_crit_edge ], [ %call43.i, %do.end48.i ], [ %call34.i, %do.end39.i ], [ %call26.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_irq(i32 noundef %irq, ptr noundef %pwr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %pwr, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_dbf = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_dbf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_dbf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp = icmp eq i32 %3, %irq
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.else

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.sink.split

if.else:                                          ; preds = %entry
  %irq_dbr = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_dbr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_dbr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp1 = icmp eq i32 %5, %irq
  br i1 %cmp1, label %if.else.if.end3.sink.split_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else.if.end3.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.else.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end3.sink.split_crit_edge ], [ 0, %if.else.if.end3.sink.split_crit_edge ]
  tail call void @input_event(ptr noundef %pwr, i32 noundef 1, i32 noundef 116, i32 noundef %.sink) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.else.if.end3_crit_edge
  tail call void @input_event(ptr noundef %pwr, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_show_attr_startup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %startup_mask = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %startup_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %startup_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.axp20x_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 54, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.axp20x_show_attr.exit_crit_edge

entry.axp20x_show_attr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %axp20x_show_attr.exit

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and.i = and i32 %14, %7
  %15 = call i32 @llvm.cttz.i32(i32 %7, i1 true) #9, !range !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero.i = icmp eq i32 %7, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %15
  %shr.i = lshr i32 %and.i, %sub.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %val.i, align 4
  %idx.i = getelementptr %struct.axp20x_time, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %18)
  %cmp3.i = icmp eq i32 %shr.i, %18
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i.for.inc.i_crit_edge
  %22 = phi i32 [ %shr.i, %if.end.i.for.inc.i_crit_edge ], [ %20, %if.then4.i ]
  %idx.1.i = getelementptr %struct.axp20x_time, ptr %5, i32 1, i32 1
  %23 = ptrtoint ptr %idx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp3.1.i = icmp eq i32 %22, %24
  br i1 %cmp3.1.i, label %if.then4.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then4.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1.i = getelementptr %struct.axp20x_time, ptr %5, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then4.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %28 = phi i32 [ %22, %for.inc.i.for.inc.1.i_crit_edge ], [ %26, %if.then4.1.i ]
  %idx.2.i = getelementptr %struct.axp20x_time, ptr %5, i32 2, i32 1
  %29 = ptrtoint ptr %idx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.2.i = icmp eq i32 %28, %30
  br i1 %cmp3.2.i, label %if.then4.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then4.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2.i = getelementptr %struct.axp20x_time, ptr %5, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2.i, align 4
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then4.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %34 = phi i32 [ %28, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %32, %if.then4.2.i ]
  %idx.3.i = getelementptr %struct.axp20x_time, ptr %5, i32 3, i32 1
  %35 = ptrtoint ptr %idx.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.3.i = icmp eq i32 %34, %36
  br i1 %cmp3.3.i, label %if.then4.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then4.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3.i = getelementptr %struct.axp20x_time, ptr %5, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.i, align 4
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then4.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %41) #9
  br label %axp20x_show_attr.exit

axp20x_show_attr.exit:                            ; preds = %for.inc.3.i, %entry.axp20x_show_attr.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %for.inc.3.i ], [ %call1.i, %entry.axp20x_show_attr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_store_attr_startup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %startup_mask = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %startup_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %startup_mask, align 4
  %call2 = tail call fastcc i32 @axp20x_store_attr(ptr noundef %dev, ptr noundef %5, i32 noundef %7, ptr noundef %buf, i32 noundef %count)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axp20x_store_attr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %time, i32 noundef %mask, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %val_str = alloca [20 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %val_str) #9
  %2 = getelementptr inbounds [20 x i8], ptr %val_str, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !81
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  %call1 = call ptr @strncpy(ptr noundef nonnull %val_str, ptr noundef %buf, i32 noundef 19)
  %call3 = call i32 @strlen(ptr noundef nonnull %val_str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub = add i32 %call3, -1
  %arrayidx4 = getelementptr [20 x i8], ptr %val_str, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp = icmp eq i8 %6, 10
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = call i32 @kstrtouint(ptr noundef nonnull %val_str, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end26, label %if.end.cleanup36_crit_edge

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

for.cond:                                         ; preds = %if.end26
  %sub17 = sub i32 %27, %25
  %8 = call i32 @llvm.abs.i32(i32 %sub17, i1 false)
  %arrayidx15.1 = getelementptr %struct.axp20x_time, ptr %time, i32 2
  %9 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15.1, align 4
  %sub17.1 = sub i32 %10, %25
  %11 = call i32 @llvm.abs.i32(i32 %sub17.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp21.1 = icmp ult i32 %11, %8
  br i1 %cmp21.1, label %if.then23.1, label %for.cond.if.end26.1_crit_edge

for.cond.if.end26.1_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.1

if.then23.1:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %idx25.1 = getelementptr %struct.axp20x_time, ptr %time, i32 2, i32 1
  %12 = ptrtoint ptr %idx25.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx25.1, align 4
  br label %if.end26.1

if.end26.1:                                       ; preds = %if.then23.1, %for.cond.if.end26.1_crit_edge
  %idx.1.1 = phi i32 [ %13, %if.then23.1 ], [ %29, %for.cond.if.end26.1_crit_edge ]
  %best_err.1.1 = phi i32 [ %11, %if.then23.1 ], [ %8, %for.cond.if.end26.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %25)
  %tobool27.not.1 = icmp eq i32 %10, %25
  br i1 %tobool27.not.1, label %if.end26.1.for.end_crit_edge, label %for.cond.1

if.end26.1.for.end_crit_edge:                     ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %if.end26.1
  %arrayidx15.2 = getelementptr %struct.axp20x_time, ptr %time, i32 1
  %14 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15.2, align 4
  %sub17.2 = sub i32 %15, %25
  %16 = call i32 @llvm.abs.i32(i32 %sub17.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %best_err.1.1)
  %cmp21.2 = icmp ult i32 %16, %best_err.1.1
  br i1 %cmp21.2, label %if.then23.2, label %for.cond.1.if.end26.2_crit_edge

for.cond.1.if.end26.2_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.2

if.then23.2:                                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  %idx25.2 = getelementptr %struct.axp20x_time, ptr %time, i32 1, i32 1
  %17 = ptrtoint ptr %idx25.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx25.2, align 4
  br label %if.end26.2

if.end26.2:                                       ; preds = %if.then23.2, %for.cond.1.if.end26.2_crit_edge
  %idx.1.2 = phi i32 [ %18, %if.then23.2 ], [ %idx.1.1, %for.cond.1.if.end26.2_crit_edge ]
  %best_err.1.2 = phi i32 [ %16, %if.then23.2 ], [ %best_err.1.1, %for.cond.1.if.end26.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %25)
  %tobool27.not.2 = icmp eq i32 %15, %25
  br i1 %tobool27.not.2, label %if.end26.2.for.end_crit_edge, label %for.cond.2

if.end26.2.for.end_crit_edge:                     ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %if.end26.2
  %19 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time, align 4
  %sub17.3 = sub i32 %20, %25
  %21 = call i32 @llvm.abs.i32(i32 %sub17.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %best_err.1.2)
  %cmp21.3 = icmp ult i32 %21, %best_err.1.2
  br i1 %cmp21.3, label %if.then23.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then23.3:                                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %idx25.3 = getelementptr %struct.axp20x_time, ptr %time, i32 0, i32 1
  %22 = ptrtoint ptr %idx25.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx25.3, align 4
  br label %for.end

if.end26:                                         ; preds = %if.end
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %arrayidx15 = getelementptr %struct.axp20x_time, ptr %time, i32 3
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15, align 4
  %idx25 = getelementptr %struct.axp20x_time, ptr %time, i32 3, i32 1
  %28 = ptrtoint ptr %idx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %tobool27.not = icmp eq i32 %27, %25
  br i1 %tobool27.not, label %if.end26.for.end_crit_edge, label %for.cond

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %if.then23.3, %for.cond.2.for.end_crit_edge, %if.end26.2.for.end_crit_edge, %if.end26.1.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ %29, %if.end26.for.end_crit_edge ], [ %idx.1.1, %if.end26.1.for.end_crit_edge ], [ %idx.1.2, %if.end26.2.for.end_crit_edge ], [ %23, %if.then23.3 ], [ %idx.1.2, %for.cond.2.for.end_crit_edge ]
  %30 = call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %iszero = icmp eq i32 %mask, 0
  %sub30 = select i1 %iszero, i32 -1, i32 %30
  %shl = shl i32 %idx.1.lcssa, %sub30
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 54, i32 noundef %mask, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32.not = icmp eq i32 %call.i, 0
  %count. = select i1 %cmp32.not, i32 %count, i32 -22
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %if.end.cleanup36_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end.cleanup36_crit_edge ], [ %count., %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %val_str) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_show_attr_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %shutdown_time = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %shutdown_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shutdown_time, align 4
  %shutdown_mask = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %shutdown_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shutdown_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.axp20x_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 54, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.axp20x_show_attr.exit_crit_edge

entry.axp20x_show_attr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %axp20x_show_attr.exit

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and.i = and i32 %14, %7
  %15 = call i32 @llvm.cttz.i32(i32 %7, i1 true) #9, !range !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %iszero.i = icmp eq i32 %7, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %15
  %shr.i = lshr i32 %and.i, %sub.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %val.i, align 4
  %idx.i = getelementptr %struct.axp20x_time, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %18)
  %cmp3.i = icmp eq i32 %shr.i, %18
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i.for.inc.i_crit_edge
  %22 = phi i32 [ %shr.i, %if.end.i.for.inc.i_crit_edge ], [ %20, %if.then4.i ]
  %idx.1.i = getelementptr %struct.axp20x_time, ptr %5, i32 1, i32 1
  %23 = ptrtoint ptr %idx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp3.1.i = icmp eq i32 %22, %24
  br i1 %cmp3.1.i, label %if.then4.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then4.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1.i = getelementptr %struct.axp20x_time, ptr %5, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then4.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %28 = phi i32 [ %22, %for.inc.i.for.inc.1.i_crit_edge ], [ %26, %if.then4.1.i ]
  %idx.2.i = getelementptr %struct.axp20x_time, ptr %5, i32 2, i32 1
  %29 = ptrtoint ptr %idx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.2.i = icmp eq i32 %28, %30
  br i1 %cmp3.2.i, label %if.then4.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then4.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2.i = getelementptr %struct.axp20x_time, ptr %5, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2.i, align 4
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %val.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then4.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %34 = phi i32 [ %28, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %32, %if.then4.2.i ]
  %idx.3.i = getelementptr %struct.axp20x_time, ptr %5, i32 3, i32 1
  %35 = ptrtoint ptr %idx.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.3.i = icmp eq i32 %34, %36
  br i1 %cmp3.3.i, label %if.then4.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then4.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3.i = getelementptr %struct.axp20x_time, ptr %5, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.i, align 4
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then4.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %41) #9
  br label %axp20x_show_attr.exit

axp20x_show_attr.exit:                            ; preds = %for.inc.3.i, %entry.axp20x_show_attr.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %for.inc.3.i ], [ %call1.i, %entry.axp20x_show_attr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_store_attr_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %shutdown_time = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %shutdown_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shutdown_time, align 4
  %shutdown_mask = getelementptr inbounds %struct.axp20x_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %shutdown_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shutdown_mask, align 4
  %call2 = tail call fastcc i32 @axp20x_store_attr(ptr noundef %dev, ptr noundef %5, i32 noundef %7, ptr noundef %buf, i32 noundef %count)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_dbf = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq_dbf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_dbf, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #9
  %irq_dbr = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %irq_dbr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_dbr, align 4
  %call.i10 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %irq_dbf4 = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %irq_dbf4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_dbf4, align 4
  tail call void @disable_irq(i32 noundef %10) #9
  %irq_dbr5 = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %irq_dbr5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_dbr5, align 4
  tail call void @disable_irq(i32 noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_dbf = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq_dbf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_dbf, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #9
  %irq_dbr = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %irq_dbr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_dbr, align 4
  %call.i10 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %irq_dbf4 = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %irq_dbf4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_dbf4, align 4
  tail call void @enable_irq(i32 noundef %10) #9
  %irq_dbr5 = getelementptr inbounds %struct.axp20x_pek, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %irq_dbr5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_dbr5, align 4
  tail call void @enable_irq(i32 noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_pek_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 76, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_axp20x_pek__227_420_axp20x_pek_driver_init6, !1, !"__initcall__kmod_axp20x_pek__227_420_axp20x_pek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/axp20x-pek.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_axp20x_pek_driver_exit, !1, !"__exitcall_axp20x_pek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/axp20x-pek.c", i32 422, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/axp20x-pek.c", i32 423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/axp20x-pek.c", i32 424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/axp20x-pek.c", i32 415, i32 12}
!12 = !{ptr @axp20x_pek_driver, !13, !"axp20x_pek_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/axp20x-pek.c", i32 411, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/axp20x-pek.c", i32 315, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axp20x_pek_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axp20x_pek_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/axp20x-pek.c", i32 233, i32 54}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/axp20x-pek.c", i32 239, i32 54}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/axp20x-pek.c", i32 252, i32 15}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/axp20x-pek.c", i32 261, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/axp20x-pek.c", i32 263, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @axp20x_pek_probe_input_device._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @axp20x_pek_probe_input_device._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/misc/axp20x-pek.c", i32 270, i32 8}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/axp20x-pek.c", i32 272, i32 3}
!39 = !{ptr @axp20x_pek_probe_input_device._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @axp20x_pek_probe_input_device._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/axp20x-pek.c", i32 279, i32 3}
!43 = !{ptr @axp20x_pek_probe_input_device._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @axp20x_pek_probe_input_device._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @axp20x_groups, !46, !"axp20x_groups", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/axp20x-pek.c", i32 205, i32 1}
!47 = !{ptr @axp20x_group, !46, !"axp20x_group", i1 false, i1 false}
!48 = !{ptr @axp20x_attrs, !49, !"axp20x_attrs", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/axp20x-pek.c", i32 200, i32 26}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/axp20x-pek.c", i32 195, i32 8}
!52 = !{ptr @dev_attr_startup, !51, !"dev_attr_startup", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/axp20x-pek.c", i32 107, i32 22}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/axp20x-pek.c", i32 197, i32 8}
!57 = !{ptr @dev_attr_shutdown, !56, !"dev_attr_shutdown", i1 false, i1 false}
!58 = !{ptr @axp20x_pek_pm_ops, !59, !"axp20x_pek_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/axp20x-pek.c", i32 391, i32 32}
!60 = !{ptr @axp_pek_id_match, !61, !"axp_pek_id_match", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/axp20x-pek.c", i32 398, i32 40}
!62 = !{ptr @axp20x_info, !63, !"axp20x_info", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/axp20x-pek.c", i32 74, i32 33}
!64 = !{ptr @startup_time, !65, !"startup_time", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/axp20x-pek.c", i32 53, i32 33}
!66 = !{ptr @shutdown_time, !67, !"shutdown_time", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/axp20x-pek.c", i32 67, i32 33}
!68 = !{ptr @axp221_info, !69, !"axp221_info", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/axp20x-pek.c", i32 81, i32 33}
!70 = !{ptr @axp221_startup_time, !71, !"axp221_startup_time", i1 false, i1 false}
!71 = !{!"../drivers/input/misc/axp20x-pek.c", i32 60, i32 33}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i32 0, i32 33}
