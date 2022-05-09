; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mxl301rf.c_pt.bc'
source_filename = "../drivers/media/tuners/mxl301rf.c"
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
%struct.reg_val = type { i8, i8 }
%struct.shf = type { i32, i32, i8, i8 }
%struct.mxl301rf_state = type { %struct.mxl301rf_config, ptr }
%struct.mxl301rf_config = type { ptr }
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

@__initcall__kmod_mxl301rf__290_336_mxl301rf_driver_init6 = internal global ptr @mxl301rf_driver_init, section ".initcall6.init", align 4
@mxl301rf_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mxl301rf_probe, ptr @mxl301rf_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mxl301rf_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mxl301rf_driver_exit = internal global ptr @mxl301rf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [46 x i8] c"mxl301rf.description=MaxLinear MXL301RF tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [32 x i8] c"mxl301rf.author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [44 x i8] c"mxl301rf.file=drivers/media/tuners/mxl301rf\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"mxl301rf.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxl301rf\00", [23 x i8] zeroinitializer }, align 32
@mxl301rf_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mxl301rf\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mxl301rf_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MaxLinear MxL301RF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 93000000, i32 803142857, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @mxl301rf_init, ptr @mxl301rf_sleep, ptr null, ptr null, ptr @mxl301rf_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxl301rf_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxl301rf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MaxLinear MxL301RF attached.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl301rf_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/mxl301rf.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxl301rf_probe._entry_ptr = internal global ptr @mxl301rf_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxl301rf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 262, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxl301rf_init\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxl301rf_init._entry_ptr = internal global ptr @mxl301rf_init._entry, section ".printk_index", align 4
@standby_data = internal constant { [2 x %struct.reg_val], [28 x i8] } { [2 x %struct.reg_val] [%struct.reg_val { i8 1, i8 0 }, %struct.reg_val { i8 19, i8 0 }], [28 x i8] zeroinitializer }, align 32
@mxl301rf_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.3, i32 243, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl301rf_sleep\00", [17 x i8] zeroinitializer }, align 32
@mxl301rf_sleep._entry_ptr = internal global ptr @mxl301rf_sleep._entry, section ".printk_index", align 4
@__const.mxl301rf_set_params.tune0 = private unnamed_addr constant [7 x %struct.reg_val] [%struct.reg_val { i8 19, i8 0 }, %struct.reg_val { i8 59, i8 -64 }, %struct.reg_val { i8 59, i8 -128 }, %struct.reg_val { i8 16, i8 -107 }, %struct.reg_val { i8 26, i8 5 }, %struct.reg_val { i8 97, i8 0 }, %struct.reg_val { i8 98, i8 -96 }], align 1
@__const.mxl301rf_set_params.tune1 = private unnamed_addr constant [3 x %struct.reg_val] [%struct.reg_val { i8 17, i8 64 }, %struct.reg_val { i8 18, i8 14 }, %struct.reg_val { i8 19, i8 1 }], align 1
@shf_tab = internal constant { [17 x %struct.shf], [52 x i8] } { [17 x %struct.shf] [%struct.shf { i32 64500, i32 500, i8 -110, i8 7 }, %struct.shf { i32 191500, i32 300, i8 -30, i8 7 }, %struct.shf { i32 205500, i32 500, i8 44, i8 4 }, %struct.shf { i32 212500, i32 500, i8 30, i8 4 }, %struct.shf { i32 226500, i32 500, i8 -44, i8 7 }, %struct.shf { i32 99143, i32 500, i8 -100, i8 7 }, %struct.shf { i32 173143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 191143, i32 300, i8 -44, i8 7 }, %struct.shf { i32 207143, i32 500, i8 -50, i8 7 }, %struct.shf { i32 225143, i32 500, i8 -50, i8 7 }, %struct.shf { i32 243143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 261143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 291143, i32 500, i8 -44, i8 7 }, %struct.shf { i32 339143, i32 500, i8 44, i8 4 }, %struct.shf { i32 117143, i32 500, i8 122, i8 7 }, %struct.shf { i32 135143, i32 300, i8 122, i8 7 }, %struct.shf { i32 153143, i32 500, i8 1, i8 7 }], [52 x i8] zeroinitializer }, align 32
@set_idac = internal constant { [8 x %struct.reg_val], [16 x i8] } { [8 x %struct.reg_val] [%struct.reg_val { i8 13, i8 0 }, %struct.reg_val { i8 12, i8 103 }, %struct.reg_val { i8 111, i8 -119 }, %struct.reg_val { i8 112, i8 12 }, %struct.reg_val { i8 111, i8 -118 }, %struct.reg_val { i8 112, i8 14 }, %struct.reg_val { i8 111, i8 -117 }, %struct.reg_val { i8 112, i8 28 }], [16 x i8] zeroinitializer }, align 32
@mxl301rf_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.10, ptr @.str.3, i32 225, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl301rf_set_params\00", [44 x i8] zeroinitializer }, align 32
@mxl301rf_set_params._entry_ptr = internal global ptr @mxl301rf_set_params._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"mxl301rf_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 327, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 329, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"mxl301rf_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 321, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"mxl301rf_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 270, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 306, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 261, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"standby_data\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 229, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 242, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"shf_tab\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 117, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"set_idac\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 142, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [35 x i8] c"../drivers/media/tuners/mxl301rf.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 224, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mxl301rf_driver_exit, ptr @__initcall__kmod_mxl301rf__290_336_mxl301rf_driver_init6, ptr @mxl301rf_driver_exit, ptr @mxl301rf_init._entry, ptr @mxl301rf_init._entry_ptr, ptr @mxl301rf_probe._entry, ptr @mxl301rf_probe._entry_ptr, ptr @mxl301rf_set_params._entry, ptr @mxl301rf_set_params._entry_ptr, ptr @mxl301rf_sleep._entry, ptr @mxl301rf_sleep._entry_ptr, ptr @mxl301rf_driver, ptr @.str, ptr @mxl301rf_id, ptr @mxl301rf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @standby_data, ptr @.str.9, ptr @shf_tab, ptr @set_idac, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standby_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shf_tab to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_idac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl301rf_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mxl301rf_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxl301rf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mxl301rf_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.mxl301rf_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i.i, align 8
  %7 = load ptr, ptr %3, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32
  %9 = call ptr @memcpy(ptr %tuner_ops, ptr @mxl301rf_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_remove(ptr nocapture noundef readonly %client) #2 align 64 {
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %2, align 1
  %i2c.i.i = getelementptr inbounds %struct.mxl301rf_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i.i, 2
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  %ret.0.i.i = select i1 %cmp8.i.i, i32 %call.i.i.i, i32 %spec.store.select.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %9 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvb, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c.i = getelementptr inbounds %struct.mxl301rf_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull @standby_data, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 4
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  %ret.0.i = select i1 %cmp8.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ret.0.i)
  %cmp2.i = icmp eq i32 %ret.0.i, 4
  %cond.i = select i1 %cmp2.i, i32 0, i32 %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp slt i32 %cond.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %6 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %tune0 = alloca [7 x %struct.reg_val], align 1
  %tune1 = alloca [3 x %struct.reg_val], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %tune0) #6
  %0 = call ptr @memcpy(ptr %tune0, ptr @__const.mxl301rf_set_params.tune0, i32 14)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tune1) #6
  %1 = call ptr @memcpy(ptr %tune1, ptr @__const.mxl301rf_set_params.tune1, i32 6)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0129 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %i.0129
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %ofst_th = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %i.0129, i32 1
  %8 = ptrtoint ptr %ofst_th to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofst_th, align 4
  %sub = sub i32 %7, %9
  %mul = mul i32 %sub, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp3.not = icmp ult i32 %5, %mul
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add = add i32 %9, %7
  %mul8 = mul i32 %add, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul8)
  %cmp9.not = icmp ugt i32 %5, %mul8
  br i1 %cmp9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %shf_val = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %i.0129, i32 2
  %10 = ptrtoint ptr %shf_val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shf_val, align 4
  %val = getelementptr inbounds [7 x %struct.reg_val], ptr %tune0, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %val, align 1
  %shf_dir = getelementptr [17 x %struct.shf], ptr @shf_tab, i32 0, i32 %i.0129, i32 3
  %13 = ptrtoint ptr %shf_dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shf_dir, align 1
  %15 = or i8 %14, -96
  %val15 = getelementptr inbounds [7 x %struct.reg_val], ptr %tune0, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val15, align 1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %i2c.i = getelementptr inbounds %struct.mxl301rf_state, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %tune0, i32 noundef 14, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 14
  %spec.store.select.i = select i1 %cmp1.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  %ret.0.i = select i1 %cmp8.i, i32 %call.i.i, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp16 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp16, label %for.end.do.end_crit_edge, label %if.end19

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end19:                                         ; preds = %for.end
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #6
  %.frozen = freeze i32 %5
  %div20 = udiv i32 %.frozen, 1000000
  %conv21 = trunc i32 %div20 to i16
  %19 = mul i32 %div20, 1000000
  %rem.decomposed = sub i32 %.frozen, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %rem.decomposed)
  %cmp28 = icmp ugt i32 %rem.decomposed, 500000
  %sub31.neg = select i1 %cmp28, i32 -500000, i32 0
  %tmp.1 = add nsw i32 %sub31.neg, %rem.decomposed
  %20 = shl nuw nsw i16 %conv21, 2
  %21 = select i1 %cmp28, i16 2, i16 0
  %shl.1 = or i16 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %tmp.1)
  %cmp28.1 = icmp ugt i32 %tmp.1, 250000
  %22 = zext i1 %cmp28.1 to i16
  %f.1.1 = or i16 %shl.1, %22
  %sub31.1.neg = select i1 %cmp28.1, i32 -250000, i32 0
  %tmp.1.1 = add nsw i32 %sub31.1.neg, %tmp.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %tmp.1.1)
  %cmp28.2 = icmp ugt i32 %tmp.1.1, 125000
  %sub31.2.neg = select i1 %cmp28.2, i32 -125000, i32 0
  %tmp.1.2 = add nsw i32 %sub31.2.neg, %tmp.1.1
  %23 = shl i16 %f.1.1, 2
  %24 = select i1 %cmp28.2, i16 2, i16 0
  %shl.3 = or i16 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %tmp.1.2)
  %cmp28.3 = icmp ugt i32 %tmp.1.2, 62500
  %25 = zext i1 %cmp28.3 to i16
  %f.1.3 = or i16 %shl.3, %25
  %sub31.3.neg = select i1 %cmp28.3, i32 -62500, i32 0
  %tmp.1.3 = add nsw i32 %sub31.3.neg, %tmp.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31250, i32 %tmp.1.3)
  %cmp28.4 = icmp ugt i32 %tmp.1.3, 31250
  %sub31.4.neg = select i1 %cmp28.4, i32 -31250, i32 0
  %tmp.1.4 = add nsw i32 %sub31.4.neg, %tmp.1.3
  %26 = shl i16 %f.1.3, 2
  %27 = select i1 %cmp28.4, i16 2, i16 0
  %shl.5 = or i16 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %tmp.1.4)
  %cmp28.5 = icmp ugt i32 %tmp.1.4, 15625
  %28 = zext i1 %cmp28.5 to i16
  %f.1.5 = or i16 %shl.5, %28
  %sub31.5.neg = select i1 %cmp28.5, i32 -15625, i32 0
  %tmp.1.5 = add nsw i32 %sub31.5.neg, %tmp.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7812, i32 %tmp.1.5)
  %cmp39 = icmp ugt i32 %tmp.1.5, 7812
  %inc42 = add i16 %f.1.5, 1
  %f.2.off0.v = select i1 %cmp39, i16 %inc42, i16 %f.1.5
  %f.2.off0 = trunc i16 %f.2.off0.v to i8
  %f.2.off8.v.v = select i1 %cmp39, i16 %inc42, i16 %26
  %f.2.off8.v = lshr i16 %f.2.off8.v.v, 8
  %f.2.off8 = trunc i16 %f.2.off8.v to i8
  %val47 = getelementptr inbounds %struct.reg_val, ptr %tune1, i32 0, i32 1
  %29 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %f.2.off0, ptr %val47, align 1
  %val52 = getelementptr inbounds [3 x %struct.reg_val], ptr %tune1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %val52 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %f.2.off8, ptr %val52, align 1
  %31 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c.i, align 4
  %call.i.i113 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %tune1, i32 noundef 6, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i113)
  %cmp1.i114 = icmp slt i32 %call.i.i113, 6
  %spec.store.select.i115 = select i1 %cmp1.i114, i32 -5, i32 %call.i.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp8.i116 = icmp slt i32 %call.i.i113, 0
  %ret.0.i117 = select i1 %cmp8.i116, i32 %call.i.i113, i32 %spec.store.select.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i117)
  %cmp55 = icmp slt i32 %ret.0.i117, 0
  br i1 %cmp55, label %if.end19.do.end_crit_edge, label %if.end58

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end58:                                         ; preds = %if.end19
  call void @msleep(i32 noundef 31) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 26, ptr %buf.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 13, ptr %33, align 1
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i.i, 2
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  %ret.0.i.i = select i1 %cmp8.i.i, i32 %call.i.i.i, i32 %spec.store.select.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp60 = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp60, label %if.end58.do.end_crit_edge, label %if.end63

