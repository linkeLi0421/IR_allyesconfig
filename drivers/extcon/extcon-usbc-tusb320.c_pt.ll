; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-usbc-tusb320.c_pt.bc'
source_filename = "../drivers/extcon/extcon-usbc-tusb320.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tusb320_ops = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tusb320_priv = type { ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_extcon_usbc_tusb320__289_327_tusb320_init4 = internal global ptr @tusb320_init, section ".initcall4.init", align 4
@tusb320_extcon_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tusb320_extcon_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tusb320_extcon_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tusb320_exit = internal global ptr @tusb320_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [68 x i8] c"extcon_usbc_tusb320.author=Michael Auchter <michael.auchter@ni.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [57 x i8] c"extcon_usbc_tusb320.description=TI TUSB320 extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [60 x i8] c"extcon_usbc_tusb320.file=drivers/extcon/extcon-usbc-tusb320\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [35 x i8] c"extcon_usbc_tusb320.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extcon-tusb320\00", [17 x i8] zeroinitializer }, align 32
@tusb320_extcon_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tusb320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tusb320_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tusb320l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tusb320l_ops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tusb320_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"extcon_usbc_tusb320:246:(&tusb320_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@tusb320_extcon_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tusb320_extcon_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/extcon/extcon-usbc-tusb320.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry_ptr = internal global ptr @tusb320_extcon_probe._entry, section ".printk_index", align 4
@tusb320_extcon_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read revision register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry_ptr.10 = internal global ptr @tusb320_extcon_probe._entry.7, section ".printk_index", align 4
@tusb320_extcon_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip revision %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry_ptr.14 = internal global ptr @tusb320_extcon_probe._entry.11, section ".printk_index", align 4
@tusb320_extcon_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry_ptr.17 = internal global ptr @tusb320_extcon_probe._entry.15, section ".printk_index", align 4
@tusb320_extcon_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 292, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tusb320_extcon_probe._entry_ptr.20 = internal global ptr @tusb320_extcon_probe._entry.18, section ".printk_index", align 4
@tusb320_check_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 84, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"signature mismatch!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tusb320_check_signature\00", [40 x i8] zeroinitializer }, align 32
@tusb320_check_signature._entry_ptr = internal global ptr @tusb320_check_signature._entry, section ".printk_index", align 4
@tusb320_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error during i2c read!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tusb320_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@tusb320_irq_handler._entry_ptr = internal global ptr @tusb320_irq_handler._entry, section ".printk_index", align 4
@tusb320_irq_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"extcon_usbc_tusb320\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"attached state: %s, polarity: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tusb_attached_states = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not attached\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"downstream facing port\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"upstream facing port\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"accessory\00", [22 x i8] zeroinitializer }, align 32
@tusb320_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set mode to PORT: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tusb320_reset\00", [18 x i8] zeroinitializer }, align 32
@tusb320_reset._entry_ptr = internal global ptr @tusb320_reset._entry, section ".printk_index", align 4
@tusb320_reset._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write soft reset bit: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tusb320_reset._entry_ptr.35 = internal global ptr @tusb320_reset._entry.33, section ".printk_index", align 4
@tusb320_ops = internal global { %struct.tusb320_ops, [24 x i8] } { %struct.tusb320_ops { ptr @tusb320_set_mode, ptr null }, [24 x i8] zeroinitializer }, align 32
@tusb320l_ops = internal global { %struct.tusb320_ops, [24 x i8] } { %struct.tusb320_ops { ptr @tusb320l_set_mode, ptr @tusb320l_get_revision }, [24 x i8] zeroinitializer }, align 32
@tusb320_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 105, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to write mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tusb320_set_mode\00", [47 x i8] zeroinitializer }, align 32
@tusb320_set_mode._entry_ptr = internal global ptr @tusb320_set_mode._entry, section ".printk_index", align 4
@tusb320l_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable CC state machine: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tusb320l_set_mode\00", [46 x i8] zeroinitializer }, align 32
@tusb320l_set_mode._entry_ptr = internal global ptr @tusb320l_set_mode._entry, section ".printk_index", align 4
@tusb320l_set_mode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.39, ptr @.str.4, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tusb320l_set_mode._entry_ptr.41 = internal global ptr @tusb320l_set_mode._entry.40, section ".printk_index", align 4
@tusb320l_set_mode._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to re-enable CC state machine: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tusb320l_set_mode._entry_ptr.44 = internal global ptr @tusb320l_set_mode._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"tusb320_extcon_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 315, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 318, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"tusb320_extcon_dt_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 308, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"tusb320_regmap_config\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 228, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 246, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"tusb320_extcon_cable\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 67, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 262, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 269, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 272, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 277, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 292, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 84, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 194, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 205, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"tusb_attached_states\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 60, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 61, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 62, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 63, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 64, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 153, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 162, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"tusb320_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 178, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"tusb320l_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 182, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 105, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 120, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 130, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [40 x i8] c"../drivers/extcon/extcon-usbc-tusb320.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 140, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tusb320_exit, ptr @__initcall__kmod_extcon_usbc_tusb320__289_327_tusb320_init4, ptr @tusb320_check_signature._entry, ptr @tusb320_check_signature._entry_ptr, ptr @tusb320_exit, ptr @tusb320_extcon_probe._entry, ptr @tusb320_extcon_probe._entry.11, ptr @tusb320_extcon_probe._entry.15, ptr @tusb320_extcon_probe._entry.18, ptr @tusb320_extcon_probe._entry.7, ptr @tusb320_extcon_probe._entry_ptr, ptr @tusb320_extcon_probe._entry_ptr.10, ptr @tusb320_extcon_probe._entry_ptr.14, ptr @tusb320_extcon_probe._entry_ptr.17, ptr @tusb320_extcon_probe._entry_ptr.20, ptr @tusb320_irq_handler._entry, ptr @tusb320_irq_handler._entry_ptr, ptr @tusb320_reset._entry, ptr @tusb320_reset._entry.33, ptr @tusb320_reset._entry_ptr, ptr @tusb320_reset._entry_ptr.35, ptr @tusb320_set_mode._entry, ptr @tusb320_set_mode._entry_ptr, ptr @tusb320l_set_mode._entry, ptr @tusb320l_set_mode._entry.40, ptr @tusb320l_set_mode._entry.42, ptr @tusb320l_set_mode._entry_ptr, ptr @tusb320l_set_mode._entry_ptr.41, ptr @tusb320l_set_mode._entry_ptr.44, ptr @tusb320_extcon_driver, ptr @.str, ptr @tusb320_extcon_dt_match, ptr @tusb320_extcon_probe._key, ptr @tusb320_regmap_config, ptr @.str.1, ptr @tusb320_extcon_cable, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @tusb_attached_states, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @tusb320_ops, ptr @tusb320l_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.43], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_extcon_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_check_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_attached_states to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_reset._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320l_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320l_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320l_set_mode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb320l_set_mode._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tusb320_extcon_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tusb320_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tusb320_extcon_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320_extcon_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %revision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision) #5
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %revision, align 4, !annotation !115
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tusb320_regmap_config, ptr noundef nonnull @tusb320_extcon_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.tusb320_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !115
  %call.i120 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 7, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp1.i = icmp slt i32 %call.i120, 0
  br i1 %cmp1.i, label %if.end9.tusb320_check_signature.exit.thread_crit_edge, label %if.end.i

