; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8952.c_pt.bc'
source_filename = "../drivers/regulator/max8952.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max8952_platform_data = type { i32, [4 x i32], i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8952_data = type { ptr, ptr, ptr, ptr, i8, i8 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_max8952__288_329_max8952_pmic_init4 = internal global ptr @max8952_pmic_init, section ".initcall4.init", align 4
@max8952_pmic_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8952_pmic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8952_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8952_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max8952_pmic_exit = internal global ptr @max8952_pmic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [56 x i8] c"max8952.description=MAXIM 8952 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"max8952.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"max8952.file=drivers/regulator/max8952\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"max8952.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8952\00", [24 x i8] zeroinitializer }, align 32
@max8952_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8952\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max8952_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8952\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Require the platform data\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8952_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/max8952.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry_ptr = internal global ptr @max8952_pmic_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max8952,en\00", [21 x i8] zeroinitializer }, align 32
@regulator = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max8952_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regulator init failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry_ptr.9 = internal global ptr @max8952_pmic_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8952,vid\00", [20 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VID0/1 gpio invalid: DVS not available.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry_ptr.14 = internal global ptr @max8952_pmic_probe._entry.11, section ".printk_index", align 4
@max8952_pmic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"DVS modes disabled because VID0 and VID1 do not have proper controls.\0A\00", [57 x i8] zeroinitializer }, align 32
@max8952_pmic_probe._entry_ptr.17 = internal global ptr @max8952_pmic_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8952,default-mode\00", [43 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 136, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Default mode not specified, assuming 0\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8952_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr = internal global ptr @max8952_parse_dt._entry, section ".printk_index", align 4
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max8952,dvs-mode-microvolt\00", [37 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"max8952,dvs-mode-microvolt property not specified\00", [46 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr.24 = internal global ptr @max8952_parse_dt._entry.22, section ".printk_index", align 4
@max8952_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DVS voltage %d out of range\0A\00", [35 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr.27 = internal global ptr @max8952_parse_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8952,sync-freq\00", [46 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.3, i32 154, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"max8952,sync-freq property not specified, defaulting to 26MHz\0A\00", [33 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr.31 = internal global ptr @max8952_parse_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8952,ramp-speed\00", [45 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.3, i32 157, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"max8952,ramp-speed property not specified, defaulting to 32mV/us\0A\00", [62 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr.35 = internal global ptr @max8952_parse_dt._entry.33, section ".printk_index", align 4
@max8952_parse_dt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to parse regulator init data\0A\00", [59 x i8] zeroinitializer }, align 32
@max8952_parse_dt._entry_ptr.38 = internal global ptr @max8952_parse_dt._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MAX8952_VOUT\00", [19 x i8] zeroinitializer }, align 32
@max8952_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @max8952_list_voltage, ptr null, ptr null, ptr @max8952_set_voltage_sel, ptr null, ptr @max8952_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"max8952_pmic_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 316, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 319, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"max8952_dt_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 118, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"max8952_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 310, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 191, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 221, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"regulator\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 108, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 231, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 241, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 254, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 267, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 135, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 136, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 138, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 141, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 147, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 153, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 154, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 156, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 157, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 161, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 109, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"max8952_ops\00", align 1
@___asan_gen_.155 = private constant [31 x i8] c"../drivers/regulator/max8952.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 102, i32 35 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8952_pmic_exit, ptr @__initcall__kmod_max8952__288_329_max8952_pmic_init4, ptr @max8952_parse_dt._entry, ptr @max8952_parse_dt._entry.22, ptr @max8952_parse_dt._entry.25, ptr @max8952_parse_dt._entry.29, ptr @max8952_parse_dt._entry.33, ptr @max8952_parse_dt._entry.36, ptr @max8952_parse_dt._entry_ptr, ptr @max8952_parse_dt._entry_ptr.24, ptr @max8952_parse_dt._entry_ptr.27, ptr @max8952_parse_dt._entry_ptr.31, ptr @max8952_parse_dt._entry_ptr.35, ptr @max8952_parse_dt._entry_ptr.38, ptr @max8952_pmic_exit, ptr @max8952_pmic_probe._entry, ptr @max8952_pmic_probe._entry.11, ptr @max8952_pmic_probe._entry.15, ptr @max8952_pmic_probe._entry.7, ptr @max8952_pmic_probe._entry_ptr, ptr @max8952_pmic_probe._entry_ptr.14, ptr @max8952_pmic_probe._entry_ptr.17, ptr @max8952_pmic_probe._entry_ptr.9, ptr @max8952_pmic_driver, ptr @.str, ptr @max8952_dt_match, ptr @max8952_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @regulator, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @max8952_ops], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_pmic_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_pmic_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_pmic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_pmic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_parse_dt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8952_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8952_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8952_pmic_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8952_pmic_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max8952_pmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8952_pmic_probe(ptr noundef %client, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = getelementptr inbounds i8, ptr %config, i32 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %do.end.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %dvs_mode.i = getelementptr %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i80.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef %dvs_mode.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i80.i)
  %tobool6.not.i = icmp sgt i32 %call.i80.i, -1
  br i1 %tobool6.not.i, label %for.body.preheader.i, label %do.end10.i

for.body.preheader.i:                             ; preds = %if.end4.i
  %10 = ptrtoint ptr %dvs_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dvs_mode.i, align 4
  %12 = add i32 %11, -1400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -630001, i32 %12)
  %13 = icmp ult i32 %12, -630001
  br i1 %13, label %for.body.preheader.i.do.end20.i_crit_edge, label %if.end21.i

for.body.preheader.i.do.end20.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %do.end

do.end20.i:                                       ; preds = %if.end21.2.i.do.end20.i_crit_edge, %if.end21.1.i.do.end20.i_crit_edge, %if.end21.i.do.end20.i_crit_edge, %for.body.preheader.i.do.end20.i_crit_edge
  %i.084.lcssa.i = phi i32 [ 0, %for.body.preheader.i.do.end20.i_crit_edge ], [ 1, %if.end21.i.do.end20.i_crit_edge ], [ 2, %if.end21.1.i.do.end20.i_crit_edge ], [ 3, %if.end21.2.i.do.end20.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %i.084.lcssa.i) #8
  br label %do.end

if.end21.i:                                       ; preds = %for.body.preheader.i
  %sub.i = add nsw i32 %11, -770000
  %div.i = udiv i32 %sub.i, 10000
  %14 = ptrtoint ptr %dvs_mode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i, ptr %dvs_mode.i, align 4
  %arrayidx.1.i = getelementptr %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i, align 4
  %17 = add i32 %16, -1400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -630001, i32 %17)
  %18 = icmp ult i32 %17, -630001
  br i1 %18, label %if.end21.i.do.end20.i_crit_edge, label %if.end21.1.i

