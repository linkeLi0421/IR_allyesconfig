; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/qm1d1c0042.c_pt.bc'
source_filename = "../drivers/media/tuners/qm1d1c0042.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qm1d1c0042_state = type { %struct.qm1d1c0042_config, ptr, [32 x i8] }
%struct.qm1d1c0042_config = type { ptr, i32, i8, i8, i32, i32, i32 }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_qm1d1c0042__290_453_qm1d1c0042_driver_init6 = internal global ptr @qm1d1c0042_driver_init, section ".initcall6.init", align 4
@qm1d1c0042_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @qm1d1c0042_probe, ptr @qm1d1c0042_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @qm1d1c0042_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qm1d1c0042_driver_exit = internal global ptr @qm1d1c0042_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [46 x i8] c"qm1d1c0042.description=Sharp QM1D1C0042 tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [34 x i8] c"qm1d1c0042.author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [48 x i8] c"qm1d1c0042.file=drivers/media/tuners/qm1d1c0042\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"qm1d1c0042.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qm1d1c0042\00", [21 x i8] zeroinitializer }, align 32
@qm1d1c0042_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qm1d1c0042\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qm1d1c0042_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sharp QM1D1C0042\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @qm1d1c0042_init, ptr @qm1d1c0042_sleep, ptr null, ptr null, ptr @qm1d1c0042_set_params, ptr null, ptr @qm1d1c0042_set_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qm1d1c0042_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sharp QM1D1C0042 attached.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qm1d1c0042_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/tuners/qm1d1c0042.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qm1d1c0042_probe._entry_ptr = internal global ptr @qm1d1c0042_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qm1d1c0042_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 142, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%s) changing xtal_freq not supported. \00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qm1d1c0042_set_config\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qm1d1c0042_set_config._entry_ptr = internal global ptr @qm1d1c0042_set_config._entry, section ".printk_index", align 4
@reg_initval = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"H\1C\A0\10\BC\C5 3\06\00\00\00\03\00\00\00\00\FF\F3\00*d\A6\86\8C\CF\B8\F1\A8\F2\89\00", [32 x i8] c"h\1C\C0\10\BC\C1\113\03\00\00\00\03\00\00\00\00\FF\F3\00?%\\\D6U\CF\95\F66\F2\09\00"], [32 x i8] zeroinitializer }, align 32
@qm1d1c0042_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 383, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qm1d1c0042_init\00", [16 x i8] zeroinitializer }, align 32
@qm1d1c0042_init._entry_ptr = internal global ptr @qm1d1c0042_init._entry, section ".printk_index", align 4
@qm1d1c0042_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.3, i32 123, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qm1d1c0042_wakeup\00", [46 x i8] zeroinitializer }, align 32
@qm1d1c0042_wakeup._entry_ptr = internal global ptr @qm1d1c0042_wakeup._entry, section ".printk_index", align 4
@qm1d1c0042_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.3, i32 313, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qm1d1c0042_sleep\00", [47 x i8] zeroinitializer }, align 32
@qm1d1c0042_sleep._entry_ptr = internal global ptr @qm1d1c0042_sleep._entry, section ".printk_index", align 4
@conv_table = internal constant { [9 x [3 x i32]], [52 x i8] } { [9 x [3 x i32]] [[3 x i32] [i32 2151000, i32 1, i32 7], [3 x i32] [i32 1950000, i32 1, i32 6], [3 x i32] [i32 1800000, i32 1, i32 5], [3 x i32] [i32 1600000, i32 1, i32 4], [3 x i32] [i32 1450000, i32 1, i32 3], [3 x i32] [i32 1250000, i32 1, i32 2], [3 x i32] [i32 1200000, i32 0, i32 7], [3 x i32] [i32 975000, i32 0, i32 6], [3 x i32] [i32 950000, i32 0, i32 0]], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 72, i64 104]
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"qm1d1c0042_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 444, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 446, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"qm1d1c0042_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 438, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"qm1d1c0042_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 389, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 423, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 141, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"reg_initval\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 29, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 382, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 122, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 312, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"conv_table\00", align 1
@___asan_gen_.80 = private constant [37 x i8] c"../drivers/media/tuners/qm1d1c0042.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 167, i32 18 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_qm1d1c0042_driver_exit, ptr @__initcall__kmod_qm1d1c0042__290_453_qm1d1c0042_driver_init6, ptr @qm1d1c0042_driver_exit, ptr @qm1d1c0042_init._entry, ptr @qm1d1c0042_init._entry_ptr, ptr @qm1d1c0042_probe._entry, ptr @qm1d1c0042_probe._entry_ptr, ptr @qm1d1c0042_set_config._entry, ptr @qm1d1c0042_set_config._entry_ptr, ptr @qm1d1c0042_sleep._entry, ptr @qm1d1c0042_sleep._entry_ptr, ptr @qm1d1c0042_wakeup._entry, ptr @qm1d1c0042_wakeup._entry_ptr, ptr @qm1d1c0042_driver, ptr @.str, ptr @qm1d1c0042_id, ptr @qm1d1c0042_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @reg_initval, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @conv_table], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_initval to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qm1d1c0042_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conv_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @qm1d1c0042_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qm1d1c0042_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @qm1d1c0042_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c = getelementptr inbounds %struct.qm1d1c0042_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %i2c, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %xtal_freq.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xtal_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i.qm1d1c0042_set_config.exit_crit_edge, label %do.end.i

if.end.i.qm1d1c0042_set_config.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qm1d1c0042_set_config.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  br label %qm1d1c0042_set_config.exit

