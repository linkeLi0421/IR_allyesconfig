; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tc90522.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tc90522.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_val = type { i8, i8 }
%struct.tc90522_state = type { %struct.tc90522_config, %struct.dvb_frontend, ptr, %struct.i2c_adapter, i8 }
%struct.tc90522_config = type { ptr, ptr, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_tc90522__290_849_tc90522_driver_init6 = internal global ptr @tc90522_driver_init, section ".initcall6.init", align 4
@tc90522_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tc90522_probe, ptr @tc90522_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc90522_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tc90522_driver_exit = internal global ptr @tc90522_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [45 x i8] c"tc90522.description=Toshiba TC90522 frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [31 x i8] c"tc90522.author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"tc90522.file=drivers/media/dvb-frontends/tc90522\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"tc90522.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc90522\00", [24 x i8] zeroinitializer }, align 32
@tc90522_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc90522sat\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tc90522ter\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tc90522_ops_sat = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-S module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1769985 }, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tc90522_init, ptr @tc90522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc90522_set_frontend, ptr @tc90522_get_tune_settings, ptr @tc90522s_get_frontend, ptr @tc90522s_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@tc90522_ops_ter = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Toshiba TC90522 ISDB-T module\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 770000000, i32 142857, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @tc90522_init, ptr @tc90522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc90522_set_frontend, ptr @tc90522_get_tune_settings, ptr @tc90522t_get_frontend, ptr @tc90522t_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@tc90522_tuner_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @tc90522_master_xfer, ptr null, ptr null, ptr null, ptr @tc90522_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tc90522_sub\00", [20 x i8] zeroinitializer }, align 32
@tc90522_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Toshiba TC90522 attached.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc90522_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tc90522.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc90522_probe._entry_ptr = internal global ptr @tc90522_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wakeup_sat = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 23, i8 0 }, [30 x i8] zeroinitializer }, align 32
@wakeup_ter = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 3, i8 -128 }, [30 x i8] zeroinitializer }, align 32
@tc90522_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 618, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc90522_init\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tc90522_init._entry_ptr = internal global ptr @tc90522_init._entry, section ".printk_index", align 4
@__const.tc90522_set_if_agc.agc_ter = private unnamed_addr constant [3 x %struct.reg_val] [%struct.reg_val { i8 37, i8 0 }, %struct.reg_val { i8 35, i8 76 }, %struct.reg_val { i8 1, i8 64 }], align 1
@sleep_sat = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 23, i8 1 }, [30 x i8] zeroinitializer }, align 32
@sleep_ter = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 3, i8 -112 }, [30 x i8] zeroinitializer }, align 32
@tc90522_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.4, i32 585, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc90522_sleep\00", [18 x i8] zeroinitializer }, align 32
@tc90522_sleep._entry_ptr = internal global ptr @tc90522_sleep._entry, section ".printk_index", align 4
@reset_sat = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 3, i8 1 }, [30 x i8] zeroinitializer }, align 32
@reset_ter = internal constant { %struct.reg_val, [30 x i8] } { %struct.reg_val { i8 1, i8 64 }, [30 x i8] zeroinitializer }, align 32
@tc90522_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.4, i32 509, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc90522_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@tc90522_set_frontend._entry_ptr = internal global ptr @tc90522_set_frontend._entry, section ".printk_index", align 4
@fec_conv_sat = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 2], [32 x i8] zeroinitializer }, align 32
@tm_conv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@fec_conv_ter = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@mod_conv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12, i32 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"tc90522_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 840, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 842, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"tc90522_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 833, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"tc90522_ops_sat\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 736, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"tc90522_ops_ter\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 756, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"tc90522_tuner_i2c_algo\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 726, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 807, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 815, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"wakeup_sat\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 589, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"wakeup_ter\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 590, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 616, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"sleep_sat\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 562, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"sleep_ter\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 563, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 583, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"reset_sat\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 474, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"reset_ter\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 475, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 508, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"fec_conv_sat\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 188, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"tm_conv\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 315, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"fec_conv_ter\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 322, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"mod_conv\00", align 1
@___asan_gen_.103 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tc90522.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 33 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tc90522_driver_exit, ptr @__initcall__kmod_tc90522__290_849_tc90522_driver_init6, ptr @tc90522_driver_exit, ptr @tc90522_init._entry, ptr @tc90522_init._entry_ptr, ptr @tc90522_probe._entry, ptr @tc90522_probe._entry_ptr, ptr @tc90522_set_frontend._entry, ptr @tc90522_set_frontend._entry_ptr, ptr @tc90522_sleep._entry, ptr @tc90522_sleep._entry_ptr, ptr @tc90522_driver, ptr @.str, ptr @tc90522_id, ptr @tc90522_ops_sat, ptr @tc90522_ops_ter, ptr @tc90522_tuner_i2c_algo, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wakeup_sat, ptr @wakeup_ter, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sleep_sat, ptr @sleep_ter, ptr @.str.10, ptr @reset_sat, ptr @reset_ter, ptr @.str.11, ptr @fec_conv_sat, ptr @tm_conv, ptr @fec_conv_ter, ptr @mod_conv], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_ops_sat to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_ops_ter to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_tuner_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_sat to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_ter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_sat to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_ter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_sat to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc90522_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_conv_sat to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm_conv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_conv_ter to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_conv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tc90522_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc90522_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @tc90522_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2424) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_client = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %i2c_client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %3, i32 12)
  %fe = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fe, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fe, ptr %3, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %cond = select i1 %cmp, ptr @tc90522_ops_sat, ptr @tc90522_ops_ter
  %ops6 = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = call ptr @memcpy(ptr %ops6, ptr %cond, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %tuner_i2c to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tuner_i2c, align 8
  %algo = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tc90522_tuner_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 3, i32 9, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 3, i32 12
  %call10 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 48) #10
  %driver_data.i.i = getelementptr inbounds %struct.tc90522_state, ptr %call7.i.i, i32 0, i32 3, i32 9, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call11 = tail call i32 @i2c_add_adapter(ptr noundef %tuner_i2c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %free_state, label %if.end14

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tuner_i2c16 = getelementptr inbounds %struct.tc90522_config, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %tuner_i2c16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tuner_i2c, ptr %tuner_i2c16, align 4
  %tuner_i2c17 = getelementptr inbounds %struct.tc90522_config, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %tuner_i2c17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tuner_i2c, ptr %tuner_i2c17, align 4
  %driver_data.i.i49 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup

free_state:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_state, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %free_state ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tuner_i2c = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %tuner_i2c) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_init(ptr noundef %fe) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %agc_sat.i = alloca [4 x %struct.reg_val], align 8
  %agc_ter.i = alloca [3 x %struct.reg_val], align 1
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %delsys = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp = icmp eq i8 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wakeup_sat, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %15 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  %16 = select i1 %cmp3.i, i32 -5, i32 %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #10
  %17 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %i2c_client.i49 = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_client.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i49, align 4
  %addr.i50 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i50 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i50, align 2
  %23 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i51, align 2
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @wakeup_ter, ptr %buf.i53, align 4
  %adapter.i59 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i59, align 8
  %call.i60 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i48, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp3.i61 = icmp eq i32 %call.i60, 0
  %spec.store.select.i62 = select i1 %cmp3.i61, i32 -5, i32 %call.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i62)
  %cmp4.i63 = icmp slt i32 %spec.store.select.i62, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #10
  br i1 %cmp4.i63, label %if.else.do.end_crit_edge, label %for.cond.i56

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.i56:                                     ; preds = %if.else
  %set_lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 30
  %28 = ptrtoint ptr %set_lna to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_lna, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.cond.i56.if.end21_crit_edge, label %land.lhs.true6

for.cond.i56.if.end21_crit_edge:                  ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true6:                                   ; preds = %for.cond.i56
  %lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 41
  %30 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lna, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp7 = icmp eq i32 %31, -1
  br i1 %cmp7, label %if.then9, label %land.lhs.true6.if.end21_crit_edge

land.lhs.true6.if.end21_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %lna to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %lna, align 4
  %call14 = call i32 %29(ptr noundef %fe) #10
  %33 = ptrtoint ptr %lna to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %lna, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.then
  %ret.0 = phi i32 [ %16, %if.then ], [ %call14, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp18 = icmp slt i32 %ret.0, 0
  br i1 %cmp18, label %if.end17.do.end_crit_edge, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.074 = phi i32 [ %ret.0, %if.end17.do.end_crit_edge ], [ %spec.store.select.i62, %if.else.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 3, i32 9
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %34 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %37, i32 noundef %39) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %land.lhs.true6.if.end21_crit_edge, %for.cond.i56.if.end21_crit_edge
  %isdbt_layer_enabled = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %40 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %isdbt_layer_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp24 = icmp eq i8 %41, 0
  br i1 %cmp24, label %if.then26, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 7, ptr %isdbt_layer_enabled, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end21.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agc_sat.i) #10
  %43 = ptrtoint ptr %agc_sat.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 720593739008967425, ptr %agc_sat.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %agc_ter.i) #10
  %44 = call ptr @memcpy(ptr %agc_ter.i, ptr @__const.tc90522_set_if_agc.agc_ter, i32 6)
  %45 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %demodulator_priv, align 4
  %47 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %48)
  %cmp.i = icmp eq i8 %48, 9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %val.i = getelementptr inbounds %struct.reg_val, ptr %agc_sat.i, i32 0, i32 1
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %val.i, align 1
  %val6.i = getelementptr inbounds [4 x %struct.reg_val], ptr %agc_sat.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %val6.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val6.i, align 1
  %52 = or i8 %51, -127
  store i8 %52, ptr %val6.i, align 1
  %val21.i = getelementptr inbounds [4 x %struct.reg_val], ptr %agc_sat.i, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %val21.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %val21.i, align 1
  %55 = or i8 %54, 64
  store i8 %55, ptr %val21.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %val30.i = getelementptr inbounds %struct.reg_val, ptr %agc_ter.i, i32 0, i32 1
  %56 = ptrtoint ptr %val30.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 64, ptr %val30.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %rv.0.i = phi ptr [ %agc_sat.i, %if.then.i ], [ %agc_ter.i, %if.else.i ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %57 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 196607, ptr %57, align 4
  %i2c_client.i.i = getelementptr inbounds %struct.tc90522_state, ptr %46, i32 0, i32 2
  %59 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_client.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr.i.i, align 2
  %63 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rv.0.i, ptr %buf.i.i, align 4
  %66 = load ptr, ptr %i2c_client.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  %spec.store.select.i.i = select i1 %cmp3.i.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp4.i.i = icmp slt i32 %spec.store.select.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.tc90522_set_if_agc.exit_crit_edge, label %for.body.i.i.1

if.end.i.tc90522_set_if_agc.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc90522_set_if_agc.exit

for.body.i.i.1:                                   ; preds = %if.end.i
  %arrayidx.i.i.1 = getelementptr %struct.reg_val, ptr %rv.0.i, i32 1
  %69 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i.i.1, ptr %buf.i.i, align 4
  %70 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_client.i.i, align 4
  %adapter.i.i.1 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %adapter.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i.i.1, align 8
  %call.i.i.1 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp3.i.i.1 = icmp eq i32 %call.i.i.1, 0
  %spec.store.select.i.i.1 = select i1 %cmp3.i.i.1, i32 -5, i32 %call.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.1)
  %cmp4.i.i.1 = icmp slt i32 %spec.store.select.i.i.1, 0
  br i1 %cmp4.i.i.1, label %for.body.i.i.1.tc90522_set_if_agc.exit_crit_edge, label %for.body.i.i.2

