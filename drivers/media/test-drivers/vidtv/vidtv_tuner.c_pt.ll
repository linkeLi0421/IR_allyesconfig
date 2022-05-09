; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_tuner.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_tuner.c"
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
%struct.vidtv_tuner_cnr_to_qual_s = type { i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.vidtv_tuner_dev = type { ptr, %struct.vidtv_tuner_hardware_state, %struct.vidtv_tuner_config }
%struct.vidtv_tuner_hardware_state = type { i8, i32, i32, i32, i32 }
%struct.vidtv_tuner_config = type { ptr, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }

@__initcall__kmod_dvb_vidtv_tuner__290_435_vidtv_tuner_i2c_driver_init6 = internal global ptr @vidtv_tuner_i2c_driver_init, section ".initcall6.init", align 4
@vidtv_tuner_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vidtv_tuner_i2c_probe, ptr @vidtv_tuner_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vidtv_tuner_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vidtv_tuner_i2c_driver_exit = internal global ptr @vidtv_tuner_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [46 x i8] c"dvb_vidtv_tuner.description=Virtual DVB Tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [44 x i8] c"dvb_vidtv_tuner.author=Daniel W. S. Almeida\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [70 x i8] c"dvb_vidtv_tuner.file=drivers/media/test-drivers/vidtv/dvb-vidtv-tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"dvb_vidtv_tuner.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vidtv_tuner\00", [16 x i8] zeroinitializer }, align 32
@vidtv_tuner_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dvb_vidtv_tuner\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vidtv_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr null, ptr @vidtv_tuner_init, ptr @vidtv_tuner_sleep, ptr @vidtv_tuner_suspend, ptr @vidtv_tuner_resume, ptr @vidtv_tuner_set_params, ptr null, ptr @vidtv_tuner_set_config, ptr @vidtv_tuner_get_frequency, ptr @vidtv_tuner_get_bandwidth, ptr @vidtv_tuner_get_if_frequency, ptr @vidtv_tuner_get_status, ptr @vidtv_tuner_get_signal_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_tuner_check_frequency_shift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unsupported delivery system: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vidtv_tuner_check_frequency_shift\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vidtv/vidtv_tuner.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vidtv_tuner_check_frequency_shift._entry_ptr = internal global ptr @vidtv_tuner_check_frequency_shift._entry, section ".printk_index", align 4
@vidtv_tuner_t_cnr_2_qual = internal constant { [15 x %struct.vidtv_tuner_cnr_to_qual_s], [48 x i8] } { [15 x %struct.vidtv_tuner_cnr_to_qual_s] [%struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 1, i32 4100, i32 5900 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 2, i32 6100, i32 9600 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 3, i32 7200, i32 12400 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 5, i32 8500, i32 15600 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 7, i32 9200, i32 17500 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 1, i32 1, i32 9800, i32 11800 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 1, i32 2, i32 12100, i32 15300 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 1, i32 3, i32 13400, i32 18100 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 1, i32 5, i32 14800, i32 21300 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 1, i32 7, i32 15700, i32 23600 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 1, i32 14000, i32 16000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 2, i32 19900, i32 25400 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 3, i32 24900, i32 27900 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 5, i32 21300, i32 23300 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 7, i32 22000, i32 24000 }], [48 x i8] zeroinitializer }, align 32
@vidtv_tuner_s_cnr_2_qual = internal constant { [5 x %struct.vidtv_tuner_cnr_to_qual_s], [48 x i8] } { [5 x %struct.vidtv_tuner_cnr_to_qual_s] [%struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 1, i32 7000, i32 10000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 2, i32 9000, i32 12000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 3, i32 10000, i32 13000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 5, i32 11000, i32 14000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 7, i32 12000, i32 15000 }], [48 x i8] zeroinitializer }, align 32
@vidtv_tuner_s2_cnr_2_qual = internal constant { [10 x %struct.vidtv_tuner_cnr_to_qual_s], [32 x i8] } { [10 x %struct.vidtv_tuner_cnr_to_qual_s] [%struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 1, i32 9000, i32 12000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 2, i32 11000, i32 14000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 3, i32 12000, i32 15000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 5, i32 12000, i32 15000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 8, i32 13000, i32 16000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 0, i32 11, i32 13500, i32 16500 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 9, i32 2, i32 14500, i32 17500 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 9, i32 3, i32 16000, i32 19000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 9, i32 5, i32 17500, i32 20500 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 9, i32 8, i32 19000, i32 22000 }], [32 x i8] zeroinitializer }, align 32
@vidtv_tuner_c_cnr_2_qual = internal constant { [2 x %struct.vidtv_tuner_cnr_to_qual_s], [32 x i8] } { [2 x %struct.vidtv_tuner_cnr_to_qual_s] [%struct.vidtv_tuner_cnr_to_qual_s { i32 5, i32 0, i32 34000, i32 38000 }, %struct.vidtv_tuner_cnr_to_qual_s { i32 3, i32 0, i32 30000, i32 34000 }], [32 x i8] zeroinitializer }, align 32
@vidtv_tuner_get_signal_strength._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_tuner_get_signal_strength = private unnamed_addr constant [32 x i8] c"vidtv_tuner_get_signal_strength\00", align 1
@vidtv_tuner_get_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_tuner_get_signal_strength, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@vidtv_tuner_get_signal_strength._entry_ptr = internal global ptr @vidtv_tuner_get_signal_strength._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 16]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 16]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"vidtv_tuner_i2c_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 426, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 428, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"vidtv_tuner_i2c_id_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 387, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"vidtv_tuner_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 373, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 151, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"vidtv_tuner_t_cnr_2_qual\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 62, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"vidtv_tuner_s_cnr_2_qual\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 39, i32 47 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"vidtv_tuner_s2_cnr_2_qual\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 48, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"vidtv_tuner_c_cnr_2_qual\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 33, i32 47 }
@___asan_gen_.50 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private constant [50 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_tuner.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 220, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_vidtv_tuner_i2c_driver_exit, ptr @__initcall__kmod_dvb_vidtv_tuner__290_435_vidtv_tuner_i2c_driver_init6, ptr @vidtv_tuner_check_frequency_shift._entry, ptr @vidtv_tuner_check_frequency_shift._entry_ptr, ptr @vidtv_tuner_get_signal_strength._entry, ptr @vidtv_tuner_get_signal_strength._entry_ptr, ptr @vidtv_tuner_i2c_driver_exit, ptr @vidtv_tuner_i2c_driver, ptr @.str, ptr @vidtv_tuner_i2c_id_table, ptr @vidtv_tuner_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vidtv_tuner_t_cnr_2_qual, ptr @vidtv_tuner_s_cnr_2_qual, ptr @vidtv_tuner_s2_cnr_2_qual, ptr @vidtv_tuner_c_cnr_2_qual, ptr @vidtv_tuner_get_signal_strength._rs, ptr @.str.6], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_check_frequency_shift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_t_cnr_2_qual to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_s_cnr_2_qual to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_s2_cnr_2_qual to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_c_cnr_2_qual to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_get_signal_strength._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_tuner_get_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vidtv_tuner_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_tuner_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @vidtv_tuner_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %9 = call ptr @memcpy(ptr %tuner_ops, ptr @vidtv_tuner_ops, i32 220)
  %config4 = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %call7.i.i, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %config4, ptr %1, i32 112)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %config.sroa.4.0.config1.sroa_idx = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %config.sroa.4.0.config1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %config.sroa.4.0.copyload = load i32, ptr %config.sroa.4.0.config1.sroa_idx, align 4
  %call2 = tail call i32 @msleep_interruptible(i32 noundef %config.sroa.4.0.copyload) #9
  %hw_state = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hw_state, align 4
  %if_frequency = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5000, ptr %if_frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_sleep(ptr nocapture noundef readonly %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_state = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hw_state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_suspend(ptr nocapture noundef readonly %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_state = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hw_state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_resume(ptr nocapture noundef readonly %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %hw_state = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %config.sroa.4.0.config1.sroa_idx = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %config.sroa.4.0.config1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %config.sroa.4.0.copyload = load i32, ptr %config.sroa.4.0.config1.sroa_idx, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 1
  %5 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency_min_hz, align 4
  %bandwidth_min = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 4
  %7 = ptrtoint ptr %bandwidth_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth_min, align 4
  %bandwidth_max = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 5
  %9 = ptrtoint ptr %bandwidth_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bandwidth_max, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp = icmp ult i32 %12, %6
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 2
  %13 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency_max_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp12 = icmp ugt i32 %12, %14
  br i1 %cmp12, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %8)
  %cmp14 = icmp ult i32 %16, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp17 = icmp ugt i32 %16, %10
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp17
  br i1 %or.cond, label %lor.lhs.false13.if.then_crit_edge, label %if.end

lor.lhs.false13.if.then_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false13.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %lock_status = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false13
  %tuned_frequency = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %tuned_frequency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %tuned_frequency, align 4
  %18 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bandwidth, align 4
  %lock_status23 = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %lock_status23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %lock_status23, align 4
  %call24 = tail call i32 @msleep_interruptible(i32 noundef %config.sroa.4.0.copyload) #9
  %call25 = tail call fastcc i32 @vidtv_tuner_check_frequency_shift(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.then
  %lock_status23.sink = phi ptr [ %lock_status, %if.then ], [ %lock_status23, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.then ], [ %call25, %if.end.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %lock_status23.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lock_status23.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %config = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %config, ptr %priv_cfg, i32 112)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %tuned_frequency = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %tuned_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuned_frequency, align 4
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bandwidth1 = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth1, align 4
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %if_frequency = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_frequency, align 4
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_tuner_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock_status = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %lock_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lock_status, align 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_tuner_get_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %4 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb, align 4
  %device = getelementptr inbounds %struct.dvb_adapter, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %call1 = tail call fastcc i32 @vidtv_tuner_check_frequency_shift(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock_status = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %lock_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %lock_status, align 4
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %strength, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.body [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 16, label %if.end.sw.epilog_crit_edge69
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 1, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge69:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_tuner_get_signal_strength._rs, ptr noundef nonnull @__func__.vidtv_tuner_get_signal_strength) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vidtv_tuner_get_signal_strength, i32 noundef %14) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge69
  %cnr2qual.0 = phi ptr [ @vidtv_tuner_c_cnr_2_qual, %sw.bb4 ], [ @vidtv_tuner_s2_cnr_2_qual, %sw.bb3 ], [ @vidtv_tuner_s_cnr_2_qual, %sw.bb2 ], [ @vidtv_tuner_t_cnr_2_qual, %if.end.sw.epilog_crit_edge ], [ @vidtv_tuner_t_cnr_2_qual, %if.end.sw.epilog_crit_edge69 ]
  %array_size.0 = phi i32 [ 2, %sw.bb4 ], [ 10, %sw.bb3 ], [ 5, %sw.bb2 ], [ 15, %if.end.sw.epilog_crit_edge ], [ 15, %if.end.sw.epilog_crit_edge69 ]
  %modulation13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %modulation13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %modulation13, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.062 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vidtv_tuner_cnr_to_qual_s, ptr %cnr2qual.0, i32 %i.062
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp14.not = icmp eq i32 %18, %16
  br i1 %cmp14.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %fec = getelementptr %struct.vidtv_tuner_cnr_to_qual_s, ptr %cnr2qual.0, i32 %i.062, i32 1
  %19 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fec, align 4
  %21 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fec_inner, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp16.not = icmp eq i32 %20, %22
  br i1 %cmp16.not, label %if.end18, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool19.not = icmp eq i32 %call1, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cnr_good = getelementptr %struct.vidtv_tuner_cnr_to_qual_s, ptr %cnr2qual.0, i32 %i.062, i32 3
  %23 = ptrtoint ptr %cnr_good to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnr_good, align 4
  %conv = trunc i32 %24 to i16
  %25 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %strength, align 2
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %cnr_ok = getelementptr %struct.vidtv_tuner_cnr_to_qual_s, ptr %cnr2qual.0, i32 %i.062, i32 2
  %26 = ptrtoint ptr %cnr_ok to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cnr_ok, align 4
  %cnr_good25 = getelementptr %struct.vidtv_tuner_cnr_to_qual_s, ptr %cnr2qual.0, i32 %i.062, i32 3
  %28 = ptrtoint ptr %cnr_good25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnr_good25, align 4
  %factor = shl i32 %27, 1
  %sub28 = sub i32 %factor, %29
  %conv29 = trunc i32 %sub28 to i16
  %30 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv29, ptr %strength, align 2
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %array_size.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %call1, 24000
  %div.neg = sdiv i32 %mul, -100
  %31 = trunc i32 %div.neg to i16
  %conv31 = add i16 %31, -31536
  %32 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv31, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end22, %if.then20, %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end22 ], [ 0, %if.then20 ], [ 0, %for.end ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidtv_tuner_check_frequency_shift(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  %config = alloca %struct.vidtv_tuner_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %config) #9
  %config1 = getelementptr inbounds %struct.vidtv_tuner_dev, ptr %3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %config, ptr %config1, i32 112)
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %6, label %do.end [
    i32 3, label %entry.sw.bb_crit_edge
    i32 16, label %entry.sw.bb_crit_edge40
    i32 5, label %entry.sw.bb2_crit_edge
    i32 6, label %entry.sw.bb2_crit_edge41
    i32 1, label %sw.bb4
  ]

entry.sw.bb2_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge40
  %vidtv_valid_dvb_t_freqs = getelementptr inbounds %struct.vidtv_tuner_config, ptr %config, i32 0, i32 3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge41
  %vidtv_valid_dvb_s_freqs = getelementptr inbounds %struct.vidtv_tuner_config, ptr %config, i32 0, i32 5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vidtv_valid_dvb_c_freqs = getelementptr inbounds %struct.vidtv_tuner_config, ptr %config, i32 0, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %device = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %6) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %valid_freqs.0 = phi ptr [ %vidtv_valid_dvb_c_freqs, %sw.bb4 ], [ %vidtv_valid_dvb_s_freqs, %sw.bb2 ], [ %vidtv_valid_dvb_t_freqs, %sw.bb ]
  %max_frequency_shift_hz = getelementptr inbounds %struct.vidtv_tuner_config, ptr %config, i32 0, i32 6
  %12 = ptrtoint ptr %valid_freqs.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valid_freqs.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %if.end12
  %arrayidx.1 = getelementptr i32, ptr %valid_freqs.0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %tobool10.not.1 = icmp eq i32 %17, %15
  br i1 %tobool10.not.1, label %if.end.1.cleanup_crit_edge, label %if.end12.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.1:                                       ; preds = %if.end.1
  %sub.1 = sub i32 %17, %15
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %19 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.1 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.1)
  %cmp13.1 = icmp ult i32 %18, %conv.1
  br i1 %cmp13.1, label %if.end12.1.if.then15_crit_edge, label %for.cond.1