qm1d1c0042_set_config.exit:                       ; preds = %do.end.i, %if.end.i.qm1d1c0042_set_config.exit_crit_edge
  %xtal_freq8.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %xtal_freq8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16000, ptr %xtal_freq8.i, align 4
  %lpf.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lpf.i, align 4, !range !62
  %lpf11.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %lpf11.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %lpf11.i, align 8
  %fast_srch.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %fast_srch.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fast_srch.i, align 1, !range !62
  %fast_srch14.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %fast_srch14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %fast_srch14.i, align 1
  %lpf_wait.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %lpf_wait.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lpf_wait.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp16.not.i = icmp eq i32 %21, 0
  %spec.select.i = select i1 %cmp16.not.i, i32 20, i32 %21
  %22 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %22, align 4
  %fast_srch_wait.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %fast_srch_wait.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fast_srch_wait.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp24.not.i = icmp eq i32 %25, 0
  %.sink65.i = select i1 %cmp24.not.i, i32 4, i32 %25
  %26 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink65.i, ptr %26, align 8
  %normal_srch_wait.i = getelementptr inbounds %struct.qm1d1c0042_config, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %normal_srch_wait.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %normal_srch_wait.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp33.not.i = icmp eq i32 %29, 0
  %.sink66.i = select i1 %cmp33.not.i, i32 15, i32 %29
  %30 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink66.i, ptr %30, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32
  %32 = call ptr @memcpy(ptr %tuner_ops, ptr @qm1d1c0042_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %qm1d1c0042_set_config.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qm1d1c0042_set_config.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_cfg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xtal_freq = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.qm1d1c0042_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %xtal_freq8 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %xtal_freq8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16000, ptr %xtal_freq8, align 4
  %lpf = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lpf, align 4, !range !62
  %lpf11 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %lpf11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %lpf11, align 4
  %fast_srch = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 3
  %13 = ptrtoint ptr %fast_srch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fast_srch, align 1, !range !62
  %fast_srch14 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %fast_srch14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %fast_srch14, align 1
  %lpf_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 4
  %16 = ptrtoint ptr %lpf_wait to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpf_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16.not = icmp eq i32 %17, 0
  %spec.select = select i1 %cmp16.not, i32 20, i32 %17
  %18 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %fast_srch_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 5
  %20 = ptrtoint ptr %fast_srch_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fast_srch_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24.not = icmp eq i32 %21, 0
  %.sink65 = select i1 %cmp24.not, i32 4, i32 %21
  %22 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink65, ptr %22, align 4
  %normal_srch_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %priv_cfg, i32 0, i32 6
  %24 = ptrtoint ptr %normal_srch_wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %normal_srch_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33.not = icmp eq i32 %25, 0
  %.sink66 = select i1 %cmp33.not, i32 15, i32 %25
  %26 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink66, ptr %26, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %wbuf.i.i175 = alloca [2 x i8], align 1
  %wbuf.i34.i = alloca [2 x i8], align 1
  %wbuf.i.i = alloca [2 x i8], align 1
  %wbuf.i165 = alloca [2 x i8], align 1
  %wbuf.i156 = alloca [2 x i8], align 1
  %wbuf.i147 = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %wbuf.i133 = alloca [2 x i8], align 1
  %wbuf.i124 = alloca [2 x i8], align 1
  %wbuf.i115 = alloca [2 x i8], align 1
  %wbuf.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !63
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %4 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %wbuf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %3, align 1
  %i2c.i = getelementptr inbounds %struct.qm1d1c0042_state, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %wbuf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i115) #6
  %8 = getelementptr inbounds [2 x i8], ptr %wbuf.i115, i32 0, i32 1
  %9 = ptrtoint ptr %wbuf.i115 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %wbuf.i115, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %8, align 1
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %call.i.i117 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %wbuf.i115, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i115) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i124) #6
  %13 = getelementptr inbounds [2 x i8], ptr %wbuf.i124, i32 0, i32 1
  %14 = ptrtoint ptr %wbuf.i124 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %wbuf.i124, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %13, align 1
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 4
  %call.i.i126 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %wbuf.i124, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i126)
  %cmp1.i127 = icmp ult i32 %call.i.i126, 2
  %spec.store.select.i128 = select i1 %cmp1.i127, i32 -5, i32 %call.i.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %cmp6.i129 = icmp slt i32 %call.i.i126, 0
  %ret.0.i130 = select i1 %cmp6.i129, i32 %call.i.i126, i32 %spec.store.select.i128
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i130)
  %cmp = icmp slt i32 %ret.0.i130, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i133) #6
  %18 = getelementptr inbounds [2 x i8], ptr %wbuf.i133, i32 0, i32 1
  %19 = ptrtoint ptr %wbuf.i133 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wbuf.i133, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 28, ptr %18, align 1
  %21 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i, align 4
  %call.i.i135 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %wbuf.i133, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i135)
  %cmp1.i136 = icmp ult i32 %call.i.i135, 2
  %spec.store.select.i137 = select i1 %cmp1.i136, i32 -5, i32 %call.i.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %cmp6.i138 = icmp slt i32 %call.i.i135, 0
  %ret.0.i139 = select i1 %cmp6.i138, i32 %call.i.i135, i32 %spec.store.select.i137
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i139)
  %cmp4 = icmp slt i32 %ret.0.i139, 0
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %23 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %24 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 255, i32 16)
  %26 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr1.i, align 2
  %30 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i, align 2
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %24, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %34 = load i16, ptr %addr1.i, align 2
  %35 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %36 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %37 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %38 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %val, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp9.i = icmp ult i32 %call.i, 2
  %spec.store.select.i143 = select i1 %cmp9.i, i32 -5, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i144 = icmp slt i32 %call.i, 0
  %ret.0.i145 = select i1 %cmp1.i144, i32 %call.i, i32 %spec.store.select.i143
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i145)
  %cmp8 = icmp slt i32 %ret.0.i145, 0
  br i1 %cmp8, label %if.end6.do.end_crit_edge, label %for.cond.preheader

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %if.end6
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %for.cond.preheader.do.end_crit_edge [
    i8 72, label %for.cond.preheader.if.end21_crit_edge
    i8 104, label %if.end21.fold.split
  ]

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end21.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.fold.split, %for.cond.preheader.if.end21_crit_edge
  %storemerge190.lcssa = phi i32 [ 0, %for.cond.preheader.if.end21_crit_edge ], [ 1, %if.end21.fold.split ]
  %regs = getelementptr inbounds %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2
  %arrayidx22 = getelementptr [2 x [32 x i8]], ptr @reg_initval, i32 0, i32 %storemerge190.lcssa
  %44 = call ptr @memcpy(ptr %regs, ptr %arrayidx22, i32 32)
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %arrayidx25 = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 12
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx25, align 4
  %47 = or i8 %46, 64
  store i8 %47, ptr %arrayidx25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i147) #6
  %48 = getelementptr inbounds [2 x i8], ptr %wbuf.i147, i32 0, i32 1
  %49 = ptrtoint ptr %wbuf.i147 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 12, ptr %wbuf.i147, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %48, align 1
  %51 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c.i, align 4
  %call.i.i149 = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %wbuf.i147, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i149)
  %cmp1.i150 = icmp ult i32 %call.i.i149, 2
  %spec.store.select.i151 = select i1 %cmp1.i150, i32 -5, i32 %call.i.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp6.i152 = icmp slt i32 %call.i.i149, 0
  %ret.0.i153 = select i1 %cmp6.i152, i32 %call.i.i149, i32 %spec.store.select.i151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i153)
  %cmp31 = icmp slt i32 %ret.0.i153, 0
  br i1 %cmp31, label %if.end21.do.end_crit_edge, label %if.end34

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end34:                                         ; preds = %if.end21
  %lpf_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %2, i32 0, i32 4
  %53 = ptrtoint ptr %lpf_wait to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lpf_wait, align 4
  call void @msleep(i32 noundef %54) #6
  %55 = getelementptr inbounds [2 x i8], ptr %wbuf.i156, i32 0, i32 1
  br label %for.body38

