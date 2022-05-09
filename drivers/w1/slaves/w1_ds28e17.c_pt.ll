; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds28e17.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds28e17.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.w1_f19_data = type { i8, i8, %struct.i2c_adapter }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_file288 = internal constant [45 x i8] c"w1_ds28e17.file=drivers/w1/slaves/w1_ds28e17\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [26 x i8] c"w1_ds28e17.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [45 x i8] c"w1_ds28e17.author=Jan Kandziora <jjj@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [84 x i8] c"w1_ds28e17.description=w1 family 19 driver for DS28E17, 1-wire to I2C master bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [32 x i8] c"w1_ds28e17.alias=w1-family-0x19\00", section ".modinfo", align 1
@__param_str_speed = internal constant [17 x i8] c"w1_ds28e17.speed\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_speed = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_speed = internal constant %struct.kernel_param { ptr @__param_str_speed, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @i2c_speed } }, section "__param", align 4
@__UNIQUE_ID_speedtype293 = internal constant [30 x i8] c"w1_ds28e17.parmtype=speed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_speed294 = internal constant [77 x i8] c"w1_ds28e17.parm=speed:Default I2C speed to be set when a DS28E17 is detected\00", section ".modinfo", align 1
@__param_str_stretch = internal constant [19 x i8] c"w1_ds28e17.stretch\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_stretch = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_stretch = internal constant %struct.kernel_param { ptr @__param_str_stretch, ptr null, ptr @param_ops_byte, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @i2c_stretch } }, section "__param", align 4
@__UNIQUE_ID_stretchtype295 = internal constant [33 x i8] c"w1_ds28e17.parmtype=stretch:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_stretch296 = internal constant [87 x i8] c"w1_ds28e17.parm=stretch:Default I2C stretch value to be set when a DS28E17 is detected\00", section ".modinfo", align 1
@__initcall__kmod_w1_ds28e17__297_755_w1_family_19_init6 = internal global ptr @w1_family_19_init, section ".initcall6.init", align 4
@w1_family_19 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 25, ptr @w1_f19_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_19_exit = internal global ptr @w1_family_19_exit, section ".exitcall.exit", align 4
@w1_f19_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f19_add_slave, ptr @w1_f19_remove_slave, ptr @w1_f19_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f19_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f19_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f19_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @w1_f19_i2c_master_transfer, ptr null, ptr null, ptr null, ptr @w1_f19_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@w1_f19_i2c_adapter_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 0, i16 0, i16 255, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@__w1_f19_set_i2c_speed._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 549, ptr @.str.4, ptr @.str.5 }, align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c speed set to %d kBaud\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__w1_f19_set_i2c_speed\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/w1/slaves/w1_ds28e17.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__w1_f19_set_i2c_speed._entry_ptr = internal global ptr @__w1_f19_set_i2c_speed._entry, section ".printk_index", align 4
@__const.w1_f19_i2c_busy_wait.timebases = private unnamed_addr constant [3 x i32] [i32 90, i32 23, i32 10], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@w1_f19_i2c_busy_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 116, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"busy timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w1_f19_i2c_busy_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@w1_f19_i2c_busy_wait._entry_ptr = internal global ptr @w1_f19_i2c_busy_wait._entry, section ".printk_index", align 4
@w1_f19_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 126, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crc16 mismatch\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w1_f19_error\00", [19 x i8] zeroinitializer }, align 32
@w1_f19_error._entry_ptr = internal global ptr @w1_f19_error._entry, section ".printk_index", align 4
@w1_f19_error._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 128, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c device not responding\0A\00", [37 x i8] zeroinitializer }, align 32
@w1_f19_error._entry_ptr.13 = internal global ptr @w1_f19_error._entry.11, section ".printk_index", align 4
@w1_f19_error._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 132, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"i2c short write, %d bytes not acknowledged\0A\00", [52 x i8] zeroinitializer }, align 32
@w1_f19_error._entry_ptr.16 = internal global ptr @w1_f19_error._entry.14, section ".printk_index", align 4
@w1_f19_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_f19_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_f19_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_speed, ptr @dev_attr_stretch, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @speed_show, ptr @speed_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stretch = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stretch_show, ptr @stretch_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stretch\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 400, i64 900]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 49, i64 52, i64 57]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"i2c_speed\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 33, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"i2c_stretch\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 38, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"w1_family_19\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 750, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"w1_f19_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 744, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"w1_f19_groups\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 674, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"w1_f19_i2c_algorithm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 493, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"w1_f19_i2c_adapter_quirks\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 488, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 549, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 116, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 126, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 128, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 131, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"w1_f19_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 670, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"w1_f19_attrs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 664, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"dev_attr_speed\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"dev_attr_stretch\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 625, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 586, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [34 x i8] c"../drivers/w1/slaves/w1_ds28e17.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 660, i32 8 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__UNIQUE_ID_speed294, ptr @__UNIQUE_ID_speedtype293, ptr @__UNIQUE_ID_stretch296, ptr @__UNIQUE_ID_stretchtype295, ptr @__exitcall_w1_family_19_exit, ptr @__initcall__kmod_w1_ds28e17__297_755_w1_family_19_init6, ptr @__param_speed, ptr @__param_stretch, ptr @__w1_f19_set_i2c_speed._entry, ptr @__w1_f19_set_i2c_speed._entry_ptr, ptr @w1_f19_error._entry, ptr @w1_f19_error._entry.11, ptr @w1_f19_error._entry.14, ptr @w1_f19_error._entry_ptr, ptr @w1_f19_error._entry_ptr.13, ptr @w1_f19_error._entry_ptr.16, ptr @w1_f19_i2c_busy_wait._entry, ptr @w1_f19_i2c_busy_wait._entry_ptr, ptr @w1_family_19_exit, ptr @i2c_speed, ptr @i2c_stretch, ptr @w1_family_19, ptr @w1_f19_fops, ptr @w1_f19_groups, ptr @w1_f19_i2c_algorithm, ptr @w1_f19_i2c_adapter_quirks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @w1_f19_group, ptr @w1_f19_attrs, ptr @dev_attr_speed, ptr @dev_attr_stretch, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_stretch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_i2c_adapter_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_i2c_busy_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_error._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_error._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f19_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stretch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_19_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_19) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_19_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_19) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f19_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  %w1_buf.i50 = alloca [2 x i8], align 1
  %w1_buf.i41 = alloca [2 x i8], align 1
  %w1_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1368, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %family_data, align 4
  %1 = load i32, ptr @i2c_speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 100, label %sw.bb
    i32 400, label %sw.bb2
    i32 900, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i) #10
  %call.i40 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.__w1_f19_set_i2c_speed.exit_crit_edge