if.end21.i.do.end20.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end21.1.i:                                     ; preds = %if.end21.i
  %sub.1.i = add nsw i32 %16, -770000
  %div.1.i = udiv i32 %sub.1.i, 10000
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2.i, align 4
  %22 = add i32 %21, -1400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -630001, i32 %22)
  %23 = icmp ult i32 %22, -630001
  br i1 %23, label %if.end21.1.i.do.end20.i_crit_edge, label %if.end21.2.i

if.end21.1.i.do.end20.i_crit_edge:                ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end21.2.i:                                     ; preds = %if.end21.1.i
  %sub.2.i = add nsw i32 %21, -770000
  %div.2.i = udiv i32 %sub.2.i, 10000
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.2.i, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.3.i, align 4
  %27 = add i32 %26, -1400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -630001, i32 %27)
  %28 = icmp ult i32 %27, -630001
  br i1 %28, label %if.end21.2.i.do.end20.i_crit_edge, label %if.end21.3.i

if.end21.2.i.do.end20.i_crit_edge:                ; preds = %if.end21.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

if.end21.3.i:                                     ; preds = %if.end21.2.i
  %sub.3.i = add nsw i32 %26, -770000
  %div.3.i = udiv i32 %sub.3.i, 10000
  %29 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.3.i, ptr %arrayidx.3.i, align 4
  %sync_freq.i = getelementptr inbounds %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i81.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %sync_freq.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i81.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i81.i, -1
  br i1 %tobool27.not.i, label %if.end21.3.i.if.end32.i_crit_edge, label %do.end31.i