if.end58.do.end_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end63:                                         ; preds = %if.end58
  %38 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c.i, align 4
  %call.i.i121 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull @set_idac, i32 noundef 16, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i121)
  %cmp1.i122 = icmp slt i32 %call.i.i121, 16
  %spec.store.select.i123 = select i1 %cmp1.i122, i32 -5, i32 %call.i.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp8.i124 = icmp slt i32 %call.i.i121, 0
  %ret.0.i125 = select i1 %cmp8.i124, i32 %call.i.i121, i32 %spec.store.select.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i125)
  %cmp65 = icmp slt i32 %ret.0.i125, 0
  br i1 %cmp65, label %if.end63.do.end_crit_edge, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63.do.end_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end63.do.end_crit_edge, %if.end58.do.end_crit_edge, %if.end19.do.end_crit_edge, %for.end.do.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %for.end.do.end_crit_edge ], [ %ret.0.i117, %if.end19.do.end_crit_edge ], [ %ret.0.i.i, %if.end58.do.end_crit_edge ], [ %ret.0.i125, %if.end63.do.end_crit_edge ]
  %40 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %42 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvb, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef %45, i32 noundef %47) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end63.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tune1) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %tune0) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl301rf_get_rf_strength(ptr nocapture noundef %fe, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  %wbuf.i116 = alloca [2 x i8], align 1
  %wbuf.i96 = alloca [2 x i8], align 1
  %wbuf.i76 = alloca [2 x i8], align 1
  %wbuf.i = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %rf_in1 = alloca i8, align 1
  %rf_in2 = alloca i8, align 1
  %rf_off1 = alloca i8, align 1
  %rf_off2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_in1) #6
  %0 = ptrtoint ptr %rf_in1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rf_in1, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_in2) #6
  %1 = ptrtoint ptr %rf_in2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rf_in2, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_off1) #6
  %2 = ptrtoint ptr %rf_off1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rf_off1, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_off2) #6
  %3 = ptrtoint ptr %rf_off2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rf_off2, align 1, !annotation !55
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %strength, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %stat, align 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %out, align 2
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 20, ptr %buf.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %9, align 1
  %i2c.i.i = getelementptr inbounds %struct.mxl301rf_state, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i.i, 2
  %spec.store.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i.i, 0
  %ret.0.i.i = select i1 %cmp8.i.i, i32 %call.i.i.i, i32 %spec.store.select.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #6
  %14 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %15 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -5, ptr %wbuf.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 24, ptr %14, align 1
  %17 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i69 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %wbuf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i69)
  %cmp1.i.i70 = icmp slt i32 %call.i.i.i69, 2
  %spec.store.select.i.i71 = select i1 %cmp1.i.i70, i32 -5, i32 %call.i.i.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i69)
  %cmp8.i.i72 = icmp slt i32 %call.i.i.i69, 0
  %ret.0.i.i73 = select i1 %cmp8.i.i72, i32 %call.i.i.i69, i32 %spec.store.select.i.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i.i73)
  %cmp2.i.i74 = icmp eq i32 %ret.0.i.i73, 2
  %cond.i.i75 = select i1 %cmp2.i.i74, i32 0, i32 %ret.0.i.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i75)
  %cmp.i = icmp eq i32 %cond.i.i75, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.reg_read.exit_crit_edge