sw.bb.__w1_f19_set_i2c_speed.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %__w1_f19_set_i2c_speed.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds [2 x i8], ptr %w1_buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -46, ptr %w1_buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  %master.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  call void @w1_write_block(ptr noundef %7, ptr noundef nonnull %w1_buf.i, i32 noundef 2) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 100) #13
  br label %__w1_f19_set_i2c_speed.exit

__w1_f19_set_i2c_speed.exit:                      ; preds = %if.end.i, %sw.bb.__w1_f19_set_i2c_speed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i) #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i41) #10
  %call.i43 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i47, label %sw.bb2.__w1_f19_set_i2c_speed.exit49_crit_edge

sw.bb2.__w1_f19_set_i2c_speed.exit49_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %__w1_f19_set_i2c_speed.exit49

if.end.i47:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds [2 x i8], ptr %w1_buf.i41, i32 0, i32 1
  %10 = ptrtoint ptr %w1_buf.i41 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -46, ptr %w1_buf.i41, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %9, align 1
  %master.i45 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %12 = ptrtoint ptr %master.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i45, align 4
  call void @w1_write_block(ptr noundef %13, ptr noundef nonnull %w1_buf.i41, i32 noundef 2) #10
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 400) #13
  br label %__w1_f19_set_i2c_speed.exit49

__w1_f19_set_i2c_speed.exit49:                    ; preds = %if.end.i47, %sw.bb2.__w1_f19_set_i2c_speed.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i41) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i50) #10
  %call.i52 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %sw.bb4.__w1_f19_set_i2c_speed.exit58_crit_edge

sw.bb4.__w1_f19_set_i2c_speed.exit58_crit_edge:   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %__w1_f19_set_i2c_speed.exit58

if.end.i56:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %15 = getelementptr inbounds [2 x i8], ptr %w1_buf.i50, i32 0, i32 1
  %16 = ptrtoint ptr %w1_buf.i50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -46, ptr %w1_buf.i50, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %15, align 1
  %master.i54 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %18 = ptrtoint ptr %master.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i54, align 4
  call void @w1_write_block(ptr noundef %19, ptr noundef nonnull %w1_buf.i50, i32 noundef 2) #10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 900) #13
  br label %__w1_f19_set_i2c_speed.exit58

__w1_f19_set_i2c_speed.exit58:                    ; preds = %if.end.i56, %sw.bb4.__w1_f19_set_i2c_speed.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i50) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %call.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %__w1_f19_set_i2c_speed.exit58, %__w1_f19_set_i2c_speed.exit49, %__w1_f19_set_i2c_speed.exit
  %22 = load i8, ptr @i2c_stretch, align 1
  %stretch = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %stretch to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %stretch, align 1
  %adapter = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @w1_f19_i2c_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sl, ptr %algo_data, align 4
  %name = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2, i32 12
  %27 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 1999711488, ptr %name, align 1
  %name13 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 1
  %call15 = call ptr @strcat(ptr noundef %name, ptr noundef %name13)
  %parent = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %parent, align 8
  %quirks = getelementptr inbounds %struct.w1_f19_data, ptr %call.i, i32 0, i32 2, i32 17
  %29 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @w1_f19_i2c_adapter_quirks, ptr %quirks, align 8
  %call21 = call i32 @i2c_add_adapter(ptr noundef %adapter) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_f19_remove_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data1 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data1, align 4
  %adapter = getelementptr inbounds %struct.w1_f19_data, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #10
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %1) #10
  %2 = ptrtoint ptr %family_data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %family_data1, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f19_i2c_master_transfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %command.i = alloca [2 x i8], align 1
  %w1_buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.w1_slave, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #10
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp230 = icmp sgt i32 %num, 0
  br i1 %cmp230, label %while.body.lr.ph, label %while.cond.preheader.error_crit_edge

while.cond.preheader.error_crit_edge:             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub = add nsw i32 %num, -1
  %4 = getelementptr inbounds [3 x i8], ptr %w1_buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %w1_buf.i, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.w1_slave, ptr %1, i32 0, i32 10
  %6 = getelementptr inbounds [2 x i8], ptr %command.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then127.while.body_crit_edge, %while.body.lr.ph
  %i.0231 = phi i32 [ 0, %while.body.lr.ph ], [ %inc124, %if.then127.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0231, i32 %sub)
  %cmp1 = icmp slt i32 %i.0231, %sub
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %add = add nsw i32 %i.0231, 1
  %arrayidx2 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp5 = icmp eq i16 %8, %10
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool10.not = icmp eq i16 %13, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %flags14 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %14 = ptrtoint ptr %flags14 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags14, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool17.not = icmp eq i16 %16, 0
  br i1 %tobool17.not, label %land.lhs.true11.if.else_crit_edge, label %land.lhs.true18

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true11
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp21 = icmp ult i16 %18, 256
  br i1 %cmp21, label %if.then23, label %land.lhs.true18.if.else_crit_edge

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true18
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 3
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %buf32 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %21 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf32, align 4
  %len35 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %23 = ptrtoint ptr %len35 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len35, align 4
  %conv36 = zext i16 %24 to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %w1_buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i = icmp eq i16 %18, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp1.i = icmp eq i16 %24, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then23.w1_f19_i2c_write_read.exit.thread_crit_edge, label %if.end.i

if.then23.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