for.body.i.i.1.tc90522_set_if_agc.exit_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc90522_set_if_agc.exit

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.reg_val, ptr %rv.0.i, i32 2
  %74 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.i.i.2, ptr %buf.i.i, align 4
  %75 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c_client.i.i, align 4
  %adapter.i.i.2 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %adapter.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i.i.2, align 8
  %call.i.i.2 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp3.i.i.2 = icmp eq i32 %call.i.i.2, 0
  %spec.store.select.i.i.2 = select i1 %cmp3.i.i.2, i32 -5, i32 %call.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.2)
  %cmp4.i.i.2 = icmp slt i32 %spec.store.select.i.i.2, 0
  %cmp.i.not = xor i1 %cmp.i, true
  %brmerge = select i1 %cmp4.i.i.2, i1 true, i1 %cmp.i.not
  %spec.store.select.i.i.2.mux = select i1 %cmp4.i.i.2, i32 %spec.store.select.i.i.2, i32 0
  br i1 %brmerge, label %for.body.i.i.2.tc90522_set_if_agc.exit_crit_edge, label %for.body.i.i.3

for.body.i.i.2.tc90522_set_if_agc.exit_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc90522_set_if_agc.exit

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.3 = getelementptr %struct.reg_val, ptr %rv.0.i, i32 3
  %79 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.i.i.3, ptr %buf.i.i, align 4
  %80 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_client.i.i, align 4
  %adapter.i.i.3 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %adapter.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter.i.i.3, align 8
  %call.i.i.3 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp3.i.i.3 = icmp eq i32 %call.i.i.3, 0
  %spec.store.select.i.i.3 = select i1 %cmp3.i.i.3, i32 -5, i32 %call.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.3)
  %cmp4.i.i.3 = icmp slt i32 %spec.store.select.i.i.3, 0
  %spec.select = select i1 %cmp4.i.i.3, i32 %spec.store.select.i.i.3, i32 0
  br label %tc90522_set_if_agc.exit

tc90522_set_if_agc.exit:                          ; preds = %for.body.i.i.3, %for.body.i.i.2.tc90522_set_if_agc.exit_crit_edge, %for.body.i.i.1.tc90522_set_if_agc.exit_crit_edge, %if.end.i.tc90522_set_if_agc.exit_crit_edge
  %retval.0.i.i = phi i32 [ %spec.store.select.i.i, %if.end.i.tc90522_set_if_agc.exit_crit_edge ], [ %spec.store.select.i.i.1, %for.body.i.i.1.tc90522_set_if_agc.exit_crit_edge ], [ %spec.store.select.i.i.2.mux, %for.body.i.i.2.tc90522_set_if_agc.exit_crit_edge ], [ %spec.select, %for.body.i.i.3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %agc_ter.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agc_sat.i) #10
  br label %cleanup

cleanup:                                          ; preds = %tc90522_set_if_agc.exit, %do.end
  %retval.0 = phi i32 [ %ret.074, %do.end ], [ %retval.0.i.i, %tc90522_set_if_agc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_sleep(ptr noundef %fe) #2 align 64 {
entry:
  %msg.i35 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %delsys = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp = icmp eq i8 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sleep_sat, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %15 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  %16 = select i1 %cmp3.i, i32 -5, i32 %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i35) #10
  %17 = getelementptr inbounds i8, ptr %msg.i35, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %i2c_client.i36 = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %i2c_client.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i36, align 4
  %addr.i37 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i37 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i37, align 2
  %23 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msg.i35, align 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i38, align 2
  %buf.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sleep_ter, ptr %buf.i40, align 4
  %adapter.i46 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i46, align 8
  %call.i47 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i35, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp3.i48 = icmp eq i32 %call.i47, 0
  %spec.store.select.i49 = select i1 %cmp3.i48, i32 -5, i32 %call.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i49)
  %cmp4.i50 = icmp slt i32 %spec.store.select.i49, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i35) #10
  br i1 %cmp4.i50, label %if.else.do.end_crit_edge, label %for.cond.i43

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.i43:                                     ; preds = %if.else
  %set_lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 30
  %28 = ptrtoint ptr %set_lna to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_lna, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.cond.i43.if.end21_crit_edge, label %land.lhs.true6

for.cond.i43.if.end21_crit_edge:                  ; preds = %for.cond.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true6:                                   ; preds = %for.cond.i43
  %lna = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 41
  %30 = ptrtoint ptr %lna to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lna, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp7 = icmp eq i32 %31, -1
  br i1 %cmp7, label %if.then9, label %land.lhs.true6.if.end21_crit_edge

land.lhs.true6.if.end21_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %lna to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lna, align 4
  %call14 = call i32 %29(ptr noundef %fe) #10
  %33 = ptrtoint ptr %lna to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %lna, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.then
  %ret.0 = phi i32 [ %16, %if.then ], [ %call14, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp18 = icmp slt i32 %ret.0, 0
  br i1 %cmp18, label %if.end17.do.end_crit_edge, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.062 = phi i32 [ %ret.0, %if.end17.do.end_crit_edge ], [ %spec.store.select.i49, %if.else.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 3, i32 9
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %34 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvb, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %37, i32 noundef %39) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end17.if.end21_crit_edge, %land.lhs.true6.if.end21_crit_edge, %for.cond.i43.if.end21_crit_edge
  %ret.058 = phi i32 [ %ret.062, %do.end ], [ %ret.0, %if.end17.if.end21_crit_edge ], [ 0, %land.lhs.true6.if.end21_crit_edge ], [ 0, %for.cond.i43.if.end21_crit_edge ]
  ret i32 %ret.058
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %msg.i52 = alloca %struct.i2c_msg, align 4
  %msg.i.i43 = alloca %struct.i2c_msg, align 4
  %rv.i = alloca %struct.reg_val, align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %set_tsid.i = alloca [2 x %struct.reg_val], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %fe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end5:                                          ; preds = %if.end
  %delsys = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp7 = icmp eq i8 %5, 9
  br i1 %cmp7, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_tsid.i) #10
  %6 = ptrtoint ptr %set_tsid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1895788544, ptr %set_tsid.i, align 4
  %stream_id.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %7 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id.i, align 4
  %and.i = lshr i32 %8, 8
  %conv.i = trunc i32 %and.i to i8
  %val.i = getelementptr inbounds %struct.reg_val, ptr %set_tsid.i, i32 0, i32 1
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %val.i, align 1
  %conv4.i = trunc i32 %8 to i8
  %val6.i = getelementptr inbounds [2 x %struct.reg_val], ptr %set_tsid.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %val6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %val6.i, align 1
  %11 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %i2c_client.i.i = getelementptr inbounds %struct.tc90522_state, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i.i, align 2
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %set_tsid.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  %spec.store.select.i.i = select i1 %cmp3.i.i, i32 -5, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp4.i.i = icmp slt i32 %spec.store.select.i.i, 0
  br i1 %cmp4.i.i, label %if.then9.tc90522s_set_tsid.exit.thread_crit_edge, label %for.cond.i.i

if.then9.tc90522s_set_tsid.exit.thread_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc90522s_set_tsid.exit.thread

for.cond.i.i:                                     ; preds = %if.then9
  %arrayidx.i.1.i = getelementptr inbounds %struct.reg_val, ptr %set_tsid.i, i32 1
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i.1.i, ptr %buf.i.i, align 4
  %25 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client.i.i, align 4
  %adapter.i.1.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.1.i, align 8
  %call.i.1.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp3.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %cmp3.i.1.i, label %for.cond.i.i.tc90522s_set_tsid.exit.thread_crit_edge, label %tc90522s_set_tsid.exit

for.cond.i.i.tc90522s_set_tsid.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc90522s_set_tsid.exit.thread

tc90522s_set_tsid.exit.thread:                    ; preds = %for.cond.i.i.tc90522s_set_tsid.exit.thread_crit_edge, %if.then9.tc90522s_set_tsid.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %spec.store.select.i.i, %if.then9.tc90522s_set_tsid.exit.thread_crit_edge ], [ -5, %for.cond.i.i.tc90522s_set_tsid.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_tsid.i) #10
  br label %do.end