if.end.reg_read.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_read.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %rf_in1, i32 noundef 1, i16 noundef zeroext 1) #6
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.then.i, %if.end.reg_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %cond.i.i75, %if.end.reg_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp3.i = icmp eq i32 %ret.0.i, 0
  %spec.store.select.i = select i1 %cmp3.i, i32 -5, i32 %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp212.i = icmp slt i32 %ret.0.i, 0
  %ret.1.i = select i1 %cmp212.i, i32 %ret.0.i, i32 %spec.store.select.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.1.i)
  %21 = icmp ult i32 %ret.1.i, 2
  br i1 %21, label %if.then3, label %reg_read.exit.cleanup_crit_edge

reg_read.exit.cleanup_crit_edge:                  ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %reg_read.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i76) #6
  %22 = getelementptr inbounds [2 x i8], ptr %wbuf.i76, i32 0, i32 1
  %23 = ptrtoint ptr %wbuf.i76 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -5, ptr %wbuf.i76, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 25, ptr %22, align 1
  %25 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %wbuf.i76, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i78)
  %cmp1.i.i79 = icmp slt i32 %call.i.i.i78, 2
  %spec.store.select.i.i80 = select i1 %cmp1.i.i79, i32 -5, i32 %call.i.i.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i78)
  %cmp8.i.i81 = icmp slt i32 %call.i.i.i78, 0
  %ret.0.i.i82 = select i1 %cmp8.i.i81, i32 %call.i.i.i78, i32 %spec.store.select.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i.i82)
  %cmp2.i.i83 = icmp eq i32 %ret.0.i.i82, 2
  %cond.i.i84 = select i1 %cmp2.i.i83, i32 0, i32 %ret.0.i.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i84)
  %cmp.i85 = icmp eq i32 %cond.i.i84, 0
  br i1 %cmp.i85, label %if.then.i87, label %if.then3.reg_read.exit95_crit_edge