if.end.i:                                         ; preds = %if.then23
  %conv20 = zext i16 %18 to i32
  %25 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 45, ptr %w1_buf.i, align 1
  %conv.i = trunc i16 %8 to i8
  %shl.i = shl i8 %conv.i, 1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %shl.i, ptr %4, align 1
  %conv4.i = trunc i16 %18 to i8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i, ptr %5, align 1
  %call.i = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #10
  %28 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %29, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #10
  %call7.i = call zeroext i16 @crc16(i16 noundef zeroext %call.i, ptr noundef %20, i32 noundef %conv20) #10
  %30 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %31, ptr noundef %20, i32 noundef %conv20) #10
  %conv9.i = trunc i16 %24 to i8
  %32 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv9.i, ptr %w1_buf.i, align 1
  %call12.i = call zeroext i16 @crc16(i16 noundef zeroext %call7.i, ptr noundef nonnull %w1_buf.i, i32 noundef 1) #10
  %33 = trunc i16 %call12.i to i8
  %conv14.i = xor i8 %33, -1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv14.i, ptr %4, align 1
  %35 = lshr i16 %call12.i, 8
  %36 = trunc i16 %35 to i8
  %neg18.i = xor i8 %36, -1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %neg18.i, ptr %5, align 1
  %38 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %39, ptr noundef nonnull %w1_buf.i, i32 noundef 3) #10
  %add.i = add nuw nsw i32 %conv20, 2
  %add23.i = add nuw nsw i32 %add.i, %conv36
  %call24.i = call fastcc i32 @w1_f19_i2c_busy_wait(ptr noundef %1, i32 noundef %add23.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end.i.w1_f19_i2c_write_read.exit.thread_crit_edge, label %if.end28.i

if.end.i.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

if.end28.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master, align 4
  %call31.i = call zeroext i8 @w1_read_block(ptr noundef %41, ptr noundef nonnull %w1_buf.i, i32 noundef 2) #10
  %42 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %w1_buf.i, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i, label %if.end28.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end28.i.if.end.i.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end28.i.if.end.i.i_crit_edge
  %45 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %w1_buf.i, align 1
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %do.end7.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12) #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end7.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %48 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %w1_buf.i, align 1
  %50 = and i8 %49, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i.i = icmp eq i8 %50, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end9.i.i.if.end24.i.i_crit_edge

if.end9.i.i.if.end24.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp16.not.i.i = icmp eq i8 %52, 0
  br i1 %cmp16.not.i.i, label %land.lhs.true.i.i.if.end24thread-pre-split.i.i_crit_edge, label %do.end20.i.i

land.lhs.true.i.i.if.end24thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24thread-pre-split.i.i

do.end20.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %conv15.i.i) #13
  br label %if.end24thread-pre-split.i.i

if.end24thread-pre-split.i.i:                     ; preds = %do.end20.i.i, %land.lhs.true.i.i.if.end24thread-pre-split.i.i_crit_edge
  %53 = ptrtoint ptr %w1_buf.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr.i.i = load i8, ptr %w1_buf.i, align 1
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.end24thread-pre-split.i.i, %if.end9.i.i.if.end24.i.i_crit_edge
  %54 = phi i8 [ %.pr.i.i, %if.end24thread-pre-split.i.i ], [ %49, %if.end9.i.i.if.end24.i.i_crit_edge ]
  %conv26.i.i = zext i8 %54 to i32
  %and27.i.i = and i32 %conv26.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %if.end24.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge

if.end24.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

if.end30.i.i:                                     ; preds = %if.end24.i.i
  %and33.i.i = and i32 %conv26.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.end30.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge

if.end30.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

if.end36.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp39.not.i.i = icmp eq i8 %54, 0
  br i1 %cmp39.not.i.i, label %lor.lhs.false.i.i, label %if.end36.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge

if.end36.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end36.i.i
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp43.not.i.i = icmp eq i8 %56, 0
  br i1 %cmp43.not.i.i, label %w1_f19_i2c_write_read.exit, label %lor.lhs.false.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge

lor.lhs.false.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write_read.exit.thread

w1_f19_i2c_write_read.exit.thread:                ; preds = %lor.lhs.false.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge, %if.end36.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge, %if.end30.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge, %if.end24.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge, %if.end.i.w1_f19_i2c_write_read.exit.thread_crit_edge, %if.then23.w1_f19_i2c_write_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -6, %if.end24.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge ], [ -11, %if.end30.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge ], [ -5, %if.end36.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i.i.w1_f19_i2c_write_read.exit.thread_crit_edge ], [ -110, %if.end.i.w1_f19_i2c_write_read.exit.thread_crit_edge ], [ -95, %if.then23.w1_f19_i2c_write_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #10
  br label %error

w1_f19_i2c_write_read.exit:                       ; preds = %lor.lhs.false.i.i
  %57 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master, align 4
  %call39.i = call zeroext i8 @w1_read_block(ptr noundef %58, ptr noundef %22, i32 noundef %conv36) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %w1_buf.i) #10
  %59 = ptrtoint ptr %flags14 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags14, align 2
  %61 = and i16 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool47.not = icmp eq i16 %61, 0
  br i1 %tobool47.not, label %w1_f19_i2c_write_read.exit.if.end123_crit_edge, label %if.then48