for.cond35:                                       ; preds = %for.body38
  %inc48 = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc48, 13
  br i1 %exitcond.not, label %for.cond50.preheader, label %for.cond35.for.body38_crit_edge

for.cond35.for.body38_crit_edge:                  ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

for.cond50.preheader:                             ; preds = %for.cond35
  %56 = getelementptr inbounds [2 x i8], ptr %wbuf.i165, i32 0, i32 1
  br label %for.body53

for.body38:                                       ; preds = %for.cond35.for.body38_crit_edge, %if.end34
  %i.0191 = phi i32 [ 1, %if.end34 ], [ %inc48, %for.cond35.for.body38_crit_edge ]
  %conv39 = trunc i32 %i.0191 to i8
  %arrayidx41 = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 %i.0191
  %57 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx41, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i156) #6
  %59 = ptrtoint ptr %wbuf.i156 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv39, ptr %wbuf.i156, align 1
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %55, align 1
  %61 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c.i, align 4
  %call.i.i158 = call i32 @i2c_transfer_buffer_flags(ptr noundef %62, ptr noundef nonnull %wbuf.i156, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i158)
  %cmp1.i159 = icmp ult i32 %call.i.i158, 2
  %spec.store.select.i160 = select i1 %cmp1.i159, i32 -5, i32 %call.i.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp6.i161 = icmp slt i32 %call.i.i158, 0
  %ret.0.i162 = select i1 %cmp6.i161, i32 %call.i.i158, i32 %spec.store.select.i160
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i156) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i162)
  %cmp43 = icmp slt i32 %ret.0.i162, 0
  br i1 %cmp43, label %for.body38.do.end_crit_edge, label %for.cond35

for.body38.do.end_crit_edge:                      ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond50:                                       ; preds = %for.body53
  %inc63 = add nuw nsw i32 %i.1192, 1
  %exitcond197.not = icmp eq i32 %inc63, 32
  br i1 %exitcond197.not, label %for.end64, label %for.cond50.for.body53_crit_edge

for.cond50.for.body53_crit_edge:                  ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53

for.body53:                                       ; preds = %for.cond50.for.body53_crit_edge, %for.cond50.preheader
  %i.1192 = phi i32 [ 17, %for.cond50.preheader ], [ %inc63, %for.cond50.for.body53_crit_edge ]
  %conv54 = trunc i32 %i.1192 to i8
  %arrayidx56 = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 %i.1192
  %63 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx56, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i165) #6
  %65 = ptrtoint ptr %wbuf.i165 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv54, ptr %wbuf.i165, align 1
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %56, align 1
  %67 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c.i, align 4
  %call.i.i167 = call i32 @i2c_transfer_buffer_flags(ptr noundef %68, ptr noundef nonnull %wbuf.i165, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i167)
  %cmp1.i168 = icmp ult i32 %call.i.i167, 2
  %spec.store.select.i169 = select i1 %cmp1.i168, i32 -5, i32 %call.i.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %cmp6.i170 = icmp slt i32 %call.i.i167, 0
  %ret.0.i171 = select i1 %cmp6.i170, i32 %call.i.i167, i32 %spec.store.select.i169
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i165) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i171)
  %cmp58 = icmp slt i32 %ret.0.i171, 0
  br i1 %cmp58, label %for.body53.do.end_crit_edge, label %for.cond50

