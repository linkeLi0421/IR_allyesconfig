; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa6588.c_pt.bc'
source_filename = "../drivers/media/i2c/saa6588.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.saa6588 = type { %struct.v4l2_subdev, %struct.delayed_work, %struct.spinlock, ptr, i32, i32, i32, i32, i8, %struct.wait_queue_head, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.saa6588_command = type { i32, i8, i32, ptr, ptr, ptr, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__param_str_debug = internal constant [14 x i8] c"saa6588.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"saa6588.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [41 x i8] c"saa6588.parm=debug:enable debug messages\00", section ".modinfo", align 1
@__param_str_xtal = internal constant [13 x i8] c"saa6588.xtal\00", align 1
@xtal = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_xtal = internal constant %struct.kernel_param { ptr @__param_str_xtal, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @xtal } }, section "__param", align 4
@__UNIQUE_ID_xtaltype294 = internal constant [26 x i8] c"saa6588.parmtype=xtal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_xtal295 = internal constant [64 x i8] c"saa6588.parm=xtal:select oscillator frequency (0..3), default 0\00", section ".modinfo", align 1
@__param_str_mmbs = internal constant [13 x i8] c"saa6588.mmbs\00", align 1
@mmbs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mmbs = internal constant %struct.kernel_param { ptr @__param_str_mmbs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mmbs } }, section "__param", align 4
@__UNIQUE_ID_mmbstype296 = internal constant [26 x i8] c"saa6588.parmtype=mmbs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mmbs297 = internal constant [58 x i8] c"saa6588.parm=mmbs:enable MMBS mode: 0=off (default), 1=on\00", section ".modinfo", align 1
@__param_str_plvl = internal constant [13 x i8] c"saa6588.plvl\00", align 1
@plvl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_plvl = internal constant %struct.kernel_param { ptr @__param_str_plvl, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @plvl } }, section "__param", align 4
@__UNIQUE_ID_plvltype298 = internal constant [26 x i8] c"saa6588.parmtype=plvl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_plvl299 = internal constant [55 x i8] c"saa6588.parm=plvl:select pause level (0..3), default 0\00", section ".modinfo", align 1
@__param_str_bufblocks = internal constant [18 x i8] c"saa6588.bufblocks\00", align 1
@bufblocks = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_bufblocks = internal constant %struct.kernel_param { ptr @__param_str_bufblocks, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bufblocks } }, section "__param", align 4
@__UNIQUE_ID_bufblockstype300 = internal constant [31 x i8] c"saa6588.parmtype=bufblocks:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bufblocks301 = internal constant [62 x i8] c"saa6588.parm=bufblocks:number of buffered blocks, default 100\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [63 x i8] c"saa6588.description=v4l2 driver module for SAA6588 RDS decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [45 x i8] c"saa6588.author=Hans J. Koch <koch@hjk-az.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [39 x i8] c"saa6588.file=drivers/media/i2c/saa6588\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [20 x i8] c"saa6588.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_saa6588__306_516_saa6588_driver_init6 = internal global ptr @saa6588_driver_init, section ".initcall6.init", align 4
@saa6588_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa6588_probe, ptr @saa6588_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa6588_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa6588_driver_exit = internal global ptr @saa6588_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa6588\00", [24 x i8] zeroinitializer }, align 32
@saa6588_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa6588\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa6588_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s %d-%04x: saa6588 found @ 0x%x (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa6588_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa6588.c\00", [36 x i8] zeroinitializer }, align 32
@saa6588_probe._entry_ptr = internal global ptr @saa6588_probe._entry, section ".printk_index", align 4
@saa6588_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa6588_core_ops, ptr @saa6588_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa6588_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@saa6588_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&s->read_queue\00", [17 x i8] zeroinitializer }, align 32
@saa6588_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&(&s->work)->work)\00", [59 x i8] zeroinitializer }, align 32
@saa6588_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&s->work)->timer\00", [45 x i8] zeroinitializer }, align 32
@saa6588_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa6588_command, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa6588_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa6588_g_tuner, ptr @saa6588_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@block_from_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"saa6588: Read: buffer empty.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block_from_buf\00", [17 x i8] zeroinitializer }, align 32
@block_from_buf._entry_ptr = internal global ptr @block_from_buf._entry, section ".printk_index", align 4
@block_from_buf._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa6588: Read: \00", [16 x i8] zeroinitializer }, align 32
@block_from_buf._entry_ptr.15 = internal global ptr @block_from_buf._entry.13, section ".printk_index", align 4
@block_from_buf._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x \00", [24 x i8] zeroinitializer }, align 32
@block_from_buf._entry_ptr.18 = internal global ptr @block_from_buf._entry.16, section ".printk_index", align 4
@block_from_buf._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d blocks total.\0A\00", [46 x i8] zeroinitializer }, align 32
@block_from_buf._entry_ptr.21 = internal global ptr @block_from_buf._entry.19, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@saa6588_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"saa6588: writing: 0w=0x%02x 1w=0x%02x 2w=0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa6588_configure\00", [46 x i8] zeroinitializer }, align 32
@saa6588_configure._entry_ptr = internal global ptr @saa6588_configure._entry, section ".printk_index", align 4
@saa6588_configure._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"saa6588: i2c i/o error: rc == %d (should be 3)\0A\00", [48 x i8] zeroinitializer }, align 32
@saa6588_configure._entry_ptr.29 = internal global ptr @saa6588_configure._entry.27, section ".printk_index", align 4
@saa6588_i2c_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa6588: read error!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa6588_i2c_poll\00", [47 x i8] zeroinitializer }, align 32
@saa6588_i2c_poll._entry_ptr = internal global ptr @saa6588_i2c_poll._entry, section ".printk_index", align 4
@saa6588_i2c_poll._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Saw block %d again.\0A\00", [43 x i8] zeroinitializer }, align 32
@saa6588_i2c_poll._entry_ptr.34 = internal global ptr @saa6588_i2c_poll._entry.32, section ".printk_index", align 4
@block_to_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa6588: New block: \00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"block_to_buf\00", [19 x i8] zeroinitializer }, align 32
@block_to_buf._entry_ptr = internal global ptr @block_to_buf._entry, section ".printk_index", align 4
@block_to_buf._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.36, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@block_to_buf._entry_ptr.38 = internal global ptr @block_to_buf._entry.37, section ".printk_index", align 4
@block_to_buf._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.36, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@block_to_buf._entry_ptr.40 = internal global ptr @block_to_buf._entry.39, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1074024962, i64 2147766787, i64 2147766788]
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 27, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 28, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"mmbs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 29, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"plvl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 30, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"bufblocks\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 31, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"saa6588_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 507, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 509, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"saa6588_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 501, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 457, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"saa6588_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 444, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 471, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 476, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 482, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"saa6588_core_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 435, i32 42 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"saa6588_tuner_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 439, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 147, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 152, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 154, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 165, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 174, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 373, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 378, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 260, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 270, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 225, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 229, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private constant [31 x i8] c"../drivers/media/i2c/saa6588.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 245, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_bufblocks301, ptr @__UNIQUE_ID_bufblockstype300, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_mmbs297, ptr @__UNIQUE_ID_mmbstype296, ptr @__UNIQUE_ID_plvl299, ptr @__UNIQUE_ID_plvltype298, ptr @__UNIQUE_ID_xtal295, ptr @__UNIQUE_ID_xtaltype294, ptr @__exitcall_saa6588_driver_exit, ptr @__initcall__kmod_saa6588__306_516_saa6588_driver_init6, ptr @__param_bufblocks, ptr @__param_debug, ptr @__param_mmbs, ptr @__param_plvl, ptr @__param_xtal, ptr @block_from_buf._entry, ptr @block_from_buf._entry.13, ptr @block_from_buf._entry.16, ptr @block_from_buf._entry.19, ptr @block_from_buf._entry_ptr, ptr @block_from_buf._entry_ptr.15, ptr @block_from_buf._entry_ptr.18, ptr @block_from_buf._entry_ptr.21, ptr @block_to_buf._entry, ptr @block_to_buf._entry.37, ptr @block_to_buf._entry.39, ptr @block_to_buf._entry_ptr, ptr @block_to_buf._entry_ptr.38, ptr @block_to_buf._entry_ptr.40, ptr @saa6588_configure._entry, ptr @saa6588_configure._entry.27, ptr @saa6588_configure._entry_ptr, ptr @saa6588_configure._entry_ptr.29, ptr @saa6588_driver_exit, ptr @saa6588_i2c_poll._entry, ptr @saa6588_i2c_poll._entry.32, ptr @saa6588_i2c_poll._entry_ptr, ptr @saa6588_i2c_poll._entry_ptr.34, ptr @saa6588_probe._entry, ptr @saa6588_probe._entry_ptr, ptr @debug, ptr @xtal, ptr @mmbs, ptr @plvl, ptr @bufblocks, ptr @saa6588_driver, ptr @.str, ptr @saa6588_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa6588_ops, ptr @saa6588_probe.__key, ptr @.str.4, ptr @saa6588_probe.__key.5, ptr @.str.6, ptr @saa6588_probe.__key.7, ptr @.str.8, ptr @saa6588_probe.__key.9, ptr @.str.10, ptr @saa6588_core_ops, ptr @saa6588_tuner_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plvl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufblocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_from_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_from_buf._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_from_buf._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_from_buf._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_configure._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_i2c_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa6588_i2c_poll._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_buf._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_buf._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6588_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa6588_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa6588_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @saa6588_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6588_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name4 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %7, i32 noundef %conv, i32 noundef %shl, ptr noundef %name4) #10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 424, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr @bufblocks, align 4
  %mul = mul i32 %10, 3
  %buf_size = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %buf_size, align 4
  %call.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #7
  %buffer = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i75, ptr %buffer, align 4
  %cmp13 = icmp eq ptr %call.i75, null
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa6588_ops) #7
  %lock = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @saa6588_probe.__key, i16 noundef signext 3) #7
  %block_count = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %block_count, align 4
  %wr_index = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wr_index, align 4
  %rd_index = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rd_index, align 4
  %last_blocknum = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %last_blocknum to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %last_blocknum, align 4
  %read_queue = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.6, ptr noundef nonnull @saa6588_probe.__key.5) #7
  %data_available_for_read = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %data_available_for_read to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %data_available_for_read, align 4
  tail call fastcc void @saa6588_configure(ptr noundef nonnull %call.i)
  %work = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %18 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @saa6588_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry34 = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @saa6588_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.saa6588, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @saa6588_probe.__key.9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6588_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %work = getelementptr inbounds %struct.saa6588, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa6588_configure(ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = load i32, ptr @mmbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.store.select = select i1 %tobool.not, i8 32, i8 36
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.store.select, ptr %buf, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %2, align 1
  %7 = load i32, ptr @plvl, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 6
  %switch.offset = add i8 %switch.idx.mult, 96
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.offset, ptr %2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %3, align 1
  %11 = load i32, ptr @xtal, align 4
  %switch.tableidx68 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx68)
  %12 = icmp ult i32 %switch.tableidx68, 3
  br i1 %12, label %switch.lookup67, label %sw.epilog.sw.epilog45_crit_edge