tc90522s_set_tsid.exit:                           ; preds = %for.cond.i.i
  %29 = call i32 @llvm.smin.i32(i32 %call.i.1.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_tsid.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp11 = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp11, label %tc90522s_set_tsid.exit.do.end_crit_edge, label %if.end14

tc90522s_set_tsid.exit.do.end_crit_edge:          ; preds = %tc90522s_set_tsid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end14:                                         ; preds = %tc90522s_set_tsid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %30 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @reset_sat, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %41 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  %42 = select i1 %cmp3.i, i32 -5, i32 %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  br label %if.end23

if.else16:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rv.i) #10
  %43 = getelementptr inbounds %struct.reg_val, ptr %rv.i, i32 0, i32 1
  %isdbt_layer_enabled.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %44 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %isdbt_layer_enabled.i, align 4
  %46 = and i8 %45, 7
  %47 = xor i8 %46, 7
  %trunc.i = trunc i8 %47 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #10
  %mask.i = and i3 %rev.i, -2
  %or.i = zext i3 %mask.i to i8
  %48 = lshr i8 %47, 2
  %or8.i = or i8 %48, %or.i
  %49 = ptrtoint ptr %rv.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 113, ptr %rv.i, align 1
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %or8.i, ptr %43, align 1
  %51 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i43) #10
  %53 = getelementptr inbounds i8, ptr %msg.i.i43, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %i2c_client.i.i45 = getelementptr inbounds %struct.tc90522_state, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %i2c_client.i.i45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_client.i.i45, align 4
  %addr.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %addr.i.i46 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i.i46, align 2
  %59 = ptrtoint ptr %msg.i.i43 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %msg.i.i43, align 4
  %flags.i.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i43, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i.i47 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i.i47, align 2
  %buf.i.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i43, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i.i48 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %rv.i, ptr %buf.i.i48, align 4
  %adapter.i.i49 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %adapter.i.i49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter.i.i49, align 8
  %call.i.i50 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i.i43, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp3.i.i51 = icmp eq i32 %call.i.i50, 0
  %64 = call i32 @llvm.smin.i32(i32 %call.i.i50, i32 0) #10
  %65 = select i1 %cmp3.i.i51, i32 -5, i32 %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i43) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp18 = icmp slt i32 %65, 0
  br i1 %cmp18, label %if.else16.do.end_crit_edge, label %if.end21

if.else16.do.end_crit_edge:                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end21:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52) #10
  %66 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %66, align 4
  %i2c_client.i53 = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %i2c_client.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_client.i53, align 4
  %addr.i54 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %addr.i54 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr.i54, align 2
  %72 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %msg.i52, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i55, align 2
  %buf.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @reset_ter, ptr %buf.i57, align 4
  %adapter.i63 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 3
  %75 = ptrtoint ptr %adapter.i63 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter.i63, align 8
  %call.i64 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i52, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp3.i65 = icmp eq i32 %call.i64, 0
  %77 = call i32 @llvm.smin.i32(i32 %call.i64, i32 0)
  %78 = select i1 %cmp3.i65, i32 -5, i32 %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end14
  %ret.1 = phi i32 [ %42, %if.end14 ], [ %78, %if.end21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp24 = icmp slt i32 %ret.1, 0
  br i1 %cmp24, label %if.end23.do.end_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end23.do.end_crit_edge, %if.else16.do.end_crit_edge, %tc90522s_set_tsid.exit.do.end_crit_edge, %tc90522s_set_tsid.exit.thread, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.2 = phi i32 [ %call, %if.end.do.end_crit_edge ], [ %29, %tc90522s_set_tsid.exit.do.end_crit_edge ], [ %ret.1, %if.end23.do.end_crit_edge ], [ %65, %if.else16.do.end_crit_edge ], [ %retval.0.i.i.ph, %tc90522s_set_tsid.exit.thread ], [ -19, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.tc90522_state, ptr %1, i32 0, i32 3, i32 9
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %79 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dvb, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %82, i32 noundef %84) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc90522_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %settings) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %delsys = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %delsys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp = icmp eq i8 %1, 9
  %storemerge = select i1 %cmp, i32 250, i32 400
  %.sink14 = select i1 %cmp, i32 1000, i32 142857
  %.sink = select i1 %cmp, i32 2000, i32 142857
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %settings, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %settings, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink14, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %settings, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522s_get_frontend(ptr noundef %fe, ptr noundef %c) #2 align 64 {
entry:
  %reg.addr.i293 = alloca i8, align 1
  %msgs.i294 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i276 = alloca i8, align 1
  %msgs.i277 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [10 x i8], align 1
  %dummy = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %val) #10
  %0 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %2 = call ptr @memset(ptr %val, i32 255, i32 10)
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %delivery_system, align 4
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %6 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 28860000, ptr %symbol_rate, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -26, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %18 = load i16, ptr %addr1.i, align 2
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %21 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 5, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i, label %if.then, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then:                                          ; preds = %entry
  %25 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 3
  %26 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 2
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %conv = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  %conv2 = zext i8 %30 to i32
  %or = or i32 %shl, %conv2
  %stream_id = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 24
  %31 = ptrtoint ptr %stream_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %stream_id, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %26, align 1
  %34 = lshr i8 %33, 4
  %35 = and i8 %34, 7
  %conv6 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %35)
  %cmp7 = icmp eq i8 %35, 7
  %cond = select i1 %cmp7, i32 9, i32 0
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %36 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %modulation, align 4
  %arrayidx9 = getelementptr [8 x i32], ptr @fec_conv_sat, i32 0, i32 %conv6
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %39 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fec_inner, align 4
  %layer = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23
  %fec = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 0, i32 1
  %40 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %fec, align 4
  %modulation15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 0, i32 2
  %41 = ptrtoint ptr %modulation15 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond, ptr %modulation15, align 4
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %25, align 1
  %44 = and i8 %43, 63
  %45 = ptrtoint ptr %layer to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %layer, align 4
  %46 = and i8 %33, 7
  %idxprom26 = zext i8 %46 to i32
  %arrayidx27 = getelementptr [8 x i32], ptr @fec_conv_sat, i32 0, i32 %idxprom26
  %47 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx27, align 4
  %arrayidx29 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1
  %fec30 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1, i32 1
  %49 = ptrtoint ptr %fec30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fec30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp32 = icmp eq i8 %46, 0
  br i1 %cmp32, label %if.then.if.end_crit_edge, label %if.else

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 1
  %52 = and i8 %51, 63
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge
  %cond51 = phi i32 [ 1, %if.then.if.end_crit_edge ], [ 2, %if.else ]
  %storemerge = phi i8 [ 0, %if.then.if.end_crit_edge ], [ %52, %if.else ]
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge, ptr %arrayidx29, align 4
  %modulation47 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1, i32 2
  %54 = ptrtoint ptr %modulation47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %modulation47, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end, %entry.if.end52_crit_edge
  %layers.0 = phi i32 [ %cond51, %if.end ], [ 0, %entry.if.end52_crit_edge ]
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42
  %55 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %strength, align 1
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %56 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_rf_strength, align 4
  %tobool.not = icmp eq ptr %57, null
  br i1 %tobool.not, label %if.end52.if.end58_crit_edge, label %if.then53

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then53:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy) #10
  %58 = ptrtoint ptr %dummy to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %dummy, align 2, !annotation !75
  %call57 = call i32 %57(ptr noundef %fe, ptr noundef nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end52.if.end58_crit_edge
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43
  %59 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1
  %60 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %stat, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i276)
  %61 = ptrtoint ptr %reg.addr.i276 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -68, ptr %reg.addr.i276, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i277) #10
  %62 = getelementptr inbounds i8, ptr %msgs.i277, i32 4
  %63 = call ptr @memset(ptr %62, i32 255, i32 16)
  %64 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i279 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %addr1.i279 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr1.i279, align 2
  %68 = ptrtoint ptr %msgs.i277 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msgs.i277, align 4
  %flags.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i280 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i280, align 2
  %70 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %62, align 4
  %buf.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 0, i32 3
  %71 = ptrtoint ptr %buf.i282 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %reg.addr.i276, ptr %buf.i282, align 4
  %arrayinit.element.i283 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 1
  %72 = load i16, ptr %addr1.i279, align 2
  %73 = ptrtoint ptr %arrayinit.element.i283 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayinit.element.i283, align 4
  %flags6.i284 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 1, i32 1
  %74 = ptrtoint ptr %flags6.i284 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %flags6.i284, align 2
  %len7.i285 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 1, i32 2
  %75 = ptrtoint ptr %len7.i285 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2, ptr %len7.i285, align 4
  %buf8.i286 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i277, i32 1, i32 3
  %76 = ptrtoint ptr %buf8.i286 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %val, ptr %buf8.i286, align 4
  %adapter.i287 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 3
  %77 = ptrtoint ptr %adapter.i287 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i287, align 8
  %call.i288 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msgs.i277, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i288)
  %cmp.i289 = icmp eq i32 %call.i288, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i277) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i276)
  br i1 %cmp.i289, label %if.end72, label %if.end58.if.end108_crit_edge

if.end58.if.end108_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end72:                                         ; preds = %if.end58
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val, align 1
  %conv67 = zext i8 %80 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %0, align 1
  %conv70 = zext i8 %82 to i32
  %or71 = or i32 %shl68, %conv70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %or71)
  %cmp73 = icmp ugt i32 %or71, 2999
  br i1 %cmp73, label %if.then75, label %if.end72.if.end108_crit_edge

