; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_demod.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_demod.c"
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
%struct.vidtv_demod_cnr_to_qual_s = type { i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.vidtv_demod_state = type { %struct.dvb_frontend, %struct.vidtv_demod_config, i32, i16 }
%struct.vidtv_demod_config = type { i8, i8 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }

@__initcall__kmod_dvb_vidtv_demod__290_460_vidtv_demod_i2c_driver_init6 = internal global ptr @vidtv_demod_i2c_driver_init, section ".initcall6.init", align 4
@vidtv_demod_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vidtv_demod_i2c_probe, ptr @vidtv_demod_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vidtv_demod_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vidtv_demod_i2c_driver_exit = internal global ptr @vidtv_demod_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [59 x i8] c"dvb_vidtv_demod.description=Virtual DVB Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [44 x i8] c"dvb_vidtv_demod.author=Daniel W. S. Almeida\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [70 x i8] c"dvb_vidtv_demod.file=drivers/media/test-drivers/vidtv/dvb-vidtv-demod\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"dvb_vidtv_demod.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vidtv_demod\00", [16 x i8] zeroinitializer }, align 32
@vidtv_demod_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dvb_vidtv_demod\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vidtv_demod_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Dummy demod for DVB-T/T2/C/S/S2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 -2144967296, i32 62500, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1835007 }, [8 x i8] c"\03\10\01\05\06\00\00\00", ptr null, ptr @vidtv_demod_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidtv_demod_set_frontend, ptr null, ptr @vidtv_demod_get_frontend, ptr @vidtv_demod_read_status, ptr null, ptr @vidtv_demod_read_signal_strength, ptr null, ptr null, ptr null, ptr @vidtv_send_diseqc_msg, ptr null, ptr @vidtv_diseqc_send_burst, ptr @vidtv_demod_set_tone, ptr @vidtv_demod_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_demod_t_cnr_2_qual = internal constant { [15 x %struct.vidtv_demod_cnr_to_qual_s], [48 x i8] } { [15 x %struct.vidtv_demod_cnr_to_qual_s] [%struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 1, i32 4100, i32 5900 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 2, i32 6100, i32 9600 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 3, i32 7200, i32 12400 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 5, i32 8500, i32 15600 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 7, i32 9200, i32 17500 }, %struct.vidtv_demod_cnr_to_qual_s { i32 1, i32 1, i32 9800, i32 11800 }, %struct.vidtv_demod_cnr_to_qual_s { i32 1, i32 2, i32 12100, i32 15300 }, %struct.vidtv_demod_cnr_to_qual_s { i32 1, i32 3, i32 13400, i32 18100 }, %struct.vidtv_demod_cnr_to_qual_s { i32 1, i32 5, i32 14800, i32 21300 }, %struct.vidtv_demod_cnr_to_qual_s { i32 1, i32 7, i32 15700, i32 23600 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 1, i32 14000, i32 16000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 2, i32 19900, i32 25400 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 3, i32 24900, i32 27900 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 5, i32 21300, i32 23300 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 7, i32 22000, i32 24000 }], [48 x i8] zeroinitializer }, align 32
@vidtv_demod_s_cnr_2_qual = internal constant { [5 x %struct.vidtv_demod_cnr_to_qual_s], [48 x i8] } { [5 x %struct.vidtv_demod_cnr_to_qual_s] [%struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 1, i32 7000, i32 10000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 2, i32 9000, i32 12000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 3, i32 10000, i32 13000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 5, i32 11000, i32 14000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 7, i32 12000, i32 15000 }], [48 x i8] zeroinitializer }, align 32
@vidtv_demod_s2_cnr_2_qual = internal constant { [10 x %struct.vidtv_demod_cnr_to_qual_s], [32 x i8] } { [10 x %struct.vidtv_demod_cnr_to_qual_s] [%struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 1, i32 9000, i32 12000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 2, i32 11000, i32 14000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 3, i32 12000, i32 15000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 5, i32 12000, i32 15000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 8, i32 13000, i32 16000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 0, i32 11, i32 13500, i32 16500 }, %struct.vidtv_demod_cnr_to_qual_s { i32 9, i32 2, i32 14500, i32 17500 }, %struct.vidtv_demod_cnr_to_qual_s { i32 9, i32 3, i32 16000, i32 19000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 9, i32 5, i32 17500, i32 20500 }, %struct.vidtv_demod_cnr_to_qual_s { i32 9, i32 8, i32 19000, i32 22000 }], [32 x i8] zeroinitializer }, align 32
@vidtv_demod_c_cnr_2_qual = internal constant { [2 x %struct.vidtv_demod_cnr_to_qual_s], [32 x i8] } { [2 x %struct.vidtv_demod_cnr_to_qual_s] [%struct.vidtv_demod_cnr_to_qual_s { i32 5, i32 0, i32 34000, i32 38000 }, %struct.vidtv_demod_cnr_to_qual_s { i32 3, i32 0, i32 30000, i32 34000 }], [32 x i8] zeroinitializer }, align 32
@vidtv_match_cnr_s._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_match_cnr_s = private unnamed_addr constant [18 x i8] c"vidtv_match_cnr_s\00", align 1
@vidtv_match_cnr_s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vidtv_match_cnr_s, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unsupported delivery system: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vidtv/vidtv_demod.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vidtv_match_cnr_s._entry_ptr = internal global ptr @vidtv_match_cnr_s._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 16]
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"vidtv_demod_i2c_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 450, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 452, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [25 x i8] c"vidtv_demod_i2c_id_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 409, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"vidtv_demod_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 353, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"vidtv_demod_t_cnr_2_qual\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 58, i32 47 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"vidtv_demod_s_cnr_2_qual\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 35, i32 47 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"vidtv_demod_s2_cnr_2_qual\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 44, i32 47 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"vidtv_demod_c_cnr_2_qual\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 29, i32 47 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [50 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_demod.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 110, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_vidtv_demod_i2c_driver_exit, ptr @__initcall__kmod_dvb_vidtv_demod__290_460_vidtv_demod_i2c_driver_init6, ptr @vidtv_demod_i2c_driver_exit, ptr @vidtv_match_cnr_s._entry, ptr @vidtv_match_cnr_s._entry_ptr, ptr @vidtv_demod_i2c_driver, ptr @.str, ptr @vidtv_demod_i2c_id_table, ptr @vidtv_demod_ops, ptr @vidtv_demod_t_cnr_2_qual, ptr @vidtv_demod_s_cnr_2_qual, ptr @vidtv_demod_s2_cnr_2_qual, ptr @vidtv_demod_c_cnr_2_qual, ptr @vidtv_match_cnr_s._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_t_cnr_2_qual to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_s_cnr_2_qual to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_s2_cnr_2_qual to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_demod_c_cnr_2_qual to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_match_cnr_s._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_match_cnr_s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_demod_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vidtv_demod_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_demod_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @vidtv_demod_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_demod_i2c_probe(ptr nocapture noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1052) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %ops, ptr @vidtv_demod_ops, i32 544)
  %config1 = getelementptr inbounds %struct.vidtv_demod_state, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  %6 = ptrtoint ptr %config1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %config1, align 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 42
  %9 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %strength.i, align 4
  %stat.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 42, i32 1
  %10 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stat.i, align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 2
  %cnr.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 43
  %stat5.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 43, i32 1
  %13 = ptrtoint ptr %stat5.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %stat5.i, align 2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %14, align 1
  %16 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cnr.i, align 1
  %pre_bit_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 44
  %stat13.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 44, i32 1
  %17 = ptrtoint ptr %stat13.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %stat13.i, align 1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %18, align 8
  %20 = ptrtoint ptr %pre_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %pre_bit_error.i, align 2
  %pre_bit_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 45
  %stat21.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 45, i32 1
  %21 = ptrtoint ptr %stat21.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %stat21.i, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 0, ptr %22, align 1
  %24 = ptrtoint ptr %pre_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %pre_bit_count.i, align 1
  %post_bit_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 46
  %stat29.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 46, i32 1
  %25 = ptrtoint ptr %stat29.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %stat29.i, align 1
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %26, align 2
  %28 = ptrtoint ptr %post_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %post_bit_error.i, align 8
  %post_bit_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 47
  %stat37.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 47, i32 1
  %29 = ptrtoint ptr %stat37.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %stat37.i, align 2
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %30, align 1
  %32 = ptrtoint ptr %post_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %post_bit_count.i, align 1
  %block_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 48
  %stat45.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 48, i32 1
  %33 = ptrtoint ptr %stat45.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %stat45.i, align 1
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 0, ptr %34, align 4
  %36 = ptrtoint ptr %block_error.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %block_error.i, align 2
  %block_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 49
  %stat53.i = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 49, i32 1
  %37 = ptrtoint ptr %stat53.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %stat53.i, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 0, ptr %38, align 1
  %40 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %block_count.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_demod_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_demod_release(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_demod_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_status) #8
  %2 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tuner_status, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %5 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rf_strength, align 4
  %tuner_cnr = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 3
  %call6 = tail call i32 %6(ptr noundef %fe, ptr noundef %tuner_cnr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %7 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_status, align 4
  %call11 = call i32 %8(ptr noundef %fe, ptr noundef nonnull %tuner_status) #8
  %9 = ptrtoint ptr %tuner_cnr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tuner_cnr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp13.not = icmp eq i16 %10, 0
  %cond = select i1 %cmp13.not, i32 0, i32 31
  %status = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %status, align 4
  %12 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %demodulator_priv, align 4
  %status.i = getelementptr inbounds %struct.vidtv_demod_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status.i, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select.i = zext i1 %not.tobool.not.i to i8
  %spec.select86.i = select i1 %tobool.not.i, i8 0, i8 3
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %16, align 1
  %stat7.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %18 = ptrtoint ptr %stat7.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select86.i, ptr %stat7.i, align 1
  %stat11.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %19 = ptrtoint ptr %stat11.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select86.i, ptr %stat11.i, align 1
  %stat15.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %20 = ptrtoint ptr %stat15.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select86.i, ptr %stat15.i, align 1
  %stat19.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %21 = ptrtoint ptr %stat19.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select86.i, ptr %stat19.i, align 1
  %stat23.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %22 = ptrtoint ptr %stat23.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select86.i, ptr %stat23.i, align 1
  %stat27.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %23 = ptrtoint ptr %stat27.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select86.i, ptr %stat27.i, align 1
  %tuner_cnr.i = getelementptr inbounds %struct.vidtv_demod_state, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %tuner_cnr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tuner_cnr.i, align 4
  %conv30.i = zext i16 %25 to i64
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %conv30.i, ptr %26, align 1
  %28 = load i16, ptr %tuner_cnr.i, align 4
  %29 = udiv i16 %28, 50
  %call.i.i = call i32 @prandom_u32() #8
  %conv.i.i = zext i32 %call.i.i to i64
  %conv1.i.i = zext i16 %29 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %26, align 1
  %sub.i = add i64 %31, -68000
  %sub42.i = sub i64 %sub.i, %shr.i.i
  store i64 %sub42.i, ptr %26, align 1
  %32 = ptrtoint ptr %tuner_cnr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tuner_cnr.i, align 4
  %conv44.i = zext i16 %33 to i64
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %conv44.i, ptr %34, align 1
  %36 = load i16, ptr %tuner_cnr.i, align 4
  %37 = udiv i16 %36, 50
  %call.i80.i = call i32 @prandom_u32() #8
  %conv.i81.i = zext i32 %call.i80.i to i64
  %conv1.i82.i = zext i16 %37 to i64
  %mul.i83.i = mul nuw nsw i64 %conv.i81.i, %conv1.i82.i
  %shr.i84.i = lshr i64 %mul.i83.i, 32
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %34, align 1
  %sub56.i = sub i64 %39, %shr.i84.i
  store i64 %sub56.i, ptr %34, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %40 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.then17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 %41(ptr noundef %fe, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_demod_get_frontend(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_demod_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  %snr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config1 = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #8
  %2 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %snr, align 2
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvb.i, align 4
  %device.i = getelementptr inbounds %struct.dvb_adapter, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device.i, align 4
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 15
  %7 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delivery_system.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body.i [
    i32 3, label %entry.for.body.lr.ph.i_crit_edge
    i32 16, label %entry.for.body.lr.ph.i_crit_edge66
    i32 5, label %sw.bb1.i
    i32 6, label %sw.bb2.i
    i32 1, label %sw.bb3.i
  ]

entry.for.body.lr.ph.i_crit_edge66:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

entry.for.body.lr.ph.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_match_cnr_s._rs, ptr noundef nonnull @__func__.vidtv_match_cnr_s) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end30_crit_edge, label %do.end.i

do.body.i.if.end30_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vidtv_match_cnr_s, i32 noundef %11) #12
  br label %if.end30

for.body.lr.ph.i:                                 ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.for.body.lr.ph.i_crit_edge, %entry.for.body.lr.ph.i_crit_edge66
  %cnr2qual.0.ph.i = phi ptr [ @vidtv_demod_t_cnr_2_qual, %entry.for.body.lr.ph.i_crit_edge ], [ @vidtv_demod_t_cnr_2_qual, %entry.for.body.lr.ph.i_crit_edge66 ], [ @vidtv_demod_s_cnr_2_qual, %sw.bb1.i ], [ @vidtv_demod_s2_cnr_2_qual, %sw.bb2.i ], [ @vidtv_demod_c_cnr_2_qual, %sw.bb3.i ]
  %array_size.0.ph.i = phi i32 [ 15, %entry.for.body.lr.ph.i_crit_edge ], [ 15, %entry.for.body.lr.ph.i_crit_edge66 ], [ 5, %sw.bb1.i ], [ 10, %sw.bb2.i ], [ 2, %sw.bb3.i ]
  %modulation8.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %modulation8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %modulation8.i, align 4
  %fec_inner.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vidtv_demod_cnr_to_qual_s, ptr %cnr2qual.0.ph.i, i32 %i.030.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp9.i = icmp eq i32 %15, %13
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %fec.i = getelementptr %struct.vidtv_demod_cnr_to_qual_s, ptr %cnr2qual.0.ph.i, i32 %i.030.i, i32 1
  %16 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fec.i, align 4
  %18 = ptrtoint ptr %fec_inner.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fec_inner.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp11.i = icmp eq i32 %17, %19
  br i1 %cmp11.i, label %vidtv_match_cnr_s.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %array_size.0.ph.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

vidtv_match_cnr_s.exit:                           ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %vidtv_match_cnr_s.exit.if.end30_crit_edge, label %land.lhs.true

vidtv_match_cnr_s.exit.if.end30_crit_edge:        ; preds = %vidtv_match_cnr_s.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %vidtv_match_cnr_s.exit
  %tuner_cnr = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %tuner_cnr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tuner_cnr, align 4
  %conv = zext i16 %21 to i32
  %cnr_good = getelementptr %struct.vidtv_demod_cnr_to_qual_s, ptr %cnr2qual.0.ph.i, i32 %i.030.i, i32 3
  %22 = ptrtoint ptr %cnr_good to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnr_good, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp = icmp ugt i32 %23, %conv
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true3:                                   ; preds = %land.lhs.true
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 32, i32 13
  %24 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_rf_strength, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %land.lhs.true3.if.end30_crit_edge, label %if.then

land.lhs.true3.if.end30_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true3
  %call11 = call i32 %25(ptr noundef %1, ptr noundef nonnull %snr) #8
  %26 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %snr, align 2
  %conv12 = zext i16 %27 to i32
  %cnr_ok = getelementptr %struct.vidtv_demod_cnr_to_qual_s, ptr %cnr2qual.0.ph.i, i32 %i.030.i, i32 2
  %28 = ptrtoint ptr %cnr_ok to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cnr_ok, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv12)
  %cmp13 = icmp ugt i32 %29, %conv12
  %call.i45 = call i32 @prandom_u32() #8
  %conv.i = zext i32 %call.i45 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 100
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then
  %30 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config1, align 1
  %conv17 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv17)
  %cmp18 = icmp ult i32 %conv2.i, %conv17
  br i1 %cmp18, label %if.then20, label %if.then15.if.end30_crit_edge

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %status21 = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status21, align 4
  br label %if.end30