sw.epilog.sw.epilog45_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog45

switch.lookup67:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast69 = trunc i32 %switch.tableidx68 to i8
  %switch.idx.mult70 = shl i8 %switch.idx.cast69, 6
  %switch.offset71 = add i8 %switch.idx.mult70, 111
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %switch.offset71, ptr %3, align 1
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %switch.lookup67, %sw.epilog.sw.epilog45_crit_edge
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool46.not = icmp eq i32 %14, 0
  br i1 %tobool46.not, label %sw.epilog45.if.end55_crit_edge, label %do.end

sw.epilog45.if.end55_crit_edge:                   ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end:                                           ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #9
  %conv49 = zext i8 %spec.store.select to i32
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %conv51 = zext i8 %16 to i32
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv53 = zext i8 %18 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv49, i32 noundef %conv51, i32 noundef %conv53) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end, %sw.epilog45.if.end55_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 3
  br i1 %cmp.not, label %if.end55.if.end64_crit_edge, label %do.end61

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i) #10
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end55.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa6588_work(ptr noundef %work) #2 align 64 {
entry:
  %tmpbuf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmpbuf.i) #7
  %2 = getelementptr inbounds [6 x i8], ptr %tmpbuf.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %tmpbuf.i, i32 0, i32 2
  %4 = call ptr @memset(ptr %tmpbuf.i, i32 255, i32 6)
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmpbuf.i, i32 noundef 6, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 6
  br i1 %cmp.not.i, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.i = icmp ugt i32 %5, 1
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.saa6588_i2c_poll.exit_crit_edge