if.end9.tusb320_check_signature.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

for.cond.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.1.i

for.cond.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.1.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %8)
  %cmp2.not.1.i = icmp eq i32 %8, 84
  br i1 %cmp2.not.1.i, label %for.cond.1.i, label %if.end.1.i.do.end.i_crit_edge

if.end.1.i.do.end.i_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.1.i:                                     ; preds = %if.end.1.i
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 5, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.2.i

for.cond.1.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.2.i:                                       ; preds = %for.cond.1.i
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %12)
  %cmp2.not.2.i = icmp eq i32 %12, 85
  br i1 %cmp2.not.2.i, label %for.cond.2.i, label %if.end.2.i.do.end.i_crit_edge

if.end.2.i.do.end.i_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.2.i:                                     ; preds = %if.end.2.i
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.3.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %for.cond.2.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.3.i

for.cond.2.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.3.i:                                       ; preds = %for.cond.2.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %16)
  %cmp2.not.3.i = icmp eq i32 %16, 83
  br i1 %cmp2.not.3.i, label %for.cond.3.i, label %if.end.3.i.do.end.i_crit_edge

if.end.3.i.do.end.i_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.3.i:                                     ; preds = %if.end.3.i
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.4.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 3, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %for.cond.3.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.4.i

for.cond.3.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.4.i:                                       ; preds = %for.cond.3.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %20)
  %cmp2.not.4.i = icmp eq i32 %20, 66
  br i1 %cmp2.not.4.i, label %for.cond.4.i, label %if.end.4.i.do.end.i_crit_edge