if.then3.reg_read.exit95_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_read.exit95

if.then.i87:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i86 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %rf_in2, i32 noundef 1, i16 noundef zeroext 1) #6
  br label %reg_read.exit95

reg_read.exit95:                                  ; preds = %if.then.i87, %if.then3.reg_read.exit95_crit_edge
  %ret.0.i88 = phi i32 [ %call.i.i86, %if.then.i87 ], [ %cond.i.i84, %if.then3.reg_read.exit95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i88)
  %cmp3.i89 = icmp eq i32 %ret.0.i88, 0
  %spec.store.select.i90 = select i1 %cmp3.i89, i32 -5, i32 %ret.0.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i88)
  %cmp212.i91 = icmp slt i32 %ret.0.i88, 0
  %ret.1.i92 = select i1 %cmp212.i91, i32 %ret.0.i88, i32 %spec.store.select.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1.i92)
  %cmp6.i93 = icmp eq i32 %ret.1.i92, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i76) #6
  br i1 %cmp6.i93, label %if.then7, label %reg_read.exit95.cleanup_crit_edge

reg_read.exit95.cleanup_crit_edge:                ; preds = %reg_read.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %reg_read.exit95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i96) #6
  %29 = getelementptr inbounds [2 x i8], ptr %wbuf.i96, i32 0, i32 1
  %30 = ptrtoint ptr %wbuf.i96 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -5, ptr %wbuf.i96, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -42, ptr %29, align 1
  %32 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i98 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %wbuf.i96, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i98)
  %cmp1.i.i99 = icmp slt i32 %call.i.i.i98, 2
  %spec.store.select.i.i100 = select i1 %cmp1.i.i99, i32 -5, i32 %call.i.i.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i98)
  %cmp8.i.i101 = icmp slt i32 %call.i.i.i98, 0
  %ret.0.i.i102 = select i1 %cmp8.i.i101, i32 %call.i.i.i98, i32 %spec.store.select.i.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i.i102)
  %cmp2.i.i103 = icmp eq i32 %ret.0.i.i102, 2
  %cond.i.i104 = select i1 %cmp2.i.i103, i32 0, i32 %ret.0.i.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i104)
  %cmp.i105 = icmp eq i32 %cond.i.i104, 0
  br i1 %cmp.i105, label %if.then.i107, label %if.then7.reg_read.exit115_crit_edge

