; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mn88443x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88443x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.mn88443x_spec = type { i8 }
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
%struct.mn88443x_priv = type { ptr, %struct.dvb_frontend, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.mn88443x_config = type { ptr, i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_mn88443x__290_810_mn88443x_driver_init6 = internal global ptr @mn88443x_driver_init, section ".initcall6.init", align 4
@mn88443x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mn88443x_probe, ptr @mn88443x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mn88443x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88443x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mn88443x_driver_exit = internal global ptr @mn88443x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [66 x i8] c"mn88443x.author=Katsuhiro Suzuki <suzuki.katsuhiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [67 x i8] c"mn88443x.description=Socionext MN88443x series demodulator driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [51 x i8] c"mn88443x.file=drivers/media/dvb-frontends/mn88443x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"mn88443x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mn88443x\00", [23 x i8] zeroinitializer }, align 32
@mn88443x_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884433\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_pri }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884434-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_pri }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884434-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_sec }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mn88443x_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn884433\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_pri to i32) }, %struct.i2c_device_id { [20 x i8] c"mn884434-0\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_pri to i32) }, %struct.i2c_device_id { [20 x i8] c"mn884434-1\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_sec to i32) }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request mclk: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mn88443x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/mn88443x.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry_ptr = internal global ptr @mn88443x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"if-frequency\00", [19 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 705, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load IF frequency: %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry_ptr.10 = internal global ptr @mn88443x_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request reset_gpio: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@mn88443x_probe._entry_ptr.14 = internal global ptr @mn88443x_probe._entry.12, section ".printk_index", align 4
@mn88443x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mn88443x:726:(&regmap_config)->lock\00", [60 x i8] zeroinitializer }, align 32
@mn88443x_probe._key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mn88443x:738:(&regmap_config)->lock\00", [60 x i8] zeroinitializer }, align 32
@mn88443x_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Socionext MN88443x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 2071000000, i32 0, i32 0, i32 28860000, i32 28860000, i32 0, i32 1769985 }, [8 x i8] c"\09\08\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr @mn88443x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88443x_set_frontend, ptr @mn88443x_get_tune_settings, ptr null, ptr @mn88443x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@mn88443x_t_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid clock, CLK:%d, ADCKT:%lld, IF:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mn88443x_t_set_freq\00", [44 x i8] zeroinitializer }, align 32
@mn88443x_t_set_freq._entry_ptr = internal global ptr @mn88443x_t_set_freq._entry, section ".printk_index", align 4
@mn88443x_cmn_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to prepare and enable mclk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mn88443x_cmn_power_on\00", [42 x i8] zeroinitializer }, align 32
@mn88443x_cmn_power_on._entry_ptr = internal global ptr @mn88443x_cmn_power_on._entry, section ".printk_index", align 4
@mn88443x_spec_pri = internal constant { %struct.mn88443x_spec, [31 x i8] } { %struct.mn88443x_spec { i8 1 }, [31 x i8] zeroinitializer }, align 32
@mn88443x_spec_sec = internal constant { %struct.mn88443x_spec, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 44000000, i64 57000000]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"mn88443x_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 800, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 802, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"mn88443x_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 784, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"mn88443x_i2c_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 792, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 695, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 697, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 702, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 705, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 709, i32 50 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 712, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 670, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 726, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 738, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"mn88443x_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 651, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 419, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 215, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"mn88443x_spec_pri\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 776, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"mn88443x_spec_sec\00", align 1
@___asan_gen_.117 = private constant [42 x i8] c"../drivers/media/dvb-frontends/mn88443x.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 780, i32 35 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mn88443x_driver_exit, ptr @__initcall__kmod_mn88443x__290_810_mn88443x_driver_init6, ptr @mn88443x_cmn_power_on._entry, ptr @mn88443x_cmn_power_on._entry_ptr, ptr @mn88443x_driver_exit, ptr @mn88443x_probe._entry, ptr @mn88443x_probe._entry.12, ptr @mn88443x_probe._entry.8, ptr @mn88443x_probe._entry_ptr, ptr @mn88443x_probe._entry_ptr.10, ptr @mn88443x_probe._entry_ptr.14, ptr @mn88443x_t_set_freq._entry, ptr @mn88443x_t_set_freq._entry_ptr, ptr @mn88443x_driver, ptr @.str, ptr @mn88443x_of_match, ptr @mn88443x_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mn88443x_probe._key, ptr @regmap_config, ptr @.str.15, ptr @mn88443x_probe._key.16, ptr @.str.17, ptr @mn88443x_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mn88443x_spec_pri, ptr @mn88443x_spec_sec], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_probe._key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_t_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_cmn_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_spec_pri to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88443x_spec_sec to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mn88443x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mn88443x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88443x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1080, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %storemerge = phi ptr [ %6, %if.else ], [ %call5, %if.then4 ]
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %storemerge, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %mclk = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %tobool15.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %9) #10
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %if_freq = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef %if_freq, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not = icmp slt i32 %call.i.i, 0
  %or.cond152 = select i1 %tobool24.not, i1 %tobool15.not, i1 false
  br i1 %or.cond152, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call32 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %reset_gpio, align 4
  %cmp.i153 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %do.end38, label %if.end43

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %16) #10
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset_gpio, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  br i1 %tobool15.not, label %if.end43.if.end53_crit_edge, label %if.then45

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %mclk, align 4
  %if_freq48 = getelementptr inbounds %struct.mn88443x_config, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %if_freq48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %if_freq48, align 4
  %25 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %if_freq, align 4
  %reset_gpio50 = getelementptr inbounds %struct.mn88443x_config, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %reset_gpio50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset_gpio50, align 4
  %28 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %reset_gpio, align 4
  %fe = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 1
  %fe52 = getelementptr inbounds %struct.mn88443x_config, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %fe52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fe52, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %fe, ptr %30, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end43.if.end53_crit_edge
  %client_s = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %client_s to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %client, ptr %client_s, align 4
  %call55 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @regmap_config, ptr noundef nonnull @mn88443x_probe._key, ptr noundef nonnull @.str.15) #7
  %regmap_s = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %regmap_s to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call55, ptr %regmap_s, align 4
  %cmp.i154 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr, align 2
  %add = add i16 %38, 4
  %call63 = tail call ptr @i2c_new_dummy_device(ptr noundef %36, i16 noundef zeroext %add) #7
  %client_t = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %client_t to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call63, ptr %client_t, align 4
  %cmp.i155 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end61
  %call72 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call63, ptr noundef nonnull @regmap_config, ptr noundef nonnull @mn88443x_probe._key.16, ptr noundef nonnull @.str.17) #7
  %regmap_t = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %regmap_t to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call72, ptr %regmap_t, align 4
  %cmp.i156 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call72 to i32
  br label %err_i2c_t