for.body53.do.end_crit_edge:                      ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end64:                                        ; preds = %for.cond50
  %arrayidx.i = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  %71 = and i8 %70, -10
  %72 = or i8 %71, 8
  store i8 %72, ptr %arrayidx.i, align 1
  %arrayidx7.i = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 5
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx7.i, align 1
  %75 = and i8 %74, -9
  store i8 %75, ptr %arrayidx7.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i) #6
  %76 = getelementptr inbounds [2 x i8], ptr %wbuf.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %wbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %wbuf.i.i, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %72, ptr %76, align 1
  %79 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %wbuf.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i = icmp ult i32 %call.i.i.i, 2
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i.i, 0
  %ret.0.i.i = select i1 %cmp6.i.i, i32 %call.i.i.i, i32 %spec.store.select.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i) #6
  %81 = and i32 %ret.0.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %if.then.i, label %for.end64.if.end.i_crit_edge

for.end64.if.end.i_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.end64
  %83 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx7.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i34.i) #6
  %85 = getelementptr inbounds [2 x i8], ptr %wbuf.i34.i, i32 0, i32 1
  %86 = ptrtoint ptr %wbuf.i34.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 5, ptr %wbuf.i34.i, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %84, ptr %85, align 1
  %88 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c.i, align 4
  %call.i.i36.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %89, ptr noundef nonnull %wbuf.i34.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i36.i)
  %cmp1.i37.i = icmp ult i32 %call.i.i36.i, 2
  %spec.store.select.i38.i = select i1 %cmp1.i37.i, i32 -5, i32 %call.i.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %cmp6.i39.i = icmp slt i32 %call.i.i36.i, 0
  %ret.0.i40.i = select i1 %cmp6.i39.i, i32 %call.i.i36.i, i32 %spec.store.select.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i40.i)
  %cmp2.i41.i = icmp eq i32 %ret.0.i40.i, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i34.i) #6
  br i1 %cmp2.i41.i, label %if.then.i.if.end69_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.if.end69_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %for.end64.if.end.i_crit_edge
  %ret.0.i174 = phi i32 [ %ret.0.i40.i, %if.then.i.if.end.i_crit_edge ], [ %ret.0.i.i, %for.end64.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i174)
  %cmp17.i = icmp slt i32 %ret.0.i174, 0
  br i1 %cmp17.i, label %qm1d1c0042_wakeup.exit, label %if.end.i.if.end69_crit_edge

if.end.i.if.end69_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

qm1d1c0042_wakeup.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %2, align 4
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dvb.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %id.i = getelementptr inbounds %struct.dvb_frontend, ptr %93, i32 0, i32 10
  %98 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %97, i32 noundef %99) #10
  br label %do.end