if.then7.reg_read.exit115_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_read.exit115

if.then.i107:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i106 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %rf_off1, i32 noundef 1, i16 noundef zeroext 1) #6
  br label %reg_read.exit115

reg_read.exit115:                                 ; preds = %if.then.i107, %if.then7.reg_read.exit115_crit_edge
  %ret.0.i108 = phi i32 [ %call.i.i106, %if.then.i107 ], [ %cond.i.i104, %if.then7.reg_read.exit115_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i108)
  %cmp3.i109 = icmp eq i32 %ret.0.i108, 0
  %spec.store.select.i110 = select i1 %cmp3.i109, i32 -5, i32 %ret.0.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i108)
  %cmp212.i111 = icmp slt i32 %ret.0.i108, 0
  %ret.1.i112 = select i1 %cmp212.i111, i32 %ret.0.i108, i32 %spec.store.select.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1.i112)
  %cmp6.i113 = icmp eq i32 %ret.1.i112, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i96) #6
  br i1 %cmp6.i113, label %if.then11, label %reg_read.exit115.cleanup_crit_edge

reg_read.exit115.cleanup_crit_edge:               ; preds = %reg_read.exit115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %reg_read.exit115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i116) #6
  %36 = getelementptr inbounds [2 x i8], ptr %wbuf.i116, i32 0, i32 1
  %37 = ptrtoint ptr %wbuf.i116 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -5, ptr %wbuf.i116, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -41, ptr %36, align 1
  %39 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i.i118 = call i32 @i2c_transfer_buffer_flags(ptr noundef %40, ptr noundef nonnull %wbuf.i116, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i118)
  %cmp1.i.i119 = icmp slt i32 %call.i.i.i118, 2
  %spec.store.select.i.i120 = select i1 %cmp1.i.i119, i32 -5, i32 %call.i.i.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i118)
  %cmp8.i.i121 = icmp slt i32 %call.i.i.i118, 0
  %ret.0.i.i122 = select i1 %cmp8.i.i121, i32 %call.i.i.i118, i32 %spec.store.select.i.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i.i122)
  %cmp2.i.i123 = icmp eq i32 %ret.0.i.i122, 2
  %cond.i.i124 = select i1 %cmp2.i.i123, i32 0, i32 %ret.0.i.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i124)
  %cmp.i125 = icmp eq i32 %cond.i.i124, 0
  br i1 %cmp.i125, label %if.then.i127, label %if.then11.reg_read.exit135_crit_edge