if.end21.3.i.if.end32.i_crit_edge:                ; preds = %if.end21.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

do.end31.i:                                       ; preds = %if.end21.3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end31.i, %if.end21.3.i.if.end32.i_crit_edge
  %ramp_speed.i = getelementptr inbounds %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i82.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef %ramp_speed.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i82.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i82.i, -1
  br i1 %tobool34.not.i, label %if.end32.i.if.end39.i_crit_edge, label %do.end38.i

if.end32.i.if.end39.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end38.i, %if.end32.i.if.end39.i_crit_edge
  %call40.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %9, ptr noundef nonnull @regulator) #5
  %reg_data.i = getelementptr inbounds %struct.max8952_platform_data, ptr %call.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call40.i, ptr %reg_data.i, align 4
  %tobool42.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool42.not.i, label %do.end46.i, label %if.end39.i.if.end8_crit_edge

if.end39.i.if.end8_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #8
  br label %do.end

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.end46.i, %do.end20.i, %do.end10.i, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end39.i.if.end8_crit_edge
  %pdata.0265 = phi ptr [ %3, %if.end.if.end8_crit_edge ], [ %call.i.i, %if.end39.i.if.end8_crit_edge ]
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i224 = tail call i32 %34(ptr noundef %1) #5
  %and.i = and i32 %call.i.i224, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %client, ptr %call.i, align 4
  %pdata19 = getelementptr inbounds %struct.max8952_data, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pdata.0265, ptr %pdata19, align 4
  %37 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %config, align 4
  %reg_data = getelementptr inbounds %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 4
  %38 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_data, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %40 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data, align 4
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %of_node24 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %44 = ptrtoint ptr %of_node24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %of_node24, align 4
  %boot_on = getelementptr inbounds %struct.regulator_init_data, ptr %39, i32 0, i32 1, i32 28
  %45 = ptrtoint ptr %boot_on to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load = load i16, ptr %boot_on, align 4
  %46 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool26.not = icmp eq i16 %46, 0
  %. = select i1 %tobool26.not, i32 19, i32 23
  %call30 = tail call ptr @gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %.) #5
  %cmp.i225 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end17
  %tobool35.not = icmp eq ptr %call30, null
  br i1 %tobool35.not, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %48 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call30, ptr %ena_gpiod, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  %call39 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @regulator, ptr noundef nonnull %config) #5
  %cmp.i226 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %49) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %50 = ptrtoint ptr %pdata.0265 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pdata.0265, align 4
  %vid0 = getelementptr inbounds %struct.max8952_data, ptr %call.i, i32 0, i32 4
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = ptrtoint ptr %vid0 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %vid0, align 4
  %55 = load i32, ptr %pdata.0265, align 4
  %vid1 = getelementptr inbounds %struct.max8952_data, ptr %call.i, i32 0, i32 5
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 1
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %vid1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %vid1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool54.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool54.not, i32 3, i32 7
  %call56 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %cond) #5
  %vid0_gpiod = getelementptr inbounds %struct.max8952_data, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %vid0_gpiod to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call56, ptr %vid0_gpiod, align 4
  %cmp.i227 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end47
  %62 = ptrtoint ptr %vid1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vid1, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool64.not = icmp eq i8 %63, 0
  %cond65 = select i1 %tobool64.not, i32 3, i32 7
  %call67 = call ptr @devm_gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %cond65) #5
  %vid1_gpiod = getelementptr inbounds %struct.max8952_data, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %vid1_gpiod to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call67, ptr %vid1_gpiod, align 4
  %cmp.i228 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %call67 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end62
  %66 = ptrtoint ptr %vid0_gpiod to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vid0_gpiod, align 4
  %tobool75.not = icmp eq ptr %67, null
  %tobool77.not = icmp eq ptr %call67, null
  %or.cond = select i1 %tobool75.not, i1 true, i1 %tobool77.not
  br i1 %or.cond, label %do.end81, label %if.else100