if.end78:                                         ; preds = %if.end69
  %43 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mclk, align 4
  %call80 = tail call i32 @clk_get_rate(ptr noundef %44) #7
  %clk_freq = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call80, ptr %clk_freq, align 4
  %ops = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 1, i32 1
  %46 = call ptr @memcpy(ptr %ops, ptr @mn88443x_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mn88443x_priv, ptr %call.i, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %client_s to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client_s, align 4
  %51 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap_t, align 4
  %53 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mclk, align 4
  %call.i.i157 = tail call i32 @clk_prepare(ptr noundef %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %tobool.not.i.i = icmp eq i32 %call.i.i157, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end78.mn88443x_cmn_power_on.exit_crit_edge

if.end78.mn88443x_cmn_power_on.exit_crit_edge:    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_cmn_power_on.exit

if.end.i.i:                                       ; preds = %if.end78
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %54) #7
  br label %mn88443x_cmn_power_on.exit

if.end.i:                                         ; preds = %if.end.i.i
  %55 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %56, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %57 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %58, i32 noundef 0) #7
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not.i = icmp eq i8 %62, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end86_crit_edge, label %if.then4.i

if.end.i.if.end86_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 8, i32 noundef 255) #7
  %call6.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 9, i32 noundef 0) #7
  %call7.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 10, i32 noundef 128) #7
  br label %if.end86

mn88443x_cmn_power_on.exit:                       ; preds = %if.then3.i.i, %if.end78.mn88443x_cmn_power_on.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i157, %if.end78.mn88443x_cmn_power_on.exit_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.ph.i) #10
  br label %err_i2c_t

if.end86:                                         ; preds = %if.then4.i, %if.end.i.if.end86_crit_edge
  %.sink = phi i32 [ 224, %if.then4.i ], [ 143, %if.end.i.if.end86_crit_edge ]
  %call9.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 11, i32 noundef %.sink) #7
  %63 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap_t, align 4
  %call.i.i159 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap_t, align 4
  %call.i.i161 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

err_i2c_t:                                        ; preds = %mn88443x_cmn_power_on.exit, %if.then75
  %ret.0 = phi i32 [ %42, %if.then75 ], [ %retval.0.i.ph.i, %mn88443x_cmn_power_on.exit ]
  %67 = ptrtoint ptr %client_t to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client_t, align 4
  tail call void @i2c_unregister_device(ptr noundef %68) #7
  br label %cleanup