if.then11.reg_read.exit135_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_read.exit135

if.then.i127:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i126 = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %rf_off2, i32 noundef 1, i16 noundef zeroext 1) #6
  br label %reg_read.exit135

reg_read.exit135:                                 ; preds = %if.then.i127, %if.then11.reg_read.exit135_crit_edge
  %ret.0.i128 = phi i32 [ %call.i.i126, %if.then.i127 ], [ %cond.i.i124, %if.then11.reg_read.exit135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i128)
  %cmp3.i129 = icmp eq i32 %ret.0.i128, 0
  %spec.store.select.i130 = select i1 %cmp3.i129, i32 -5, i32 %ret.0.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i128)
  %cmp212.i131 = icmp slt i32 %ret.0.i128, 0
  %ret.1.i132 = select i1 %cmp212.i131, i32 %ret.0.i128, i32 %spec.store.select.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1.i132)
  %cmp6.i133 = icmp eq i32 %ret.1.i132, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i116) #6
  br i1 %cmp6.i133, label %if.end16, label %reg_read.exit135.cleanup_crit_edge

reg_read.exit135.cleanup_crit_edge:               ; preds = %reg_read.exit135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %reg_read.exit135
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %rf_in2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rf_in2, align 1
  %45 = and i8 %44, 7
  %and = zext i8 %45 to i32
  %shl = shl nuw nsw i32 %and, 8
  %46 = ptrtoint ptr %rf_in1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rf_in1, align 1
  %conv17 = zext i8 %47 to i32
  %48 = ptrtoint ptr %rf_off2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rf_off2, align 1
  %50 = and i8 %49, 15
  %and20 = zext i8 %50 to i32
  %shl21.neg145 = mul nsw i32 %and20, -32
  %51 = ptrtoint ptr %rf_off1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rf_off1, align 1
  %53 = lshr i8 %52, 3
  %54 = zext i8 %53 to i32
  %or23.neg = or i32 %shl, %conv17
  %or = sub nsw i32 %or23.neg, %54
  %sub = add nsw i32 %or, %shl21.neg145
  %55 = mul nsw i32 %sub, 1000
  %narrow = add nsw i32 %55, -904000
  %56 = sdiv i32 %narrow, 8
  %div = sext i32 %56 to i64
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %div, ptr %57, align 1
  %59 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %stat, align 1
  %60 = mul nsw i32 %sub, 100
  %mul38 = add nsw i32 %60, 51100
  %div39 = sdiv i32 %mul38, 2558
  %conv40 = trunc i32 %div39 to i16
  %61 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv40, ptr %out, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %reg_read.exit135.cleanup_crit_edge, %reg_read.exit115.cleanup_crit_edge, %reg_read.exit95.cleanup_crit_edge, %reg_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %ret.0.i.i, %entry.cleanup_crit_edge ], [ %ret.1.i132, %reg_read.exit135.cleanup_crit_edge ], [ %ret.1.i112, %reg_read.exit115.cleanup_crit_edge ], [ %ret.1.i, %reg_read.exit.cleanup_crit_edge ], [ %ret.1.i92, %reg_read.exit95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_off2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_off1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_in2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_in1) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_mxl301rf__290_336_mxl301rf_driver_init6, !1, !"__initcall__kmod_mxl301rf__290_336_mxl301rf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mxl301rf.c", i32 336, i32 1}