if.end12.1.if.then15_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.1:                                       ; preds = %if.end12.1
  %arrayidx.2 = getelementptr i32, ptr %valid_freqs.0, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %23 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %tobool10.not.2 = icmp eq i32 %24, %22
  br i1 %tobool10.not.2, label %if.end.2.cleanup_crit_edge, label %if.end12.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.2:                                       ; preds = %if.end.2
  %sub.2 = sub i32 %24, %22
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %26 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.2 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.2)
  %cmp13.2 = icmp ult i32 %25, %conv.2
  br i1 %cmp13.2, label %if.end12.2.if.then15_crit_edge, label %for.cond.2

if.end12.2.if.then15_crit_edge:                   ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.2:                                       ; preds = %if.end12.2
  %arrayidx.3 = getelementptr i32, ptr %valid_freqs.0, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.3 = icmp eq i32 %29, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  %30 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %tobool10.not.3 = icmp eq i32 %31, %29
  br i1 %tobool10.not.3, label %if.end.3.cleanup_crit_edge, label %if.end12.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.3:                                       ; preds = %if.end.3
  %sub.3 = sub i32 %31, %29
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %33 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.3 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv.3)
  %cmp13.3 = icmp ult i32 %32, %conv.3
  br i1 %cmp13.3, label %if.end12.3.if.then15_crit_edge, label %for.cond.3