cleanup:                                          ; preds = %err_i2c_t, %if.end86, %if.then66, %if.then58, %do.end38, %do.end30, %do.end, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end38 ], [ %34, %if.then58 ], [ %40, %if.then66 ], [ %ret.0, %err_i2c_t ], [ 0, %if.end86 ], [ %call.i.i, %do.end30 ], [ %12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %mclk.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %client_t = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %client_t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client_t, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %regmap_t.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regmap_t.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_t.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %regmap_t.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_t.i, align 4
  %call.i.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %remainder.i1.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %regmap_s = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap_s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_s, align 4
  %regmap_t = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_t, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end4_crit_edge [
    i32 9, label %if.then
    i32 8, label %if.then3
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_t, align 4
  %call.i.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end4

if.then3:                                         ; preds = %entry
  %call.i.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_t, align 4
  %call.i.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 15, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %client_s.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %client_s.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client_s.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_t, align 4
  %clk_freq.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_freq.i, align 4
  %19 = add i32 %18, -4000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16200000, i32 %19)
  %20 = icmp ult i32 %19, 16200000
  %use_clkbuf.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 6
  br i1 %20, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %use_clkbuf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %use_clkbuf.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 17, i32 noundef 7) #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %use_clkbuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %use_clkbuf.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 17, i32 noundef 0) #7
  %23 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_freq.i, align 4
  %conv.i = zext i32 %24 to i64
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %adckt.0.i = phi i64 [ 0, %if.then.i ], [ %conv.i, %if.else.i ]
  %conv7.i = trunc i64 %adckt.0.i to i32
  %if_freq.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %if_freq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %if_freq.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %26, label %if.else16.i.i [
    i32 57000000, label %if.then.i.i
    i32 44000000, label %if.then10.i.i
  ]

if.then.i.i:                                      ; preds = %if.end.i
  %28 = add i32 %conv7.i, -20200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 800001, i32 %28)
  %29 = icmp ult i32 %28, 800001
  %30 = add i32 %conv7.i, -25300000
  call void @__sanitizer_cov_trace_const_cmp4(i32 110001, i32 %30)
  %31 = icmp ult i32 %30, 110001
  %or.cond.i.i = or i1 %29, %31
  br i1 %or.cond.i.i, label %if.then.i.i.if.then19.i_crit_edge, label %if.then.i.i.do.end.i_crit_edge

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i.i.if.then19.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i

if.then10.i.i:                                    ; preds = %if.end.i
  %32 = add i32 %conv7.i, -25000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 410001, i32 %32)
  %33 = icmp ult i32 %32, 410001
  br i1 %33, label %if.then10.i.i.if.then19.i_crit_edge, label %if.then10.i.i.do.end.i_crit_edge

if.then10.i.i.do.end.i_crit_edge:                 ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then10.i.i.if.then19.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i

if.else16.i.i:                                    ; preds = %if.end.i
  %34 = add i32 %26, -4000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %34)
  %35 = icmp ult i32 %34, 40000000
  %36 = add i32 %conv7.i, -20200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 5210001, i32 %36)
  %37 = icmp ult i32 %36, 5210001
  %38 = and i1 %37, %35
  br i1 %38, label %if.else16.i.i.if.end26.i_crit_edge, label %if.else16.i.i.do.end.i_crit_edge

if.else16.i.i.do.end.i_crit_edge:                 ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.else16.i.i.if.end26.i_crit_edge:               ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end.i:                                         ; preds = %if.else16.i.i.do.end.i_crit_edge, %if.then10.i.i.do.end.i_crit_edge, %if.then.i.i.do.end.i_crit_edge
  %39 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clk_freq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, i32 noundef %40, i64 noundef %adckt.0.i, i32 noundef %26) #10
  br label %if.end4