do.end81:                                         ; preds = %if.end73
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %68 = ptrtoint ptr %vid0 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %vid0, align 4
  %69 = ptrtoint ptr %vid1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %vid1, align 1
  %70 = ptrtoint ptr %vid0_gpiod to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vid0_gpiod, align 4
  %tobool86.not = icmp eq ptr %71, null
  br i1 %tobool86.not, label %do.end81.if.end89_crit_edge, label %if.then87

do.end81.if.end89_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then87:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_value(ptr noundef nonnull %71, i32 noundef 0) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %do.end81.if.end89_crit_edge
  %72 = ptrtoint ptr %vid1_gpiod to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vid1_gpiod, align 4
  %tobool91.not = icmp eq ptr %73, null
  br i1 %tobool91.not, label %if.end89.if.end94_crit_edge, label %if.then92

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_value(ptr noundef nonnull %73, i32 noundef 0) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89.if.end94_crit_edge
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %call.i229 = call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 4, i8 noundef zeroext 96) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %if.end102

if.else100:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %call.i230 = call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.end94
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %call.i231 = call i32 @i2c_smbus_read_byte_data(ptr noundef %79, i8 noundef zeroext 0) #5
  %and104 = and i32 %call.i231, 192
  %dvs_mode = getelementptr inbounds %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 1
  %80 = ptrtoint ptr %dvs_mode to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dvs_mode, align 4
  %and105 = and i32 %81, 63
  %or106 = or i32 %and105, %and104
  %conv = trunc i32 %or106 to i8
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %call.i234 = call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext 0, i8 noundef zeroext %conv) #5
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %call.i235 = call i32 @i2c_smbus_read_byte_data(ptr noundef %85, i8 noundef zeroext 1) #5
  %and109 = and i32 %call.i235, 192
  %arrayidx111 = getelementptr %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx111, align 4
  %and112 = and i32 %87, 63
  %or113 = or i32 %and112, %and109
  %conv114 = trunc i32 %or113 to i8
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %call.i239 = call i32 @i2c_smbus_write_byte_data(ptr noundef %89, i8 noundef zeroext 1, i8 noundef zeroext %conv114) #5
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 4
  %call.i240 = call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 2) #5
  %and117 = and i32 %call.i240, 192
  %arrayidx119 = getelementptr %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx119, align 4
  %and120 = and i32 %93, 63
  %or121 = or i32 %and120, %and117
  %conv122 = trunc i32 %or121 to i8
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %call.i244 = call i32 @i2c_smbus_write_byte_data(ptr noundef %95, i8 noundef zeroext 2, i8 noundef zeroext %conv122) #5
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  %call.i245 = call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 3) #5
  %and125 = and i32 %call.i245, 192
  %arrayidx127 = getelementptr %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx127, align 4
  %and128 = and i32 %99, 63
  %or129 = or i32 %and128, %and125
  %conv130 = trunc i32 %or129 to i8
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call.i249 = call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext 3, i8 noundef zeroext %conv130) #5
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  %call.i250 = call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 5) #5
  %and133 = and i32 %call.i250, 63
  %sync_freq = getelementptr inbounds %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 2
  %104 = ptrtoint ptr %sync_freq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sync_freq, align 4
  %and134 = shl i32 %105, 6
  %or135 = or i32 %and134, %and133
  %conv136 = trunc i32 %or135 to i8
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  %call.i254 = call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 5, i8 noundef zeroext %conv136) #5
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %call.i255 = call i32 @i2c_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext 6) #5
  %and139 = and i32 %call.i255, 31
  %ramp_speed = getelementptr inbounds %struct.max8952_platform_data, ptr %pdata.0265, i32 0, i32 3
  %110 = ptrtoint ptr %ramp_speed to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ramp_speed, align 4
  %and140 = shl i32 %111, 5
  %or142 = or i32 %and140, %and139
  %conv143 = trunc i32 %or142 to i8
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  %call.i259 = call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext 6, i8 noundef zeroext %conv143) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then70, %if.then59, %if.then41, %if.then32, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %47, %if.then32 ], [ %49, %if.then41 ], [ %61, %if.then59 ], [ %65, %if.then70 ], [ 0, %if.end102 ], [ -22, %do.end ], [ -5, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8952_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdata = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %arrayidx = getelementptr %struct.max8952_platform_data, ptr %1, i32 0, i32 1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = mul i32 %3, 10000
  %mul2 = add i32 %4, 770000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8952_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %vid0_gpiod = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %vid0_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid0_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vid1_gpiod = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %vid1_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid1_gpiod, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %vid0 = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 4
  %4 = trunc i32 %selector to i8
  %5 = and i8 %4, 1
  %6 = ptrtoint ptr %vid0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %vid0, align 4
  %vid1 = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 5
  %7 = lshr i8 %4, 1
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %vid1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %vid1, align 1
  %10 = zext i8 %5 to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %10) #5
  %11 = ptrtoint ptr %vid1_gpiod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vid1_gpiod, align 4
  %13 = ptrtoint ptr %vid1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vid1, align 1, !range !92
  %15 = zext i8 %14 to i32
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8952_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %vid0 = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %vid0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid0, align 4, !range !92
  %vid1 = getelementptr inbounds %struct.max8952_data, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %vid1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid1, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %4 = or i8 %1, 2
  %vid.1 = select i1 %tobool2.not, i8 %1, i8 %4
  %conv8 = zext i8 %vid.1 to i32
  ret i32 %conv8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_max8952__288_329_max8952_pmic_init4, !1, !"__initcall__kmod_max8952__288_329_max8952_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8952.c", i32 329, i32 1}