if.end12.3.if.then15_crit_edge:                   ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.3:                                       ; preds = %if.end12.3
  %arrayidx.4 = getelementptr i32, ptr %valid_freqs.0, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.4 = icmp eq i32 %36, 0
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  %37 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %tobool10.not.4 = icmp eq i32 %38, %36
  br i1 %tobool10.not.4, label %if.end.4.cleanup_crit_edge, label %if.end12.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.4:                                       ; preds = %if.end.4
  %sub.4 = sub i32 %38, %36
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %40 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.4 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.4)
  %cmp13.4 = icmp ult i32 %39, %conv.4
  br i1 %cmp13.4, label %if.end12.4.if.then15_crit_edge, label %for.cond.4

if.end12.4.if.then15_crit_edge:                   ; preds = %if.end12.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.4:                                       ; preds = %if.end12.4
  %arrayidx.5 = getelementptr i32, ptr %valid_freqs.0, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.5 = icmp eq i32 %43, 0
  br i1 %tobool.not.5, label %for.cond.4.cleanup_crit_edge, label %if.end.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.5:                                         ; preds = %for.cond.4
  %44 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %tobool10.not.5 = icmp eq i32 %45, %43
  br i1 %tobool10.not.5, label %if.end.5.cleanup_crit_edge, label %if.end12.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.5:                                       ; preds = %if.end.5
  %sub.5 = sub i32 %45, %43
  %46 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  %47 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.5 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.5)
  %cmp13.5 = icmp ult i32 %46, %conv.5
  br i1 %cmp13.5, label %if.end12.5.if.then15_crit_edge, label %for.cond.5