if.then.i.saa6588_i2c_poll.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa6588_i2c_poll.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %saa6588_i2c_poll.exit

if.end8.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %tmpbuf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmpbuf.i, align 1
  %8 = and i8 %7, 16
  %sync.i = getelementptr i8, ptr %work, i32 224
  %9 = ptrtoint ptr %sync.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not.i = icmp eq i8 %8, 0
  br i1 %tobool12.not.i, label %if.end8.i.saa6588_i2c_poll.exit_crit_edge, label %if.end14.i

if.end8.i.saa6588_i2c_poll.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa6588_i2c_poll.exit

if.end14.i:                                       ; preds = %if.end8.i
  %10 = lshr i8 %7, 5
  %conv18.i = zext i8 %10 to i32
  %last_blocknum.i = getelementptr i8, ptr %work, i32 164
  %11 = ptrtoint ptr %last_blocknum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_blocknum.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp20.i = icmp eq i8 %10, %12
  br i1 %cmp20.i, label %if.then22.i, label %if.end36.i

if.then22.i:                                      ; preds = %if.end14.i
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp23.i = icmp ugt i32 %13, 3
  br i1 %cmp23.i, label %do.end30.i, label %if.then22.i.saa6588_i2c_poll.exit_crit_edge

if.then22.i.saa6588_i2c_poll.exit_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa6588_i2c_poll.exit

do.end30.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv18.i) #10
  br label %saa6588_i2c_poll.exit

if.end36.i:                                       ; preds = %if.end14.i
  %14 = ptrtoint ptr %last_blocknum.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %10, ptr %last_blocknum.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %17 = ptrtoint ptr %tmpbuf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmpbuf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp46.i = icmp eq i8 %10, 6
  br i1 %cmp46.i, label %if.end36.i.if.end55.i_crit_edge, label %if.else.i

