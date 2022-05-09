; ModuleID = '/llk/IR_all_yes/drivers/pwm/sysfs.c_pt.bc'
source_filename = "../drivers/pwm/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.pwm_export = type { %struct.device, ptr, %struct.mutex, %struct.pwm_state }
%struct.pwm_capture = type { i32, i32 }

@pwm_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.6, ptr null, ptr null, ptr @pwm_chip_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_class_pm_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwmchip%d\00", [22 x i8] zeroinitializer }, align 32
@pwmchip_sysfs_export._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"device_create failed for pwm_chip sysfs export\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwmchip_sysfs_export\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/pwm/sysfs.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwmchip_sysfs_export._entry_ptr = internal global ptr @pwmchip_sysfs_export._entry, section ".printk_index", align 4
@__initcall__kmod_sysfs__183_529_pwm_sysfs_init4 = internal global ptr @pwm_sysfs_init, section ".initcall4.init", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_chip_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pwm_chip_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pwm_class_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr @pwm_class_suspend, ptr @pwm_class_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pwm_chip_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_chip_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pwm_chip_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_export, ptr @dev_attr_unexport, ptr @dev_attr_npwm, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_export = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @export_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_unexport = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @unexport_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_npwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @npwm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"export\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysfs\00", [26 x i8] zeroinitializer }, align 32
@pwm_export_child.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&export->lock\00", [18 x i8] zeroinitializer }, align 32
@pwm_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pwm_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm%u\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EXPORT=pwm%u\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pwm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pwm_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_period, ptr @dev_attr_duty_cycle, ptr @dev_attr_enable, ptr @dev_attr_polarity, ptr @dev_attr_capture, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_period = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @period_show, ptr @period_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_duty_cycle = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @duty_cycle_show, ptr @duty_cycle_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enable_show, ptr @enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_polarity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @polarity_show, ptr @polarity_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_capture = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @capture_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"period\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"duty_cycle\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"polarity\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inversed\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unexport\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"npwm\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UNEXPORT=pwm%u\00", [17 x i8] zeroinitializer }, align 32
@pwm_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"pwm_class\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 476, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 497, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 499, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 477, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"pwm_chip_groups\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"pwm_class_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 474, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"pwm_chip_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 374, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"pwm_chip_attrs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 368, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"dev_attr_export\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"dev_attr_unexport\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"dev_attr_npwm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 336, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 326, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 257, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"pwm_groups\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 263, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 272, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"pwm_group\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 232, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"pwm_attrs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 224, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"dev_attr_period\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"dev_attr_duty_cycle\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"dev_attr_enable\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"dev_attr_polarity\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"dev_attr_capture\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 218, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 45, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 219, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 220, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 115, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 221, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 159, i32 25 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 166, i32 14 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 170, i32 14 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 174, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 222, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 215, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 357, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 366, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 364, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 297, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private constant [23 x i8] c"../drivers/pwm/sysfs.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 527, i32 9 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_sysfs__183_529_pwm_sysfs_init4, ptr @pwmchip_sysfs_export._entry, ptr @pwmchip_sysfs_export._entry_ptr, ptr @pwm_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pwm_chip_groups, ptr @pwm_class_pm_ops, ptr @pwm_chip_group, ptr @pwm_chip_attrs, ptr @dev_attr_export, ptr @dev_attr_unexport, ptr @dev_attr_npwm, ptr @.str.7, ptr @.str.8, ptr @pwm_export_child.__key, ptr @.str.9, ptr @pwm_groups, ptr @.str.10, ptr @.str.11, ptr @pwm_group, ptr @pwm_attrs, ptr @dev_attr_period, ptr @dev_attr_duty_cycle, ptr @dev_attr_enable, ptr @dev_attr_polarity, ptr @dev_attr_capture, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pwm_sysfs_init.__key], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwmchip_sysfs_export._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_chip_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_class_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_chip_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_chip_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_export to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unexport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_npwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_export_child.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_duty_cycle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_polarity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_capture to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwmchip_sysfs_export(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %base = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @pwm_class, ptr noundef %1, i32 noundef 0, ptr noundef %chip, ptr noundef nonnull @.str, i32 noundef %3) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwmchip_sysfs_unexport(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @class_find_device(ptr noundef nonnull @pwm_class, ptr noundef null, ptr noundef %chip, ptr noundef nonnull @pwmchip_sysfs_match) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %flags = getelementptr %struct.pwm_device, ptr %3, i32 %i.016, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %for.body.if.end5_crit_edge, label %if.then3

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pwm_device, ptr %3, i32 %i.016
  %call4 = tail call fastcc i32 @pwm_unexport_child(ptr noundef nonnull %call, ptr noundef %arrayidx)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body.if.end5_crit_edge
  %inc = add nuw i32 %i.016, 1
  %7 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @put_device(ptr noundef nonnull %call) #9
  tail call void @device_unregister(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwmchip_sysfs_match(ptr nocapture noundef readonly %parent, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_unexport_child(ptr noundef %parent, ptr noundef %pwm) unnamed_addr #0 align 64 {
entry:
  %pwm_prop = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pwm_prop) #9
  %0 = getelementptr inbounds [2 x ptr], ptr %pwm_prop, i32 0, i32 1
  %flags = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @device_find_child(ptr noundef %parent, ptr noundef %pwm, ptr noundef nonnull @pwm_unexport_match) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %2) #9
  %3 = ptrtoint ptr %pwm_prop to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %pwm_prop, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %call7 = call i32 @kobject_uevent_env(ptr noundef %parent, i32 noundef 2, ptr noundef nonnull %pwm_prop) #9
  %5 = ptrtoint ptr %pwm_prop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwm_prop, align 4
  call void @kfree(ptr noundef %6) #9
  call void @put_device(ptr noundef nonnull %call1) #9
  call void @device_unregister(ptr noundef nonnull %call1) #9
  call void @pwm_put(ptr noundef %pwm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwm_prop) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sysfs_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @pwm_class, ptr noundef nonnull @pwm_sysfs_init.__key) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @export_store(ptr noundef %parent, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %pwm_prop.i = alloca [2 x ptr], align 4
  %hwpwm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwpwm) #9
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwpwm, align 4, !annotation !90
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %hwpwm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwpwm, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2.not = icmp ult i32 %4, %6
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @pwm_request_from_chip(ptr noundef %1, i32 noundef %4, ptr noundef nonnull @.str.8) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pwm_prop.i) #9
  %8 = getelementptr inbounds [2 x ptr], ptr %pwm_prop.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.pwm_device, ptr %call5, i32 0, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.pwm_export_child.exit.thread_crit_edge