if.end12.5.if.then15_crit_edge:                   ; preds = %if.end12.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.5:                                       ; preds = %if.end12.5
  %arrayidx.6 = getelementptr i32, ptr %valid_freqs.0, i32 6
  %49 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.6 = icmp eq i32 %50, 0
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %if.end.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.6:                                         ; preds = %for.cond.5
  %51 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %tobool10.not.6 = icmp eq i32 %52, %50
  br i1 %tobool10.not.6, label %if.end.6.cleanup_crit_edge, label %if.end12.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.6:                                       ; preds = %if.end.6
  %sub.6 = sub i32 %52, %50
  %53 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 false)
  %54 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.6 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.6)
  %cmp13.6 = icmp ult i32 %53, %conv.6
  br i1 %cmp13.6, label %if.end12.6.if.then15_crit_edge, label %for.cond.6

if.end12.6.if.then15_crit_edge:                   ; preds = %if.end12.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

for.cond.6:                                       ; preds = %if.end12.6
  %arrayidx.7 = getelementptr i32, ptr %valid_freqs.0, i32 7
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.7 = icmp eq i32 %57, 0
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %if.end.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.7:                                         ; preds = %for.cond.6
  %58 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %tobool10.not.7 = icmp eq i32 %59, %57
  br i1 %tobool10.not.7, label %if.end.7.cleanup_crit_edge, label %if.end12.7

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.7:                                       ; preds = %if.end.7
  %sub.7 = sub i32 %59, %57
  %60 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 false)
  %61 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv.7 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv.7)
  %cmp13.7 = icmp ult i32 %60, %conv.7
  br i1 %cmp13.7, label %if.end12.7.if.then15_crit_edge, label %if.end12.7.cleanup_crit_edge