if.end36.i.if.end55.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end36.i
  %18 = load i32, ptr @mmbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not.i = icmp eq i32 %18, 0
  br i1 %tobool49.not.i, label %land.lhs.true.i, label %if.else.i.if.end55.i_crit_edge

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp51.i = icmp eq i8 %10, 5
  %spec.store.select.i = select i1 %cmp51.i, i8 7, i8 %10
  br label %if.end55.i

if.end55.i:                                       ; preds = %land.lhs.true.i, %if.else.i.if.end55.i_crit_edge, %if.end36.i.if.end55.i_crit_edge
  %blocknum.0.i = phi i8 [ %10, %if.else.i.if.end55.i_crit_edge ], [ %spec.store.select.i, %land.lhs.true.i ], [ 7, %if.end36.i.if.end55.i_crit_edge ]
  %shl.i = shl nuw nsw i8 %blocknum.0.i, 3
  %or.i = or i8 %shl.i, %blocknum.0.i
  %trunc.i = trunc i8 %7 to i2
  %19 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %if.then74.i [
    i2 -1, label %if.then64.i
    i2 0, label %if.end55.i.if.end79.i_crit_edge
  ]

if.end55.i.if.end79.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then64.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = or i8 %or.i, -128
  br label %if.end79.i

if.then74.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = or i8 %or.i, 64
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then74.i, %if.then64.i, %if.end55.i.if.end79.i_crit_edge
  %tmp.0.i = phi i8 [ %20, %if.then64.i ], [ %21, %if.then74.i ], [ %or.i, %if.end55.i.if.end79.i_crit_edge ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %tmp.0.i, ptr %3, align 1
  %lock.i = getelementptr i8, ptr %work, i32 100
  %call87.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i.i = icmp ugt i32 %23, 3
  br i1 %cmp.i.i, label %if.end2.i.i, label %if.end79.i.if.end14.i.i_crit_edge

if.end79.i.if.end14.i.i_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.end2.i.i:                                      ; preds = %if.end79.i
  %call.i115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i.i)
  %cmp4.i.i = icmp ugt i32 %.pr.i.i, 3
  br i1 %cmp4.i.i, label %do.end10.i.i, label %if.end2.i.i.if.end14.i.i_crit_edge

if.end2.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

do.end10.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %tmpbuf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmpbuf.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv.i.i) #10
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.end10.i.i, %if.end2.i.i.if.end14.i.i_crit_edge, %if.end79.i.if.end14.i.i_crit_edge
  %buffer74.i.i = getelementptr i8, ptr %work, i32 144
  %wr_index75.i.i = getelementptr i8, ptr %work, i32 156
  %26 = ptrtoint ptr %tmpbuf.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tmpbuf.i, align 1
  %28 = ptrtoint ptr %buffer74.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer74.i.i, align 4
  %30 = ptrtoint ptr %wr_index75.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_index75.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %27, ptr %arrayidx16.i.i, align 1
  %33 = load i32, ptr %wr_index75.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %wr_index75.i.i, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp4.1.i.i = icmp ugt i32 %34, 3
  br i1 %cmp4.1.i.i, label %do.end10.1.i.i, label %if.end14.i.i.if.end14.1.i.i_crit_edge

if.end14.i.i.if.end14.1.i.i_crit_edge:            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.1.i.i

do.end10.1.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  %conv.1.i.i = zext i8 %36 to i32
  %call12.1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv.1.i.i) #10
  br label %if.end14.1.i.i

if.end14.1.i.i:                                   ; preds = %do.end10.1.i.i, %if.end14.i.i.if.end14.1.i.i_crit_edge
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %39 = ptrtoint ptr %buffer74.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer74.i.i, align 4
  %41 = ptrtoint ptr %wr_index75.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wr_index75.i.i, align 4
  %arrayidx16.1.i.i = getelementptr i8, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %arrayidx16.1.i.i, align 1
  %44 = load i32, ptr %wr_index75.i.i, align 4
  %inc.1.i.i = add i32 %44, 1
  store i32 %inc.1.i.i, ptr %wr_index75.i.i, align 4
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp4.2.i.i = icmp ugt i32 %45, 3
  br i1 %cmp4.2.i.i, label %do.end10.2.i.i, label %if.end14.1.i.i.if.end14.2.i.i_crit_edge

if.end14.1.i.i.if.end14.2.i.i_crit_edge:          ; preds = %if.end14.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.2.i.i

do.end10.2.i.i:                                   ; preds = %if.end14.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 1
  %conv.2.i.i = zext i8 %47 to i32
  %call12.2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv.2.i.i) #10
  br label %if.end14.2.i.i