if.end69:                                         ; preds = %if.end.i.if.end69_crit_edge, %if.then.i.if.end69_crit_edge
  %fast_srch = getelementptr inbounds %struct.qm1d1c0042_config, ptr %2, i32 0, i32 3
  %100 = ptrtoint ptr %fast_srch to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fast_srch, align 1, !range !62
  %arrayidx.i176 = getelementptr %struct.qm1d1c0042_state, ptr %2, i32 0, i32 2, i32 3
  %102 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i176, align 1
  %104 = and i8 %103, -2
  %.sink.i = or i8 %104, %101
  store i8 %.sink.i, ptr %arrayidx.i176, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i.i175) #6
  %105 = getelementptr inbounds [2 x i8], ptr %wbuf.i.i175, i32 0, i32 1
  %106 = ptrtoint ptr %wbuf.i.i175 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %wbuf.i.i175, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink.i, ptr %105, align 1
  %108 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c.i, align 4
  %call.i.i.i178 = call i32 @i2c_transfer_buffer_flags(ptr noundef %109, ptr noundef nonnull %wbuf.i.i175, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i178)
  %cmp1.i.i179 = icmp ult i32 %call.i.i.i178, 2
  %spec.store.select.i.i180 = select i1 %cmp1.i.i179, i32 -5, i32 %call.i.i.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i178)
  %cmp6.i.i181 = icmp slt i32 %call.i.i.i178, 0
  %ret.0.i.i182 = select i1 %cmp6.i.i181, i32 %call.i.i.i178, i32 %spec.store.select.i.i180
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i.i182)
  %cmp2.i.i = icmp eq i32 %ret.0.i.i182, 2
  %cond.i.i = select i1 %cmp2.i.i, i32 0, i32 %ret.0.i.i182
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i.i175) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp72 = icmp slt i32 %cond.i.i, 0
  br i1 %cmp72, label %if.end69.do.end_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69.do.end_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end69.do.end_crit_edge, %qm1d1c0042_wakeup.exit, %for.body53.do.end_crit_edge, %for.body38.do.end_crit_edge, %if.end21.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge, %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i130, %entry.do.end_crit_edge ], [ %ret.0.i139, %if.end.do.end_crit_edge ], [ %ret.0.i145, %if.end6.do.end_crit_edge ], [ %ret.0.i153, %if.end21.do.end_crit_edge ], [ %ret.0.i174, %qm1d1c0042_wakeup.exit ], [ %ret.0.i.i182, %if.end69.do.end_crit_edge ], [ -22, %for.cond.preheader.do.end_crit_edge ], [ %ret.0.i171, %for.body53.do.end_crit_edge ], [ %ret.0.i162, %for.body38.do.end_crit_edge ]
  %110 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %112 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dvb, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %116 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %115, i32 noundef %117) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end69.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %cond.i.i, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %wbuf.i32 = alloca [2 x i8], align 1
  %wbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %arrayidx = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -10
  %5 = or i8 %4, 1
  store i8 %5, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %8 = or i8 %7, 8
  store i8 %8, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %10 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %wbuf.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %9, align 1
  %i2c.i = getelementptr inbounds %struct.qm1d1c0042_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %wbuf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.i = icmp ult i32 %call.i.i, 2
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  %ret.0.i = select i1 %cmp6.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #6
  %14 = and i32 %ret.0.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i32) #6
  %18 = getelementptr inbounds [2 x i8], ptr %wbuf.i32, i32 0, i32 1
  %19 = ptrtoint ptr %wbuf.i32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wbuf.i32, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %18, align 1
  %21 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i, align 4
  %call.i.i34 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %wbuf.i32, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34)
  %cmp1.i35 = icmp ult i32 %call.i.i34, 2
  %spec.store.select.i36 = select i1 %cmp1.i35, i32 -5, i32 %call.i.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp6.i37 = icmp slt i32 %call.i.i34, 0
  %ret.0.i38 = select i1 %cmp6.i37, i32 %call.i.i34, i32 %spec.store.select.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i38)
  %cmp2.i39 = icmp eq i32 %ret.0.i38, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i32) #6
  br i1 %cmp2.i39, label %if.then.if.end20_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i38, %if.then.if.end_crit_edge ], [ %ret.0.i, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %do.end, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %25 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dvb, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef %28, i32 noundef %30) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %ret.043 = phi i32 [ %ret.0, %do.end ], [ %ret.0, %if.end.if.end20_crit_edge ], [ 0, %if.then.if.end20_crit_edge ]
  ret i32 %ret.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %wbuf.i409 = alloca [2 x i8], align 1
  %wbuf.i400 = alloca [2 x i8], align 1
  %wbuf.i391 = alloca [2 x i8], align 1
  %wbuf.i382 = alloca [2 x i8], align 1
  %wbuf.i373 = alloca [2 x i8], align 1
  %wbuf.i364 = alloca [2 x i8], align 1
  %wbuf.i355 = alloca [2 x i8], align 1
  %wbuf.i346 = alloca [2 x i8], align 1
  %wbuf.i337 = alloca [2 x i8], align 1
  %wbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %arrayidx = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %6 = and i8 %5, -16
  %7 = or i8 %6, 9
  store i8 %7, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 19
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %10 = and i8 %9, -97
  %11 = or i8 %10, 32
  store i8 %11, ptr %arrayidx7, align 1
  %arrayidx17 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 2
  %14 = and i8 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2151000, i32 %3)
  %cmp24 = icmp ult i32 %3, 2151000
  br i1 %cmp24, label %land.lhs.true, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %3)
  %cmp28.not = icmp ult i32 %3, 1950000
  br i1 %cmp28.not, label %land.lhs.true.1, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.7.if.then_crit_edge, %land.lhs.true.6.if.then_crit_edge, %land.lhs.true.5.if.then_crit_edge, %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.0426.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %land.lhs.true.1.if.then_crit_edge ], [ 2, %land.lhs.true.2.if.then_crit_edge ], [ 3, %land.lhs.true.3.if.then_crit_edge ], [ 4, %land.lhs.true.4.if.then_crit_edge ], [ 5, %land.lhs.true.5.if.then_crit_edge ], [ 6, %land.lhs.true.6.if.then_crit_edge ], [ 7, %land.lhs.true.7.if.then_crit_edge ]
  %arrayidx31 = getelementptr [9 x [3 x i32]], ptr @conv_table, i32 0, i32 %i.0426.lcssa, i32 1
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx31, align 4
  %.tr = trunc i32 %16 to i8
  %17 = shl i8 %.tr, 7
  %conv34 = or i8 %17, %14
  %arrayidx36 = getelementptr [9 x [3 x i32]], ptr @conv_table, i32 0, i32 %i.0426.lcssa, i32 2
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36, align 4
  %.tr336 = trunc i32 %19 to i8
  %20 = shl i8 %.tr336, 4
  %conv40 = or i8 %20, %conv34
  br label %for.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %3)
  %cmp28.not.1 = icmp ult i32 %3, 1800000
  br i1 %cmp28.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.then_crit_edge

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %3)
  %cmp28.not.2 = icmp ult i32 %3, 1600000
  br i1 %cmp28.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.then_crit_edge

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1450000, i32 %3)
  %cmp28.not.3 = icmp ult i32 %3, 1450000
  br i1 %cmp28.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.then_crit_edge

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %3)
  %cmp28.not.4 = icmp ult i32 %3, 1250000
  br i1 %cmp28.not.4, label %land.lhs.true.5, label %land.lhs.true.4.if.then_crit_edge

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %3)
  %cmp28.not.5 = icmp ult i32 %3, 1200000
  br i1 %cmp28.not.5, label %land.lhs.true.6, label %land.lhs.true.5.if.then_crit_edge

land.lhs.true.5.if.then_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 975000, i32 %3)
  %cmp28.not.6 = icmp ult i32 %3, 975000
  br i1 %cmp28.not.6, label %land.lhs.true.7, label %land.lhs.true.6.if.then_crit_edge

land.lhs.true.6.if.then_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %3)
  %cmp28.not.7 = icmp ult i32 %3, 950000
  br i1 %cmp28.not.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.if.then_crit_edge