if.end72.if.end108_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %or71, -3000
  %shl76 = shl i32 %sub, 16
  %call77 = call i32 @int_sqrt(i32 noundef %shl76) #10
  %mul = mul i32 %sub, %sub
  %conv78 = zext i32 %mul to i64
  %mul79 = mul nsw i64 %conv78, -16346
  %conv80 = zext i32 %call77 to i64
  %mul81 = mul i64 %mul79, %conv80
  %call82 = call i64 @div64_s64(i64 noundef %mul81, i64 noundef 10) #10
  %shr83 = ashr i64 %call82, 35
  %mul85 = mul nuw nsw i64 %conv78, 14341
  %83 = lshr i64 %mul85, 21
  %conv87 = zext i32 %sub to i64
  %mul88 = mul nuw nsw i64 %conv87, 50259
  %mul90 = mul i64 %mul88, %conv80
  %shr91 = ashr i64 %mul90, 23
  %mul94 = mul nuw nsw i64 %conv87, 88977
  %84 = lshr i64 %mul94, 9
  %mul98 = mul nuw nsw i64 %conv80, 89565
  %85 = lshr i64 %mul98, 11
  %.neg316 = add nuw nsw i64 %84, 470856
  %add = add nuw nsw i64 %.neg316, %83
  %86 = add nsw i64 %add, %shr83
  %87 = add nsw i64 %85, %shr91
  %add101 = sub nsw i64 %86, %87
  %shr102 = ashr i64 %add101, 3
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %shr102, ptr %88, align 1
  %90 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %stat, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then75, %if.end72.if.end108_crit_edge, %if.end58.if.end108_crit_edge
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1
  %92 = call ptr @memset(ptr %91, i32 0, i32 36)
  %conv109 = trunc i32 %layers.0 to i8
  %93 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv109, ptr %post_bit_error, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i293)
  %94 = ptrtoint ptr %reg.addr.i293 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -21, ptr %reg.addr.i293, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i294) #10
  %95 = getelementptr inbounds i8, ptr %msgs.i294, i32 4
  %96 = call ptr @memset(ptr %95, i32 255, i32 16)
  %97 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i296 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %addr1.i296 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr1.i296, align 2
  %101 = ptrtoint ptr %msgs.i294 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %msgs.i294, align 4
  %flags.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i297 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i297, align 2
  %103 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %95, align 4
  %buf.i299 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 0, i32 3
  %104 = ptrtoint ptr %buf.i299 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %reg.addr.i293, ptr %buf.i299, align 4
  %arrayinit.element.i300 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 1
  %105 = load i16, ptr %addr1.i296, align 2
  %106 = ptrtoint ptr %arrayinit.element.i300 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %arrayinit.element.i300, align 4
  %flags6.i301 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 1, i32 1
  %107 = ptrtoint ptr %flags6.i301 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %flags6.i301, align 2
  %len7.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 1, i32 2
  %108 = ptrtoint ptr %len7.i302 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 10, ptr %len7.i302, align 4
  %buf8.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i294, i32 1, i32 3
  %109 = ptrtoint ptr %buf8.i303 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %val, ptr %buf8.i303, align 4
  %adapter.i304 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %110 = ptrtoint ptr %adapter.i304 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter.i304, align 8
  %call.i305 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msgs.i294, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i305)
  %cmp.i306.not = icmp eq i32 %call.i305, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i294) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i293)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layers.0)
  %cmp123321.not = icmp eq i32 %layers.0, 0
  br i1 %cmp.i306.not, label %for.cond122.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end108
  br i1 %cmp123321.not, label %for.cond.preheader.if.end193.sink.split_crit_edge, label %for.body

for.cond.preheader.if.end193.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193.sink.split

for.cond122.preheader:                            ; preds = %if.end108
  br i1 %cmp123321.not, label %for.cond122.preheader.if.end193.sink.split_crit_edge, label %for.body125

for.cond122.preheader.if.end193.sink.split_crit_edge: ; preds = %for.cond122.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193.sink.split

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx119 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0
  %112 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx119, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.0)
  %exitcond.not = icmp eq i32 %layers.0, 1
  br i1 %exitcond.not, label %for.body.if.end150_crit_edge, label %for.body.1

for.body.if.end150_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx119.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1
  %113 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx119.1, align 1
  br label %if.end150

for.body125:                                      ; preds = %for.cond122.preheader
  %arrayidx127 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0
  %114 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 3, ptr %arrayidx127, align 1
  %115 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %val, align 1
  %conv131 = zext i8 %116 to i32
  %shl132 = shl nuw nsw i32 %conv131, 16
  %arrayidx135 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 1
  %117 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %118 to i32
  %shl137 = shl nuw nsw i32 %conv136, 8
  %or138 = or i32 %shl137, %shl132
  %arrayidx141 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %120 to i32
  %or143 = or i32 %or138, %conv142
  %conv144 = zext i32 %or143 to i64
  %121 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %conv144, ptr %121, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.0)
  %exitcond330.not = icmp eq i32 %layers.0, 1
  br i1 %exitcond330.not, label %for.body125.if.end150_crit_edge, label %for.body125.1

for.body125.if.end150_crit_edge:                  ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

for.body125.1:                                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx127.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1
  %123 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 3, ptr %arrayidx127.1, align 1
  %arrayidx130.1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 5
  %124 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx130.1, align 1
  %conv131.1 = zext i8 %125 to i32
  %shl132.1 = shl nuw nsw i32 %conv131.1, 16
  %arrayidx135.1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 6
  %126 = ptrtoint ptr %arrayidx135.1 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx135.1, align 1
  %conv136.1 = zext i8 %127 to i32
  %shl137.1 = shl nuw nsw i32 %conv136.1, 8
  %or138.1 = or i32 %shl137.1, %shl132.1
  %arrayidx141.1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx141.1 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx141.1, align 1
  %conv142.1 = zext i8 %129 to i32
  %or143.1 = or i32 %or138.1, %conv142.1
  %conv144.1 = zext i32 %or143.1 to i64
  %130 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %conv144.1, ptr %130, align 1
  br label %if.end150

if.end150:                                        ; preds = %for.body125.1, %for.body125.if.end150_crit_edge, %for.body.1, %for.body.if.end150_crit_edge
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1
  %133 = call ptr @memset(ptr %132, i32 0, i32 36)
  %134 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv109, ptr %post_bit_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layers.0)
  %cmp168325.not = icmp eq i32 %layers.0, 0
  br i1 %cmp.i306.not, label %for.cond167.preheader, label %for.cond156.preheader

for.cond156.preheader:                            ; preds = %if.end150
  br i1 %cmp168325.not, label %for.cond156.preheader.if.end193_crit_edge, label %for.body159

for.cond156.preheader.if.end193_crit_edge:        ; preds = %for.cond156.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

for.cond167.preheader:                            ; preds = %if.end150
  br i1 %cmp168325.not, label %for.cond167.preheader.if.end193_crit_edge, label %for.body170

for.cond167.preheader.if.end193_crit_edge:        ; preds = %for.cond167.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

for.body159:                                      ; preds = %for.cond156.preheader
  %arrayidx161 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0
  %135 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx161, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.0)
  %exitcond331.not = icmp eq i32 %layers.0, 1
  br i1 %exitcond331.not, label %for.body159.if.end193_crit_edge, label %for.body159.1

for.body159.if.end193_crit_edge:                  ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

for.body159.1:                                    ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx161.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx161.1 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx161.1, align 1
  br label %if.end193

for.body170:                                      ; preds = %for.cond167.preheader
  %arrayidx172 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0
  %137 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 3, ptr %arrayidx172, align 1
  %arrayidx176 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 3
  %138 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %139 to i32
  %shl178 = shl nuw nsw i32 %conv177, 8
  %arrayidx181 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 4
  %140 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx181, align 1
  %conv182 = zext i8 %141 to i32
  %or183 = or i32 %shl178, %conv182
  %142 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0, i32 1
  %narrow = mul nuw nsw i32 %or183, 1632
  %mul189 = zext i32 %narrow to i64
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 8)
  store i64 %mul189, ptr %142, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.0)
  %exitcond332.not = icmp eq i32 %layers.0, 1
  br i1 %exitcond332.not, label %for.body170.if.end193_crit_edge, label %for.body170.1

for.body170.if.end193_crit_edge:                  ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

for.body170.1:                                    ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx172.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1
  %144 = ptrtoint ptr %arrayidx172.1 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 3, ptr %arrayidx172.1, align 1
  %arrayidx176.1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 8
  %145 = ptrtoint ptr %arrayidx176.1 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx176.1, align 1
  %conv177.1 = zext i8 %146 to i32
  %shl178.1 = shl nuw nsw i32 %conv177.1, 8
  %arrayidx181.1 = getelementptr inbounds [10 x i8], ptr %val, i32 0, i32 9
  %147 = ptrtoint ptr %arrayidx181.1 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx181.1, align 1
  %conv182.1 = zext i8 %148 to i32
  %or183.1 = or i32 %shl178.1, %conv182.1
  %149 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1, i32 1
  %narrow.1 = mul nuw nsw i32 %or183.1, 1632
  %mul189.1 = zext i32 %narrow.1 to i64
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 %mul189.1, ptr %149, align 1
  br label %if.end193

if.end193.sink.split:                             ; preds = %for.cond122.preheader.if.end193.sink.split_crit_edge, %for.cond.preheader.if.end193.sink.split_crit_edge
  %post_bit_count.c = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1
  %152 = call ptr @memset(ptr %151, i32 0, i32 36)
  %153 = ptrtoint ptr %post_bit_count.c to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv109, ptr %post_bit_count.c, align 1
  br label %if.end193

if.end193:                                        ; preds = %if.end193.sink.split, %for.body170.1, %for.body170.if.end193_crit_edge, %for.body159.1, %for.body159.if.end193_crit_edge, %for.cond167.preheader.if.end193_crit_edge, %for.cond156.preheader.if.end193_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522s_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %reg.addr.i30 = alloca i8, align 1
  %msgs.i31 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !75
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -61, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1.i, align 2
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %14 = load i16, ptr %addr1.i, align 2
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reg, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp11.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp11.i, i32 -5, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %status, align 4
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool.not = icmp sgt i8 %23, -1
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %status, align 4
  %25 = and i8 %23, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not = icmp eq i8 %25, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 15, ptr %status, align 4
  %27 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i30)
  %28 = ptrtoint ptr %reg.addr.i30 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -59, ptr %reg.addr.i30, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i31) #10
  %29 = getelementptr inbounds i8, ptr %msgs.i31, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i33 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %addr1.i33 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr1.i33, align 2
  %35 = ptrtoint ptr %msgs.i31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msgs.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i34, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %reg.addr.i30, ptr %buf.i36, align 4
  %arrayinit.element.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 1
  %39 = load i16, ptr %addr1.i33, align 2
  %40 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayinit.element.i37, align 4
  %flags6.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i38 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i38, align 2
  %len7.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i39 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i39, align 4
  %buf8.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i31, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg, ptr %buf8.i40, align 4
  %adapter.i41 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i41, align 8
  %call.i42 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i31, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i42)
  %cmp.i43.not = icmp eq i32 %call.i42, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i31) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30)
  br i1 %cmp.i43.not, label %lor.lhs.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end13
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg, align 1
  %48 = and i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool19.not = icmp eq i8 %48, 0
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or22 = or i32 %50, 16
  store i32 %or22, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %lor.lhs.false.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %spec.store.select.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522t_get_frontend(ptr noundef %fe, ptr noundef writeonly %c) #2 align 64 {