if.end.4.i.do.end.i_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.4.i:                                     ; preds = %if.end.4.i
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.5.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp1.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp1.5.i, label %for.cond.4.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.5.i

for.cond.4.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.5.i:                                       ; preds = %for.cond.4.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %24)
  %cmp2.not.5.i = icmp eq i32 %24, 51
  br i1 %cmp2.not.5.i, label %for.cond.5.i, label %if.end.5.i.do.end.i_crit_edge

if.end.5.i.do.end.i_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.5.i:                                     ; preds = %if.end.5.i
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.6.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 1, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp1.6.i = icmp slt i32 %call.6.i, 0
  br i1 %cmp1.6.i, label %for.cond.5.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.6.i

for.cond.5.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.6.i:                                       ; preds = %for.cond.5.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %28)
  %cmp2.not.6.i = icmp eq i32 %28, 50
  br i1 %cmp2.not.6.i, label %for.cond.6.i, label %if.end.6.i.do.end.i_crit_edge

if.end.6.i.do.end.i_crit_edge:                    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.6.i:                                     ; preds = %if.end.6.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.7.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp1.7.i = icmp slt i32 %call.7.i, 0
  br i1 %cmp1.7.i, label %for.cond.6.i.tusb320_check_signature.exit.thread_crit_edge, label %if.end.7.i

for.cond.6.i.tusb320_check_signature.exit.thread_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tusb320_check_signature.exit.thread

if.end.7.i:                                       ; preds = %for.cond.6.i
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %32)
  %cmp2.not.7.i = icmp eq i32 %32, 48
  br i1 %cmp2.not.7.i, label %if.end13, label %if.end.7.i.do.end.i_crit_edge

if.end.7.i.do.end.i_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i:                                         ; preds = %if.end9
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp2.not.i = icmp eq i32 %34, 0
  br i1 %cmp2.not.i, label %for.cond.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.7.i.do.end.i_crit_edge, %if.end.6.i.do.end.i_crit_edge, %if.end.5.i.do.end.i_crit_edge, %if.end.4.i.do.end.i_crit_edge, %if.end.3.i.do.end.i_crit_edge, %if.end.2.i.do.end.i_crit_edge, %if.end.1.i.do.end.i_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.21) #8
  br label %tusb320_check_signature.exit.thread

tusb320_check_signature.exit.thread:              ; preds = %do.end.i, %for.cond.6.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.5.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.4.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.3.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.2.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.1.i.tusb320_check_signature.exit.thread_crit_edge, %for.cond.i.tusb320_check_signature.exit.thread_crit_edge, %if.end9.tusb320_check_signature.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.7.i, %for.cond.6.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.6.i, %for.cond.5.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.5.i, %for.cond.4.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.4.i, %for.cond.3.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.3.i, %for.cond.2.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.2.i, %for.cond.1.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.1.i, %for.cond.i.tusb320_check_signature.exit.thread_crit_edge ], [ %call.i120, %if.end9.tusb320_check_signature.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end.7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %call15 = call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %ops = getelementptr inbounds %struct.tusb320_priv, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call15, ptr %ops, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call20 = call ptr @devm_extcon_dev_allocate(ptr noundef %39, ptr noundef nonnull @tusb320_extcon_cable) #5
  %edev = getelementptr inbounds %struct.tusb320_priv, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call20, ptr %edev, align 4
  %cmp.i121 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2) #8
  %43 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edev, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %get_revision = getelementptr inbounds %struct.tusb320_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %get_revision to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_revision, align 4
  %tobool29.not = icmp eq ptr %49, null
  br i1 %tobool29.not, label %if.end27.if.end45_crit_edge, label %if.then30

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then30:                                        ; preds = %if.end27
  %call33 = call i32 %49(ptr noundef nonnull %call.i, ptr noundef nonnull %revision) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  br i1 %tobool34.not, label %do.end42, label %do.end38