if.then19.i:                                      ; preds = %if.then10.i.i.if.then19.i_crit_edge, %if.then.i.i.if.then19.i_crit_edge
  %mul.i = shl nuw nsw i64 %adckt.0.i, 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then19.i, %if.else16.i.i.if.end26.i_crit_edge
  %.sink.i = phi i64 [ %mul.i, %if.then19.i ], [ 0, %if.else16.i.i.if.end26.i_crit_edge ]
  %conv24.i = zext i32 %26 to i64
  %sub25.i = sub nsw i64 %.sink.i, %conv24.i
  %shl.i = shl nsw i64 %sub25.i, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %41 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !74
  %call.i.i80 = call i64 @div_s64_rem(i64 noundef %shl.i, i32 noundef %conv7.i, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %shl29.i = shl nuw nsw i64 %adckt.0.i, 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i1.i) #7
  %42 = ptrtoint ptr %remainder.i1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %remainder.i1.i, align 4, !annotation !74
  %call.i2.i = call i64 @div_s64_rem(i64 noundef %shl29.i, i32 noundef 8126984, ptr noundef nonnull %remainder.i1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i1.i) #7
  %43 = lshr i64 %call.i.i80, 16
  %conv31.i = trunc i64 %43 to i32
  %call32.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 36, i32 noundef %conv31.i) #7
  %44 = lshr i64 %call.i.i80, 8
  %conv34.i = trunc i64 %44 to i32
  %call35.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 37, i32 noundef %conv34.i) #7
  %conv36.i = trunc i64 %call.i.i80 to i32
  %call37.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 38, i32 noundef %conv36.i) #7
  %45 = lshr i64 %call.i2.i, 16
  %conv39.i = trunc i64 %45 to i32
  %call40.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 39, i32 noundef %conv39.i) #7
  %46 = lshr i64 %call.i2.i, 8
  %conv42.i = trunc i64 %46 to i32
  %call43.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 40, i32 noundef %conv42.i) #7
  %conv44.i = trunc i64 %call.i2.i to i32
  %call45.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 41, i32 noundef %conv44.i) #7
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 32, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 44, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call48.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 62, i32 noundef 0) #7
  %call49.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 19, i32 noundef 250) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end26.i, %do.end.i, %if.then, %entry.if.end4_crit_edge
  %tssel.0 = phi i32 [ 12, %if.then ], [ 4, %entry.if.end4_crit_edge ], [ 4, %do.end.i ], [ 4, %if.end26.i ]
  %intsel.0 = phi i32 [ 96, %if.then ], [ 32, %entry.if.end4_crit_edge ], [ 32, %do.end.i ], [ 32, %if.end26.i ]
  %call.i81 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 5, i32 noundef 30, i32 noundef %tssel.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call6 = call i32 @regmap_write(ptr noundef %5, i32 noundef 6, i32 noundef 0) #7
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 7, i32 noundef 240, i32 noundef %intsel.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call10 = call i32 @regmap_write(ptr noundef %5, i32 noundef 207, i32 noundef 149) #7
  %call11 = call i32 @regmap_write(ptr noundef %3, i32 noundef 115, i32 noundef 128) #7
  %47 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delivery_system, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %48, label %if.end4.if.end22_crit_edge [
    i32 9, label %if.then15
    i32 8, label %if.then20
  ]

if.end4.if.end22_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %regmap_s to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap_s, align 4
  %stream_id.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %52 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stream_id.i, align 4
  %shr.i = lshr i32 %53, 8
  %call.i83 = call i32 @regmap_write(ptr noundef %51, i32 noundef 47, i32 noundef %shr.i) #7
  %54 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stream_id.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 48, i32 noundef %55) #7
  %call3.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 49, i32 noundef 0) #7
  br label %if.end22

if.then20:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %regmap_t to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap_t, align 4
  %call.i.i85 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 19, i32 noundef 255, i32 noundef 250, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call1.i = call i32 @regmap_write(ptr noundef %57, i32 noundef 20, i32 noundef 0) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then15, %if.end4.if.end22_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %58 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %59, null
  br i1 %tobool.not, label %if.end22.if.end43_crit_edge, label %if.then23

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then23:                                        ; preds = %if.end22
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %60 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool25.not = icmp eq ptr %61, null
  br i1 %tobool25.not, label %if.then23.if.end30_crit_edge, label %if.then26

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 %61(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then23.if.end30_crit_edge
  %62 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_params, align 4
  %call34 = call i32 %63(ptr noundef %fe) #7
  %64 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool37.not = icmp eq ptr %65, null
  br i1 %tobool37.not, label %if.end30.if.end43_crit_edge, label %if.then38

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 %65(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end30.if.end43_crit_edge, %if.end22.if.end43_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mn88443x_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 850, ptr %s, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %1 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delivery_system, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %2, label %entry.if.end6_crit_edge [
    i32 9, label %entry.if.end6.sink.split_crit_edge
    i32 8, label %if.then3
  ]

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then3, %entry.if.end6.sink.split_crit_edge
  %.sink12 = phi i32 [ 285715, %if.then3 ], [ 60001, %entry.if.end6.sink.split_crit_edge ]
  %.sink = phi i32 [ 285714, %if.then3 ], [ 30000, %entry.if.end6.sink.split_crit_edge ]
  %max_drift4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %max_drift4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink12, ptr %max_drift4, align 4
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %step_size5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %step_size5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88443x_read_status(ptr noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %seqrd.i = alloca i32, align 4
  %flg.i13 = alloca i32, align 4
  %tmpu.i14 = alloca i32, align 4
  %tmpm.i = alloca i32, align 4
  %tmpl.i15 = alloca i32, align 4
  %cpmon.i = alloca i32, align 4
  %tmpu.i = alloca i32, align 4
  %tmpl.i = alloca i32, align 4
  %flg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9, label %if.then
    i32 8, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %regmap_s.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %regmap_s.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_s.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpmon.i) #7
  %7 = ptrtoint ptr %cpmon.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cpmon.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpu.i) #7
  %8 = ptrtoint ptr %tmpu.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmpu.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpl.i) #7
  %9 = ptrtoint ptr %tmpl.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmpl.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flg.i) #7
  %10 = ptrtoint ptr %flg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %flg.i, align 4, !annotation !74
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 94, ptr noundef nonnull %cpmon.i) #7
  %11 = ptrtoint ptr %cpmon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpmon.i, align 4
  %and.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 28
  %and1.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.store.select.i, 3
  %spec.select.i = select i1 %tobool2.not.i, i32 %spec.store.select.i, i32 %or4.i
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %status, align 4
  %stat.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %14 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stat.i, align 1
  %15 = load i32, ptr %status, align 4
  %and6.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.if.end18.i_crit_edge, label %if.then8.i