entry:
  %reg.addr.i440 = alloca i8, align 1
  %msgs.i441 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i423 = alloca i8, align 1
  %msgs.i424 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i406 = alloca i8, align 1
  %msgs.i407 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [15 x i8], align 1
  %dummy = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %val) #10
  %0 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 1
  %1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 2
  %2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 3
  %3 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 4
  %4 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 5
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %5 = call ptr @memset(ptr %val, i32 255, i32 15)
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  %8 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %delivery_system, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %9 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6000000, ptr %bandwidth_hz, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %10 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -80, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %11 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr1.i, align 2
  %17 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %21 = load i16, ptr %addr1.i, align 2
  %22 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %24 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %val, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val, align 1
  %30 = lshr i8 %29, 6
  %idxprom = zext i8 %30 to i32
  %arrayidx2 = getelementptr [4 x i32], ptr @tm_conv, i32 0, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2, align 4
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %33 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %transmission_mode, align 4
  %34 = lshr i8 %29, 4
  %35 = and i8 %34, 3
  %36 = zext i8 %35 to i32
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %37 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %guard_interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i406)
  %38 = ptrtoint ptr %reg.addr.i406 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -78, ptr %reg.addr.i406, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i407) #10
  %39 = getelementptr inbounds i8, ptr %msgs.i407, i32 4
  %40 = call ptr @memset(ptr %39, i32 255, i32 16)
  %41 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i409 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %addr1.i409 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr1.i409, align 2
  %45 = ptrtoint ptr %msgs.i407 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %msgs.i407, align 4
  %flags.i410 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i410 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i410, align 2
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %39, align 4
  %buf.i412 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i412 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %reg.addr.i406, ptr %buf.i412, align 4
  %arrayinit.element.i413 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 1
  %49 = load i16, ptr %addr1.i409, align 2
  %50 = ptrtoint ptr %arrayinit.element.i413 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayinit.element.i413, align 4
  %flags6.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 1, i32 1
  %51 = ptrtoint ptr %flags6.i414 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags6.i414, align 2
  %len7.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 1, i32 2
  %52 = ptrtoint ptr %len7.i415 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 6, ptr %len7.i415, align 4
  %buf8.i416 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i407, i32 1, i32 3
  %53 = ptrtoint ptr %buf8.i416 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %val, ptr %buf8.i416, align 4
  %adapter.i417 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %54 = ptrtoint ptr %adapter.i417 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i417, align 8
  %call.i418 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msgs.i407, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i418)
  %cmp.i419 = icmp eq i32 %call.i418, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i407) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i406)
  br i1 %cmp.i419, label %if.then11, label %if.end.if.end147_crit_edge

if.end.if.end147_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then11:                                        ; preds = %if.end
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %val, align 1
  %58 = and i8 %57, 1
  %isdbt_partial_reception = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 17
  %59 = ptrtoint ptr %isdbt_partial_reception to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %isdbt_partial_reception, align 4
  %60 = and i8 %57, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %60)
  %cmp19 = icmp eq i8 %60, 64
  %conv21 = zext i1 %cmp19 to i8
  %isdbt_sb_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 18
  %61 = ptrtoint ptr %isdbt_sb_mode to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv21, ptr %isdbt_sb_mode, align 1
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %1, align 1
  %64 = lshr i8 %63, 3
  %65 = and i8 %64, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %65)
  %cmp28 = icmp eq i8 %65, 15
  br i1 %cmp28, label %if.then11.if.end59_crit_edge, label %if.else

if.then11.if.end59_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %0, align 1
  %68 = lshr i8 %67, 2
  %69 = and i8 %68, 7
  %70 = zext i8 %69 to i32
  %arrayidx39 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx39, align 4
  %fec = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 0, i32 1
  %73 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fec, align 4
  %74 = lshr i8 %67, 5
  %75 = zext i8 %74 to i32
  %arrayidx46 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx46, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 0, i32 2
  %78 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %modulation, align 4
  %79 = shl i8 %67, 1
  %80 = and i8 %79, 6
  %81 = lshr i8 %63, 7
  %or404 = or i8 %80, %81
  %interleaving = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 0, i32 3
  %82 = ptrtoint ptr %interleaving to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %or404, ptr %interleaving, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then11.if.end59_crit_edge
  %.sink = phi i8 [ %65, %if.else ], [ 0, %if.then11.if.end59_crit_edge ]
  %layers.0 = phi i32 [ 1, %if.else ], [ 0, %if.then11.if.end59_crit_edge ]
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink, ptr %83, align 4
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %2, align 1
  %87 = shl i8 %86, 2
  %88 = and i8 %87, 12
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %3, align 1
  %91 = lshr i8 %90, 6
  %or68405 = or i8 %88, %91
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %or68405)
  %cmp71 = icmp eq i8 %or68405, 15
  br i1 %cmp71, label %if.end59.if.end105_crit_edge, label %if.else77

if.end59.if.end105_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.else77:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %inc78 = add nuw nsw i32 %layers.0, 1
  %92 = lshr i8 %86, 5
  %93 = zext i8 %92 to i32
  %arrayidx86 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx86, align 4
  %fec89 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1, i32 1
  %96 = ptrtoint ptr %fec89 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %fec89, align 4
  %97 = and i8 %63, 7
  %and92 = zext i8 %97 to i32
  %arrayidx93 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %and92
  %98 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx93, align 4
  %modulation96 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1, i32 2
  %100 = ptrtoint ptr %modulation96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %modulation96, align 4
  %101 = lshr i8 %86, 2
  %102 = and i8 %101, 7
  %interleaving104 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1, i32 3
  %103 = ptrtoint ptr %interleaving104 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %interleaving104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else77, %if.end59.if.end105_crit_edge
  %or68405.sink = phi i8 [ %or68405, %if.else77 ], [ 0, %if.end59.if.end105_crit_edge ]
  %layers.1 = phi i32 [ %inc78, %if.else77 ], [ %layers.0, %if.end59.if.end105_crit_edge ]
  %104 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %or68405.sink, ptr %104, align 4
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %4, align 1
  %108 = lshr i8 %107, 1
  %109 = and i8 %108, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %109)
  %cmp112 = icmp eq i8 %109, 15
  br i1 %cmp112, label %if.then114, label %if.else118

if.then114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx116 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 2
  %110 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx116, align 4
  br label %if.end147

if.else118:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %inc119 = add nuw nsw i32 %layers.1, 1
  %arrayidx121 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 2
  %111 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %109, ptr %arrayidx121, align 4
  %112 = and i8 %90, 7
  %and125 = zext i8 %112 to i32
  %arrayidx126 = getelementptr [8 x i32], ptr @fec_conv_ter, i32 0, i32 %and125
  %113 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx126, align 4
  %fec129 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 2, i32 1
  %115 = ptrtoint ptr %fec129 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %fec129, align 4
  %116 = lshr i8 %90, 3
  %117 = and i8 %116, 7
  %118 = zext i8 %117 to i32
  %arrayidx134 = getelementptr [8 x i32], ptr @mod_conv, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx134, align 4
  %modulation137 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 2, i32 2
  %121 = ptrtoint ptr %modulation137 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %modulation137, align 4
  %122 = lshr i8 %107, 5
  %interleaving145 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 23, i32 2, i32 3
  %123 = ptrtoint ptr %interleaving145 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %interleaving145, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else118, %if.then114, %if.end.if.end147_crit_edge
  %layers.3 = phi i32 [ 0, %if.end.if.end147_crit_edge ], [ %layers.1, %if.then114 ], [ %inc119, %if.else118 ]
  %strength = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42
  %124 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %strength, align 1
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %125 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %get_rf_strength, align 4
  %tobool.not = icmp eq ptr %126, null
  br i1 %tobool.not, label %if.end147.if.end153_crit_edge, label %if.then148

if.end147.if.end153_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then148:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy) #10
  %127 = ptrtoint ptr %dummy to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %dummy, align 2, !annotation !75
  %call152 = call i32 %126(ptr noundef %fe, ptr noundef nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy) #10
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end147.if.end153_crit_edge
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43
  %128 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1
  %129 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %stat, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i423)
  %130 = ptrtoint ptr %reg.addr.i423 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -117, ptr %reg.addr.i423, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i424) #10
  %131 = getelementptr inbounds i8, ptr %msgs.i424, i32 4
  %132 = call ptr @memset(ptr %131, i32 255, i32 16)
  %133 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i426 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %addr1.i426 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %addr1.i426, align 2
  %137 = ptrtoint ptr %msgs.i424 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %msgs.i424, align 4
  %flags.i427 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i427 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i427, align 2
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %131, align 4
  %buf.i429 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i429 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %reg.addr.i423, ptr %buf.i429, align 4
  %arrayinit.element.i430 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 1
  %141 = load i16, ptr %addr1.i426, align 2
  %142 = ptrtoint ptr %arrayinit.element.i430 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %arrayinit.element.i430, align 4
  %flags6.i431 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 1, i32 1
  %143 = ptrtoint ptr %flags6.i431 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %flags6.i431, align 2
  %len7.i432 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 1, i32 2
  %144 = ptrtoint ptr %len7.i432 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 3, ptr %len7.i432, align 4
  %buf8.i433 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i424, i32 1, i32 3
  %145 = ptrtoint ptr %buf8.i433 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %val, ptr %buf8.i433, align 4
  %adapter.i434 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 3
  %146 = ptrtoint ptr %adapter.i434 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %adapter.i434, align 8
  %call.i435 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msgs.i424, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i435)
  %cmp.i436 = icmp eq i32 %call.i435, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i424) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i423)
  br i1 %cmp.i436, label %if.end171, label %if.end153.if.end217_crit_edge