w1_f19_i2c_write_read.exit.if.end123_crit_edge:   ; preds = %w1_f19_i2c_write_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then48:                                        ; preds = %w1_f19_i2c_write_read.exit
  %62 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx2, align 4
  %64 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf32, align 4
  %arrayidx55 = getelementptr i8, ptr %65, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  %conv60 = zext i8 %67 to i32
  %call61 = call fastcc i32 @w1_f19_i2c_read(ptr noundef %1, i16 noundef zeroext %63, ptr noundef %arrayidx55, i32 noundef %conv60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then48.error_crit_edge, label %if.then48.if.end123_crit_edge

if.then48.if.end123_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then48.error_crit_edge:                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %land.lhs.true11.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %arrayidx67 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231
  %flags68 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 1
  %68 = ptrtoint ptr %flags68 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flags68, align 2
  %70 = and i16 %69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool71.not = icmp eq i16 %70, 0
  %71 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx67, align 4
  %buf110 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 3
  %73 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf110, align 4
  %len112 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0231, i32 2
  %75 = ptrtoint ptr %len112 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %len112, align 4
  %conv113 = zext i16 %76 to i32
  br i1 %tobool71.not, label %if.else106, label %if.then72

if.then72:                                        ; preds = %if.else
  %call80 = call fastcc i32 @w1_f19_i2c_read(ptr noundef %1, i16 noundef zeroext %72, ptr noundef %74, i32 noundef %conv113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then72.error_crit_edge, label %if.end84

if.then72.error_crit_edge:                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end84:                                         ; preds = %if.then72
  %77 = ptrtoint ptr %flags68 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %flags68, align 2
  %79 = and i16 %78, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool89.not = icmp eq i16 %79, 0
  br i1 %tobool89.not, label %if.end84.if.end123_crit_edge, label %if.then90

if.end84.if.end123_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then90:                                        ; preds = %if.end84
  %80 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx67, align 4
  %82 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf110, align 4
  %arrayidx95 = getelementptr i8, ptr %83, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv99 = zext i8 %85 to i32
  %call100 = call fastcc i32 @w1_f19_i2c_read(ptr noundef %1, i16 noundef zeroext %81, ptr noundef %arrayidx95, i32 noundef %conv99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then90.error_crit_edge, label %if.then90.if.end123_crit_edge

if.then90.if.end123_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then90.error_crit_edge:                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else106:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0231, i32 %sub)
  %cmp115 = icmp eq i32 %i.0231, %sub
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.i211 = icmp eq i16 %76, 0
  br i1 %cmp.i211, label %if.else106.w1_f19_i2c_write.exit.thread_crit_edge, label %if.end.i213

if.else106.w1_f19_i2c_write.exit.thread_crit_edge: ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write.exit.thread

if.end.i213:                                      ; preds = %if.else106
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %76)
  %cmp1.i212 = icmp ult i16 %76, 256
  br i1 %cmp1.i212, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i214 = select i1 %cmp115, i8 75, i8 90
  %86 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i214, ptr %command.i, align 1
  %conv3.i = trunc i16 %72 to i8
  %shl.i215 = shl i8 %conv3.i, 1
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %shl.i215, ptr %6, align 1
  %call.i216 = call fastcc i32 @__w1_f19_i2c_write(ptr noundef %1, ptr noundef nonnull %command.i, i32 noundef 2, ptr noundef %74, i32 noundef %conv113) #10
  br label %w1_f19_i2c_write.exit

if.else.i:                                        ; preds = %if.end.i213
  %88 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 90, ptr %command.i, align 1
  %conv7.i = trunc i16 %72 to i8
  %shl8.i = shl i8 %conv7.i, 1
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %shl8.i, ptr %6, align 1
  %call12.i217 = call fastcc i32 @__w1_f19_i2c_write(ptr noundef %1, ptr noundef nonnull %command.i, i32 noundef 2, ptr noundef %74, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i217)
  %cmp13.i = icmp slt i32 %call12.i217, 0
  br i1 %cmp13.i, label %if.else.i.w1_f19_i2c_write.exit.thread_crit_edge, label %if.end16.i

if.else.i.w1_f19_i2c_write.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write.exit.thread

if.end16.i:                                       ; preds = %if.else.i
  %90 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %master, align 4
  %call17.i = call i32 @w1_reset_resume_command(ptr noundef %91) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.while.cond.i_crit_edge, label %if.end16.i.w1_f19_i2c_write.exit.thread_crit_edge

if.end16.i.w1_f19_i2c_write.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write.exit.thread

if.end16.i.while.cond.i_crit_edge:                ; preds = %if.end16.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end29.i.while.cond.i_crit_edge, %if.end16.i.while.cond.i_crit_edge
  %remaining.0.in.i = phi i32 [ %remaining.0.i, %if.end29.i.while.cond.i_crit_edge ], [ %conv113, %if.end16.i.while.cond.i_crit_edge ]
  %buffer.pn.i = phi ptr [ %p.0.i, %if.end29.i.while.cond.i_crit_edge ], [ %74, %if.end16.i.while.cond.i_crit_edge ]
  %remaining.0.i = add nsw i32 %remaining.0.in.i, -255
  %p.0.i = getelementptr i8, ptr %buffer.pn.i, i32 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %remaining.0.in.i)
  %cmp21.i = icmp sgt i32 %remaining.0.in.i, 510
  br i1 %cmp21.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %92 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 105, ptr %command.i, align 1
  %call25.i = call fastcc i32 @__w1_f19_i2c_write(ptr noundef %1, ptr noundef nonnull %command.i, i32 noundef 1, ptr noundef %p.0.i, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %while.body.i.w1_f19_i2c_write.exit.thread_crit_edge, label %if.end29.i

while.body.i.w1_f19_i2c_write.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write.exit.thread

if.end29.i:                                       ; preds = %while.body.i
  %93 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %master, align 4
  %call31.i219 = call i32 @w1_reset_resume_command(ptr noundef %94) #10
  %tobool32.not.i = icmp eq i32 %call31.i219, 0
  br i1 %tobool32.not.i, label %if.end29.i.while.cond.i_crit_edge, label %if.end29.i.w1_f19_i2c_write.exit.thread_crit_edge

if.end29.i.w1_f19_i2c_write.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_i2c_write.exit.thread

if.end29.i.while.cond.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv40.i220 = select i1 %cmp115, i8 120, i8 105
  %95 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv40.i220, ptr %command.i, align 1
  %call43.i = call fastcc i32 @__w1_f19_i2c_write(ptr noundef %1, ptr noundef nonnull %command.i, i32 noundef 1, ptr noundef %p.0.i, i32 noundef %remaining.0.i) #10
  br label %w1_f19_i2c_write.exit

w1_f19_i2c_write.exit.thread:                     ; preds = %if.end29.i.w1_f19_i2c_write.exit.thread_crit_edge, %while.body.i.w1_f19_i2c_write.exit.thread_crit_edge, %if.end16.i.w1_f19_i2c_write.exit.thread_crit_edge, %if.else.i.w1_f19_i2c_write.exit.thread_crit_edge, %if.else106.w1_f19_i2c_write.exit.thread_crit_edge
  %retval.0.i221.ph = phi i32 [ -5, %if.end29.i.w1_f19_i2c_write.exit.thread_crit_edge ], [ %call25.i, %while.body.i.w1_f19_i2c_write.exit.thread_crit_edge ], [ -95, %if.else106.w1_f19_i2c_write.exit.thread_crit_edge ], [ %call12.i217, %if.else.i.w1_f19_i2c_write.exit.thread_crit_edge ], [ -5, %if.end16.i.w1_f19_i2c_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #10
  br label %error

w1_f19_i2c_write.exit:                            ; preds = %while.end.i, %if.then2.i
  %retval.0.i221 = phi i32 [ %call.i216, %if.then2.i ], [ %call43.i, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i221)
  %cmp118 = icmp slt i32 %retval.0.i221, 0
  br i1 %cmp118, label %w1_f19_i2c_write.exit.error_crit_edge, label %w1_f19_i2c_write.exit.if.end123_crit_edge

w1_f19_i2c_write.exit.if.end123_crit_edge:        ; preds = %w1_f19_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

w1_f19_i2c_write.exit.error_crit_edge:            ; preds = %w1_f19_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end123:                                        ; preds = %w1_f19_i2c_write.exit.if.end123_crit_edge, %if.then90.if.end123_crit_edge, %if.end84.if.end123_crit_edge, %if.then48.if.end123_crit_edge, %w1_f19_i2c_write_read.exit.if.end123_crit_edge
  %i.1 = phi i32 [ %i.0231, %if.then90.if.end123_crit_edge ], [ %i.0231, %if.end84.if.end123_crit_edge ], [ %i.0231, %w1_f19_i2c_write.exit.if.end123_crit_edge ], [ %add, %if.then48.if.end123_crit_edge ], [ %add, %w1_f19_i2c_write_read.exit.if.end123_crit_edge ]
  %inc124 = add i32 %i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc124, i32 %num)
  %cmp125 = icmp slt i32 %inc124, %num
  br i1 %cmp125, label %if.then127, label %if.end123.error_crit_edge

if.end123.error_crit_edge:                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then127:                                       ; preds = %if.end123
  %96 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %master, align 4
  %call129 = call i32 @w1_reset_resume_command(ptr noundef %97) #10
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then127.while.body_crit_edge, label %if.then127.error_crit_edge

if.then127.error_crit_edge:                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then127.while.body_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

error:                                            ; preds = %if.then127.error_crit_edge, %if.end123.error_crit_edge, %w1_f19_i2c_write.exit.error_crit_edge, %w1_f19_i2c_write.exit.thread, %if.then90.error_crit_edge, %if.then72.error_crit_edge, %if.then48.error_crit_edge, %w1_f19_i2c_write_read.exit.thread, %while.cond.preheader.error_crit_edge, %entry.error_crit_edge
  %i.2 = phi i32 [ -5, %entry.error_crit_edge ], [ %retval.0.i.ph, %w1_f19_i2c_write_read.exit.thread ], [ %retval.0.i221.ph, %w1_f19_i2c_write.exit.thread ], [ 0, %while.cond.preheader.error_crit_edge ], [ %inc124, %if.end123.error_crit_edge ], [ %call61, %if.then48.error_crit_edge ], [ %call80, %if.then72.error_crit_edge ], [ %call100, %if.then90.error_crit_edge ], [ %retval.0.i221, %w1_f19_i2c_write.exit.error_crit_edge ], [ -5, %if.then127.error_crit_edge ]
  %98 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %master, align 4
  %bus_mutex135 = getelementptr inbounds %struct.w1_master, ptr %99, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex135) #10
  ret i32 %i.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_f19_i2c_functionality(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527177
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f19_i2c_read(ptr noundef %sl, i16 noundef zeroext %i2c_address, ptr noundef %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %w1_buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %w1_buf) #10
  %0 = getelementptr inbounds [5 x i8], ptr %w1_buf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  %1 = getelementptr inbounds i8, ptr %w1_buf, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %1, align 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [5 x i8], ptr %w1_buf, i32 0, i32 4
  %4 = getelementptr inbounds [5 x i8], ptr %w1_buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %w1_buf, i32 0, i32 2
  %6 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -121, ptr %w1_buf, align 1
  %conv = trunc i16 %i2c_address to i8
  %shl = shl i8 %conv, 1
  %or = or i8 %shl, 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %0, align 1
  %conv3 = trunc i32 %count to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %5, align 1
  %call = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %w1_buf, i32 noundef 3) #10
  %9 = trunc i16 %call to i8
  %conv6 = xor i8 %9, -1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %4, align 1
  %11 = lshr i16 %call, 8
  %12 = trunc i16 %11 to i8
  %neg10 = xor i8 %12, -1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %neg10, ptr %3, align 1
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %15, ptr noundef nonnull %w1_buf, i32 noundef 5) #10
  %add = add i32 %count, 1
  %call14 = call fastcc i32 @w1_f19_i2c_busy_wait(ptr noundef %sl, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %call20 = call zeroext i8 @w1_read_8(ptr noundef %17) #10
  %18 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call20, ptr %w1_buf, align 1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %0, align 1
  %20 = and i8 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end18.if.end.i_crit_edge, label %do.end.i

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end18.if.end.i_crit_edge
  %21 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %w1_buf, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not.i = icmp eq i8 %23, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.end7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.12) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end7.i, %if.end.i.if.end9.i_crit_edge
  %24 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %w1_buf, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i = icmp eq i8 %26, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.i.if.end24.i_crit_edge