if.then.if.end18.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %call9.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 90, ptr noundef nonnull %tmpu.i) #7
  %16 = ptrtoint ptr %tmpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmpu.i, align 4
  %shl.i = shl i32 %17, 8
  %18 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %strength.i, align 4
  %19 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %stat.i, align 1
  %conv.i = zext i32 %shl.i to i64
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %conv.i, ptr %20, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then8.i, %if.then.if.end18.i_crit_edge
  %cnr.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %stat19.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %22 = ptrtoint ptr %stat19.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %stat19.i, align 1
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and22.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end80.i_crit_edge, label %if.then24.i

if.end18.i.if.end80.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then24.i:                                      ; preds = %if.end18.i
  %call26.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 105, ptr noundef nonnull %tmpu.i) #7
  %call27.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 106, ptr noundef nonnull %tmpl.i) #7
  %25 = ptrtoint ptr %tmpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmpu.i, align 4
  %shl28.i = shl i32 %26, 8
  %27 = ptrtoint ptr %tmpl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmpl.i, align 4
  %or29.i = or i32 %shl28.i, %28
  %call30.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 107, ptr noundef nonnull %tmpu.i) #7
  %call31.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 108, ptr noundef nonnull %tmpl.i) #7
  %29 = ptrtoint ptr %tmpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmpu.i, align 4
  %31 = ptrtoint ptr %tmpl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmpl.i, align 4
  %33 = shl i32 %30, 23
  %34 = shl i32 %32, 15
  %shl34.i = or i32 %34, %33
  %mul.i = mul i32 %or29.i, %or29.i
  %sub.i = sub i32 %shl34.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl34.i, i32 %mul.i)
  %cmp.not.i = icmp eq i32 %shl34.i, %mul.i
  br i1 %cmp.not.i, label %if.then24.i.if.end80.i_crit_edge, label %div_u64.exit.i

if.then24.i.if.end80.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

div_u64.exit.i:                                   ; preds = %if.then24.i
  %mul37.i = shl i32 %or29.i, 4
  %mul38.i = mul i32 %mul37.i, %or29.i
  %div172.i.i.i = udiv i32 %mul38.i, %sub.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  %mul41.i = mul nuw i64 %conv173.i.i.i, %conv173.i.i.i
  %mul42.i = mul i64 %mul41.i, %conv173.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul42.i)
  %tobool43.not.i = icmp eq i64 %mul42.i, 0
  br i1 %tobool43.not.i, label %div_u64.exit.i.if.end80.i_crit_edge, label %if.else162.i.i105.i

div_u64.exit.i.if.end80.i_crit_edge:              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.else162.i.i105.i:                              ; preds = %div_u64.exit.i
  %conv45.i = trunc i64 %mul42.i to i32
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv45.i, i64 211243671486) #11, !srcloc !75
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %35, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %asmresult1.i.i.i.i)
  %tobool49.not.i = icmp eq i64 %asmresult1.i.i.i.i, 0
  br i1 %tobool49.not.i, label %if.else162.i.i105.i.if.end80.i_crit_edge, label %if.end66.i