land.lhs.true.7.if.then_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %val.0 = phi i8 [ %conv40, %if.then ], [ %14, %entry.for.end_crit_edge ], [ %14, %land.lhs.true.7.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #6
  %21 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %22 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %wbuf.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %val.0, ptr %21, align 1
  %i2c.i = getelementptr inbounds %struct.qm1d1c0042_state, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %wbuf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.i = icmp ult i32 %call.i.i, 2
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  %ret.0.i = select i1 %cmp6.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp41 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp41, label %for.end.cleanup_crit_edge, label %if.end44

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %for.end
  %xtal_freq = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xtal_freq, align 4
  %div334 = lshr i32 %27, 1
  %add45 = add i32 %div334, %3
  %div46 = udiv i32 %add45, %27
  %arrayidx48 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx48, align 2
  %30 = and i8 %29, 64
  %sub = add i32 %div46, 1012
  %div52335 = lshr i32 %sub, 2
  %31 = trunc i32 %div52335 to i8
  %conv57 = or i8 %30, %31
  store i8 %conv57, ptr %arrayidx48, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i337) #6
  %32 = getelementptr inbounds [2 x i8], ptr %wbuf.i337, i32 0, i32 1
  %33 = ptrtoint ptr %wbuf.i337 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %wbuf.i337, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv57, ptr %32, align 1
  %35 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c.i, align 4
  %call.i.i339 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %wbuf.i337, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i339)
  %cmp1.i340 = icmp ult i32 %call.i.i339, 2
  %spec.store.select.i341 = select i1 %cmp1.i340, i32 -5, i32 %call.i.i339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i339)
  %cmp6.i342 = icmp slt i32 %call.i.i339, 0
  %ret.0.i343 = select i1 %cmp6.i342, i32 %call.i.i339, i32 %spec.store.select.i341
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i337) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i343)
  %cmp61 = icmp slt i32 %ret.0.i343, 0
  br i1 %cmp61, label %if.end44.cleanup_crit_edge, label %if.end64

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end44
  %arrayidx66 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx66, align 1
  %39 = and i8 %38, -16
  %40 = add i32 %div46, 8
  %mul = and i32 %40, 12
  %sub73 = sub i32 %div46, %mul
  %41 = trunc i32 %sub73 to i8
  %42 = add i8 %41, 11
  %43 = and i8 %42, 15
  %conv80 = or i8 %39, %43
  store i8 %conv80, ptr %arrayidx66, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i346) #6
  %44 = getelementptr inbounds [2 x i8], ptr %wbuf.i346, i32 0, i32 1
  %45 = ptrtoint ptr %wbuf.i346 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 7, ptr %wbuf.i346, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv80, ptr %44, align 1
  %47 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c.i, align 4
  %call.i.i348 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %wbuf.i346, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i348)
  %cmp1.i349 = icmp ult i32 %call.i.i348, 2
  %spec.store.select.i350 = select i1 %cmp1.i349, i32 -5, i32 %call.i.i348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i348)
  %cmp6.i351 = icmp slt i32 %call.i.i348, 0
  %ret.0.i352 = select i1 %cmp6.i351, i32 %call.i.i348, i32 %spec.store.select.i350
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i346) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i352)
  %cmp84 = icmp slt i32 %ret.0.i352, 0
  br i1 %cmp84, label %if.end64.cleanup_crit_edge, label %if.end87

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end64
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 4
  %lpf = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lpf, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  %53 = and i8 %50, -16
  %54 = or i8 %53, 2
  %val.1 = select i1 %tobool.not, i8 %50, i8 %54
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i355) #6
  %55 = getelementptr inbounds [2 x i8], ptr %wbuf.i355, i32 0, i32 1
  %56 = ptrtoint ptr %wbuf.i355 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 8, ptr %wbuf.i355, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %val.1, ptr %55, align 1
  %58 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c.i, align 4
  %call.i.i357 = call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef nonnull %wbuf.i355, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i357)
  %cmp1.i358 = icmp ult i32 %call.i.i357, 2
  %spec.store.select.i359 = select i1 %cmp1.i358, i32 -5, i32 %call.i.i357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i357)
  %cmp6.i360 = icmp slt i32 %call.i.i357, 0
  %ret.0.i361 = select i1 %cmp6.i360, i32 %call.i.i357, i32 %spec.store.select.i359
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i355) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i361)
  %cmp100 = icmp slt i32 %ret.0.i361, 0
  br i1 %cmp100, label %if.end87.cleanup_crit_edge, label %if.end103

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end103:                                        ; preds = %if.end87
  %conv104 = zext i32 %3 to i64
  %shl105 = shl nuw nsw i64 %conv104, 20
  %60 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %xtal_freq, align 4
  %conv108 = zext i32 %61 to i64
  %call109 = call i64 @div64_s64(i64 noundef %shl105, i64 noundef %conv108) #6
  %conv112 = zext i32 %div46 to i64
  %shl113.neg = mul nuw i64 %conv112, 4293918720
  %sub114 = add i64 %call109, %shl113.neg
  %conv115 = trunc i64 %sub114 to i32
  %add119 = add i32 %conv115, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv115)
  %cmp116423 = icmp slt i32 %conv115, 0
  %sd.0 = select i1 %cmp116423, i32 %add119, i32 %conv115
  %arrayidx122 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 9
  %62 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx122, align 1
  %64 = and i8 %63, -64
  %shr = lshr i32 %sd.0, 16
  %65 = trunc i32 %shr to i8
  %66 = and i8 %65, 63
  %conv131 = or i8 %66, %64
  store i8 %conv131, ptr %arrayidx122, align 1
  %shr132 = lshr i32 %sd.0, 8
  %conv134 = trunc i32 %shr132 to i8
  %arrayidx136 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 10
  %67 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv134, ptr %arrayidx136, align 2
  %conv138 = trunc i32 %sd.0 to i8
  %arrayidx140 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 11
  %68 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv138, ptr %arrayidx140, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i364) #6
  %69 = getelementptr inbounds [2 x i8], ptr %wbuf.i364, i32 0, i32 1
  %70 = ptrtoint ptr %wbuf.i364 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 9, ptr %wbuf.i364, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv131, ptr %69, align 1
  %72 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c.i, align 4
  %call.i.i366 = call i32 @i2c_transfer_buffer_flags(ptr noundef %73, ptr noundef nonnull %wbuf.i364, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i366)
  %cmp1.i367 = icmp ult i32 %call.i.i366, 2
  %spec.store.select.i368 = select i1 %cmp1.i367, i32 -5, i32 %call.i.i366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366)
  %cmp6.i369 = icmp slt i32 %call.i.i366, 0
  %ret.0.i370 = select i1 %cmp6.i369, i32 %call.i.i366, i32 %spec.store.select.i368
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i364) #6
  %74 = and i32 %ret.0.i370, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %if.then146, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then146:                                       ; preds = %if.end103
  %76 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx136, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i373) #6
  %78 = getelementptr inbounds [2 x i8], ptr %wbuf.i373, i32 0, i32 1
  %79 = ptrtoint ptr %wbuf.i373 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 10, ptr %wbuf.i373, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %77, ptr %78, align 1
  %81 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c.i, align 4
  %call.i.i375 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %wbuf.i373, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i375)
  %cmp1.i376 = icmp ult i32 %call.i.i375, 2
  %spec.store.select.i377 = select i1 %cmp1.i376, i32 -5, i32 %call.i.i375
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i375)
  %cmp6.i378 = icmp slt i32 %call.i.i375, 0
  %ret.0.i379 = select i1 %cmp6.i378, i32 %call.i.i375, i32 %spec.store.select.i377
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i379)
  %cmp2.i380 = icmp eq i32 %ret.0.i379, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i373) #6
  br i1 %cmp2.i380, label %if.then153, label %if.then146.cleanup_crit_edge

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then153:                                       ; preds = %if.then146
  %83 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx140, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i382) #6
  %85 = getelementptr inbounds [2 x i8], ptr %wbuf.i382, i32 0, i32 1
  %86 = ptrtoint ptr %wbuf.i382 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 11, ptr %wbuf.i382, align 1
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %84, ptr %85, align 1
  %88 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c.i, align 4
  %call.i.i384 = call i32 @i2c_transfer_buffer_flags(ptr noundef %89, ptr noundef nonnull %wbuf.i382, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i384)
  %cmp1.i385 = icmp ult i32 %call.i.i384, 2
  %spec.store.select.i386 = select i1 %cmp1.i385, i32 -5, i32 %call.i.i384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i384)
  %cmp6.i387 = icmp slt i32 %call.i.i384, 0
  %ret.0.i388 = select i1 %cmp6.i387, i32 %call.i.i384, i32 %spec.store.select.i386
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i388)
  %cmp2.i389 = icmp eq i32 %ret.0.i388, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i382) #6
  br i1 %cmp2.i389, label %if.end161, label %if.then153.cleanup_crit_edge