if.end9.i.if.end24.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp16.not.i = icmp eq i8 %28, 0
  br i1 %cmp16.not.i, label %land.lhs.true.i.if.end24thread-pre-split.i_crit_edge, label %do.end20.i

land.lhs.true.i.if.end24thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24thread-pre-split.i

do.end20.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i8 %28 to i32
  %dev21.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21.i, ptr noundef nonnull @.str.15, i32 noundef %conv15.i) #13
  br label %if.end24thread-pre-split.i

if.end24thread-pre-split.i:                       ; preds = %do.end20.i, %land.lhs.true.i.if.end24thread-pre-split.i_crit_edge
  %29 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr.i = load i8, ptr %w1_buf, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24thread-pre-split.i, %if.end9.i.if.end24.i_crit_edge
  %30 = phi i8 [ %.pr.i, %if.end24thread-pre-split.i ], [ %25, %if.end9.i.if.end24.i_crit_edge ]
  %conv26.i = zext i8 %30 to i32
  %and27.i = and i32 %conv26.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30.i:                                       ; preds = %if.end24.i
  %and33.i = and i32 %conv26.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp39.not.i = icmp eq i8 %30, 0
  br i1 %cmp39.not.i, label %lor.lhs.false.i, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp43.not.i = icmp eq i8 %32, 0
  br i1 %cmp43.not.i, label %if.end28, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  %call30 = call zeroext i8 @w1_read_block(ptr noundef %34, ptr noundef %buffer, i32 noundef %count) #10
  %conv31 = zext i8 %call30 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lor.lhs.false.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv31, %if.end28 ], [ -95, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ -5, %lor.lhs.false.i.cleanup_crit_edge ], [ -5, %if.end36.i.cleanup_crit_edge ], [ -11, %if.end30.i.cleanup_crit_edge ], [ -6, %if.end24.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %w1_buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_resume_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f19_i2c_busy_wait(ptr noundef %sl, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %call = tail call zeroext i8 @w1_touch_bit(ptr noundef %3, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp eq i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [3 x i32], ptr @__const.w1_f19_i2c_busy_wait.timebases, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %stretch = getelementptr inbounds %struct.w1_f19_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %stretch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stretch, align 1
  %conv2 = zext i8 %9 to i32
  %mul = mul i32 %7, %count
  %mul3 = mul i32 %mul, %conv2
  %add = add i32 %mul3, 1000
  tail call void @usleep_range_state(i32 noundef %mul3, i32 noundef %add, i32 noundef 2) #10
  br label %while.body

while.body:                                       ; preds = %cond.false33.while.body_crit_edge, %if.end
  %dec51 = phi i32 [ 999, %if.end ], [ %dec, %cond.false33.while.body_crit_edge ]
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call14 = tail call zeroext i8 @w1_touch_bit(ptr noundef %11, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %cmp16 = icmp eq i8 %call14, 0
  br i1 %cmp16, label %while.body.cleanup_crit_edge, label %cond.false33

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false33:                                     ; preds = %while.body
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 8
  %idxprom21 = zext i8 %13 to i32
  %arrayidx22 = getelementptr [3 x i32], ptr @__const.w1_f19_i2c_busy_wait.timebases, i32 0, i32 %idxprom21
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #10
  %dec = add nsw i32 %dec51, -1
  %cmp11.not = icmp eq i32 %dec51, 0
  br i1 %cmp11.not, label %do.end, label %cond.false33.while.body_crit_edge

cond.false33.while.body_crit_edge:                ; preds = %cond.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end:                                           ; preds = %cond.false33
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_touch_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__w1_f19_i2c_write(ptr noundef %sl, ptr noundef %command, i32 noundef %command_count, ptr noundef %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %w1_buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf) #10
  %0 = getelementptr inbounds [2 x i8], ptr %w1_buf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !88
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %command, i32 noundef %command_count) #10
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_block(ptr noundef %3, ptr noundef %command, i32 noundef %command_count) #10
  %conv = trunc i32 %count to i8
  %4 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %w1_buf, align 1
  %call1 = call zeroext i16 @crc16(i16 noundef zeroext %call, ptr noundef nonnull %w1_buf, i32 noundef 1) #10
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %7 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %w1_buf, align 1
  call void @w1_write_8(ptr noundef %6, i8 noundef zeroext %8) #10
  %call4 = call zeroext i16 @crc16(i16 noundef zeroext %call1, ptr noundef %buffer, i32 noundef %count) #10
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %10, ptr noundef %buffer, i32 noundef %count) #10
  %11 = trunc i16 %call4 to i8
  %conv7 = xor i8 %11, -1
  %12 = ptrtoint ptr %w1_buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7, ptr %w1_buf, align 1
  %13 = lshr i16 %call4, 8
  %14 = trunc i16 %13 to i8
  %neg11 = xor i8 %14, -1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %neg11, ptr %0, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %w1_buf, i32 noundef 2) #10
  %add = add i32 %count, 1
  %call16 = call fastcc i32 @w1_f19_i2c_busy_wait(ptr noundef %sl, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %call20 = call zeroext i8 @w1_read_block(ptr noundef %19, ptr noundef nonnull %w1_buf, i32 noundef 2) #10
  %20 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %w1_buf, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %23 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %w1_buf, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool4.not.i = icmp eq i8 %25, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.end7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.12) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end7.i, %if.end.i.if.end9.i_crit_edge
  %26 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %w1_buf, align 1
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.i = icmp eq i8 %28, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.i.if.end24.i_crit_edge

if.end9.i.if.end24.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp16.not.i = icmp eq i8 %30, 0
  br i1 %cmp16.not.i, label %land.lhs.true.i.if.end24thread-pre-split.i_crit_edge, label %do.end20.i

land.lhs.true.i.if.end24thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24thread-pre-split.i

do.end20.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i8 %30 to i32
  %dev21.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21.i, ptr noundef nonnull @.str.15, i32 noundef %conv15.i) #13
  br label %if.end24thread-pre-split.i