if.end14.2.i.i:                                   ; preds = %do.end10.2.i.i, %if.end14.1.i.i.if.end14.2.i.i_crit_edge
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %3, align 1
  %50 = ptrtoint ptr %buffer74.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer74.i.i, align 4
  %52 = ptrtoint ptr %wr_index75.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wr_index75.i.i, align 4
  %arrayidx16.2.i.i = getelementptr i8, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx16.2.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %49, ptr %arrayidx16.2.i.i, align 1
  %55 = load i32, ptr %wr_index75.i.i, align 4
  %inc.2.i.i = add i32 %55, 1
  %buf_size.i.i = getelementptr i8, ptr %work, i32 148
  %56 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2.i.i, i32 %57)
  %cmp20.not.i.i = icmp ult i32 %inc.2.i.i, %57
  %spec.store.select76.i.i = select i1 %cmp20.not.i.i, i32 %inc.2.i.i, i32 0
  %58 = ptrtoint ptr %wr_index75.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.store.select76.i.i, ptr %wr_index75.i.i, align 4
  %rd_index.i.i = getelementptr i8, ptr %work, i32 152
  %59 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rd_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select76.i.i, i32 %60)
  %cmp26.i.i = icmp eq i32 %spec.store.select76.i.i, %60
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.else.i.i

if.then28.i.i:                                    ; preds = %if.end14.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %spec.store.select76.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %57)
  %cmp32.not.i.i = icmp ult i32 %add.i.i, %57
  %spec.store.select.i.i = select i1 %cmp32.not.i.i, i32 %add.i.i, i32 0
  %61 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.store.select.i.i, ptr %rd_index.i.i, align 4
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %if.end14.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %block_count.i.i = getelementptr i8, ptr %work, i32 160
  %62 = ptrtoint ptr %block_count.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %block_count.i.i, align 4
  %inc37.i.i = add i32 %63, 1
  store i32 %inc37.i.i, ptr %block_count.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %if.then28.i.i
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp39.i.i = icmp ugt i32 %64, 3
  br i1 %cmp39.i.i, label %do.end46.i.i, label %if.end38.i.i.block_to_buf.exit.i_crit_edge

if.end38.i.i.block_to_buf.exit.i_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %block_to_buf.exit.i

do.end46.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %block_count48.i.i = getelementptr i8, ptr %work, i32 160
  %65 = ptrtoint ptr %block_count48.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %block_count48.i.i, align 4
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %66) #10
  br label %block_to_buf.exit.i

block_to_buf.exit.i:                              ; preds = %do.end46.i.i, %if.end38.i.i.block_to_buf.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call87.i) #7
  %data_available_for_read.i = getelementptr i8, ptr %work, i32 220
  %67 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %data_available_for_read.i, align 4
  %read_queue.i = getelementptr i8, ptr %work, i32 168
  call void @__wake_up(ptr noundef %read_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %saa6588_i2c_poll.exit

saa6588_i2c_poll.exit:                            ; preds = %block_to_buf.exit.i, %do.end30.i, %if.then22.i.saa6588_i2c_poll.exit_crit_edge, %if.end8.i.saa6588_i2c_poll.exit_crit_edge, %do.end.i, %if.then.i.saa6588_i2c_poll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmpbuf.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %call.i.i4 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %work, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6588_command(ptr noundef %sd, i32 noundef %cmd, ptr nocapture noundef %arg) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1074024962, label %sw.bb
    i32 -2147200509, label %sw.bb2
    i32 -2147200508, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data_available_for_read = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 10
  %1 = ptrtoint ptr %data_available_for_read to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %data_available_for_read, align 4
  %read_queue = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %2 = ptrtoint ptr %data_available_for_read to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data_available_for_read, align 4
  %result = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %result, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %buffer.i = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buf.i, align 1, !annotation !141
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !141
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !141
  %result.i = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %result.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %sw.bb2.read_from_buf.exit_crit_edge, label %while.cond.preheader.i

sw.bb2.read_from_buf.exit_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_from_buf.exit

while.cond.preheader.i:                           ; preds = %sw.bb2
  %nonblocking.i = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 1
  %data_available_for_read.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 10
  %read_queue.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 9
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end19.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %12 = ptrtoint ptr %nonblocking.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nonblocking.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %14 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_available_for_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 184) #7
  %16 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_available_for_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not.i = icmp eq i32 %17, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %while.body.i.if.end19.i_crit_edge

while.body.i.if.end19.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then9.i:                                       ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call157.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %19 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_available_for_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not158.i = icmp eq i32 %20, 0
  br i1 %tobool12.not158.i, label %if.then9.i.if.end14.i_crit_edge, label %if.then9.i.for.end.i_crit_edge

if.then9.i.for.end.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %cleanup.i.if.end14.i_crit_edge, %if.then9.i.if.end14.i_crit_edge
  %call159.i = phi i32 [ %call.i, %cleanup.i.if.end14.i_crit_edge ], [ %call157.i, %if.then9.i.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i)
  %tobool15.not.i = icmp eq i32 %call159.i, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.end14.i.__out.i_crit_edge