if.else:                                          ; preds = %if.then
  %recover_tslock_prob_on_good_snr = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %recover_tslock_prob_on_good_snr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %recover_tslock_prob_on_good_snr, align 1
  %conv23 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv23)
  %cmp24 = icmp ult i32 %conv2.i, %conv23
  br i1 %cmp24, label %if.then26, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %status27 = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %status27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %status27, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else.if.end30_crit_edge, %if.then20, %if.then15.if.end30_crit_edge, %land.lhs.true3.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %vidtv_match_cnr_s.exit.if.end30_crit_edge, %for.inc.i.if.end30_crit_edge, %do.end.i, %do.body.i.if.end30_crit_edge
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demodulator_priv.i, align 4
  %status.i = getelementptr inbounds %struct.vidtv_demod_state, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 4
  %and.i = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i51 = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i51, true
  %spec.select.i = zext i1 %not.tobool.not.i to i8
  %spec.select86.i = select i1 %tobool.not.i51, i8 0, i8 3
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 43, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select.i, ptr %40, align 1
  %stat7.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 44, i32 1
  %42 = ptrtoint ptr %stat7.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select86.i, ptr %stat7.i, align 1
  %stat11.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 45, i32 1
  %43 = ptrtoint ptr %stat11.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %spec.select86.i, ptr %stat11.i, align 1
  %stat15.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 46, i32 1
  %44 = ptrtoint ptr %stat15.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select86.i, ptr %stat15.i, align 1
  %stat19.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 47, i32 1
  %45 = ptrtoint ptr %stat19.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select86.i, ptr %stat19.i, align 1
  %stat23.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 48, i32 1
  %46 = ptrtoint ptr %stat23.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.select86.i, ptr %stat23.i, align 1
  %stat27.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 49, i32 1
  %47 = ptrtoint ptr %stat27.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select86.i, ptr %stat27.i, align 1
  %tuner_cnr.i = getelementptr inbounds %struct.vidtv_demod_state, ptr %37, i32 0, i32 3
  %48 = ptrtoint ptr %tuner_cnr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tuner_cnr.i, align 4
  %conv30.i = zext i16 %49 to i64
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %conv30.i, ptr %50, align 1
  %52 = load i16, ptr %tuner_cnr.i, align 4
  %53 = udiv i16 %52, 50
  %call.i.i = call i32 @prandom_u32() #8
  %conv.i.i = zext i32 %call.i.i to i64
  %conv1.i.i = zext i16 %53 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %50, align 1
  %sub.i = add i64 %55, -68000
  %sub42.i = sub i64 %sub.i, %shr.i.i
  store i64 %sub42.i, ptr %50, align 1
  %56 = ptrtoint ptr %tuner_cnr.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tuner_cnr.i, align 4
  %conv44.i = zext i16 %57 to i64
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %conv44.i, ptr %58, align 1
  %60 = load i16, ptr %tuner_cnr.i, align 4
  %61 = udiv i16 %60, 50
  %call.i80.i = call i32 @prandom_u32() #8
  %conv.i81.i = zext i32 %call.i80.i to i64
  %conv1.i82.i = zext i16 %61 to i64
  %mul.i83.i = mul nuw nsw i64 %conv.i81.i, %conv1.i82.i
  %shr.i84.i = lshr i64 %mul.i83.i, 32
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %58, align 1
  %sub56.i = sub i64 %63, %shr.i84.i
  store i64 %sub56.i, ptr %58, align 1
  %status32 = getelementptr inbounds %struct.vidtv_demod_state, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %status32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status32, align 4
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_demod_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 1
  %conv = trunc i64 %2 to i16
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_send_diseqc_msg(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_diseqc_send_burst(ptr nocapture noundef readnone %fe, i32 noundef %burst) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_demod_set_tone(ptr nocapture noundef readnone %fe, i32 noundef %tone) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_demod_set_voltage(ptr nocapture noundef readnone %fe, i32 noundef %voltage) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_dvb_vidtv_demod__290_460_vidtv_demod_i2c_driver_init6, !1, !"__initcall__kmod_dvb_vidtv_demod__290_460_vidtv_demod_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 460, i32 1}
!2 = !{ptr @__exitcall_vidtv_demod_i2c_driver_exit, !1, !"__exitcall_vidtv_demod_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 462, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 463, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 464, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 452, i32 26}
!12 = !{ptr @vidtv_demod_i2c_driver, !13, !"vidtv_demod_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 450, i32 26}
!14 = !{ptr @vidtv_demod_ops, !15, !"vidtv_demod_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 353, i32 38}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 110, i32 3}
!18 = !{ptr @vidtv_match_cnr_s._rs, !17, !"_rs", i1 false, i1 false}
!19 = !{ptr @__func__.vidtv_match_cnr_s, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vidtv_match_cnr_s._entry, !17, !"_entry", i1 false, i1 false}
!25 = !{ptr @vidtv_match_cnr_s._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @vidtv_demod_t_cnr_2_qual, !27, !"vidtv_demod_t_cnr_2_qual", i1 false, i1 false}
!27 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 58, i32 47}
!28 = !{ptr @vidtv_demod_s_cnr_2_qual, !29, !"vidtv_demod_s_cnr_2_qual", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 35, i32 47}
!30 = !{ptr @vidtv_demod_s2_cnr_2_qual, !31, !"vidtv_demod_s2_cnr_2_qual", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 44, i32 47}
!32 = !{ptr @vidtv_demod_c_cnr_2_qual, !33, !"vidtv_demod_c_cnr_2_qual", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 29, i32 47}
!34 = !{ptr @vidtv_demod_i2c_id_table, !35, !"vidtv_demod_i2c_id_table", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vidtv/vidtv_demod.c", i32 409, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
