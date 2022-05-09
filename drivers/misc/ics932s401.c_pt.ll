; ModuleID = '/llk/IR_all_yes/drivers/misc/ics932s401.c_pt.bc'
source_filename = "../drivers/misc/ics932s401.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ics932s401_data = type { %struct.attribute_group, %struct.mutex, i8, i32, [21 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ics932s401__288_472_ics932s401_driver_init6 = internal global ptr @ics932s401_driver_init, section ".initcall6.init", align 4
@ics932s401_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @ics932s401_probe, ptr @ics932s401_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ics932s401_id, ptr @ics932s401_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ics932s401_driver_exit = internal global ptr @ics932s401_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"ics932s401.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [41 x i8] c"ics932s401.description=ICS932S401 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"ics932s401.file=drivers/misc/ics932s401\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"ics932s401.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [39 x i8] c"ics932s401.alias=dmi:bvnIBM:*:rn9228:*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [39 x i8] c"ics932s401.alias=dmi:bvnIBM:*:rn9232:*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [48 x i8] c"ics932s401.alias=dmi:bvnIBM:*:pnIBMSystemx3650*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [48 x i8] c"ics932s401.alias=dmi:bvnIBM:*:pnIBMSystemx3550*\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ics932s401\00", [21 x i8] zeroinitializer }, align 32
@ics932s401_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ics932s401\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 105, i16 -2], [28 x i8] zeroinitializer }, align 32
@ics932s401_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ics932s401_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s chip found\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ics932s401_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/misc/ics932s401.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ics932s401_probe._entry_ptr = internal global ptr @ics932s401_probe._entry, section ".printk_index", align 4
@ics932s401_attr = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @dev_attr_spread_enabled, ptr @dev_attr_cpu_clock_selection, ptr @dev_attr_cpu_clock, ptr @dev_attr_src_clock_selection, ptr @dev_attr_src_clock, ptr @dev_attr_pci_clock_selection, ptr @dev_attr_pci_clock, ptr @dev_attr_usb_clock, ptr @dev_attr_ref_clock, ptr @dev_attr_cpu_spread, ptr @dev_attr_src_spread, ptr null], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_attr_spread_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_spread_enabled, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu_clock_selection = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cpu_clock_sel, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cpu_clock, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_src_clock_selection = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_src_clock_sel, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_src_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_src_clock, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pci_clock_selection = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pci_clock_sel, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pci_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pci_clock, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_value, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ref_clock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_value, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu_spread = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_spread, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_src_spread = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_spread, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spread_enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@regs_to_copy = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 6, i32 7, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20], [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpu_clock_selection\00", [44 x i8] zeroinitializer }, align 32
@fs_speeds = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 266666, i32 133333, i32 200000, i32 166666, i32 333333, i32 100000, i32 400000, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@divisors = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2, i32 3, i32 5, i32 15, i32 4, i32 6, i32 10, i32 30, i32 8, i32 12, i32 20, i32 60, i32 16, i32 24, i32 40, i32 120], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpu_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"src_clock_selection\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"src_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_clock_selection\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ref_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_spread\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0%%\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"-0.%lu%%\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"src_spread\00", [21 x i8] zeroinitializer }, align 32
@ics932s401_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown revision %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ics932s401_detect\00", [46 x i8] zeroinitializer }, align 32
@ics932s401_detect._entry_ptr = internal global ptr @ics932s401_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 166666, i64 333333]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"ics932s401_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 104, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 107, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ics932s401_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 98, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 19, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 445, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 447, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ics932s401_attr\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 345, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"dev_attr_spread_enabled\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"dev_attr_cpu_clock_selection\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"dev_attr_cpu_clock\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [29 x i8] c"dev_attr_src_clock_selection\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"dev_attr_src_clock\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"dev_attr_pci_clock_selection\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"dev_attr_pci_clock\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"dev_attr_usb_clock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"dev_attr_ref_clock\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"dev_attr_cpu_spread\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"dev_attr_src_spread\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 333, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 156, i32 23 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 158, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"regs_to_copy\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 59, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 334, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"fs_speeds\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 162, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 231, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"divisors\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 174, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 335, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 336, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 337, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 338, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 339, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 340, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 341, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 342, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 385, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 399, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 343, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [29 x i8] c"../drivers/misc/ics932s401.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 425, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ics932s401_driver_exit, ptr @__initcall__kmod_ics932s401__288_472_ics932s401_driver_init6, ptr @ics932s401_detect._entry, ptr @ics932s401_detect._entry_ptr, ptr @ics932s401_driver_exit, ptr @ics932s401_probe._entry, ptr @ics932s401_probe._entry_ptr, ptr @ics932s401_driver, ptr @.str, ptr @ics932s401_id, ptr @normal_i2c, ptr @ics932s401_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ics932s401_attr, ptr @dev_attr_spread_enabled, ptr @dev_attr_cpu_clock_selection, ptr @dev_attr_cpu_clock, ptr @dev_attr_src_clock_selection, ptr @dev_attr_src_clock, ptr @dev_attr_pci_clock_selection, ptr @dev_attr_pci_clock, ptr @dev_attr_usb_clock, ptr @dev_attr_ref_clock, ptr @dev_attr_cpu_spread, ptr @dev_attr_src_spread, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @regs_to_copy, ptr @.str.10, ptr @fs_speeds, ptr @.str.11, ptr @divisors, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_attr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spread_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu_clock_selection to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_src_clock_selection to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_src_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pci_clock_selection to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pci_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ref_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu_spread to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_src_spread to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_to_copy to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_speeds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @divisors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ics932s401_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ics932s401_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ics932s401_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ics932s401_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ics932s401_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ics932s401_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ics932s401_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ics932s401_probe.__key) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %name) #12
  %attrs4 = getelementptr inbounds %struct.attribute_group, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %attrs4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ics932s401_attr, ptr %attrs4, align 4
  %call7 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %exit_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_free:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call7, %exit_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ics932s401_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef %1) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ics932s401_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 7) #8
  %shr3 = ashr i32 %call2, 12
  %6 = and i32 %call2, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %cmp.not = icmp eq i32 %6, 256
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 9) #8
  %shr7.mask = and i32 %call6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2816, i32 %shr7.mask)
  %cmp8.not = icmp eq i32 %shr7.mask, 2816
  br i1 %cmp8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr3)
  %cmp11.not = icmp eq i32 %shr3, 4
  br i1 %cmp11.not, label %if.end10.if.end13_crit_edge, label %do.end

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %shr3) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end10.if.end13_crit_edge
  %call14 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_spread_enabled(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = call ptr @memcpy(ptr %buf, ptr @.str.9, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cpu_clock_sel(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i20 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 11
  %16 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i20, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 12
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i21 = zext i8 %19 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i21
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %20 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %20, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 19
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16.i, align 1
  %23 = lshr i8 %22, 4
  %24 = zext i8 %23 to i32
  %arrayidx18.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.i, align 4
  %div19.i = sdiv i32 %div.i, %26
  br label %if.end14

if.else:                                          ; preds = %ics932s401_update_device.exit
  %arrayidx3 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3, align 2
  %29 = and i8 %28, 7
  %and5 = zext i8 %29 to i32
  %arrayidx6 = getelementptr [8 x i32], ptr @fs_speeds, i32 0, i32 %and5
  %30 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6, align 4
  %and10 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.if.end14_crit_edge, label %if.then12

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.else
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.then12.if.end14_crit_edge [
    i32 166666, label %sw.bb
    i32 333333, label %sw.bb13
  ]

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

sw.bb:                                            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

sw.bb13:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %sw.bb13, %sw.bb, %if.then12.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then
  %freq.1 = phi i32 [ %div19.i, %if.then ], [ %31, %if.then12.if.end14_crit_edge ], [ 320000, %sw.bb13 ], [ 160000, %sw.bb ], [ %31, %if.else.if.end14_crit_edge ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %freq.1)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cpu_clock(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx.i3 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 11
  %14 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i3, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 12
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i4 = zext i8 %17 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i4
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %18 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %18, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 19
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16.i, align 1
  %21 = lshr i8 %20, 4
  %22 = zext i8 %21 to i32
  %arrayidx18.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18.i, align 4
  %div19.i = sdiv i32 %div.i, %24
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %div19.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_src_clock_sel(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i19 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 15
  %16 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i19, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 16
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i20 = zext i8 %19 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i20
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %20 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %20, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 20
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16.i, align 4
  %23 = and i8 %22, 15
  %and18.i = zext i8 %23 to i32
  %arrayidx19.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %and18.i
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19.i, align 4
  %div20.i = sdiv i32 %div.i, %25
  br label %if.end14

if.else:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %.not = icmp eq i32 %26, 12
  %spec.select = select i1 %.not, i32 96000, i32 100000
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then
  %freq.0 = phi i32 [ %div20.i, %if.then ], [ %spec.select, %if.else ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %freq.0)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_src_clock(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx.i3 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 15
  %14 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i3, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 16
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i4 = zext i8 %17 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i4
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %18 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %18, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 20
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16.i, align 4
  %21 = and i8 %20, 15
  %and18.i = zext i8 %21 to i32
  %arrayidx19.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %and18.i
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19.i, align 4
  %div20.i = sdiv i32 %div.i, %23
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %div20.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pci_clock_sel(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %ics932s401_update_device.exit.if.end_crit_edge, label %if.then

ics932s401_update_device.exit.if.end_crit_edge:   ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i4 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 15
  %16 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i4, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 16
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i5 = zext i8 %19 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i5
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %20 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %20, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 20
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16.i, align 4
  %23 = lshr i8 %22, 4
  %24 = zext i8 %23 to i32
  %arrayidx18.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.i, align 4
  %div19.i = sdiv i32 %div.i, %26
  br label %if.end

if.end:                                           ; preds = %if.then, %ics932s401_update_device.exit.if.end_crit_edge
  %freq.0 = phi i32 [ %div19.i, %if.then ], [ 33333, %ics932s401_update_device.exit.if.end_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %freq.0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pci_clock(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx.i3 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 15
  %14 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i3, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 63
  %arrayidx2.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 16
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 4
  %conv3.i4 = zext i8 %17 to i32
  %and7.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = and i32 %and7.i, 256
  %or.i = or i32 %shl.i, %conv3.i4
  %and11.i = shl nuw nsw i32 %conv.i, 3
  %shl12.i = and i32 %and11.i, 512
  %or13.i = or i32 %or.i, %shl12.i
  %18 = mul nuw nsw i32 %or13.i, 14318
  %mul.i = add nuw nsw i32 %18, 114544
  %add14.i = add nuw nsw i32 %and.i, 2
  %div.i = udiv i32 %mul.i, %add14.i
  %arrayidx16.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 20
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16.i, align 4
  %21 = lshr i8 %20, 4
  %22 = zext i8 %21 to i32
  %arrayidx18.i = getelementptr [16 x i32], ptr @divisors, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18.i, align 4
  %div19.i = sdiv i32 %div.i, %24
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %div19.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_value(ptr nocapture noundef readnone %dev, ptr noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %devattr, @dev_attr_usb_clock
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq ptr %devattr, @dev_attr_ref_clock
  br i1 %cmp1, label %if.else.if.end7_crit_edge, label %do.body

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ics932s401.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 371, 0\0A.popsection", ""() #8, !srcloc !102
  unreachable

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %x.0 = phi i32 [ 48000, %entry.if.end7_crit_edge ], [ 14318, %if.else.if.end7_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %x.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_spread(ptr noundef %dev, ptr noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %sensors_last_updated.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensors_last_updated.i, align 4
  %add.neg.i = add i32 %2, -200
  %sub.i = sub i32 %add.neg.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %sensors_valid.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sensors_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensors_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i.ics932s401_update_device.exit_crit_edge

land.lhs.true.i.ics932s401_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ics932s401_update_device.exit

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [15 x i32], ptr @regs_to_copy, i32 0, i32 %i.028.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv3.i = trunc i32 %8 to i8
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3.i) #8
  %9 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #8
  %10 = lshr i32 %9, 8
  %conv9.i = trunc i32 %10 to i8
  %arrayidx11.i = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %8
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sensors_last_updated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %sensors_last_updated.i, align 4
  %sensors_valid13.i = getelementptr inbounds %struct.ics932s401_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %sensors_valid13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sensors_valid13.i, align 4
  br label %ics932s401_update_device.exit

ics932s401_update_device.exit:                    ; preds = %for.end.i, %land.lhs.true.i.ics932s401_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %ics932s401_update_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20)
  br label %cleanup

if.end:                                           ; preds = %ics932s401_update_device.exit
  %cmp = icmp eq ptr %devattr, @dev_attr_src_spread
  br i1 %cmp, label %if.end.if.end12_crit_edge, label %if.else

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  %cmp4 = icmp eq ptr %devattr, @dev_attr_cpu_spread
  br i1 %cmp4, label %if.else.if.end12_crit_edge, label %do.body

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ics932s401.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %reg.0 = phi i32 [ 17, %if.end.if.end12_crit_edge ], [ 13, %if.else.if.end12_crit_edge ]
  %arrayidx14 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %reg.0
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %add = add nuw nsw i32 %reg.0, 1
  %arrayidx17 = getelementptr %struct.ics932s401_data, ptr %1, i32 0, i32 4, i32 %add
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %shl.masked = and i32 %shl, 32512
  %and19 = or i32 %shl.masked, %conv15
  %mul = mul i32 %and19, 500000
  %div30 = lshr i32 %mul, 14
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %div30)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ %call20, %if.end12 ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83, !84, !86, !88, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_ics932s401__288_472_ics932s401_driver_init6, !1, !"__initcall__kmod_ics932s401__288_472_ics932s401_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/ics932s401.c", i32 472, i32 1}
!2 = !{ptr @__exitcall_ics932s401_driver_exit, !1, !"__exitcall_ics932s401_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/misc/ics932s401.c", i32 474, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/misc/ics932s401.c", i32 475, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/misc/ics932s401.c", i32 476, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/misc/ics932s401.c", i32 479, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias294, !13, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!13 = !{!"../drivers/misc/ics932s401.c", i32 480, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias295, !15, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!15 = !{!"../drivers/misc/ics932s401.c", i32 483, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias296, !17, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!17 = !{!"../drivers/misc/ics932s401.c", i32 484, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/ics932s401.c", i32 107, i32 11}
!20 = !{ptr @ics932s401_driver, !21, !"ics932s401_driver", i1 false, i1 false}
!21 = !{!"../drivers/misc/ics932s401.c", i32 104, i32 26}
!22 = !{ptr @ics932s401_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/misc/ics932s401.c", i32 445, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/ics932s401.c", i32 447, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ics932s401_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @ics932s401_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ics932s401_attr, !34, !"ics932s401_attr", i1 false, i1 false}
!34 = !{!"../drivers/misc/ics932s401.c", i32 345, i32 26}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/ics932s401.c", i32 333, i32 8}
!37 = !{ptr @dev_attr_spread_enabled, !36, !"dev_attr_spread_enabled", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/ics932s401.c", i32 156, i32 23}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/ics932s401.c", i32 158, i32 22}
!42 = !{ptr @regs_to_copy, !43, !"regs_to_copy", i1 false, i1 false}
!43 = !{!"../drivers/misc/ics932s401.c", i32 59, i32 12}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/ics932s401.c", i32 334, i32 8}
!46 = !{ptr @dev_attr_cpu_clock_selection, !45, !"dev_attr_cpu_clock_selection", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/ics932s401.c", i32 231, i32 22}
!49 = !{ptr @divisors, !50, !"divisors", i1 false, i1 false}
!50 = !{!"../drivers/misc/ics932s401.c", i32 174, i32 18}
!51 = !{ptr @fs_speeds, !52, !"fs_speeds", i1 false, i1 false}
!52 = !{!"../drivers/misc/ics932s401.c", i32 162, i32 18}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/ics932s401.c", i32 335, i32 8}
!55 = !{ptr @dev_attr_cpu_clock, !54, !"dev_attr_cpu_clock", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/ics932s401.c", i32 336, i32 8}
!58 = !{ptr @dev_attr_src_clock_selection, !57, !"dev_attr_src_clock_selection", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/ics932s401.c", i32 337, i32 8}
!61 = !{ptr @dev_attr_src_clock, !60, !"dev_attr_src_clock", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/ics932s401.c", i32 338, i32 8}
!64 = !{ptr @dev_attr_pci_clock_selection, !63, !"dev_attr_pci_clock_selection", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/ics932s401.c", i32 339, i32 8}
!67 = !{ptr @dev_attr_pci_clock, !66, !"dev_attr_pci_clock", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/ics932s401.c", i32 340, i32 8}
!70 = !{ptr @dev_attr_usb_clock, !69, !"dev_attr_usb_clock", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/ics932s401.c", i32 341, i32 8}
!73 = !{ptr @dev_attr_ref_clock, !72, !"dev_attr_ref_clock", i1 false, i1 false}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/ics932s401.c", i32 342, i32 8}
!76 = !{ptr @dev_attr_cpu_spread, !75, !"dev_attr_cpu_spread", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/ics932s401.c", i32 385, i32 23}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/ics932s401.c", i32 399, i32 22}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/ics932s401.c", i32 343, i32 8}
!83 = !{ptr @dev_attr_src_spread, !82, !"dev_attr_src_spread", i1 false, i1 false}
!84 = !{ptr @ics932s401_id, !85, !"ics932s401_id", i1 false, i1 false}
!85 = !{!"../drivers/misc/ics932s401.c", i32 98, i32 35}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/ics932s401.c", i32 425, i32 3}
!88 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ics932s401_detect._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ics932s401_detect._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @normal_i2c, !92, !"normal_i2c", i1 false, i1 false}
!92 = !{!"../drivers/misc/ics932s401.c", i32 19, i32 29}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2155549628, i64 2155550118, i64 2155549665, i64 2155549721, i64 2155549755, i64 2155549779, i64 2155549820, i64 2155549841, i64 2155549869, i64 2155549903}
!103 = !{i64 2155551144, i64 2155551634, i64 2155551181, i64 2155551237, i64 2155551271, i64 2155551295, i64 2155551336, i64 2155551357, i64 2155551385, i64 2155551419}