!2 = !{ptr @__exitcall_max8952_pmic_exit, !3, !"__exitcall_max8952_pmic_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8952.c", i32 335, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8952.c", i32 337, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max8952.c", i32 338, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max8952.c", i32 339, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8952.c", i32 319, i32 11}
!13 = !{ptr @max8952_pmic_driver, !14, !"max8952_pmic_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8952.c", i32 316, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8952.c", i32 191, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max8952_pmic_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max8952_pmic_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max8952.c", i32 221, i32 8}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/max8952.c", i32 231, i32 3}
!27 = !{ptr @max8952_pmic_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max8952_pmic_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max8952.c", i32 241, i32 12}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max8952.c", i32 254, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max8952_pmic_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @max8952_pmic_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max8952.c", i32 267, i32 3}
!38 = !{ptr @max8952_pmic_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max8952_pmic_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max8952.c", i32 135, i32 31}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max8952.c", i32 136, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max8952_parse_dt._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @max8952_parse_dt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/max8952.c", i32 138, i32 39}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/max8952.c", i32 141, i32 3}
!51 = !{ptr @max8952_parse_dt._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @max8952_parse_dt._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/max8952.c", i32 147, i32 4}
!55 = !{ptr @max8952_parse_dt._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @max8952_parse_dt._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max8952.c", i32 153, i32 31}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/max8952.c", i32 154, i32 3}
!61 = !{ptr @max8952_parse_dt._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @max8952_parse_dt._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max8952.c", i32 156, i32 31}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/max8952.c", i32 157, i32 3}
!67 = !{ptr @max8952_parse_dt._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @max8952_parse_dt._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max8952.c", i32 161, i32 3}
!71 = !{ptr @max8952_parse_dt._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @max8952_parse_dt._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max8952.c", i32 109, i32 11}
!75 = !{ptr @regulator, !76, !"regulator", i1 false, i1 false}
!76 = !{!"../drivers/regulator/max8952.c", i32 108, i32 36}
!77 = !{ptr @max8952_ops, !78, !"max8952_ops", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max8952.c", i32 102, i32 35}
!79 = !{ptr @max8952_dt_match, !80, !"max8952_dt_match", i1 false, i1 false}
!80 = !{!"../drivers/regulator/max8952.c", i32 118, i32 34}
!81 = !{ptr @max8952_ids, !82, !"max8952_ids", i1 false, i1 false}
!82 = !{!"../drivers/regulator/max8952.c", i32 310, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