if.else162.i.i105.i.if.end80.i_crit_edge:         ; preds = %if.else162.i.i105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.end66.i:                                       ; preds = %if.else162.i.i105.i
  %call51.i = call i32 @intlog10(i32 noundef %or29.i) #7
  %conv52.i = zext i32 %call51.i to i64
  %mul53.i = shl nuw nsw i64 %conv52.i, 1
  %36 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  %call58.i = call i32 @intlog10(i32 noundef %36) #7
  %conv59.i = zext i32 %call58.i to i64
  %37 = add i64 %asmresult1.i.i.i.i, %conv59.i
  %sub61.i = sub i64 %mul53.i, %37
  %38 = mul i64 %sub61.i, 10000
  %mul63.i = add i64 %38, 72057543706287936
  %shr.i.i109.i = lshr i64 %mul63.i, 24
  %conv65.i = trunc i64 %shr.i.i109.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv65.i)
  %tobool67.not.i = icmp eq i32 %conv65.i, 0
  br i1 %tobool67.not.i, label %if.end66.i.if.end80.i_crit_edge, label %if.then68.i

if.end66.i.if.end80.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %cnr.i, align 1
  %40 = ptrtoint ptr %stat19.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %stat19.i, align 1
  %conv75.i = and i64 %shr.i.i109.i, 4294967295
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %conv75.i, ptr %41, align 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end80.i_crit_edge, %if.else162.i.i105.i.if.end80.i_crit_edge, %div_u64.exit.i.if.end80.i_crit_edge, %if.then24.i.if.end80.i_crit_edge, %if.end18.i.if.end80.i_crit_edge
  %post_bit_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %stat81.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %43 = ptrtoint ptr %stat81.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %stat81.i, align 1
  %post_bit_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %stat84.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %44 = ptrtoint ptr %stat84.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %stat84.i, align 1
  %call87.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %flg.i) #7
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status, align 4
  %and88.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end80.i.mn88443x_s_read_status.exit_crit_edge, label %land.lhs.true.i

if.end80.i.mn88443x_s_read_status.exit_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_s_read_status.exit

land.lhs.true.i:                                  ; preds = %if.end80.i
  %47 = ptrtoint ptr %flg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flg.i, align 4
  %and90.i = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true.i.mn88443x_s_read_status.exit_crit_edge, label %if.then92.i

land.lhs.true.i.mn88443x_s_read_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_s_read_status.exit

if.then92.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call93.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 113, ptr noundef nonnull %tmpu.i) #7
  %call94.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 114, ptr noundef nonnull %tmpl.i) #7
  %49 = ptrtoint ptr %tmpu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tmpu.i, align 4
  %shl95.i = shl i32 %50, 8
  %51 = ptrtoint ptr %tmpl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tmpl.i, align 4
  %or96.i = or i32 %shl95.i, %52
  %53 = ptrtoint ptr %post_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %post_bit_error.i, align 4
  %54 = ptrtoint ptr %stat81.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %stat81.i, align 1
  %conv105.i = zext i32 %or96.i to i64
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %conv105.i, ptr %55, align 1
  %57 = ptrtoint ptr %post_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %post_bit_count.i, align 1
  %58 = ptrtoint ptr %stat84.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %stat84.i, align 1
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 1671168, ptr %59, align 1
  br label %mn88443x_s_read_status.exit

mn88443x_s_read_status.exit:                      ; preds = %if.then92.i, %land.lhs.true.i.mn88443x_s_read_status.exit_crit_edge, %if.end80.i.mn88443x_s_read_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpu.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpmon.i) #7
  br label %cleanup

if.then3:                                         ; preds = %entry
  %regmap_t.i = getelementptr inbounds %struct.mn88443x_priv, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %regmap_t.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap_t.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seqrd.i) #7
  %63 = ptrtoint ptr %seqrd.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %seqrd.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flg.i13) #7
  %64 = ptrtoint ptr %flg.i13 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %flg.i13, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpu.i14) #7
  %65 = ptrtoint ptr %tmpu.i14 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %tmpu.i14, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpm.i) #7
  %66 = ptrtoint ptr %tmpm.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %tmpm.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpl.i15) #7
  %67 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %tmpl.i15, align 4, !annotation !74
  %call.i16 = call i32 @regmap_read(ptr noundef %62, i32 noundef 163, ptr noundef nonnull %seqrd.i) #7
  %68 = ptrtoint ptr %seqrd.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seqrd.i, align 4
  %and.i17 = and i32 %69, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i17)
  %cmp.i = icmp ugt i32 %and.i17, 9
  %spec.select.i18 = select i1 %cmp.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i17)
  %cmp1.i = icmp ugt i32 %and.i17, 8
  %or3.i = or i32 %spec.select.i18, 3
  %spec.select1.i = select i1 %cmp1.i, i32 %or3.i, i32 %spec.select.i18
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.select1.i, ptr %status, align 4
  %stat.i19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %71 = ptrtoint ptr %stat.i19 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %stat.i19, align 1
  %72 = load i32, ptr %status, align 4
  %and5.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i20 = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i20, label %if.then3.if.end18.i28_crit_edge, label %if.then6.i