if.end14.i.__out.i_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end14.i
  call void @schedule() #7
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %21 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_available_for_read.i, align 4
  %tobool12.not.i = icmp eq i32 %22, 0
  br i1 %tobool12.not.i, label %cleanup.i.if.end14.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup.i.if.end14.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then9.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end14.i.__out.i_crit_edge
  %__ret10.1141.i = phi i32 [ 0, %for.end.i ], [ %call159.i, %if.end14.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %__out.i, %while.body.i.if.end19.i_crit_edge
  %__ret.0.i = phi i32 [ 0, %while.body.i.if.end19.i_crit_edge ], [ %__ret10.1141.i, %__out.i ]
  %cmp.i = icmp eq i32 %__ret.0.i, -512
  br i1 %cmp.i, label %if.then21.i, label %if.end19.i.while.cond.i_crit_edge

if.end19.i.while.cond.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -4, ptr %result.i, align 4
  br label %read_from_buf.exit

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg, align 4
  %lock.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 2
  %call32.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %block_count37.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 7
  %26 = ptrtoint ptr %block_count37.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %block_count37.i, align 4
  %28 = call i32 @llvm.umin.i32(i32 %25, i32 %27) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call32.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool44.not.i = icmp eq i32 %28, 0
  br i1 %tobool44.not.i, label %while.end.i.read_from_buf.exit_crit_edge, label %for.body.lr.ph.i

while.end.i.read_from_buf.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_from_buf.exit

for.body.lr.ph.i:                                 ; preds = %while.end.i
  %rd_index.i.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 5
  %wr_index.i.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 6
  %buffer.i.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 3
  %buf_size.i.i = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf_ptr.0162.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0161.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call59.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %29 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_index.i.i, align 4
  %31 = ptrtoint ptr %wr_index.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wr_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i.i = icmp eq i32 %30, %32
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp1.i.i = icmp ugt i32 %33, 2
  br i1 %cmp.i.i, label %if.then.i138.i, label %if.end5.i.i

if.then.i138.i:                                   ; preds = %for.body.i
  br i1 %cmp1.i.i, label %do.end.i.i, label %if.then.i138.i.block_from_buf.exit.thread.i_crit_edge

if.then.i138.i.block_from_buf.exit.thread.i_crit_edge: ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %block_from_buf.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %block_from_buf.exit.thread.i

if.end5.i.i:                                      ; preds = %for.body.i
  br i1 %cmp1.i.i, label %do.end12.i.i, label %if.end5.i.i.if.end27.i.i_crit_edge

if.end5.i.i.if.end27.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

do.end12.i.i:                                     ; preds = %if.end5.i.i
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %34 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %35)
  %cmp1867.i.i = icmp ult i32 %35, -3
  br i1 %cmp1867.i.i, label %do.end12.i.i.for.body.i.i_crit_edge, label %do.end12.i.i.if.end27.i.i_crit_edge

do.end12.i.i.if.end27.i.i_crit_edge:              ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

do.end12.i.i.for.body.i.i_crit_edge:              ; preds = %do.end12.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end12.i.i.for.body.i.i_crit_edge
  %i.068.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %35, %do.end12.i.i.for.body.i.i_crit_edge ]
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool19.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end23.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end23.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %38, i32 %i.068.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end23.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.068.i.i, 1
  %41 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rd_index.i.i, align 4
  %add.i.i = add i32 %42, 3
  %cmp18.i.i = icmp ult i32 %inc.i.i, %add.i.i
  br i1 %cmp18.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end27.i.i_crit_edge

for.inc.i.i.if.end27.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end27.i.i:                                     ; preds = %for.inc.i.i.if.end27.i.i_crit_edge, %do.end12.i.i.if.end27.i.i_crit_edge, %if.end5.i.i.if.end27.i.i_crit_edge
  %43 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer.i.i, align 4
  %45 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rd_index.i.i, align 4
  %arrayidx30.i.i = getelementptr i8, ptr %44, i32 %46
  %47 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx30.i.i, i32 3)
  %add32.i.i = add i32 %46, 3
  %48 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i.i, i32 %49)
  %cmp34.not.i.i = icmp ult i32 %add32.i.i, %49
  %spec.store.select.i.i = select i1 %cmp34.not.i.i, i32 %add32.i.i, i32 0
  %50 = ptrtoint ptr %rd_index.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select.i.i, ptr %rd_index.i.i, align 4
  %51 = ptrtoint ptr %block_count37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %block_count37.i, align 4
  %dec.i.i = add i32 %52, -1
  store i32 %dec.i.i, ptr %block_count37.i, align 4
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp39.i.i = icmp ugt i32 %53, 2
  br i1 %cmp39.i.i, label %do.end46.i.i, label %if.end27.i.i.if.then.i.i_crit_edge

if.end27.i.i.if.then.i.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

do.end46.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %dec.i.i) #10
  br label %if.then.i.i

block_from_buf.exit.thread.i:                     ; preds = %do.end.i.i, %if.then.i138.i.block_from_buf.exit.thread.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call59.i) #7
  br label %do.body81.i