if.end153.if.end217_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.end171:                                        ; preds = %if.end153
  %148 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %val, align 1
  %conv162 = zext i8 %149 to i32
  %shl163 = shl nuw nsw i32 %conv162, 16
  %150 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %0, align 1
  %conv165 = zext i8 %151 to i32
  %shl166 = shl nuw nsw i32 %conv165, 8
  %or167 = or i32 %shl166, %shl163
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %1, align 1
  %conv169 = zext i8 %153 to i32
  %or170 = or i32 %or167, %conv169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or170)
  %cmp172.not = icmp eq i32 %or170, 0
  br i1 %cmp172.not, label %if.end171.if.end217_crit_edge, label %if.then174

if.end171.if.end217_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  %call175 = call i32 @intlog10(i32 noundef 5505024) #10
  %call176 = call i32 @intlog10(i32 noundef %or170) #10
  %sub = sub i32 %call175, %call176
  %mul = mul i32 %sub, 10
  %conv177 = zext i32 %mul to i64
  %mul178 = mul nuw nsw i64 %conv177, 43827
  %call179 = call i64 @div64_s64(i64 noundef %mul178, i64 noundef 10) #10
  %shr180 = ashr i64 %call179, 24
  %add = add nsw i64 %shr180, 24772
  %shr181 = lshr i32 %mul, 8
  %conv182 = zext i32 %shr181 to i64
  %mul183 = mul nuw nsw i64 %conv182, 3184
  %mul185 = mul nuw nsw i64 %mul183, %conv182
  %call186 = call i64 @div64_s64(i64 noundef %mul185, i64 noundef 10) #10
  %shr187 = ashr i64 %call186, 32
  %add188 = add nsw i64 %add, %shr187
  %shr189 = lshr i32 %mul, 13
  %conv190 = zext i32 %shr189 to i64
  %mul191 = shl nuw nsw i64 %conv190, 7
  %mul193 = mul nuw nsw i64 %mul191, %conv190
  %mul195 = mul nuw i64 %mul193, %conv190
  %call196 = call i64 @div64_s64(i64 noundef %mul195, i64 noundef 10) #10
  %shr197 = ashr i64 %call196, 33
  %sub198 = sub nsw i64 %add188, %shr197
  %shr199 = lshr i32 %mul, 18
  %conv200 = zext i32 %shr199 to i64
  %154 = mul nuw nsw i64 %conv200, %conv200
  %155 = mul nuw nsw i64 %154, 192
  %mul207 = mul nuw i64 %155, %154
  %call208 = call i64 @div64_s64(i64 noundef %mul207, i64 noundef 1000) #10
  %shr209 = ashr i64 %call208, 24
  %add210 = add nsw i64 %sub198, %shr209
  %shr211 = ashr i64 %add210, 3
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1, i32 0, i32 1
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 8)
  store i64 %shr211, ptr %156, align 1
  %158 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %stat, align 1
  br label %if.end217

if.end217:                                        ; preds = %if.then174, %if.end171.if.end217_crit_edge, %if.end153.if.end217_crit_edge
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46
  %159 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1
  %160 = call ptr @memset(ptr %159, i32 0, i32 36)
  %conv218 = trunc i32 %layers.3 to i8
  %161 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv218, ptr %post_bit_error, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i440)
  %162 = ptrtoint ptr %reg.addr.i440 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -99, ptr %reg.addr.i440, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i441) #10
  %163 = getelementptr inbounds i8, ptr %msgs.i441, i32 4
  %164 = call ptr @memset(ptr %163, i32 255, i32 16)
  %165 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i443 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %addr1.i443 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %addr1.i443, align 2
  %169 = ptrtoint ptr %msgs.i441 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %msgs.i441, align 4
  %flags.i444 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 0, i32 1
  %170 = ptrtoint ptr %flags.i444 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i444, align 2
  %171 = ptrtoint ptr %163 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1, ptr %163, align 4
  %buf.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 0, i32 3
  %172 = ptrtoint ptr %buf.i446 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %reg.addr.i440, ptr %buf.i446, align 4
  %arrayinit.element.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 1
  %173 = load i16, ptr %addr1.i443, align 2
  %174 = ptrtoint ptr %arrayinit.element.i447 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %arrayinit.element.i447, align 4
  %flags6.i448 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 1, i32 1
  %175 = ptrtoint ptr %flags6.i448 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %flags6.i448, align 2
  %len7.i449 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 1, i32 2
  %176 = ptrtoint ptr %len7.i449 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 15, ptr %len7.i449, align 4
  %buf8.i450 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i441, i32 1, i32 3
  %177 = ptrtoint ptr %buf8.i450 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %val, ptr %buf8.i450, align 4
  %adapter.i451 = getelementptr inbounds %struct.i2c_client, ptr %166, i32 0, i32 3
  %178 = ptrtoint ptr %adapter.i451 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %adapter.i451, align 8
  %call.i452 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msgs.i441, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i452)
  %cmp.i453.not = icmp eq i32 %call.i452, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i441) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i440)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layers.3)
  %cmp233469.not = icmp eq i32 %layers.3, 0
  br i1 %cmp.i453.not, label %for.cond232.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end217
  br i1 %cmp233469.not, label %for.cond.preheader.if.end304.sink.split_crit_edge, label %for.body

for.cond.preheader.if.end304.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

for.cond232.preheader:                            ; preds = %if.end217
  br i1 %cmp233469.not, label %for.cond232.preheader.if.end304.sink.split_crit_edge, label %for.body235

for.cond232.preheader.if.end304.sink.split_crit_edge: ; preds = %for.cond232.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx228 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0
  %180 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %arrayidx228, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.3)
  %exitcond.not = icmp eq i32 %layers.3, 1
  br i1 %exitcond.not, label %for.body.if.end260_crit_edge, label %for.body.1

for.body.if.end260_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

for.body.1:                                       ; preds = %for.body
  %arrayidx228.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1
  %181 = ptrtoint ptr %arrayidx228.1 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %arrayidx228.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layers.3)
  %exitcond.not.1 = icmp eq i32 %layers.3, 2
  br i1 %exitcond.not.1, label %for.body.1.if.end260_crit_edge, label %for.body.2

for.body.1.if.end260_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx228.2 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 2
  %182 = ptrtoint ptr %arrayidx228.2 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %arrayidx228.2, align 1
  br label %if.end260

for.body235:                                      ; preds = %for.cond232.preheader
  %arrayidx237 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0
  %183 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 3, ptr %arrayidx237, align 1
  %184 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %val, align 1
  %conv241 = zext i8 %185 to i32
  %shl242 = shl nuw nsw i32 %conv241, 16
  %arrayidx245 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx245, align 1
  %conv246 = zext i8 %187 to i32
  %shl247 = shl nuw nsw i32 %conv246, 8
  %or248 = or i32 %shl247, %shl242
  %arrayidx251 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 2
  %188 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %189 to i32
  %or253 = or i32 %or248, %conv252
  %conv254 = zext i32 %or253 to i64
  %190 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 0, i32 1
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 8)
  store i64 %conv254, ptr %190, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.3)
  %exitcond478.not = icmp eq i32 %layers.3, 1
  br i1 %exitcond478.not, label %for.body235.if.end260_crit_edge, label %for.body235.1

for.body235.if.end260_crit_edge:                  ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

for.body235.1:                                    ; preds = %for.body235
  %arrayidx237.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1
  %192 = ptrtoint ptr %arrayidx237.1 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 3, ptr %arrayidx237.1, align 1
  %arrayidx240.1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 3
  %193 = ptrtoint ptr %arrayidx240.1 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx240.1, align 1
  %conv241.1 = zext i8 %194 to i32
  %shl242.1 = shl nuw nsw i32 %conv241.1, 16
  %arrayidx245.1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 4
  %195 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx245.1, align 1
  %conv246.1 = zext i8 %196 to i32
  %shl247.1 = shl nuw nsw i32 %conv246.1, 8
  %or248.1 = or i32 %shl247.1, %shl242.1
  %arrayidx251.1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 5
  %197 = ptrtoint ptr %arrayidx251.1 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx251.1, align 1
  %conv252.1 = zext i8 %198 to i32
  %or253.1 = or i32 %or248.1, %conv252.1
  %conv254.1 = zext i32 %or253.1 to i64
  %199 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 1, i32 1
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 8)
  store i64 %conv254.1, ptr %199, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layers.3)
  %exitcond478.not.1 = icmp eq i32 %layers.3, 2
  br i1 %exitcond478.not.1, label %for.body235.1.if.end260_crit_edge, label %for.body235.2

for.body235.1.if.end260_crit_edge:                ; preds = %for.body235.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end260

for.body235.2:                                    ; preds = %for.body235.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx237.2 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 2
  %201 = ptrtoint ptr %arrayidx237.2 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 3, ptr %arrayidx237.2, align 1
  %arrayidx240.2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 6
  %202 = ptrtoint ptr %arrayidx240.2 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx240.2, align 1
  %conv241.2 = zext i8 %203 to i32
  %shl242.2 = shl nuw nsw i32 %conv241.2, 16
  %arrayidx245.2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 7
  %204 = ptrtoint ptr %arrayidx245.2 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx245.2, align 1
  %conv246.2 = zext i8 %205 to i32
  %shl247.2 = shl nuw nsw i32 %conv246.2, 8
  %or248.2 = or i32 %shl247.2, %shl242.2
  %arrayidx251.2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 8
  %206 = ptrtoint ptr %arrayidx251.2 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx251.2, align 1
  %conv252.2 = zext i8 %207 to i32
  %or253.2 = or i32 %or248.2, %conv252.2
  %conv254.2 = zext i32 %or253.2 to i64
  %208 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 46, i32 1, i32 2, i32 1
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 8)
  store i64 %conv254.2, ptr %208, align 1
  br label %if.end260