do.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.8, i32 noundef %call33) #8
  br label %if.end45

do.end42:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %revision, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.12, i32 noundef %53) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %do.end38, %if.end27.if.end45_crit_edge
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %56 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edev, align 4
  %call48 = call i32 @devm_extcon_dev_register(ptr noundef %55, ptr noundef %57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp = icmp slt i32 %call48, 0
  br i1 %cmp, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  %60 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edev, align 4
  %call56 = call i32 @extcon_set_property_capability(ptr noundef %61, i32 noundef 1, i32 noundef 1) #5
  %62 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %edev, align 4
  %call58 = call i32 @extcon_set_property_capability(ptr noundef %63, i32 noundef 2, i32 noundef 1) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call59 = call i32 @tusb320_irq_handler(i32 noundef %65, ptr noundef nonnull %call.i)
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i122 = call i32 %69(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %70 = zext i32 %call.i122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i122, label %tusb320_reset.exit [
    i32 0, label %if.end54.if.end.i125_crit_edge
    i32 -16, label %if.end54.if.end.i125_crit_edge135
  ]

if.end54.if.end.i125_crit_edge135:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i125

if.end54.if.end.i125_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.end54.if.end.i125_crit_edge, %if.end54.if.end.i125_crit_edge135
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 10, i32 noundef 8, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %tusb320_reset.exit.thread, label %tusb320_reset.exit.thread131

tusb320_reset.exit.thread131:                     ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #8
  br label %do.end65

tusb320_reset.exit.thread:                        ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 95) #5
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  %call69 = call i32 @tusb320_irq_handler(i32 noundef %76, ptr noundef nonnull %call.i)
  br label %if.end70

tusb320_reset.exit:                               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.31, i32 noundef %call.i122) #8
  br label %do.end65

do.end65:                                         ; preds = %tusb320_reset.exit, %tusb320_reset.exit.thread131
  %retval.0.i126134 = phi i32 [ %call.i.i, %tusb320_reset.exit.thread131 ], [ %call.i122, %tusb320_reset.exit ]
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i126134) #8
  br label %if.end70

if.end70:                                         ; preds = %do.end65, %tusb320_reset.exit.thread
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call73 = call i32 @devm_request_threaded_irq(ptr noundef %82, i32 noundef %84, ptr noundef null, ptr noundef nonnull @tusb320_irq_handler, i32 noundef 8194, ptr noundef %name, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end52, %do.end, %if.end13.cleanup_crit_edge, %tusb320_check_signature.exit.thread, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %45, %do.end ], [ %call48, %do.end52 ], [ %call73, %if.end70 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %retval.0.i.ph, %tusb320_check_signature.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_property_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !115
  %regmap = getelementptr inbounds %struct.tusb320_priv, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 9, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shr = lshr i32 %6, 6
  %and4 = and i32 %shr, 3
  %and5 = lshr i32 %6, 5
  %and5.lobit = and i32 %and5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tusb320_irq_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tusb320_irq_handler, %if.then16)) #5
          to label %do.end20 [label %if.then16], !srcloc !116