if.then.i.i:                                      ; preds = %do.end46.i.i, %if.end27.i.i.if.then.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call59.i) #7
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.then.i.i.cleanup76.thread150.i_crit_edge, label %if.end.i.i.i

if.then.i.i.cleanup76.thread150.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76.thread150.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf_ptr.0162.i, i32 3, i32 -1226833920) #11, !srcloc !143
  %asmresult.i.i.i = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup76.thread150.i_crit_edge

if.end.i.i.i.cleanup76.thread150.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76.thread150.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf.i, i32 noundef 3) #7
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf_ptr.0162.i, ptr noundef nonnull %buf.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool71.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool71.not.i, label %for.inc.i, label %copy_to_user.exit.i.cleanup76.thread150.i_crit_edge

copy_to_user.exit.i.cleanup76.thread150.i_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76.thread150.i

cleanup76.thread150.i:                            ; preds = %copy_to_user.exit.i.cleanup76.thread150.i_crit_edge, %if.end.i.i.i.cleanup76.thread150.i_crit_edge, %if.then.i.i.cleanup76.thread150.i_crit_edge
  %55 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -14, ptr %result.i, align 4
  br label %read_from_buf.exit

for.inc.i:                                        ; preds = %copy_to_user.exit.i
  %add.ptr.i = getelementptr i8, ptr %buf_ptr.0162.i, i32 3
  %56 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %result.i, align 4
  %add.i = add i32 %57, 3
  store i32 %add.i, ptr %result.i, align 4
  %inc.i = add nuw i32 %i.0161.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.inc.i.do.body81.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.body81.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81.i

do.body81.i:                                      ; preds = %for.inc.i.do.body81.i_crit_edge, %block_from_buf.exit.thread.i
  %call89.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %58 = ptrtoint ptr %block_count37.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %block_count37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp95.i = icmp ne i32 %59, 0
  %conv96.i = zext i1 %cmp95.i to i32
  %60 = ptrtoint ptr %data_available_for_read.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv96.i, ptr %data_available_for_read.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call89.i) #7
  br label %read_from_buf.exit