if.then3.if.end18.i28_crit_edge:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i28

if.then6.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %strength.i21 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %call7.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 168, ptr noundef nonnull %tmpu.i14) #7
  %call8.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 169, ptr noundef nonnull %tmpl.i15) #7
  %73 = ptrtoint ptr %tmpu.i14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tmpu.i14, align 4
  %shl.i22 = shl i32 %74, 8
  %75 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tmpl.i15, align 4
  %or9.i = or i32 %shl.i22, %76
  %77 = ptrtoint ptr %strength.i21 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %strength.i21, align 4
  %78 = ptrtoint ptr %stat.i19 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %stat.i19, align 1
  %conv.i23 = zext i32 %or9.i to i64
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %conv.i23, ptr %79, align 1
  br label %if.end18.i28

if.end18.i28:                                     ; preds = %if.then6.i, %if.then3.if.end18.i28_crit_edge
  %cnr.i24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %stat19.i25 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %81 = ptrtoint ptr %stat19.i25 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %stat19.i25, align 1
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %status, align 4
  %and22.i26 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i26)
  %tobool23.not.i27 = icmp eq i32 %and22.i26, 0
  br i1 %tobool23.not.i27, label %if.end18.i28.if.end48.i36_crit_edge, label %if.then24.i31

if.end18.i28.if.end48.i36_crit_edge:              ; preds = %if.end18.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i36

if.then24.i31:                                    ; preds = %if.end18.i28
  %call26.i29 = call i32 @regmap_read(ptr noundef %62, i32 noundef 190, ptr noundef nonnull %tmpu.i14) #7
  %call27.i30 = call i32 @regmap_read(ptr noundef %62, i32 noundef 191, ptr noundef nonnull %tmpl.i15) #7
  %84 = ptrtoint ptr %tmpu.i14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tmpu.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool28.not.i = icmp eq i32 %85, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %if.then24.i31.if.then30.i_crit_edge

if.then24.i31.if.then30.i_crit_edge:              ; preds = %if.then24.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %if.then24.i31
  %86 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tmpl.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool29.not.i = icmp eq i32 %87, 0
  br i1 %tobool29.not.i, label %lor.lhs.false.i.if.end37.i_crit_edge, label %lor.lhs.false.i.if.then30.i_crit_edge

lor.lhs.false.i.if.then30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

lor.lhs.false.i.if.end37.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then30.i:                                      ; preds = %lor.lhs.false.i.if.then30.i_crit_edge, %if.then24.i31.if.then30.i_crit_edge
  %shl31.i = shl i32 %85, 8
  %88 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tmpl.i15, align 4
  %or32.i = or i32 %89, %shl31.i
  %call33.i = call i32 @intlog10(i32 noundef %or32.i) #7
  %conv34.i = zext i32 %call33.i to i64
  %add.i = sub nsw i64 84162567, %conv34.i
  %mul.i32 = mul nsw i64 %add.i, 10000
  %shr.i.i.i33 = lshr i64 %mul.i32, 24
  %conv36.i = trunc i64 %shr.i.i.i33 to i32
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then30.i, %lor.lhs.false.i.if.end37.i_crit_edge
  %cnr25.0.i = phi i32 [ %conv36.i, %if.then30.i ], [ 0, %lor.lhs.false.i.if.end37.i_crit_edge ]
  %90 = ptrtoint ptr %cnr.i24 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %cnr.i24, align 1
  %91 = ptrtoint ptr %stat19.i25 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %stat19.i25, align 1
  %conv44.i = zext i32 %cnr25.0.i to i64
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %conv44.i, ptr %92, align 1
  br label %if.end48.i36

if.end48.i36:                                     ; preds = %if.end37.i, %if.end18.i28.if.end48.i36_crit_edge
  %post_bit_error.i34 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %stat49.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %94 = ptrtoint ptr %stat49.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %stat49.i, align 1
  %post_bit_count.i35 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %stat52.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %95 = ptrtoint ptr %stat52.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %stat52.i, align 1
  %call55.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 192, ptr noundef nonnull %flg.i13) #7
  %96 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %status, align 4
  %and56.i = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end48.i36.mn88443x_t_read_status.exit_crit_edge, label %land.lhs.true.i37

if.end48.i36.mn88443x_t_read_status.exit_crit_edge: ; preds = %if.end48.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_t_read_status.exit