if.end24thread-pre-split.i:                       ; preds = %do.end20.i, %land.lhs.true.i.if.end24thread-pre-split.i_crit_edge
  %31 = ptrtoint ptr %w1_buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr.i = load i8, ptr %w1_buf, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24thread-pre-split.i, %if.end9.i.if.end24.i_crit_edge
  %32 = phi i8 [ %.pr.i, %if.end24thread-pre-split.i ], [ %27, %if.end9.i.if.end24.i_crit_edge ]
  %conv26.i = zext i8 %32 to i32
  %and27.i = and i32 %conv26.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i._crit_edge

if.end24.i._crit_edge:                            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %35

if.end30.i:                                       ; preds = %if.end24.i
  %and33.i = and i32 %conv26.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end30.i._crit_edge

if.end30.i._crit_edge:                            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %35

if.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp39.not.i = icmp eq i8 %32, 0
  br i1 %cmp39.not.i, label %lor.lhs.false.i, label %if.end36.i._crit_edge

if.end36.i._crit_edge:                            ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %35

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp43.not.i = icmp eq i8 %34, 0
  br i1 %cmp43.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i._crit_edge

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %35

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

35:                                               ; preds = %lor.lhs.false.i._crit_edge, %if.end36.i._crit_edge, %if.end30.i._crit_edge, %if.end24.i._crit_edge
  %retval.0.i.ph = phi i32 [ -5, %lor.lhs.false.i._crit_edge ], [ -5, %if.end36.i._crit_edge ], [ -11, %if.end30.i._crit_edge ], [ -6, %if.end24.i._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %35, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %35 ], [ %count, %lor.lhs.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -80
  %family_data.i = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data.i, align 4
  %master.i = getelementptr i8, ptr %dev, i32 -12
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #10
  %call.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.w1_f19_get_i2c_speed.exit_crit_edge

entry.w1_f19_get_i2c_speed.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_get_i2c_speed.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext -31) #10
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %call3.i = tail call zeroext i8 @w1_read_8(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call3.i)
  %cmp5.i = icmp ugt i8 %call3.i, 2
  br i1 %cmp5.i, label %if.end.i.w1_f19_get_i2c_speed.exit_crit_edge, label %if.end8.i

