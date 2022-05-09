; ModuleID = '/llk/IR_all_yes/drivers/mfd/rc5t583.c_pt.bc'
source_filename = "../drivers/mfd/rc5t583.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rc5t583_ext_power_req_config\22, \22a\22\09"
module asm "\09.weak\09__crc_rc5t583_ext_power_req_config\09\09\09\09"
module asm "\09.long\09__crc_rc5t583_ext_power_req_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rc5t583_ext_power_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22rc5t583_ext_power_req_config\22\09\09\09\09\09"
module asm "__kstrtabns_rc5t583_ext_power_req_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.deepsleep_control_data = type { i8, i8 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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
%struct.rc5t583 = type { ptr, ptr, i32, i32, %struct.mutex, [5 x i32], i8, [8 x i8], [2 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rc5t583_platform_data = type { i32, i32, i8, [14 x i32], [14 x i32], [14 x ptr] }

@__kstrtab_rc5t583_ext_power_req_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_rc5t583_ext_power_req_config = external dso_local constant [0 x i8], align 1
@__ksymtab_rc5t583_ext_power_req_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rc5t583_ext_power_req_config to i32), ptr @__kstrtab_rc5t583_ext_power_req_config, ptr @__kstrtabns_rc5t583_ext_power_req_config }, section "___ksymtab+rc5t583_ext_power_req_config", align 4
@__initcall__kmod_rc5t583__288_300_rc5t583_i2c_init4 = internal global ptr @rc5t583_i2c_init, section ".initcall4.init", align 4
@__rc5t583_set_ext_pwrreq1_control._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PWRREQ1 is invalid control for rail %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"__rc5t583_set_ext_pwrreq1_control\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/rc5t583.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq1_control._entry_ptr = internal global ptr @__rc5t583_set_ext_pwrreq1_control._entry, section ".printk_index", align 4
@deepsleep_data = internal constant { [22 x %struct.deepsleep_control_data], [52 x i8] } { [22 x %struct.deepsleep_control_data] [%struct.deepsleep_control_data { i8 33, i8 0 }, %struct.deepsleep_control_data { i8 33, i8 4 }, %struct.deepsleep_control_data { i8 34, i8 0 }, %struct.deepsleep_control_data { i8 34, i8 4 }, %struct.deepsleep_control_data { i8 35, i8 0 }, %struct.deepsleep_control_data { i8 35, i8 4 }, %struct.deepsleep_control_data { i8 36, i8 0 }, %struct.deepsleep_control_data { i8 36, i8 4 }, %struct.deepsleep_control_data { i8 37, i8 0 }, %struct.deepsleep_control_data { i8 37, i8 4 }, %struct.deepsleep_control_data { i8 38, i8 0 }, %struct.deepsleep_control_data { i8 38, i8 4 }, %struct.deepsleep_control_data { i8 39, i8 0 }, %struct.deepsleep_control_data { i8 39, i8 4 }, %struct.deepsleep_control_data { i8 40, i8 0 }, %struct.deepsleep_control_data { i8 40, i8 4 }, %struct.deepsleep_control_data { i8 41, i8 0 }, %struct.deepsleep_control_data { i8 41, i8 4 }, %struct.deepsleep_control_data { i8 42, i8 0 }, %struct.deepsleep_control_data { i8 42, i8 4 }, %struct.deepsleep_control_data { i8 43, i8 0 }, %struct.deepsleep_control_data { i8 43, i8 4 }], [52 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq1_control._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error in reading reg 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq1_control._entry_ptr.7 = internal global ptr @__rc5t583_set_ext_pwrreq1_control._entry.5, section ".printk_index", align 4
@__rc5t583_set_ext_pwrreq1_control._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in updating the 0x%02x register\0A\00", [57 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq1_control._entry_ptr.10 = internal global ptr @__rc5t583_set_ext_pwrreq1_control._entry.8, section ".printk_index", align 4
@__rc5t583_set_ext_pwrreq1_control._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error in writing reg 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq1_control._entry_ptr.13 = internal global ptr @__rc5t583_set_ext_pwrreq1_control._entry.11, section ".printk_index", align 4
@__rc5t583_set_ext_pwrreq1_control._entry.14 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, align 1
@__rc5t583_set_ext_pwrreq1_control._entry_ptr.15 = internal global ptr @__rc5t583_set_ext_pwrreq1_control._entry.14, section ".printk_index", align 4
@__rc5t583_set_ext_pwrreq2_control._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, align 1
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PWRREQ2 is invalid control for rail %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"__rc5t583_set_ext_pwrreq2_control\00", [62 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq2_control._entry_ptr = internal global ptr @__rc5t583_set_ext_pwrreq2_control._entry, section ".printk_index", align 4
@__rc5t583_set_ext_pwrreq2_control._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, align 1
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error in updating the ONOFFSEL 0x10 register\0A\00", [50 x i8] zeroinitializer }, align 32
@__rc5t583_set_ext_pwrreq2_control._entry_ptr.20 = internal global ptr @__rc5t583_set_ext_pwrreq2_control._entry.18, section ".printk_index", align 4
@rc5t583_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rc5t583_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rc5t583_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rc5t583\00", [24 x i8] zeroinitializer }, align 32
@rc5t583_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rc5t583\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Err: Platform data not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc5t583_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry_ptr = internal global ptr @rc5t583_i2c_probe._entry, section ".printk_index", align 4
@rc5t583_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rc5t583_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 247, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 248, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rc5t583:255:(&rc5t583_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regmap initialization failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry_ptr.27 = internal global ptr @rc5t583_i2c_probe._entry.25, section ".printk_index", align 4
@rc5t583_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 270, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ init failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry_ptr.31 = internal global ptr @rc5t583_i2c_probe._entry.28, section ".printk_index", align 4
@rc5t583_subdevs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"add mfd devices failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rc5t583_i2c_probe._entry_ptr.34 = internal global ptr @rc5t583_i2c_probe._entry.32, section ".printk_index", align 4
@rc5t583_clear_ext_power_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 166, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in writing reg %d error: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rc5t583_clear_ext_power_req\00", [36 x i8] zeroinitializer }, align 32
@rc5t583_clear_ext_power_req._entry_ptr = internal global ptr @rc5t583_clear_ext_power_req._entry, section ".printk_index", align 4
@rc5t583_clear_ext_power_req._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 171, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_clear_ext_power_req._entry_ptr.38 = internal global ptr @rc5t583_clear_ext_power_req._entry.37, section ".printk_index", align 4
@rc5t583_clear_ext_power_req._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.2, i32 179, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in writing reg 0x%02x error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rc5t583_clear_ext_power_req._entry_ptr.41 = internal global ptr @rc5t583_clear_ext_power_req._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc5t583-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc5t583-regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc5t583-rtc\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc5t583-key\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 25, i64 29, i64 65, i64 144, i64 145, i64 146, i64 166, i64 167, i64 168, i64 171, i64 237]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 80, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"deepsleep_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 36, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 88, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 98, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 105, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 125, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 131, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"rc5t583_i2c_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 288, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 290, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"rc5t583_i2c_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 283, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 244, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"rc5t583_regmap_config\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 227, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 255, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 258, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 270, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"rc5t583_subdevs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 64, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 276, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 165, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 170, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 177, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 65, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 66, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 67, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [25 x i8] c"../drivers/mfd/rc5t583.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 68, i32 11 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__initcall__kmod_rc5t583__288_300_rc5t583_i2c_init4, ptr @__ksymtab_rc5t583_ext_power_req_config, ptr @__rc5t583_set_ext_pwrreq1_control._entry, ptr @__rc5t583_set_ext_pwrreq1_control._entry.11, ptr @__rc5t583_set_ext_pwrreq1_control._entry.14, ptr @__rc5t583_set_ext_pwrreq1_control._entry.5, ptr @__rc5t583_set_ext_pwrreq1_control._entry.8, ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr, ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.10, ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.13, ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.15, ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.7, ptr @__rc5t583_set_ext_pwrreq2_control._entry, ptr @__rc5t583_set_ext_pwrreq2_control._entry.18, ptr @__rc5t583_set_ext_pwrreq2_control._entry_ptr, ptr @__rc5t583_set_ext_pwrreq2_control._entry_ptr.20, ptr @rc5t583_clear_ext_power_req._entry, ptr @rc5t583_clear_ext_power_req._entry.37, ptr @rc5t583_clear_ext_power_req._entry.39, ptr @rc5t583_clear_ext_power_req._entry_ptr, ptr @rc5t583_clear_ext_power_req._entry_ptr.38, ptr @rc5t583_clear_ext_power_req._entry_ptr.41, ptr @rc5t583_i2c_probe._entry, ptr @rc5t583_i2c_probe._entry.25, ptr @rc5t583_i2c_probe._entry.28, ptr @rc5t583_i2c_probe._entry.32, ptr @rc5t583_i2c_probe._entry_ptr, ptr @rc5t583_i2c_probe._entry_ptr.27, ptr @rc5t583_i2c_probe._entry_ptr.31, ptr @rc5t583_i2c_probe._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @deepsleep_data, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @rc5t583_i2c_driver, ptr @.str.21, ptr @rc5t583_i2c_id, ptr @.str.22, ptr @.str.23, ptr @rc5t583_i2c_probe._key, ptr @rc5t583_regmap_config, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @rc5t583_subdevs, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deepsleep_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_subdevs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_clear_ext_power_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_clear_ext_power_req._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_clear_ext_power_req._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rc5t583_ext_power_req_config(ptr noundef %dev, i32 noundef %ds_id, i32 noundef %ext_pwr_req, i32 noundef %deepsleep_slot_nr) #0 align 64 {
entry:
  %ival.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ext_pwr_req, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %ext_pwr_req, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ds_id)
  %cmp.i = icmp eq i32 %ds_id, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 1) #9
  br label %return

if.end.i:                                         ; preds = %if.then2
  %arrayidx.i = getelementptr [22 x %struct.deepsleep_control_data], ptr @deepsleep_data, i32 0, i32 %ds_id
  %ds_pos_bit.i = getelementptr [22 x %struct.deepsleep_control_data], ptr @deepsleep_data, i32 0, i32 %ds_id, i32 1
  %0 = ptrtoint ptr %ds_pos_bit.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ds_pos_bit.i, align 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ival.i.i) #6
  %6 = ptrtoint ptr %ival.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ival.i.i, align 4, !annotation !98
  %regmap.i.i = getelementptr inbounds %struct.rc5t583, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %3 to i32
  %call1.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %conv.i.i, ptr noundef nonnull %ival.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %rc5t583_read.exit.thread.i, label %rc5t583_read.exit.i