!2 = !{ptr @__exitcall_mxl301rf_driver_exit, !1, !"__exitcall_mxl301rf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mxl301rf.c", i32 338, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mxl301rf.c", i32 339, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/mxl301rf.c", i32 340, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/mxl301rf.c", i32 329, i32 11}
!12 = !{ptr @mxl301rf_driver, !13, !"mxl301rf_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/mxl301rf.c", i32 327, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/mxl301rf.c", i32 306, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxl301rf_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxl301rf_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mxl301rf_ops, !23, !"mxl301rf_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/mxl301rf.c", i32 270, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/mxl301rf.c", i32 261, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxl301rf_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxl301rf_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/mxl301rf.c", i32 242, i32 3}
!32 = !{ptr @mxl301rf_sleep._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mxl301rf_sleep._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @standby_data, !35, !"standby_data", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/mxl301rf.c", i32 229, i32 29}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/mxl301rf.c", i32 224, i32 2}
!38 = !{ptr @mxl301rf_set_params._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mxl301rf_set_params._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @shf_tab, !41, !"shf_tab", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/mxl301rf.c", i32 117, i32 25}
!42 = !{ptr @set_idac, !43, !"set_idac", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/mxl301rf.c", i32 142, i32 29}
!44 = !{ptr @mxl301rf_id, !45, !"mxl301rf_id", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/mxl301rf.c", i32 321, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