if.then153.cleanup_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end161:                                        ; preds = %if.then153
  %90 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %lpf, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool164.not = icmp eq i8 %91, 0
  br i1 %tobool164.not, label %if.then165, label %if.end161.if.end173_crit_edge

if.end161.if.end173_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then165:                                       ; preds = %if.end161
  %92 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i391) #6
  %94 = getelementptr inbounds [2 x i8], ptr %wbuf.i391, i32 0, i32 1
  %95 = ptrtoint ptr %wbuf.i391 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 19, ptr %wbuf.i391, align 1
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %93, ptr %94, align 1
  %97 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c.i, align 4
  %call.i.i393 = call i32 @i2c_transfer_buffer_flags(ptr noundef %98, ptr noundef nonnull %wbuf.i391, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i393)
  %cmp1.i394 = icmp ult i32 %call.i.i393, 2
  %spec.store.select.i395 = select i1 %cmp1.i394, i32 -5, i32 %call.i.i393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i393)
  %cmp6.i396 = icmp slt i32 %call.i.i393, 0
  %ret.0.i397 = select i1 %cmp6.i396, i32 %call.i.i393, i32 %spec.store.select.i395
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i391) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i397)
  %cmp169 = icmp slt i32 %ret.0.i397, 0
  br i1 %cmp169, label %if.then165.cleanup_crit_edge, label %if.then165.if.end173_crit_edge

if.then165.if.end173_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then165.cleanup_crit_edge:                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end173:                                        ; preds = %if.then165.if.end173_crit_edge, %if.end161.if.end173_crit_edge
  %99 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %lpf, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool176.not = icmp eq i8 %100, 0
  %arrayidx180 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 12
  %101 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx180, align 4
  %103 = select i1 %tobool176.not, i8 127, i8 63
  %conv184 = and i8 %103, %102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i400) #6
  %104 = getelementptr inbounds [2 x i8], ptr %wbuf.i400, i32 0, i32 1
  %105 = ptrtoint ptr %wbuf.i400 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 12, ptr %wbuf.i400, align 1
  %106 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv184, ptr %104, align 1
  %107 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c.i, align 4
  %call.i.i402 = call i32 @i2c_transfer_buffer_flags(ptr noundef %108, ptr noundef nonnull %wbuf.i400, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i402)
  %cmp1.i403 = icmp ult i32 %call.i.i402, 2
  %spec.store.select.i404 = select i1 %cmp1.i403, i32 -5, i32 %call.i.i402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i402)
  %cmp6.i405 = icmp slt i32 %call.i.i402, 0
  %ret.0.i406 = select i1 %cmp6.i405, i32 %call.i.i402, i32 %spec.store.select.i404
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i406)
  %cmp186 = icmp slt i32 %ret.0.i406, 0
  br i1 %cmp186, label %if.end173.cleanup_crit_edge, label %if.end189

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end189:                                        ; preds = %if.end173
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %109 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx180, align 4
  %111 = xor i8 %103, -1
  %conv195 = or i8 %110, %111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i409) #6
  %112 = getelementptr inbounds [2 x i8], ptr %wbuf.i409, i32 0, i32 1
  %113 = ptrtoint ptr %wbuf.i409 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 12, ptr %wbuf.i409, align 1
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv195, ptr %112, align 1
  %115 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i2c.i, align 4
  %call.i.i411 = call i32 @i2c_transfer_buffer_flags(ptr noundef %116, ptr noundef nonnull %wbuf.i409, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i411)
  %cmp1.i412 = icmp ult i32 %call.i.i411, 2
  %spec.store.select.i413 = select i1 %cmp1.i412, i32 -5, i32 %call.i.i411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i411)
  %cmp6.i414 = icmp slt i32 %call.i.i411, 0
  %ret.0.i415 = select i1 %cmp6.i414, i32 %call.i.i411, i32 %spec.store.select.i413
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i409) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i415)
  %cmp197 = icmp slt i32 %ret.0.i415, 0
  br i1 %cmp197, label %if.end189.cleanup_crit_edge, label %if.end200

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end200:                                        ; preds = %if.end189
  %117 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %lpf, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool203.not = icmp eq i8 %118, 0
  br i1 %tobool203.not, label %if.else206, label %if.then204

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  %lpf_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 4
  br label %if.end217