rc5t583_read.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ival.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ival.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i.i) #6
  br label %if.end11.i

rc5t583_read.exit.i:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i, label %do.end7.i, label %rc5t583_read.exit.i.if.end11.i_crit_edge

rc5t583_read.exit.i.if.end11.i_crit_edge:         ; preds = %rc5t583_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

do.end7.i:                                        ; preds = %rc5t583_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #9
  br label %return

if.end11.i:                                       ; preds = %rc5t583_read.exit.i.if.end11.i_crit_edge, %rc5t583_read.exit.thread.i
  %sleepseq_val.012.i = phi i32 [ %10, %rc5t583_read.exit.thread.i ], [ 0, %rc5t583_read.exit.i.if.end11.i_crit_edge ]
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i2.i = getelementptr inbounds %struct.rc5t583, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i2.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 16, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp23.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 16) #9
  br label %return

if.end29.i:                                       ; preds = %if.end11.i
  %conv.i = zext i8 %1 to i32
  %shl.i = shl i32 15, %conv.i
  %15 = xor i32 %shl.i, -1
  %conv13.i = and i32 %sleepseq_val.012.i, %15
  %shl14.i = shl nuw i32 1, %conv.i
  %and17.i = and i32 %deepsleep_slot_nr, 7
  %add.i = add nuw nsw i32 %conv.i, 1
  %shl18.i = shl i32 %and17.i, %add.i
  %conv16.i = or i32 %shl18.i, %shl14.i
  %conv21.i = or i32 %conv16.i, %conv13.i
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i4.i = getelementptr inbounds %struct.rc5t583, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i4.i, align 4
  %conv1.i.i = and i32 %conv21.i, 255
  %call2.i.i = call i32 @regmap_write(ptr noundef %19, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp33.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp33.i, label %do.end38.i, label %if.end42.i

do.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i) #9
  br label %return