if.end9.pwm_export_child.exit.thread_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_export_child.exit.thread

if.end.i:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1048) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #9
  br label %pwm_export_child.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %pwm6.i = getelementptr inbounds %struct.pwm_export, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pwm6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %pwm6.i, align 8
  %lock.i = getelementptr inbounds %struct.pwm_export, ptr %call7.i.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @pwm_export_child.__key) #9
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %11 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pwm_export_release, ptr %release.i, align 4
  %parent8.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %parent8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parent, ptr %parent8.i, align 8
  %devt.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 29
  %13 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %devt.i, align 8
  %groups.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 34
  %14 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pwm_groups, ptr %groups.i, align 8
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %call5, i32 0, i32 2
  %15 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwpwm.i, align 8
  %call12.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.10, i32 noundef %16) #9
  %call14.i = call i32 @device_register(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %17, label %pwm_export_child.exit

pwm_export_child.exit.thread:                     ; preds = %if.then3.i, %if.end9.pwm_export_child.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.end9.pwm_export_child.exit.thread_crit_edge ], [ -12, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwm_prop.i) #9
  br label %if.then12

pwm_export_child.exit:                            ; preds = %if.end5.i
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #9
  call void @put_device(ptr noundef nonnull %call7.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwm_prop.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp11 = icmp slt i32 %call14.i, 0
  br i1 %cmp11, label %pwm_export_child.exit.if.then12_crit_edge, label %pwm_export_child.exit.cleanup_crit_edge

pwm_export_child.exit.cleanup_crit_edge:          ; preds = %pwm_export_child.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pwm_export_child.exit.if.then12_crit_edge:        ; preds = %pwm_export_child.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %pwm_export_child.exit.if.then12_crit_edge, %pwm_export_child.exit.thread
  %retval.0.i28 = phi i32 [ %retval.0.i.ph, %pwm_export_child.exit.thread ], [ %call14.i, %pwm_export_child.exit.if.then12_crit_edge ]
  call void @pwm_put(ptr noundef %call5) #9
  br label %cleanup

17:                                               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwpwm.i, align 8
  %call21.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, i32 noundef %19) #9
  %20 = ptrtoint ptr %pwm_prop.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21.i, ptr %pwm_prop.i, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %8, align 4
  %call23.i = call i32 @kobject_uevent_env(ptr noundef %parent, i32 noundef 2, ptr noundef nonnull %pwm_prop.i) #9
  %22 = ptrtoint ptr %pwm_prop.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pwm_prop.i, align 4
  call void @kfree(ptr noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwm_prop.i) #9
  br label %cleanup