land.lhs.true.i37:                                ; preds = %if.end48.i36
  %98 = ptrtoint ptr %flg.i13 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flg.i13, align 4
  %and58.i = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true.i37.mn88443x_t_read_status.exit_crit_edge, label %if.then60.i

land.lhs.true.i37.mn88443x_t_read_status.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_t_read_status.exit

if.then60.i:                                      ; preds = %land.lhs.true.i37
  %call61.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 193, ptr noundef nonnull %tmpu.i14) #7
  %call62.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 194, ptr noundef nonnull %tmpm.i) #7
  %call63.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 195, ptr noundef nonnull %tmpl.i15) #7
  %100 = ptrtoint ptr %tmpu.i14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tmpu.i14, align 4
  %102 = ptrtoint ptr %tmpm.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tmpm.i, align 4
  %104 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tmpl.i15, align 4
  %call68.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 196, ptr noundef nonnull %tmpu.i14) #7
  %call69.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 197, ptr noundef nonnull %tmpl.i15) #7
  %106 = ptrtoint ptr %tmpu.i14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tmpu.i14, align 4
  %shl70.i = shl i32 %107, 8
  %108 = ptrtoint ptr %tmpl.i15 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tmpl.i15, align 4
  %or71.i = or i32 %shl70.i, %109
  %mul73.i = mul i32 %or71.i, 1624
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul73.i)
  %tobool74.not.i = icmp eq i32 %mul73.i, 0
  br i1 %tobool74.not.i, label %if.then60.i.mn88443x_t_read_status.exit_crit_edge, label %if.then75.i

if.then60.i.mn88443x_t_read_status.exit_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mn88443x_t_read_status.exit

if.then75.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl64.i = shl i32 %101, 16
  %shl65.i = shl i32 %103, 8
  %or66.i = or i32 %shl65.i, %shl64.i
  %or67.i = or i32 %or66.i, %105
  %110 = ptrtoint ptr %post_bit_error.i34 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %post_bit_error.i34, align 4
  %111 = ptrtoint ptr %stat49.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %stat49.i, align 1
  %conv82.i = zext i32 %or67.i to i64
  %112 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %conv82.i, ptr %112, align 1
  %114 = ptrtoint ptr %post_bit_count.i35 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %post_bit_count.i35, align 1
  %115 = ptrtoint ptr %stat52.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %stat52.i, align 1
  %conv92.i = zext i32 %mul73.i to i64
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %conv92.i, ptr %116, align 1
  br label %mn88443x_t_read_status.exit

mn88443x_t_read_status.exit:                      ; preds = %if.then75.i, %if.then60.i.mn88443x_t_read_status.exit_crit_edge, %land.lhs.true.i37.mn88443x_t_read_status.exit_crit_edge, %if.end48.i36.mn88443x_t_read_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpl.i15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpm.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpu.i14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flg.i13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seqrd.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mn88443x_t_read_status.exit, %mn88443x_s_read_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mn88443x_s_read_status.exit ], [ 0, %mn88443x_t_read_status.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_mn88443x__290_810_mn88443x_driver_init6, !1, !"__initcall__kmod_mn88443x__290_810_mn88443x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 810, i32 1}
!2 = !{ptr @__exitcall_mn88443x_driver_exit, !1, !"__exitcall_mn88443x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 812, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 813, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 814, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 802, i32 11}
!12 = !{ptr @mn88443x_driver, !13, !"mn88443x_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 800, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 695, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 697, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mn88443x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mn88443x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 702, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 705, i32 3}
!28 = !{ptr @mn88443x_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mn88443x_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 709, i32 50}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 712, i32 3}
!34 = !{ptr @mn88443x_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mn88443x_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mn88443x_probe._key, !37, !"_key", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 726, i32 19}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mn88443x_probe._key.16, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 738, i32 19}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @regmap_config, !43, !"regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 670, i32 35}
!44 = !{ptr @mn88443x_ops, !45, !"mn88443x_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 651, i32 38}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 419, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mn88443x_t_set_freq._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mn88443x_t_set_freq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 215, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mn88443x_cmn_power_on._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mn88443x_cmn_power_on._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @mn88443x_of_match, !57, !"mn88443x_of_match", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 784, i32 34}
!58 = !{ptr @mn88443x_spec_pri, !59, !"mn88443x_spec_pri", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 776, i32 35}
!60 = !{ptr @mn88443x_spec_sec, !61, !"mn88443x_spec_sec", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 780, i32 35}
!62 = !{ptr @mn88443x_i2c_id, !63, !"mn88443x_i2c_id", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/mn88443x.c", i32 792, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"auto-init"}
!75 = !{i64 2148685601, i64 2148685881, i64 2148686215, i64 2148686549}