if.end42.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ds_id)
  %cmp43.i = icmp eq i32 %ds_id, 9
  br i1 %cmp43.i, label %if.then45.i, label %if.end42.i.return_crit_edge

if.end42.i.return_crit_edge:                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then45.i:                                      ; preds = %if.end42.i
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i7.i = getelementptr inbounds %struct.rc5t583, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i7.i, align 4
  %call2.i8.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 94, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8.i)
  %cmp47.i = icmp slt i32 %call2.i8.i, 0
  br i1 %cmp47.i, label %do.end52.i, label %if.then45.i.return_crit_edge

if.then45.i.return_crit_edge:                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end52.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 94) #9
  br label %return

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %ext_pwr_req, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.then6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ds_id)
  %cmp.not.i = icmp eq i32 %ds_id, 1
  br i1 %cmp.not.i, label %if.end.i19, label %do.end.i15

do.end.i15:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %ds_id) #9
  br label %return

if.end.i19:                                       ; preds = %if.then6
  %driver_data.i.i.i16 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i16, align 4
  %regmap.i.i17 = getelementptr inbounds %struct.rc5t583, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i17, align 4
  %call.i.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i18)
  %cmp1.i = icmp slt i32 %call.i.i.i18, 0
  br i1 %cmp1.i, label %do.end5.i, label %if.end.i19.return_crit_edge