read_from_buf.exit:                               ; preds = %do.body81.i, %cleanup76.thread150.i, %while.end.i.read_from_buf.exit_crit_edge, %if.then21.i, %sw.bb2.read_from_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %poll_mask = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 6
  %61 = ptrtoint ptr %poll_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %poll_mask, align 4
  %data_available_for_read4 = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 10
  %62 = ptrtoint ptr %data_available_for_read4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_available_for_read4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not = icmp eq i32 %63, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 65
  %64 = ptrtoint ptr %poll_mask to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.store.select, ptr %poll_mask, align 4
  %instance = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 4
  %65 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %instance, align 4
  %read_queue6 = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 9
  %event_list = getelementptr inbounds %struct.saa6588_command, ptr %arg, i32 0, i32 5
  %67 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %event_list, align 4
  %tobool.not.i18 = icmp eq ptr %68, null
  br i1 %tobool.not.i18, label %sw.bb3.cleanup_crit_edge, label %land.lhs.true.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb3
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool1.not.i = icmp eq ptr %70, null
  %tobool3.not.i19 = icmp eq ptr %read_queue6, null
  %or.cond.i = or i1 %tobool3.not.i19, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %70(ptr noundef %66, ptr noundef nonnull %read_queue6, ptr noundef nonnull %68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %read_from_buf.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ 0, %read_from_buf.exit ], [ 0, %sw.bb ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa6588_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %0 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capability, align 4
  %or = or i32 %1, 384
  store i32 %or, ptr %capability, align 4
  %sync = getelementptr inbounds %struct.saa6588, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %4 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxsubchans, align 4
  %or1 = or i32 %5, 16
  store i32 %or1, ptr %rxsubchans, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa6588_s_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @saa6588_configure(ptr noundef %sd)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa6588.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/saa6588.c", i32 34, i32 1}
!5 = !{ptr @__param_xtal, !6, !"__param_xtal", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/saa6588.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_xtaltype294, !6, !"__UNIQUE_ID_xtaltype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_xtal295, !9, !"__UNIQUE_ID_xtal295", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/saa6588.c", i32 36, i32 1}
!10 = !{ptr @__param_mmbs, !11, !"__param_mmbs", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa6588.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_mmbstype296, !11, !"__UNIQUE_ID_mmbstype296", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_mmbs297, !14, !"__UNIQUE_ID_mmbs297", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/saa6588.c", i32 38, i32 1}
!15 = !{ptr @__param_plvl, !16, !"__param_plvl", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa6588.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_plvltype298, !16, !"__UNIQUE_ID_plvltype298", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_plvl299, !19, !"__UNIQUE_ID_plvl299", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/saa6588.c", i32 40, i32 1}
!20 = !{ptr @__param_bufblocks, !21, !"__param_bufblocks", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa6588.c", i32 41, i32 1}
!22 = !{ptr @__UNIQUE_ID_bufblockstype300, !21, !"__UNIQUE_ID_bufblockstype300", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_bufblocks301, !24, !"__UNIQUE_ID_bufblocks301", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/saa6588.c", i32 42, i32 1}
!25 = !{ptr @__UNIQUE_ID_description302, !26, !"__UNIQUE_ID_description302", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/saa6588.c", i32 44, i32 1}
!27 = !{ptr @__UNIQUE_ID_author303, !28, !"__UNIQUE_ID_author303", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/saa6588.c", i32 45, i32 1}
!29 = !{ptr @__UNIQUE_ID_file304, !30, !"__UNIQUE_ID_file304", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/saa6588.c", i32 47, i32 1}
!31 = !{ptr @__UNIQUE_ID_license305, !30, !"__UNIQUE_ID_license305", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_saa6588__306_516_saa6588_driver_init6, !33, !"__initcall__kmod_saa6588__306_516_saa6588_driver_init6", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/saa6588.c", i32 516, i32 1}
!34 = !{ptr @__exitcall_saa6588_driver_exit, !33, !"__exitcall_saa6588_driver_exit", i1 false, i1 false}
!35 = !{ptr @debug, !36, !"debug", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/saa6588.c", i32 27, i32 21}
!37 = !{ptr @xtal, !38, !"xtal", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/saa6588.c", i32 28, i32 21}
!39 = !{ptr @mmbs, !40, !"mmbs", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/saa6588.c", i32 29, i32 21}
!41 = !{ptr @plvl, !42, !"plvl", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/saa6588.c", i32 30, i32 21}
!43 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!44 = !{ptr @__param_str_xtal, !6, !"__param_str_xtal", i1 false, i1 false}
!45 = !{ptr @__param_str_mmbs, !11, !"__param_str_mmbs", i1 false, i1 false}
!46 = !{ptr @__param_str_plvl, !16, !"__param_str_plvl", i1 false, i1 false}
!47 = !{ptr @__param_str_bufblocks, !21, !"__param_str_bufblocks", i1 false, i1 false}
!48 = !{ptr @bufblocks, !49, !"bufblocks", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/saa6588.c", i32 31, i32 21}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/saa6588.c", i32 509, i32 11}
!52 = !{ptr @saa6588_driver, !53, !"saa6588_driver", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/saa6588.c", i32 507, i32 26}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/saa6588.c", i32 457, i32 2}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @saa6588_probe._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @saa6588_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @saa6588_probe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/saa6588.c", i32 471, i32 2}
!62 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @saa6588_probe.__key.5, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/saa6588.c", i32 476, i32 2}
!65 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @saa6588_probe.__key.7, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/saa6588.c", i32 482, i32 2}
!68 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @saa6588_probe.__key.9, !67, !"__key", i1 false, i1 false}
!70 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @saa6588_ops, !72, !"saa6588_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/saa6588.c", i32 444, i32 37}
!73 = !{ptr @saa6588_core_ops, !74, !"saa6588_core_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/saa6588.c", i32 435, i32 42}
!75 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/saa6588.c", i32 147, i32 4}
!77 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @block_from_buf._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @block_from_buf._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/saa6588.c", i32 152, i32 3}
!82 = !{ptr @block_from_buf._entry.13, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @block_from_buf._entry_ptr.15, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/saa6588.c", i32 154, i32 4}
!86 = !{ptr @block_from_buf._entry.16, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @block_from_buf._entry_ptr.18, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/saa6588.c", i32 165, i32 3}
!90 = !{ptr @block_from_buf._entry.19, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @block_from_buf._entry_ptr.21, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!99 = !{ptr @saa6588_tuner_ops, !100, !"saa6588_tuner_ops", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/saa6588.c", i32 439, i32 43}
!101 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/saa6588.c", i32 373, i32 2}
!103 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @saa6588_configure._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @saa6588_configure._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/saa6588.c", i32 378, i32 3}
!108 = !{ptr @saa6588_configure._entry.27, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @saa6588_configure._entry_ptr.29, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/saa6588.c", i32 260, i32 4}
!112 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @saa6588_i2c_poll._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @saa6588_i2c_poll._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/saa6588.c", i32 270, i32 4}
!117 = !{ptr @saa6588_i2c_poll._entry.32, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @saa6588_i2c_poll._entry_ptr.34, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/saa6588.c", i32 225, i32 3}
!121 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @block_to_buf._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @block_to_buf._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @block_to_buf._entry.37, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/saa6588.c", i32 229, i32 4}
!126 = !{ptr @block_to_buf._entry_ptr.38, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @block_to_buf._entry.39, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/saa6588.c", i32 245, i32 3}
!129 = !{ptr @block_to_buf._entry_ptr.40, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @saa6588_id, !131, !"saa6588_id", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/saa6588.c", i32 501, i32 35}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i8 0, i8 2}
!143 = !{i64 2153855748, i64 2153855773}