if.else206:                                       ; preds = %if.end200
  %arrayidx208 = getelementptr %struct.qm1d1c0042_state, ptr %1, i32 0, i32 2, i32 3
  %119 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx208, align 1
  %121 = and i8 %120, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool211.not = icmp eq i8 %121, 0
  br i1 %tobool211.not, label %if.else214, label %if.then212

if.then212:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #8
  %fast_srch_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 5
  br label %if.end217

if.else214:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #8
  %normal_srch_wait = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 6
  br label %if.end217

if.end217:                                        ; preds = %if.else214, %if.then212, %if.then204
  %fast_srch_wait.sink = phi ptr [ %fast_srch_wait, %if.then212 ], [ %normal_srch_wait, %if.else214 ], [ %lpf_wait, %if.then204 ]
  %122 = ptrtoint ptr %fast_srch_wait.sink to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fast_srch_wait.sink, align 4
  call void @msleep(i32 noundef %123) #6
  %124 = ptrtoint ptr %lpf to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %lpf, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool220.not = icmp eq i8 %125, 0
  br i1 %tobool220.not, label %if.end217.if.end234_crit_edge, label %if.then221

if.end217.if.end234_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

if.then221:                                       ; preds = %if.end217
  %call222 = call fastcc i32 @reg_write(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then221.cleanup_crit_edge, label %if.end226

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end226:                                        ; preds = %if.then221
  %126 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx7, align 1
  %call229 = call fastcc i32 @reg_write(ptr noundef %1, i8 noundef zeroext 19, i8 noundef zeroext %127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %if.end226.cleanup_crit_edge, label %if.end226.if.end234_crit_edge

if.end226.if.end234_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end234

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end234:                                        ; preds = %if.end226.if.end234_crit_edge, %if.end217.if.end234_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %if.end226.cleanup_crit_edge, %if.then221.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %if.then165.cleanup_crit_edge, %if.then153.cleanup_crit_edge, %if.then146.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end234 ], [ %ret.0.i, %for.end.cleanup_crit_edge ], [ %ret.0.i343, %if.end44.cleanup_crit_edge ], [ %ret.0.i352, %if.end64.cleanup_crit_edge ], [ %ret.0.i361, %if.end87.cleanup_crit_edge ], [ %ret.0.i397, %if.then165.cleanup_crit_edge ], [ %ret.0.i406, %if.end173.cleanup_crit_edge ], [ %ret.0.i415, %if.end189.cleanup_crit_edge ], [ %call222, %if.then221.cleanup_crit_edge ], [ %call229, %if.end226.cleanup_crit_edge ], [ %ret.0.i388, %if.then153.cleanup_crit_edge ], [ %ret.0.i370, %if.end103.cleanup_crit_edge ], [ %ret.0.i379, %if.then146.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_write(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %wbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %wbuf, i32 0, i32 1
  %1 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %wbuf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  %i2c = getelementptr inbounds %struct.qm1d1c0042_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %wbuf, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp1 = icmp ult i32 %call.i, 2
  %spec.store.select = select i1 %cmp1, i32 -5, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  %ret.0 = select i1 %cmp6, i32 %call.i, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0)
  %cmp2 = icmp eq i32 %ret.0, 2
  %cond = select i1 %cmp2, i32 0, i32 %ret.0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf) #6
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_qm1d1c0042__290_453_qm1d1c0042_driver_init6, !1, !"__initcall__kmod_qm1d1c0042__290_453_qm1d1c0042_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_qm1d1c0042_driver_exit, !1, !"__exitcall_qm1d1c0042_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 446, i32 11}
!12 = !{ptr @qm1d1c0042_driver, !13, !"qm1d1c0042_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 444, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 423, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qm1d1c0042_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qm1d1c0042_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 141, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qm1d1c0042_set_config._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @qm1d1c0042_set_config._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"default_cfg", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 44, i32 39}
!30 = !{ptr @qm1d1c0042_ops, !31, !"qm1d1c0042_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 389, i32 35}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 382, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qm1d1c0042_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qm1d1c0042_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"reg_index", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 42, i32 12}
!39 = !{ptr @reg_initval, !40, !"reg_initval", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 29, i32 1}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 122, i32 3}
!43 = !{ptr @qm1d1c0042_wakeup._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qm1d1c0042_wakeup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 312, i32 3}
!47 = !{ptr @qm1d1c0042_sleep._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qm1d1c0042_sleep._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @conv_table, !50, !"conv_table", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 167, i32 18}
!51 = !{ptr @qm1d1c0042_id, !52, !"qm1d1c0042_id", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/qm1d1c0042.c", i32 438, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{!"auto-init"}