cleanup:                                          ; preds = %17, %if.then12, %pwm_export_child.exit.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then7 ], [ %call1, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %len, %17 ], [ %call14.i, %pwm_export_child.exit.cleanup_crit_edge ], [ %retval.0.i28, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwpwm) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request_from_chip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_export_release(ptr noundef %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %child) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @period_show(ptr nocapture noundef readonly %child, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %state.sroa.0.0.copyload2 = load i64, ptr %state1.i, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i64 noundef %state.sroa.0.0.copyload2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @period_store(ptr noundef %child, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm1 = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !90
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %val, align 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %state, align 8
  %call3 = call i32 @pwm_apply_state(ptr noundef %1, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool5.not, i32 %size, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @duty_cycle_show(ptr nocapture noundef readonly %child, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  %state.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %state.sroa.4.0.copyload3 = load i64, ptr %state.sroa.4.0.state1.i.sroa_idx, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i64 noundef %state.sroa.4.0.copyload3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @duty_cycle_store(ptr noundef %child, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm1 = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !90
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %val, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %duty_cycle, align 8
  %call3 = call i32 @pwm_apply_state(ptr noundef %1, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool5.not, i32 %size, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_show(ptr nocapture noundef readonly %child, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  %state.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %state.sroa.4.0.copyload2 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx, align 4
  %3 = zext i8 %state.sroa.4.0.copyload2 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_store(ptr noundef %child, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm1 = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !90
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %unlock.thread [
    i32 0, label %if.end.unlock_crit_edge
    i32 1, label %sw.bb3
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock.thread:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %sw.bb3, %if.end.unlock_crit_edge
  %.sink = phi i8 [ 1, %sw.bb3 ], [ 0, %if.end.unlock_crit_edge ]
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %enabled, align 4
  %call5 = call i32 @pwm_apply_state(ptr noundef %1, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool7.not, i32 %size, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %unlock.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %unlock.thread ], [ %spec.select, %unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polarity_show(ptr nocapture noundef readonly %child, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  %state.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %state.sroa.4.0.copyload6 = load i32, ptr %state.sroa.4.0.state1.i.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state.sroa.4.0.copyload6)
  %switch.selectcmp = icmp eq i32 %state.sroa.4.0.copyload6, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.20, ptr @.str.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.sroa.4.0.copyload6)
  %switch.selectcmp4 = icmp eq i32 %state.sroa.4.0.copyload6, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @.str.19, ptr %switch.select
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef nonnull %switch.select5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polarity_store(ptr noundef %child, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm1 = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.19) #9
  br i1 %call2, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.20) #9
  br i1 %call3, label %if.else.if.end6_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %polarity.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1, %if.else.if.end6_crit_edge ]
  %lock = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %polarity7 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %polarity7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %polarity.0, ptr %polarity7, align 8
  %call8 = call i32 @pwm_apply_state(ptr noundef %1, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %tobool.not, i32 %size, i32 %call8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end6 ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_show(ptr nocapture noundef readonly %child, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %result = alloca %struct.pwm_capture, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #9
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %result, align 4, !annotation !90
  %3 = getelementptr inbounds %struct.pwm_capture, ptr %result, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !90
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef 100) #9
  %call2 = call i32 @pwm_capture(ptr noundef %1, ptr noundef nonnull %result, i32 noundef %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %6, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_capture(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unexport_store(ptr noundef %parent, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %hwpwm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwpwm) #9
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwpwm, align 4, !annotation !90
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %hwpwm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwpwm, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2.not = icmp ult i32 %4, %6
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %8, i32 %4
  %call5 = call fastcc i32 @pwm_unexport_child(ptr noundef %parent, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool.not, i32 %len, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwpwm) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npwm_show(ptr nocapture noundef readonly %parent, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_class_suspend(ptr noundef %parent) #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32.not = icmp eq i32 %3, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.035 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %5, i32 %i.033
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %6 = call ptr @memset(ptr %state, i32 255, i32 24)
  %flags.i = getelementptr %struct.pwm_device, ptr %5, i32 %i.033, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %call1.i = call ptr @device_find_child(ptr noundef %parent, ptr noundef %arrayidx, ptr noundef nonnull @pwm_unexport_match) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.end

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %if.end.i
  call void @put_device(ptr noundef nonnull %call1.i) #9
  %lock.i = getelementptr inbounds %struct.pwm_export, ptr %call1.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %state1.i.i = getelementptr %struct.pwm_device, ptr %5, i32 %i.033, i32 7
  %10 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %suspend = getelementptr inbounds %struct.pwm_export, ptr %call1.i, i32 0, i32 3
  %11 = call ptr @memmove(ptr %suspend, ptr %state1.i.i, i32 24)
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %arrayidx, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %cleanup, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call fastcc i32 @pwm_class_resume_npwm(ptr noundef %parent, i32 noundef %i.033)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ %call.i, %if.end.for.inc_crit_edge ], [ %ret.035, %for.body.for.inc_crit_edge ], [ %ret.035, %if.end.i.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  %inc = add nuw i32 %i.033, 1
  %13 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %call.i, %cleanup ], [ 0, %entry.for.end_crit_edge ], [ %ret.1.ph, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_class_resume(ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  %call1 = tail call fastcc i32 @pwm_class_resume_npwm(ptr noundef %parent, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pwm_class_resume_npwm(ptr noundef %parent, i32 noundef %npwm) unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npwm)
  %cmp28.not = icmp eq i32 %npwm, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %enabled3 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.032 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.127, %for.inc.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %3, i32 %i.029
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %4 = call ptr @memset(ptr %state, i32 255, i32 24)
  %flags.i = getelementptr %struct.pwm_device, ptr %3, i32 %i.029, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.cleanup.thread_crit_edge, label %if.end.i

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i:                                         ; preds = %for.body
  %call1.i = call ptr @device_find_child(ptr noundef %parent, ptr noundef %arrayidx, ptr noundef nonnull @pwm_unexport_match) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.thread_crit_edge, label %cleanup

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  br label %for.inc

cleanup:                                          ; preds = %if.end.i
  call void @put_device(ptr noundef nonnull %call1.i) #9
  %lock.i = getelementptr inbounds %struct.pwm_export, ptr %call1.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %state1.i.i = getelementptr %struct.pwm_device, ptr %3, i32 %i.029, i32 7
  %8 = call ptr @memcpy(ptr %state, ptr %state1.i.i, i32 24)
  %enabled = getelementptr inbounds %struct.pwm_export, ptr %call1.i, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled, align 4, !range !91
  %11 = ptrtoint ptr %enabled3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %enabled3, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef %arrayidx, ptr noundef nonnull %state) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch = icmp slt i32 %call.i, 0
  br i1 %switch, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %ret.127 = phi i32 [ %ret.032, %cleanup.thread ], [ %call.i, %cleanup.for.inc_crit_edge ]
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %npwm
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call.i, %cleanup.for.end_crit_edge ], [ %ret.127, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_unexport_match(ptr nocapture noundef readonly %child, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm.i = getelementptr inbounds %struct.pwm_export, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm.i, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !49, !51, !53, !54, !56, !58, !60, !62, !64, !65, !67, !69, !70, !72, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pwm/sysfs.c", i32 497, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pwm/sysfs.c", i32 499, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pwmchip_sysfs_export._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @pwmchip_sysfs_export._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_sysfs__183_529_pwm_sysfs_init4, !11, !"__initcall__kmod_sysfs__183_529_pwm_sysfs_init4", i1 false, i1 false}
!11 = !{!"../drivers/pwm/sysfs.c", i32 529, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/sysfs.c", i32 477, i32 10}
!14 = !{ptr @pwm_class, !15, !"pwm_class", i1 false, i1 false}
!15 = !{!"../drivers/pwm/sysfs.c", i32 476, i32 21}
!16 = !{ptr @pwm_chip_groups, !17, !"pwm_chip_groups", i1 false, i1 false}
!17 = !{!"../drivers/pwm/sysfs.c", i32 374, i32 1}
!18 = !{ptr @pwm_chip_group, !17, !"pwm_chip_group", i1 false, i1 false}
!19 = !{ptr @pwm_chip_attrs, !20, !"pwm_chip_attrs", i1 false, i1 false}
!20 = !{!"../drivers/pwm/sysfs.c", i32 368, i32 26}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pwm/sysfs.c", i32 336, i32 8}
!23 = !{ptr @dev_attr_export, !22, !"dev_attr_export", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/sysfs.c", i32 326, i32 43}
!26 = !{ptr @pwm_export_child.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/pwm/sysfs.c", i32 257, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/sysfs.c", i32 263, i32 31}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pwm/sysfs.c", i32 272, i32 38}
!33 = !{ptr @pwm_groups, !34, !"pwm_groups", i1 false, i1 false}
!34 = !{!"../drivers/pwm/sysfs.c", i32 232, i32 1}
!35 = !{ptr @pwm_group, !34, !"pwm_group", i1 false, i1 false}
!36 = !{ptr @pwm_attrs, !37, !"pwm_attrs", i1 false, i1 false}
!37 = !{!"../drivers/pwm/sysfs.c", i32 224, i32 26}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/sysfs.c", i32 218, i32 8}
!40 = !{ptr @dev_attr_period, !39, !"dev_attr_period", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pwm/sysfs.c", i32 45, i32 22}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pwm/sysfs.c", i32 219, i32 8}
!45 = !{ptr @dev_attr_duty_cycle, !44, !"dev_attr_duty_cycle", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pwm/sysfs.c", i32 220, i32 8}
!48 = !{ptr @dev_attr_enable, !47, !"dev_attr_enable", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pwm/sysfs.c", i32 115, i32 22}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/sysfs.c", i32 221, i32 8}
!53 = !{ptr @dev_attr_polarity, !52, !"dev_attr_polarity", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pwm/sysfs.c", i32 159, i32 25}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pwm/sysfs.c", i32 166, i32 14}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pwm/sysfs.c", i32 170, i32 14}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pwm/sysfs.c", i32 174, i32 22}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pwm/sysfs.c", i32 222, i32 8}
!64 = !{ptr @dev_attr_capture, !63, !"dev_attr_capture", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pwm/sysfs.c", i32 215, i32 22}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pwm/sysfs.c", i32 357, i32 8}
!69 = !{ptr @dev_attr_unexport, !68, !"dev_attr_unexport", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pwm/sysfs.c", i32 366, i32 8}
!72 = !{ptr @dev_attr_npwm, !71, !"dev_attr_npwm", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pwm/sysfs.c", i32 364, i32 22}
!75 = !{ptr @pwm_class_pm_ops, !76, !"pwm_class_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/pwm/sysfs.c", i32 474, i32 8}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pwm/sysfs.c", i32 297, i32 38}
!79 = !{ptr @pwm_sysfs_init.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/pwm/sysfs.c", i32 527, i32 9}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i8 0, i8 2}