if.end.i19.return_crit_edge:                      ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end5.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %return

return:                                           ; preds = %do.end5.i, %if.end.i19.return_crit_edge, %do.end.i15, %if.end3.return_crit_edge, %do.end52.i, %if.then45.i.return_crit_edge, %if.end42.i.return_crit_edge, %do.end38.i, %do.end28.i, %do.end7.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end3.return_crit_edge ], [ -22, %do.end.i ], [ %call1.i.i, %do.end7.i ], [ %call.i.i.i, %do.end28.i ], [ %call2.i.i, %do.end38.i ], [ %call2.i8.i, %do.end52.i ], [ %call2.i8.i, %if.then45.i.return_crit_edge ], [ %call2.i.i, %if.end42.i.return_crit_edge ], [ -22, %do.end.i15 ], [ %call.i.i.i18, %do.end5.i ], [ %call.i.i.i18, %if.end.i19.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_i2c_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rc5t583_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rc5t583_regmap_config, ptr noundef nonnull @rc5t583_i2c_probe._key, ptr noundef nonnull @.str.24) #6
  %regmap = getelementptr inbounds %struct.rc5t583, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %enable_shutdown.i = getelementptr inbounds %struct.rc5t583_platform_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %enable_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_shutdown.i, align 4, !range !99
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.rc5t583, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i = zext i8 %7 to i32
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 16, i32 noundef %conv1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i74 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i74, label %do.end.i, label %if.end19.if.end3.i_crit_edge

if.end19.if.end3.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef 16, i32 noundef %call2.i.i) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end19.if.end3.i_crit_edge
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %driver_data.i.i1.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i1.i, align 4
  %regmap.i2.i = getelementptr inbounds %struct.rc5t583, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i2.i, align 4
  %call2.i3.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 94, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i3.i)
  %cmp6.i = icmp slt i32 %call2.i3.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end3.i.for.body.i.preheader_crit_edge

if.end3.i.for.body.i.preheader_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

do.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.35, i32 noundef 94, i32 noundef %call2.i3.i) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end10.i, %if.end3.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 33, %for.body.i.preheader ]
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %driver_data.i.i4.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i4.i, align 4
  %regmap.i5.i = getelementptr inbounds %struct.rc5t583, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regmap.i5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i5.i, align 4
  %call2.i6.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %i.07.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6.i)
  %cmp16.i = icmp slt i32 %call2.i6.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.40, i32 noundef %i.07.i, i32 noundef %call2.i6.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end21.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 44
  br i1 %exitcond.not.i, label %rc5t583_clear_ext_power_req.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rc5t583_clear_ext_power_req.exit:                 ; preds = %for.inc.i
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool23.not = icmp eq i32 %33, 0
  br i1 %tobool23.not, label %rc5t583_clear_ext_power_req.exit.if.end34_crit_edge, label %if.then24

rc5t583_clear_ext_power_req.exit.if.end34_crit_edge: ; preds = %rc5t583_clear_ext_power_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then24:                                        ; preds = %rc5t583_clear_ext_power_req.exit
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %call26 = tail call i32 @rc5t583_irq_init(ptr noundef nonnull %call.i, i32 noundef %33, i32 noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end34_crit_edge, label %do.end31

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call26) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.then24.if.end34_crit_edge, %rc5t583_clear_ext_power_req.exit.if.end34_crit_edge
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call36 = tail call i32 @devm_mfd_add_devices(ptr noundef %37, i32 noundef -1, ptr noundef nonnull @rc5t583_subdevs, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %do.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call36) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end34.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %if.then12 ], [ %call36, %do.end41 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc5t583_irq_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 25, label %entry.return_crit_edge
    i32 29, label %entry.return_crit_edge32
    i32 65, label %entry.return_crit_edge33
    i32 237, label %entry.return_crit_edge34
    i32 144, label %entry.return_crit_edge35
    i32 145, label %entry.return_crit_edge36
    i32 146, label %entry.return_crit_edge37
    i32 166, label %entry.return_crit_edge38
    i32 167, label %entry.return_crit_edge39
    i32 168, label %entry.return_crit_edge40
    i32 171, label %sw.bb1
  ]

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  %1 = add i32 %reg, -160
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %2 = icmp ult i32 %1, 13
  %3 = add i32 %reg, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %4 = icmp ult i32 %3, 11
  %or.cond = or i1 %2, %4
  %5 = and i32 %reg, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %5)
  %6 = icmp eq i32 %5, 48
  %or.cond31 = or i1 %6, %or.cond
  br i1 %or.cond31, label %sw.default.return_crit_edge, label %if.end12

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end12:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %7 = add i32 %reg, -110
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30, i32 %7)
  %8 = icmp ult i32 %7, -30
  br label %return