if.end.i.w1_f19_get_i2c_speed.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_get_i2c_speed.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %call3.i to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call3.i, ptr %1, align 8
  br label %w1_f19_get_i2c_speed.exit

w1_f19_get_i2c_speed.exit:                        ; preds = %if.end8.i, %if.end.i.w1_f19_get_i2c_speed.exit_crit_edge, %entry.w1_f19_get_i2c_speed.exit_crit_edge
  %result.0.i = phi i32 [ -5, %entry.w1_f19_get_i2c_speed.exit_crit_edge ], [ %conv.i, %if.end8.i ], [ -5, %if.end.i.w1_f19_get_i2c_speed.exit_crit_edge ]
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %bus_mutex11.i = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp = icmp slt i32 %result.0.i, 0
  br i1 %cmp, label %w1_f19_get_i2c_speed.exit.cleanup_crit_edge, label %if.end

w1_f19_get_i2c_speed.exit.cleanup_crit_edge:      ; preds = %w1_f19_get_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %w1_f19_get_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %result.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %w1_f19_get_i2c_speed.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %result.0.i, %w1_f19_get_i2c_speed.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %w1_buf.i.i53 = alloca [2 x i8], align 1
  %w1_buf.i.i42 = alloca [2 x i8], align 1
  %w1_buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -80
  %0 = add i32 %count, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  %tobool.not = icmp eq ptr %buf, null
  %or.cond41 = or i1 %tobool.not, %1
  br i1 %or.cond41, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp3 = icmp eq i32 %count, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.not = icmp eq i8 %3, 10
  br i1 %cmp4.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp10.not = icmp eq i8 %5, 48
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end7
  %arrayidx13 = getelementptr i8, ptr %buf, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %cmp15.not = icmp eq i8 %7, 48
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false12
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %9, label %if.end18.cleanup_crit_edge [
    i8 49, label %sw.bb
    i8 52, label %sw.bb22
    i8 57, label %sw.bb24
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end18
  %master.i = getelementptr i8, ptr %dev, i32 -12
  %11 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i, align 4
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %12, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #10
  %family_data.i.i = getelementptr i8, ptr %dev, i32 -4
  %13 = ptrtoint ptr %family_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %family_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i.i) #10
  %call.i.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.w1_f19_set_i2c_speed.exit_crit_edge

sw.bb.w1_f19_set_i2c_speed.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_set_i2c_speed.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %15 = getelementptr inbounds [2 x i8], ptr %w1_buf.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %w1_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -46, ptr %w1_buf.i.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 1
  %18 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i, align 4
  call void @w1_write_block(ptr noundef %19, ptr noundef nonnull %w1_buf.i.i, i32 noundef 2) #10
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 100) #13
  br label %w1_f19_set_i2c_speed.exit

w1_f19_set_i2c_speed.exit:                        ; preds = %if.end.i.i, %sw.bb.w1_f19_set_i2c_speed.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -5, %sw.bb.w1_f19_set_i2c_speed.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i.i) #10
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end18
  %master.i43 = getelementptr i8, ptr %dev, i32 -12
  %21 = ptrtoint ptr %master.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master.i43, align 4
  %bus_mutex.i44 = getelementptr inbounds %struct.w1_master, ptr %22, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i44, i32 noundef 0) #10
  %family_data.i.i45 = getelementptr i8, ptr %dev, i32 -4
  %23 = ptrtoint ptr %family_data.i.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %family_data.i.i45, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i.i42) #10
  %call.i.i46 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i49, label %sw.bb22.w1_f19_set_i2c_speed.exit52_crit_edge

sw.bb22.w1_f19_set_i2c_speed.exit52_crit_edge:    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_set_i2c_speed.exit52

if.end.i.i49:                                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %25 = getelementptr inbounds [2 x i8], ptr %w1_buf.i.i42, i32 0, i32 1
  %26 = ptrtoint ptr %w1_buf.i.i42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -46, ptr %w1_buf.i.i42, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %25, align 1
  %28 = ptrtoint ptr %master.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i43, align 4
  call void @w1_write_block(ptr noundef %29, ptr noundef nonnull %w1_buf.i.i42, i32 noundef 2) #10
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 400) #13
  br label %w1_f19_set_i2c_speed.exit52

w1_f19_set_i2c_speed.exit52:                      ; preds = %if.end.i.i49, %sw.bb22.w1_f19_set_i2c_speed.exit52_crit_edge
  %retval.0.i.i50 = phi i32 [ 0, %if.end.i.i49 ], [ -5, %sw.bb22.w1_f19_set_i2c_speed.exit52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i.i42) #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  %master.i54 = getelementptr i8, ptr %dev, i32 -12
  %31 = ptrtoint ptr %master.i54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i54, align 4
  %bus_mutex.i55 = getelementptr inbounds %struct.w1_master, ptr %32, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i55, i32 noundef 0) #10
  %family_data.i.i56 = getelementptr i8, ptr %dev, i32 -4
  %33 = ptrtoint ptr %family_data.i.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %family_data.i.i56, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1_buf.i.i53) #10
  %call.i.i57 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool.not.i.i58, label %if.end.i.i60, label %sw.bb24.w1_f19_set_i2c_speed.exit63_crit_edge

sw.bb24.w1_f19_set_i2c_speed.exit63_crit_edge:    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %w1_f19_set_i2c_speed.exit63