if.then16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @tusb_attached_states, i32 0, i32 %and4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tusb320_irq_handler.__UNIQUE_ID_ddebug288, ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef %10, i32 noundef %and5.lobit) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end3
  %edev = getelementptr inbounds %struct.tusb320_priv, ptr %dev_id, i32 0, i32 2
  %11 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4)
  %cmp = icmp eq i32 %and4, 2
  %call21 = call i32 @extcon_set_state(ptr noundef %12, i32 noundef 1, i1 noundef zeroext %cmp) #5
  %13 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp23 = icmp eq i32 %and4, 1
  %call24 = call i32 @extcon_set_state(ptr noundef %14, i32 noundef 2, i1 noundef zeroext %cmp23) #5
  %15 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edev, align 4
  %.fca.0.insert41 = insertvalue [1 x i32] poison, i32 %and5.lobit, 0
  %call26 = call i32 @extcon_set_property(ptr noundef %16, i32 noundef 1, i32 noundef 1, [1 x i32] %.fca.0.insert41) #5
  %17 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edev, align 4
  %call30 = call i32 @extcon_set_property(ptr noundef %18, i32 noundef 2, i32 noundef 1, [1 x i32] %.fca.0.insert41) #5
  %19 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edev, align 4
  %call32 = call i32 @extcon_sync(ptr noundef %20, i32 noundef 1) #5
  %21 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edev, align 4
  %call34 = call i32 @extcon_sync(ptr noundef %22, i32 noundef 2) #5
  %state35 = getelementptr inbounds %struct.tusb320_priv, ptr %dev_id, i32 0, i32 4
  %23 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and4, ptr %state35, align 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %call37 = call i32 @regmap_write(ptr noundef %25, i32 noundef 9, i32 noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end20 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_property(ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_sync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320_set_mode(ptr nocapture noundef readonly %priv, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.tusb320_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.tusb320_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %mode, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 10, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320l_set_mode(ptr nocapture noundef readonly %priv, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tusb320_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 10, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %mode, 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 10, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool3.not = icmp eq i32 %call.i31, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %call.i31) #8
  br label %err

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 5) #5
  br label %err

err:                                              ; preds = %if.end9, %do.end7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool12.not = icmp eq i32 %call.i32, 0
  br i1 %tobool12.not, label %err.cleanup_crit_edge, label %do.end16

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16:                                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef %call.i32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %err.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i32, %do.end16 ], [ 0, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb320l_get_revision(ptr nocapture noundef readonly %priv, ptr noundef %revision) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tusb320_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 160, ptr noundef %revision) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_extcon_usbc_tusb320__289_327_tusb320_init4, !1, !"__initcall__kmod_extcon_usbc_tusb320__289_327_tusb320_init4", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_tusb320_exit, !3, !"__exitcall_tusb320_exit", i1 false, i1 false}
!3 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 333, i32 1}
!4 = !{ptr @__UNIQUE_ID_author290, !5, !"__UNIQUE_ID_author290", i1 false, i1 false}
!5 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 335, i32 1}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 336, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 337, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 318, i32 11}
!13 = !{ptr @tusb320_extcon_driver, !14, !"tusb320_extcon_driver", i1 false, i1 false}
!14 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 315, i32 26}
!15 = !{ptr @tusb320_extcon_probe._key, !16, !"_key", i1 false, i1 false}
!16 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 246, i32 17}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 262, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tusb320_extcon_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tusb320_extcon_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 269, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tusb320_extcon_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tusb320_extcon_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 272, i32 4}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tusb320_extcon_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tusb320_extcon_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 277, i32 3}
!38 = !{ptr @tusb320_extcon_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tusb320_extcon_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 292, i32 3}
!42 = !{ptr @tusb320_extcon_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tusb320_extcon_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @tusb320_regmap_config, !45, !"tusb320_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 228, i32 35}
!46 = distinct !{null, !47, !"sig", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 75, i32 20}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 84, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tusb320_check_signature._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tusb320_check_signature._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @tusb320_extcon_cable, !54, !"tusb320_extcon_cable", i1 false, i1 false}
!54 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 67, i32 27}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 194, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tusb320_irq_handler._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tusb320_irq_handler._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 205, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tusb320_irq_handler.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 61, i32 34}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 62, i32 34}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 63, i32 34}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 64, i32 34}
!72 = !{ptr @tusb_attached_states, !73, !"tusb_attached_states", i1 false, i1 false}
!73 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 60, i32 27}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 153, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tusb320_reset._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tusb320_reset._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 162, i32 3}
!81 = !{ptr @tusb320_reset._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tusb320_reset._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @tusb320_extcon_dt_match, !84, !"tusb320_extcon_dt_match", i1 false, i1 false}
!84 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 308, i32 34}
!85 = !{ptr @tusb320_ops, !86, !"tusb320_ops", i1 false, i1 false}
!86 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 178, i32 27}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 105, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tusb320_set_mode._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tusb320_set_mode._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @tusb320l_ops, !93, !"tusb320l_ops", i1 false, i1 false}
!93 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 182, i32 27}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 120, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tusb320l_set_mode._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tusb320l_set_mode._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @tusb320l_set_mode._entry.40, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 130, i32 3}
!101 = !{ptr @tusb320l_set_mode._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/extcon/extcon-usbc-tusb320.c", i32 140, i32 3}
!104 = !{ptr @tusb320l_set_mode._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @tusb320l_set_mode._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{i64 2148298395, i64 2148298400, i64 2148298413, i64 2148298457, i64 2148298491, i64 2148298512}