return:                                           ; preds = %if.end12, %sw.default.return_crit_edge, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40
  %retval.0 = phi i1 [ true, %sw.bb1 ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge32 ], [ false, %entry.return_crit_edge33 ], [ false, %entry.return_crit_edge34 ], [ false, %entry.return_crit_edge35 ], [ false, %entry.return_crit_edge36 ], [ false, %entry.return_crit_edge37 ], [ false, %entry.return_crit_edge38 ], [ false, %entry.return_crit_edge39 ], [ false, %entry.return_crit_edge40 ], [ false, %sw.default.return_crit_edge ], [ %8, %if.end12 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__ksymtab_rc5t583_ext_power_req_config, !1, !"__ksymtab_rc5t583_ext_power_req_config", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rc5t583.c", i32 150, i32 1}
!2 = !{ptr @__initcall__kmod_rc5t583__288_300_rc5t583_i2c_init4, !3, !"__initcall__kmod_rc5t583__288_300_rc5t583_i2c_init4", i1 false, i1 false}
!3 = !{!"../drivers/mfd/rc5t583.c", i32 300, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/rc5t583.c", i32 80, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rc5t583.c", i32 88, i32 3}
!14 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/rc5t583.c", i32 98, i32 3}
!18 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/rc5t583.c", i32 105, i32 3}
!22 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry.14, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/mfd/rc5t583.c", i32 113, i32 4}
!26 = !{ptr @__rc5t583_set_ext_pwrreq1_control._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @deepsleep_data, !28, !"deepsleep_data", i1 false, i1 false}
!28 = !{!"../drivers/mfd/rc5t583.c", i32 36, i32 38}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/rc5t583.c", i32 125, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__rc5t583_set_ext_pwrreq2_control._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @__rc5t583_set_ext_pwrreq2_control._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/rc5t583.c", i32 131, i32 3}
!36 = !{ptr @__rc5t583_set_ext_pwrreq2_control._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @__rc5t583_set_ext_pwrreq2_control._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/rc5t583.c", i32 290, i32 14}
!40 = !{ptr @rc5t583_i2c_driver, !41, !"rc5t583_i2c_driver", i1 false, i1 false}
!41 = !{!"../drivers/mfd/rc5t583.c", i32 288, i32 26}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/rc5t583.c", i32 244, i32 3}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rc5t583_i2c_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rc5t583_i2c_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rc5t583_i2c_probe._key, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/mfd/rc5t583.c", i32 255, i32 20}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/rc5t583.c", i32 258, i32 3}
!52 = !{ptr @rc5t583_i2c_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rc5t583_i2c_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/rc5t583.c", i32 270, i32 4}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rc5t583_i2c_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rc5t583_i2c_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/rc5t583.c", i32 276, i32 3}
!61 = !{ptr @rc5t583_i2c_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rc5t583_i2c_probe._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rc5t583_regmap_config, !64, !"rc5t583_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/mfd/rc5t583.c", i32 227, i32 35}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/rc5t583.c", i32 165, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rc5t583_clear_ext_power_req._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rc5t583_clear_ext_power_req._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rc5t583_clear_ext_power_req._entry.37, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/mfd/rc5t583.c", i32 170, i32 3}
!72 = !{ptr @rc5t583_clear_ext_power_req._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/rc5t583.c", i32 177, i32 4}
!75 = !{ptr @rc5t583_clear_ext_power_req._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rc5t583_clear_ext_power_req._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/rc5t583.c", i32 65, i32 11}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/rc5t583.c", i32 66, i32 11}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/rc5t583.c", i32 67, i32 11}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/rc5t583.c", i32 68, i32 11}
!85 = !{ptr @rc5t583_subdevs, !86, !"rc5t583_subdevs", i1 false, i1 false}
!86 = !{!"../drivers/mfd/rc5t583.c", i32 64, i32 30}
!87 = !{ptr @rc5t583_i2c_id, !88, !"rc5t583_i2c_id", i1 false, i1 false}
!88 = !{!"../drivers/mfd/rc5t583.c", i32 283, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i8 0, i8 2}