if.end260:                                        ; preds = %for.body235.2, %for.body235.1.if.end260_crit_edge, %for.body235.if.end260_crit_edge, %for.body.2, %for.body.1.if.end260_crit_edge, %for.body.if.end260_crit_edge
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47
  %210 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1
  %211 = call ptr @memset(ptr %210, i32 0, i32 36)
  %212 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv218, ptr %post_bit_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layers.3)
  %cmp278473 = icmp sgt i32 %layers.3, 0
  br i1 %cmp.i453.not, label %for.cond277.preheader, label %for.cond266.preheader

for.cond266.preheader:                            ; preds = %if.end260
  br i1 %cmp278473, label %for.body269, label %for.cond266.preheader.if.end304_crit_edge

for.cond266.preheader.if.end304_crit_edge:        ; preds = %for.cond266.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.cond277.preheader:                            ; preds = %if.end260
  br i1 %cmp278473, label %for.body280, label %for.cond277.preheader.if.end304_crit_edge

for.cond277.preheader.if.end304_crit_edge:        ; preds = %for.cond277.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.body269:                                      ; preds = %for.cond266.preheader
  %arrayidx271 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0
  %213 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %arrayidx271, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.3)
  %exitcond479.not = icmp eq i32 %layers.3, 1
  br i1 %exitcond479.not, label %for.body269.if.end304_crit_edge, label %for.body269.1

for.body269.if.end304_crit_edge:                  ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.body269.1:                                    ; preds = %for.body269
  %arrayidx271.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1
  %214 = ptrtoint ptr %arrayidx271.1 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %arrayidx271.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layers.3)
  %exitcond479.not.1 = icmp eq i32 %layers.3, 2
  br i1 %exitcond479.not.1, label %for.body269.1.if.end304_crit_edge, label %for.body269.2

for.body269.1.if.end304_crit_edge:                ; preds = %for.body269.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.body269.2:                                    ; preds = %for.body269.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx271.2 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 2
  %215 = ptrtoint ptr %arrayidx271.2 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %arrayidx271.2, align 1
  br label %if.end304

for.body280:                                      ; preds = %for.cond277.preheader
  %arrayidx282 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0
  %216 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 3, ptr %arrayidx282, align 1
  %arrayidx286 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 9
  %217 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx286, align 1
  %conv287 = zext i8 %218 to i32
  %shl288 = shl nuw nsw i32 %conv287, 8
  %arrayidx292 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 10
  %219 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx292, align 1
  %conv293 = zext i8 %220 to i32
  %or294 = or i32 %shl288, %conv293
  %221 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 0, i32 1
  %narrow = mul nuw nsw i32 %or294, 1632
  %mul300 = zext i32 %narrow to i64
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %mul300, ptr %221, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layers.3)
  %exitcond480.not = icmp eq i32 %layers.3, 1
  br i1 %exitcond480.not, label %for.body280.if.end304_crit_edge, label %for.body280.1

for.body280.if.end304_crit_edge:                  ; preds = %for.body280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.body280.1:                                    ; preds = %for.body280
  %arrayidx282.1 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1
  %223 = ptrtoint ptr %arrayidx282.1 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 3, ptr %arrayidx282.1, align 1
  %arrayidx286.1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 11
  %224 = ptrtoint ptr %arrayidx286.1 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx286.1, align 1
  %conv287.1 = zext i8 %225 to i32
  %shl288.1 = shl nuw nsw i32 %conv287.1, 8
  %arrayidx292.1 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 12
  %226 = ptrtoint ptr %arrayidx292.1 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx292.1, align 1
  %conv293.1 = zext i8 %227 to i32
  %or294.1 = or i32 %shl288.1, %conv293.1
  %228 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 1, i32 1
  %narrow.1 = mul nuw nsw i32 %or294.1, 1632
  %mul300.1 = zext i32 %narrow.1 to i64
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 8)
  store i64 %mul300.1, ptr %228, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layers.3)
  %exitcond480.not.1 = icmp eq i32 %layers.3, 2
  br i1 %exitcond480.not.1, label %for.body280.1.if.end304_crit_edge, label %for.body280.2

for.body280.1.if.end304_crit_edge:                ; preds = %for.body280.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

for.body280.2:                                    ; preds = %for.body280.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx282.2 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 2
  %230 = ptrtoint ptr %arrayidx282.2 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 3, ptr %arrayidx282.2, align 1
  %arrayidx286.2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 13
  %231 = ptrtoint ptr %arrayidx286.2 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx286.2, align 1
  %conv287.2 = zext i8 %232 to i32
  %shl288.2 = shl nuw nsw i32 %conv287.2, 8
  %arrayidx292.2 = getelementptr inbounds [15 x i8], ptr %val, i32 0, i32 14
  %233 = ptrtoint ptr %arrayidx292.2 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx292.2, align 1
  %conv293.2 = zext i8 %234 to i32
  %or294.2 = or i32 %shl288.2, %conv293.2
  %235 = getelementptr %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1, i32 2, i32 1
  %narrow.2 = mul nuw nsw i32 %or294.2, 1632
  %mul300.2 = zext i32 %narrow.2 to i64
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 8)
  store i64 %mul300.2, ptr %235, align 1
  br label %if.end304

if.end304.sink.split:                             ; preds = %for.cond232.preheader.if.end304.sink.split_crit_edge, %for.cond.preheader.if.end304.sink.split_crit_edge
  %post_bit_count.c = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47
  %237 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 47, i32 1
  %238 = call ptr @memset(ptr %237, i32 0, i32 36)
  %239 = ptrtoint ptr %post_bit_count.c to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv218, ptr %post_bit_count.c, align 1
  br label %if.end304

if.end304:                                        ; preds = %if.end304.sink.split, %for.body280.2, %for.body280.1.if.end304_crit_edge, %for.body280.if.end304_crit_edge, %for.body269.2, %for.body269.1.if.end304_crit_edge, %for.body269.if.end304_crit_edge, %for.cond277.preheader.if.end304_crit_edge, %for.cond266.preheader.if.end304_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522t_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %reg.addr.i35 = alloca i8, align 1
  %msgs.i36 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !75
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -106, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #10
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %i2c_client.i = getelementptr inbounds %struct.tc90522_state, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1.i, align 2
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %14 = load i16, ptr %addr1.i, align 2
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reg, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp11.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp11.i, i32 -5, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %status, align 4
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %tobool.not = icmp ult i8 %23, 32
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i35)
  %24 = ptrtoint ptr %reg.addr.i35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -128, ptr %reg.addr.i35, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i36) #10
  %25 = getelementptr inbounds i8, ptr %msgs.i36, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i38 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %addr1.i38 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr1.i38, align 2
  %31 = ptrtoint ptr %msgs.i36 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msgs.i36, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i39, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg.addr.i35, ptr %buf.i41, align 4
  %arrayinit.element.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 1
  %35 = load i16, ptr %addr1.i38, align 2
  %36 = ptrtoint ptr %arrayinit.element.i42 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayinit.element.i42, align 4
  %flags6.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i43 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i43, align 2
  %len7.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i44 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i44, align 4
  %buf8.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i36, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reg, ptr %buf8.i45, align 4
  %adapter.i46 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i46, align 8
  %call.i47 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msgs.i36, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i47)
  %cmp.i48.not = icmp eq i32 %call.i47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i47)
  %cmp11.i49 = icmp sgt i32 %call.i47, -1
  %spec.store.select.i50 = select i1 %cmp11.i49, i32 -5, i32 %call.i47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i36) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i35)
  br i1 %cmp.i48.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %43)
  %tobool10.not = icmp ult i8 %43, 16
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %or = or i32 %45, 3
  store i32 %or, ptr %status, align 4
  %46 = and i8 %43, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool15.not = icmp eq i8 %46, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %or18 = or i32 %45, 15
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or18, ptr %status, align 4
  %48 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool21.not = icmp eq i8 %48, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %or24 = or i32 %45, 31
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23, %if.end.cleanup.sink.split_crit_edge
  %or24.sink = phi i32 [ %or24, %if.end23 ], [ 31, %if.end.cleanup.sink.split_crit_edge ]
  %49 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or24.sink, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select.i, %entry.cleanup_crit_edge ], [ %spec.store.select.i50, %if.end2.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc90522_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %wbuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %wbuf) #10
  %0 = call ptr @memset(ptr %wbuf, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rd_num.0275 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0274 = phi i32 [ %inc4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0274, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 1
  %4 = zext i16 %3 to i32
  %spec.select = add i32 %rd_num.0275, %4
  %inc4 = add nuw nsw i32 %i.0274, 1
  %exitcond.not = icmp eq i32 %inc4, %num
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %add = add i32 %spec.select, %num
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 12) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %for.end.cleanup_crit_edge, label %if.end7.i, !prof !76

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %for.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %tobool5.not = icmp eq ptr %call8.i, null
  br i1 %tobool5.not, label %if.end7.i.cleanup_crit_edge, label %if.end7

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr inbounds i8, ptr %wbuf, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp11276 = icmp sgt i32 %num, 0
  br i1 %cmp11276, label %for.body13.lr.ph, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body13.lr.ph:                                 ; preds = %if.end7
  %i2c_client = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  br label %for.body13

for.body13:                                       ; preds = %for.inc98.for.body13_crit_edge, %for.body13.lr.ph
  %p.0280 = phi ptr [ %wbuf, %for.body13.lr.ph ], [ %p.1, %for.inc98.for.body13_crit_edge ]
  %j.0279 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc100, %for.inc98.for.body13_crit_edge ]
  %i.1277 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc99, %for.inc98.for.body13_crit_edge ]
  %10 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %arrayidx14 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277
  %flags17 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277, i32 1
  %15 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags17, align 2
  %flags19 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279, i32 1
  %17 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags19, align 2
  %18 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not = icmp eq i16 %18, 0
  br i1 %tobool24.not, label %if.end62, label %if.then25

if.then25:                                        ; preds = %for.body13
  %19 = and i16 %16, -2
  %20 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags19, align 2
  %add.ptr31 = getelementptr i8, ptr %p.0280, i32 2
  %cmp32 = icmp ugt ptr %add.ptr31, %add.ptr
  br i1 %cmp32, label %if.then25.if.end135.thread_crit_edge, label %if.end35