if.end.i.i60:                                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  %35 = getelementptr inbounds [2 x i8], ptr %w1_buf.i.i53, i32 0, i32 1
  %36 = ptrtoint ptr %w1_buf.i.i53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -46, ptr %w1_buf.i.i53, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %35, align 1
  %38 = ptrtoint ptr %master.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i54, align 4
  call void @w1_write_block(ptr noundef %39, ptr noundef nonnull %w1_buf.i.i53, i32 noundef 2) #10
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %34, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 900) #13
  br label %w1_f19_set_i2c_speed.exit63

w1_f19_set_i2c_speed.exit63:                      ; preds = %if.end.i.i60, %sw.bb24.w1_f19_set_i2c_speed.exit63_crit_edge
  %retval.0.i.i61 = phi i32 [ 0, %if.end.i.i60 ], [ -5, %sw.bb24.w1_f19_set_i2c_speed.exit63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1_buf.i.i53) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %w1_f19_set_i2c_speed.exit63, %w1_f19_set_i2c_speed.exit52, %w1_f19_set_i2c_speed.exit
  %master.i54.sink = phi ptr [ %master.i54, %w1_f19_set_i2c_speed.exit63 ], [ %master.i43, %w1_f19_set_i2c_speed.exit52 ], [ %master.i, %w1_f19_set_i2c_speed.exit ]
  %error.0 = phi i32 [ %retval.0.i.i61, %w1_f19_set_i2c_speed.exit63 ], [ %retval.0.i.i50, %w1_f19_set_i2c_speed.exit52 ], [ %retval.0.i.i, %w1_f19_set_i2c_speed.exit ]
  %41 = ptrtoint ptr %master.i54.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master.i54.sink, align 4
  %bus_mutex2.i62 = getelementptr inbounds %struct.w1_master, ptr %42, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex2.i62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %cmp26 = icmp slt i32 %error.0, 0
  %error.0.count = select i1 %cmp26, i32 %error.0, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end18.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %error.0.count, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stretch_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %stretch = getelementptr inbounds %struct.w1_f19_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stretch to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stretch, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stretch_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %2 = add i32 %count, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  %tobool.not = icmp eq ptr %buf, null
  %or.cond30 = or i1 %tobool.not, %3
  br i1 %or.cond30, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp3 = icmp eq i32 %count, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp4.not = icmp eq i8 %5, 10
  br i1 %cmp4.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %8 = add i8 %7, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %8)
  %9 = icmp ult i8 %8, -9
  br i1 %9, label %if.end7.cleanup_crit_edge, label %if.end18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %10 = and i8 %7, 15
  %stretch = getelementptr inbounds %struct.w1_f19_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %stretch to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %stretch, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !76, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__UNIQUE_ID_file288, !1, !"__UNIQUE_ID_file288", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_license289, !1, !"__UNIQUE_ID_license289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias292, !8, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 29, i32 1}
!9 = !{ptr @__param_speed, !10, !"__param_speed", i1 false, i1 false}
!10 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 34, i32 1}
!11 = !{ptr @__UNIQUE_ID_speedtype293, !10, !"__UNIQUE_ID_speedtype293", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_speed294, !13, !"__UNIQUE_ID_speed294", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 35, i32 1}
!14 = !{ptr @__param_stretch, !15, !"__param_stretch", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 39, i32 1}
!16 = !{ptr @__UNIQUE_ID_stretchtype295, !15, !"__UNIQUE_ID_stretchtype295", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_stretch296, !18, !"__UNIQUE_ID_stretch296", i1 false, i1 false}
!18 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 40, i32 1}
!19 = !{ptr @__initcall__kmod_w1_ds28e17__297_755_w1_family_19_init6, !20, !"__initcall__kmod_w1_ds28e17__297_755_w1_family_19_init6", i1 false, i1 false}
!20 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 755, i32 1}
!21 = !{ptr @__exitcall_w1_family_19_exit, !20, !"__exitcall_w1_family_19_exit", i1 false, i1 false}
!22 = !{ptr @__param_str_speed, !10, !"__param_str_speed", i1 false, i1 false}
!23 = !{ptr @i2c_speed, !24, !"i2c_speed", i1 false, i1 false}
!24 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 33, i32 12}
!25 = !{ptr @__param_str_stretch, !15, !"__param_str_stretch", i1 false, i1 false}
!26 = !{ptr @i2c_stretch, !27, !"i2c_stretch", i1 false, i1 false}
!27 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 38, i32 13}
!28 = !{ptr @w1_family_19, !29, !"w1_family_19", i1 false, i1 false}
!29 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 750, i32 25}
!30 = !{ptr @w1_f19_fops, !31, !"w1_f19_fops", i1 false, i1 false}
!31 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 744, i32 35}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 722, i32 29}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 549, i32 2}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__w1_f19_set_i2c_speed._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @__w1_f19_set_i2c_speed._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @w1_f19_i2c_algorithm, !43, !"w1_f19_i2c_algorithm", i1 false, i1 false}
!43 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 493, i32 35}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 116, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @w1_f19_i2c_busy_wait._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @w1_f19_i2c_busy_wait._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 126, i32 3}
!52 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @w1_f19_error._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @w1_f19_error._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 128, i32 3}
!57 = !{ptr @w1_f19_error._entry.11, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @w1_f19_error._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 131, i32 3}
!61 = !{ptr @w1_f19_error._entry.14, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @w1_f19_error._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @w1_f19_i2c_adapter_quirks, !64, !"w1_f19_i2c_adapter_quirks", i1 false, i1 false}
!64 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 488, i32 40}
!65 = !{ptr @w1_f19_groups, !66, !"w1_f19_groups", i1 false, i1 false}
!66 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 674, i32 38}
!67 = !{ptr @w1_f19_group, !68, !"w1_f19_group", i1 false, i1 false}
!68 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 670, i32 37}
!69 = !{ptr @w1_f19_attrs, !70, !"w1_f19_attrs", i1 false, i1 false}
!70 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 664, i32 26}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 625, i32 8}
!73 = !{ptr @dev_attr_speed, !72, !"dev_attr_speed", i1 false, i1 false}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 586, i32 22}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/w1/slaves/w1_ds28e17.c", i32 660, i32 8}
!78 = !{ptr @dev_attr_stretch, !77, !"dev_attr_stretch", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