if.end12.7.cleanup_crit_edge:                     ; preds = %if.end12.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.7.if.then15_crit_edge:                   ; preds = %if.end12.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end:                                           ; preds = %sw.epilog
  %63 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %13)
  %tobool10.not = icmp eq i32 %64, %13
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sub = sub i32 %64, %13
  %65 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %66 = ptrtoint ptr %max_frequency_shift_hz to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_frequency_shift_hz, align 4
  %conv = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv)
  %cmp13 = icmp ult i32 %65, %conv
  br i1 %cmp13, label %if.end12.if.then15_crit_edge, label %for.cond

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %if.end12.7.if.then15_crit_edge, %if.end12.6.if.then15_crit_edge, %if.end12.5.if.then15_crit_edge, %if.end12.4.if.then15_crit_edge, %if.end12.3.if.then15_crit_edge, %if.end12.2.if.then15_crit_edge, %if.end12.1.if.then15_crit_edge
  %conv.le.pre-phi = phi i32 [ %conv.7, %if.end12.7.if.then15_crit_edge ], [ %conv.6, %if.end12.6.if.then15_crit_edge ], [ %conv.5, %if.end12.5.if.then15_crit_edge ], [ %conv.4, %if.end12.4.if.then15_crit_edge ], [ %conv.3, %if.end12.3.if.then15_crit_edge ], [ %conv.2, %if.end12.2.if.then15_crit_edge ], [ %conv.1, %if.end12.1.if.then15_crit_edge ], [ %conv, %if.end12.if.then15_crit_edge ]
  %.lcssa39 = phi i32 [ %60, %if.end12.7.if.then15_crit_edge ], [ %53, %if.end12.6.if.then15_crit_edge ], [ %46, %if.end12.5.if.then15_crit_edge ], [ %39, %if.end12.4.if.then15_crit_edge ], [ %32, %if.end12.3.if.then15_crit_edge ], [ %25, %if.end12.2.if.then15_crit_edge ], [ %18, %if.end12.1.if.then15_crit_edge ], [ %65, %if.end12.if.then15_crit_edge ]
  %mul = mul i32 %.lcssa39, 100
  %div = udiv i32 %mul, %conv.le.pre-phi
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %if.end12.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %div, %if.then15 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ -22, %for.cond.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ -22, %for.cond.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ -22, %for.cond.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ -22, %for.cond.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ -22, %for.cond.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ -22, %for.cond.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ -22, %if.end12.7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_dvb_vidtv_tuner__290_435_vidtv_tuner_i2c_driver_init6, !1, !"__initcall__kmod_dvb_vidtv_tuner__290_435_vidtv_tuner_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_vidtv_tuner_i2c_driver_exit, !1, !"__exitcall_vidtv_tuner_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 428, i32 26}
!12 = !{ptr @vidtv_tuner_i2c_driver, !13, !"vidtv_tuner_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 426, i32 26}
!14 = !{ptr @vidtv_tuner_ops, !15, !"vidtv_tuner_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 373, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 151, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vidtv_tuner_check_frequency_shift._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @vidtv_tuner_check_frequency_shift._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 220, i32 3}
!26 = !{ptr @vidtv_tuner_get_signal_strength._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.vidtv_tuner_get_signal_strength, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vidtv_tuner_get_signal_strength._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @vidtv_tuner_get_signal_strength._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @vidtv_tuner_t_cnr_2_qual, !31, !"vidtv_tuner_t_cnr_2_qual", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 62, i32 47}
!32 = !{ptr @vidtv_tuner_s_cnr_2_qual, !33, !"vidtv_tuner_s_cnr_2_qual", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 39, i32 47}
!34 = !{ptr @vidtv_tuner_s2_cnr_2_qual, !35, !"vidtv_tuner_s2_cnr_2_qual", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 48, i32 47}
!36 = !{ptr @vidtv_tuner_c_cnr_2_qual, !37, !"vidtv_tuner_c_cnr_2_qual", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 33, i32 47}
!38 = !{ptr @vidtv_tuner_i2c_id_table, !39, !"vidtv_tuner_i2c_id_table", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vidtv/vidtv_tuner.c", i32 387, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