if.then25.if.end135.thread_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.thread

if.end35:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %p.0280 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -2, ptr %p.0280, align 1
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx16, align 4
  %conv39 = trunc i16 %23 to i8
  %shl = shl i8 %conv39, 1
  %or = or i8 %shl, 1
  %arrayidx41 = getelementptr i8, ptr %p.0280, i32 1
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or, ptr %arrayidx41, align 1
  %buf = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279, i32 3
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %p.0280, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %len, align 4
  %inc45 = add i32 %j.0279, 1
  %27 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client, align 4
  %addr47 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %addr47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr47, align 2
  %arrayidx48 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %inc45
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx48, align 4
  %32 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags17, align 2
  %flags53 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %inc45, i32 1
  %34 = ptrtoint ptr %flags53 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %flags53, align 2
  %buf55 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277, i32 3
  %35 = ptrtoint ptr %buf55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf55, align 4
  %buf57 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %inc45, i32 3
  %37 = ptrtoint ptr %buf57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %buf57, align 4
  %len59 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277, i32 2
  %38 = ptrtoint ptr %len59 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len59, align 4
  %len61 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %inc45, i32 2
  %40 = ptrtoint ptr %len61 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %len61, align 4
  br label %for.inc98

if.end62:                                         ; preds = %for.body13
  %len64 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277, i32 2
  %41 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len64, align 4
  %conv65 = zext i16 %42 to i32
  %add.ptr66 = getelementptr i8, ptr %p.0280, i32 2
  %add.ptr67 = getelementptr i8, ptr %add.ptr66, i32 %conv65
  %cmp68 = icmp ugt ptr %add.ptr67, %add.ptr
  br i1 %cmp68, label %if.end62.if.end135.thread_crit_edge, label %if.end71

if.end62.if.end135.thread_crit_edge:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.thread

if.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %p.0280 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %p.0280, align 1
  %44 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx16, align 4
  %conv75 = trunc i16 %45 to i8
  %shl76 = shl i8 %conv75, 1
  %arrayidx78 = getelementptr i8, ptr %p.0280, i32 1
  %46 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %shl76, ptr %arrayidx78, align 1
  %add.ptr79 = getelementptr i8, ptr %p.0280, i32 2
  %buf81 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1277, i32 3
  %47 = ptrtoint ptr %buf81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf81, align 4
  %49 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len64, align 4
  %conv84 = zext i16 %50 to i32
  %51 = call ptr @memcpy(ptr %add.ptr79, ptr %48, i32 %conv84)
  %buf86 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279, i32 3
  %52 = ptrtoint ptr %buf86 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %p.0280, ptr %buf86, align 4
  %53 = load i16, ptr %len64, align 4
  %add90 = add i16 %53, 2
  %len93 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %j.0279, i32 2
  %54 = ptrtoint ptr %len93 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %add90, ptr %len93, align 4
  %conv96 = zext i16 %add90 to i32
  %add.ptr97 = getelementptr i8, ptr %p.0280, i32 %conv96
  br label %for.inc98

for.inc98:                                        ; preds = %if.end71, %if.end35
  %j.1 = phi i32 [ %inc45, %if.end35 ], [ %j.0279, %if.end71 ]
  %p.1 = phi ptr [ %add.ptr31, %if.end35 ], [ %add.ptr97, %if.end71 ]
  %inc99 = add nuw nsw i32 %i.1277, 1
  %inc100 = add i32 %j.1, 1
  %exitcond283.not = icmp eq i32 %inc99, %num
  br i1 %exitcond283.not, label %for.inc98.if.else_crit_edge, label %for.inc98.for.body13_crit_edge

for.inc98.for.body13_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.inc98.if.else_crit_edge:                      ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %for.inc98.if.else_crit_edge, %if.end7.if.else_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end7.if.else_crit_edge ], [ %inc100, %for.inc98.if.else_crit_edge ]
  %split_tuner_read_i2c = getelementptr inbounds %struct.tc90522_config, ptr %9, i32 0, i32 2
  %55 = ptrtoint ptr %split_tuner_read_i2c to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %split_tuner_read_i2c, align 8, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool105.not = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp106 = icmp eq i32 %spec.select, 0
  %or.cond = select i1 %tobool105.not, i1 true, i1 %cmp106
  %i2c_client109 = getelementptr inbounds %struct.tc90522_state, ptr %9, i32 0, i32 2
  br i1 %or.cond, label %if.then108, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  br label %do.body

if.then108:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %i2c_client109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_client109, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter, align 8
  %call110 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %call8.i, i32 noundef %j.0.lcssa) #10
  br label %if.end135

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.0 = phi i32 [ %cond, %while.end.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  %from.0 = phi i32 [ %to.0.lcssa, %while.end.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  %61 = add i32 %from.0, 1
  %smax = call i32 @llvm.smax.i32(i32 %j.0.lcssa, i32 %61)
  %62 = add i32 %smax, -1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %do.body
  %to.0.in = phi i32 [ %from.0, %do.body ], [ %to.0, %land.rhs.while.cond_crit_edge ]
  %to.0 = add i32 %to.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %to.0.in, i32 %62)
  %exitcond284.not = icmp eq i32 %to.0.in, %62
  br i1 %exitcond284.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %flags116 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %to.0, i32 1
  %63 = ptrtoint ptr %flags116 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags116, align 2
  %65 = and i16 %64, 1
  %tobool119.not = icmp eq i16 %65, 0
  br i1 %tobool119.not, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %to.0.lcssa = phi i32 [ %smax, %while.cond.while.end_crit_edge ], [ %to.0, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %to.0, i32 %j.0.lcssa)
  %cmp113.le = icmp slt i32 %to.0, %j.0.lcssa
  %66 = ptrtoint ptr %i2c_client109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c_client109, align 4
  %adapter122 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %adapter122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter122, align 8
  %arrayidx123 = getelementptr %struct.i2c_msg, ptr %call8.i, i32 %from.0
  %sub = sub i32 %to.0.lcssa, %from.0
  %call124 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef %arrayidx123, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.inv = icmp sgt i32 %call124, 0
  %add127 = select i1 %cmp125.inv, i32 %ret.0, i32 0
  %cond = add i32 %add127, %call124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp131 = icmp sgt i32 %cond, 0
  %or.cond254 = select i1 %cmp113.le, i1 %cmp131, i1 false
  br i1 %or.cond254, label %while.end.do.body_crit_edge, label %while.end.if.end135_crit_edge

while.end.if.end135_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end135:                                        ; preds = %while.end.if.end135_crit_edge, %if.then108
  %ret.1 = phi i32 [ %call110, %if.then108 ], [ %cond, %while.end.if.end135_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1, i32 %j.0.lcssa)
  %cmp138 = icmp slt i32 %ret.1, %j.0.lcssa
  %spec.store.select = select i1 %cmp138, i32 -5, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp136269 = icmp slt i32 %ret.1, 0
  %spec.select268 = select i1 %cmp136269, i32 %ret.1, i32 %spec.store.select
  br label %if.end135.thread

if.end135.thread:                                 ; preds = %if.end135, %if.end62.if.end135.thread_crit_edge, %if.then25.if.end135.thread_crit_edge
  %j.0271 = phi i32 [ %j.0.lcssa, %if.end135 ], [ %j.0279, %if.end62.if.end135.thread_crit_edge ], [ %j.0279, %if.then25.if.end135.thread_crit_edge ]
  %70 = phi i32 [ %spec.select268, %if.end135 ], [ -12, %if.end62.if.end135.thread_crit_edge ], [ -12, %if.then25.if.end135.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %j.0271)
  %cmp142 = icmp eq i32 %70, %j.0271
  %cond147 = select i1 %cmp142, i32 %num, i32 %70
  br label %cleanup

cleanup:                                          ; preds = %if.end135.thread, %if.end7.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond147, %if.end135.thread ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %wbuf) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc90522_functionality(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_tc90522__290_849_tc90522_driver_init6, !1, !"__initcall__kmod_tc90522__290_849_tc90522_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 849, i32 1}
!2 = !{ptr @__exitcall_tc90522_driver_exit, !1, !"__exitcall_tc90522_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 851, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 852, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 853, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 842, i32 11}
!12 = !{ptr @tc90522_driver, !13, !"tc90522_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 840, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 807, i32 22}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 815, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tc90522_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tc90522_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tc90522_ops_sat, !25, !"tc90522_ops_sat", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 736, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 616, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tc90522_init._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @tc90522_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wakeup_sat, !33, !"wakeup_sat", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 589, i32 29}
!34 = !{ptr @wakeup_ter, !35, !"wakeup_ter", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 590, i32 29}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 583, i32 3}
!38 = !{ptr @tc90522_sleep._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tc90522_sleep._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @sleep_sat, !41, !"sleep_sat", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 562, i32 29}
!42 = !{ptr @sleep_ter, !43, !"sleep_ter", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 563, i32 29}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 508, i32 2}
!46 = !{ptr @tc90522_set_frontend._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tc90522_set_frontend._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @reset_sat, !49, !"reset_sat", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 474, i32 29}
!50 = !{ptr @reset_ter, !51, !"reset_ter", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 475, i32 29}
!52 = !{ptr @fec_conv_sat, !53, !"fec_conv_sat", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 188, i32 32}
!54 = !{ptr @tc90522_ops_ter, !55, !"tc90522_ops_ter", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 756, i32 38}
!56 = !{ptr @tm_conv, !57, !"tm_conv", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 315, i32 36}
!58 = !{ptr @fec_conv_ter, !59, !"fec_conv_ter", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 322, i32 32}
!60 = !{ptr @mod_conv, !61, !"mod_conv", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 326, i32 33}
!62 = !{ptr @tc90522_tuner_i2c_algo, !63, !"tc90522_tuner_i2c_algo", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 726, i32 35}
!64 = !{ptr @tc90522_id, !65, !"tc90522_id", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/tc90522.c", i32 833, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i8 0, i8 2}
