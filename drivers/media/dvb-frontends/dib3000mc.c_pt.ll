; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dib3000mc.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib3000mc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dib3000mc_get_tuner_i2c_master\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_get_tuner_i2c_master\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_get_tuner_i2c_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_get_tuner_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_get_tuner_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_get_tuner_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib3000mc_pid_control\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_pid_control\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_pid_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_pid_control:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_pid_control\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_pid_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib3000mc_pid_parse\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_pid_parse\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_pid_parse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_pid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_pid_parse\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_pid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib3000mc_set_config\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_set_config\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_set_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib3000mc_i2c_enumeration\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_i2c_enumeration\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_i2c_enumeration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_i2c_enumeration\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib3000mc_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mc_attach\09\09\09\09"
module asm "\09.long\09__crc_dib3000mc_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.dib3000mc_state = type { %struct.dvb_frontend, ptr, i8, ptr, %struct.dibx000_i2c_master, i32, i32, i16, i8 }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
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
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dib3000mc_config = type { ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.91 }
%struct.anon.91 = type { i16, i16, i16, i16 }

@__param_str_debug = internal constant [16 x i8] c"dib3000mc.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [29 x i8] c"dib3000mc.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [52 x i8] c"dib3000mc.parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__param_str_buggy_sfn_workaround = internal constant [31 x i8] c"dib3000mc.buggy_sfn_workaround\00", align 1
@buggy_sfn_workaround = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_buggy_sfn_workaround = internal constant %struct.kernel_param { ptr @__param_str_buggy_sfn_workaround, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @buggy_sfn_workaround } }, section "__param", align 4
@__UNIQUE_ID_buggy_sfn_workaroundtype292 = internal constant [44 x i8] c"dib3000mc.parmtype=buggy_sfn_workaround:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buggy_sfn_workaround293 = internal constant [83 x i8] c"dib3000mc.parm=buggy_sfn_workaround:Enable work-around for buggy SFNs (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib3000mc_get_tuner_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_get_tuner_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_get_tuner_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_get_tuner_i2c_master to i32), ptr @__kstrtab_dib3000mc_get_tuner_i2c_master, ptr @__kstrtabns_dib3000mc_get_tuner_i2c_master }, section "___ksymtab+dib3000mc_get_tuner_i2c_master", align 4
@__kstrtab_dib3000mc_pid_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_pid_control = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_pid_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_pid_control to i32), ptr @__kstrtab_dib3000mc_pid_control, ptr @__kstrtabns_dib3000mc_pid_control }, section "___ksymtab+dib3000mc_pid_control", align 4
@__kstrtab_dib3000mc_pid_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_pid_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_pid_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_pid_parse to i32), ptr @__kstrtab_dib3000mc_pid_parse, ptr @__kstrtabns_dib3000mc_pid_parse }, section "___ksymtab+dib3000mc_pid_parse", align 4
@__kstrtab_dib3000mc_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_set_config to i32), ptr @__kstrtab_dib3000mc_set_config, ptr @__kstrtabns_dib3000mc_set_config }, section "___ksymtab+dib3000mc_set_config", align 4
@dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\14\16\18\1A", [28 x i8] zeroinitializer }, align 32
@dib3000mc_i2c_enumeration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dib3000mc: %s: -E-  DiB3000P/MC #%d: not identified\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib3000mc_i2c_enumeration\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/dib3000mc.c\00", [56 x i8] zeroinitializer }, align 32
@dib3000mc_i2c_enumeration._entry_ptr = internal global ptr @dib3000mc_i2c_enumeration._entry, section ".printk_index", align 4
@__kstrtab_dib3000mc_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_i2c_enumeration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_i2c_enumeration to i32), ptr @__kstrtab_dib3000mc_i2c_enumeration, ptr @__kstrtabns_dib3000mc_i2c_enumeration }, section "___ksymtab+dib3000mc_i2c_enumeration", align 4
@dib3000mc_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 3000MC/P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib3000mc_release, ptr null, ptr @dib3000mc_init, ptr @dib3000mc_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib3000mc_set_frontend, ptr @dib3000mc_fe_get_tune_settings, ptr @dib3000mc_get_frontend, ptr @dib3000mc_read_status, ptr @dib3000mc_read_ber, ptr @dib3000mc_read_signal_strength, ptr @dib3000mc_read_snr, ptr @dib3000mc_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_dib3000mc_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_attach to i32), ptr @__kstrtab_dib3000mc_attach, ptr @__kstrtabns_dib3000mc_attach }, section "___ksymtab+dib3000mc_attach", align 4
@__UNIQUE_ID_author294 = internal constant [65 x i8] c"dib3000mc.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [71 x i8] c"dib3000mc.description=Driver for the DiBcom 3000MC/P COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [53 x i8] c"dib3000mc.file=drivers/media/dvb-frontends/dib3000mc\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"dib3000mc.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dib3000mc_read_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib3000mc: %s: i2c read error on %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib3000mc_read_word\00", [44 x i8] zeroinitializer }, align 32
@dib3000mc_read_word._entry_ptr = internal global ptr @dib3000mc_read_word._entry, section ".printk_index", align 4
@dib3000mc_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dib3000mc: %s: -E-  DiB3000MC/P: wrong Vendor ID (read=0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dib3000mc_identify\00", [45 x i8] zeroinitializer }, align 32
@dib3000mc_identify._entry_ptr = internal global ptr @dib3000mc_identify._entry, section ".printk_index", align 4
@dib3000mc_identify._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dib3000mc: %s: -E-  DiB3000MC/P: wrong Device ID (%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@dib3000mc_identify._entry_ptr.9 = internal global ptr @dib3000mc_identify._entry.7, section ".printk_index", align 4
@dib3000mc_identify._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dib3000mc: %s: -I-  found DiB3000MC/P: %x\0A\00", [51 x i8] zeroinitializer }, align 32
@dib3000mc_identify._entry_ptr.12 = internal global ptr @dib3000mc_identify._entry.10, section ".printk_index", align 4
@dib3000mc_set_output_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017dib3000mc: %s: -I-  Setting output mode for demod %p to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib3000mc_set_output_mode\00", [38 x i8] zeroinitializer }, align 32
@dib3000mc_set_output_mode._entry_ptr = internal global ptr @dib3000mc_set_output_mode._entry, section ".printk_index", align 4
@dib3000mc_set_output_mode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017dib3000mc: %s: Unhandled output_mode passed to be set for demod %p\0A\00", [58 x i8] zeroinitializer }, align 32
@dib3000mc_set_output_mode._entry_ptr.17 = internal global ptr @dib3000mc_set_output_mode._entry.15, section ".printk_index", align 4
@dib3000mc_set_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mc: %s: timf: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib3000mc_set_timing\00", [43 x i8] zeroinitializer }, align 32
@dib3000mc_set_timing._entry_ptr = internal global ptr @dib3000mc_set_timing._entry, section ".printk_index", align 4
@impulse_noise_val = internal constant { [29 x i16], [38 x i8] } { [29 x i16] [i16 56, i16 1753, i16 16168, i16 1959, i16 14964, i16 406, i16 810, i16 1164, i16 16382, i16 2035, i16 11668, i16 118, i16 1341, i16 16376, i16 2019, i16 13088, i16 118, i16 1459, i16 16363, i16 2002, i16 13918, i16 118, i16 1164, i16 16382, i16 1459, i16 16363, i16 118, i16 0, i16 13], [38 x i8] zeroinitializer }, align 32
@dib3000mc_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dib3000mc: %s: autosearch returns: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib3000mc_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@dib3000mc_set_frontend._entry_ptr = internal global ptr @dib3000mc_set_frontend._entry, section ".printk_index", align 4
@dib3000mc_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dib3000mc: %s: SFN workaround is active\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib3000mc_tune\00", [17 x i8] zeroinitializer }, align 32
@dib3000mc_tune._entry_ptr = internal global ptr @dib3000mc_tune._entry, section ".printk_index", align 4
@switch.table.dib3000mc_get_frontend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.dib3000mc_get_frontend.24 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.dib3000mc_set_channel_cfg = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\06\02\0A\02\0E", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 5000, i64 6000, i64 7000, i64 8000]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 21, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"buggy_sfn_workaround\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 25, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"DIB3000MC_I2C_ADDRESS\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 862, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 879, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"dib3000mc_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 940, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 75, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 112, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 118, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 123, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 193, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 228, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 154, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"impulse_noise_val\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 297, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 756, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [43 x i8] c"../drivers/media/dvb-frontends/dib3000mc.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 638, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [36 x i8] c"switch.table.dib3000mc_get_frontend\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [39 x i8] c"switch.table.dib3000mc_get_frontend.24\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [39 x i8] c"switch.table.dib3000mc_set_channel_cfg\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_buggy_sfn_workaround293, ptr @__UNIQUE_ID_buggy_sfn_workaroundtype292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_dib3000mc_attach, ptr @__ksymtab_dib3000mc_get_tuner_i2c_master, ptr @__ksymtab_dib3000mc_i2c_enumeration, ptr @__ksymtab_dib3000mc_pid_control, ptr @__ksymtab_dib3000mc_pid_parse, ptr @__ksymtab_dib3000mc_set_config, ptr @__param_buggy_sfn_workaround, ptr @__param_debug, ptr @dib3000mc_i2c_enumeration._entry, ptr @dib3000mc_i2c_enumeration._entry_ptr, ptr @dib3000mc_identify._entry, ptr @dib3000mc_identify._entry.10, ptr @dib3000mc_identify._entry.7, ptr @dib3000mc_identify._entry_ptr, ptr @dib3000mc_identify._entry_ptr.12, ptr @dib3000mc_identify._entry_ptr.9, ptr @dib3000mc_read_word._entry, ptr @dib3000mc_read_word._entry_ptr, ptr @dib3000mc_set_frontend._entry, ptr @dib3000mc_set_frontend._entry_ptr, ptr @dib3000mc_set_output_mode._entry, ptr @dib3000mc_set_output_mode._entry.15, ptr @dib3000mc_set_output_mode._entry_ptr, ptr @dib3000mc_set_output_mode._entry_ptr.17, ptr @dib3000mc_set_timing._entry, ptr @dib3000mc_set_timing._entry_ptr, ptr @dib3000mc_tune._entry, ptr @dib3000mc_tune._entry_ptr, ptr @debug, ptr @buggy_sfn_workaround, ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dib3000mc_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @impulse_noise_val, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.dib3000mc_get_frontend, ptr @switch.table.dib3000mc_get_frontend.24, ptr @switch.table.dib3000mc_set_channel_cfg], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buggy_sfn_workaround to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_i2c_enumeration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_read_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_identify._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_identify._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_set_output_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_set_output_mode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_set_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impulse_noise_val to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mc_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib3000mc_get_frontend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib3000mc_get_frontend.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib3000mc_set_channel_cfg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib3000mc_get_tuner_i2c_master(ptr nocapture noundef readonly %demod, i32 noundef %gating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_master = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 4
  %call = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %i2c_master, i32 noundef 0, i32 noundef %gating) #7
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_pid_control(ptr nocapture noundef readonly %fe, i32 noundef %index, i32 noundef %pid, i32 noundef %onoff) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 327679, ptr %2, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr.i, align 4
  %6 = lshr i8 %5, 1
  %conv1.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.dib3000mc_write_word.exit_crit_edge, label %if.end.i

entry.dib3000mc_write_word.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = trunc i32 %index to i16
  %conv = add i16 %10, 212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %11 = trunc i32 %pid to i16
  %phi.cast = or i16 %11, 8192
  %cond = select i1 %tobool.not, i16 0, i16 %phi.cast
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = lshr i16 %conv, 8
  %conv4.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i, ptr %call7.i.i, align 8
  %conv5.i = trunc i16 %conv to i8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %15 = lshr i16 %cond, 8
  %conv9.i = trunc i16 %15 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i16 %cond to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %entry.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_pid_parse(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 206)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 327679, ptr %2, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr.i, align 4
  %6 = lshr i8 %5, 1
  %conv1.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.dib3000mc_write_word.exit_crit_edge, label %if.end.i

entry.dib3000mc_write_word.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %onoff.tr = trunc i32 %onoff to i16
  %10 = shl i16 %onoff.tr, 4
  %11 = and i16 %call, -17
  %conv3 = or i16 %11, %10
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -50, ptr %arrayidx6.i, align 1
  %14 = lshr i16 %conv3, 8
  %conv9.i = trunc i16 %14 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i16 %conv3 to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 1
  %cond.i = select i1 %cmp.not.i, i32 0, i32 -121
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %entry.dib3000mc_write_word.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ -12, %entry.dib3000mc_write_word.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib3000mc_read_word(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %i2c_addr = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_addr, align 4
  %4 = lshr i8 %3, 1
  %conv1 = zext i8 %4 to i16
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %conv10 = zext i16 %reg to i32
  %12 = lshr i16 %reg, 8
  %13 = trunc i16 %12 to i8
  %conv12 = or i8 %13, -128
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %call7.i, align 8
  %conv13 = trunc i16 %reg to i8
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 1
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %call7.i, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx15, align 2
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx16, align 1
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %buf, align 4
  %19 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx15, ptr %buf9, align 4
  %i2c_adap = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_adap, align 8
  %call21 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 2
  br i1 %cmp.not, label %if.end.if.end32_crit_edge, label %do.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body:                                          ; preds = %if.end
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %do.body.if.end32_crit_edge, label %do.end

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv10) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end, %do.body.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15, align 2
  %conv34 = zext i8 %24 to i16
  %shl = shl nuw i16 %conv34, 8
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16, align 1
  %conv36 = zext i8 %26 to i16
  %or37 = or i16 %shl, %conv36
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %or37, %if.end32 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dib3000mc_set_config(ptr nocapture noundef readonly %fe, ptr noundef %cfg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %cfg1 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cfg, ptr %cfg1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_i2c_enumeration(ptr noundef %i2c, i32 noundef %no_of_demods, i8 noundef zeroext %default_addr, ptr noundef %cfg) #0 align 64 {
entry:
  %msg.i70 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7040) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_adap = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %i2c_adap, align 8
  %k.091 = add i32 %no_of_demods, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %k.091)
  %cmp192 = icmp sgt i32 %k.091, -1
  br i1 %cmp192, label %for.body.lr.ph, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %cfg2 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 1
  %i2c_addr = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.cond23.preheader:                             ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_of_demods)
  %cmp2494 = icmp sgt i32 %no_of_demods, 0
  br i1 %cmp2494, label %for.body26.lr.ph, label %for.cond23.preheader.cleanup.sink.split_crit_edge

for.cond23.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %cfg28 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 1
  %i2c_addr30 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %msg.i70, i32 4
  %flags.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 1
  %buf.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 3
  br label %for.body26

for.body:                                         ; preds = %dib3000mc_write_word.exit.for.body_crit_edge, %for.body.lr.ph
  %k.093 = phi i32 [ %k.091, %for.body.lr.ph ], [ %k.0, %dib3000mc_write_word.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dib3000mc_config, ptr %cfg, i32 %k.093
  %4 = ptrtoint ptr %cfg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %cfg2, align 8
  %arrayidx3 = getelementptr [4 x i8], ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i32 0, i32 %k.093
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %i2c_addr, align 4
  %call4 = call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %for.body.if.end18_crit_edge, label %if.then6

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %for.body
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %default_addr, ptr %i2c_addr, align 4
  %call8 = call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.then6.if.end18_crit_edge, label %do.body

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %if.then6
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.cleanup.sink.split_crit_edge, label %do.end

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %k.093) #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.then6.if.end18_crit_edge, %for.body.if.end18_crit_edge
  call fastcc void @dib3000mc_set_output_mode(ptr noundef nonnull %call7.i.i, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %2, align 4
  %11 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_addr, align 4
  %13 = lshr i8 %12, 1
  %conv1.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i, ptr %msg.i, align 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i69 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i69, null
  br i1 %tobool.not.i, label %if.end18.dib3000mc_write_word.exit_crit_edge, label %if.end.i

if.end18.dib3000mc_write_word.exit_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i8 %6, 3
  %or = or i8 %shl, 1
  %17 = ptrtoint ptr %call7.i.i69 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %call7.i.i69, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i69, i32 1
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx6.i, align 1
  %19 = lshr i8 %6, 5
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i69, i32 2
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i69, i32 3
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or, ptr %arrayidx12.i, align 1
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i69, ptr %buf.i, align 4
  %23 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i69) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %if.end18.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %6, ptr %i2c_addr, align 4
  %k.0 = add i32 %k.093, -1
  %cmp1 = icmp sgt i32 %k.0, -1
  br i1 %cmp1, label %dib3000mc_write_word.exit.for.body_crit_edge, label %for.cond23.preheader

dib3000mc_write_word.exit.for.body_crit_edge:     ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body26:                                       ; preds = %dib3000mc_write_word.exit89.for.body26_crit_edge, %for.body26.lr.ph
  %k.195 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc, %dib3000mc_write_word.exit89.for.body26_crit_edge ]
  %arrayidx27 = getelementptr %struct.dib3000mc_config, ptr %cfg, i32 %k.195
  %26 = ptrtoint ptr %cfg28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx27, ptr %cfg28, align 8
  %arrayidx29 = getelementptr [4 x i8], ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i32 0, i32 %k.195
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29, align 1
  %29 = ptrtoint ptr %i2c_addr30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %i2c_addr30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i70) #7
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 327679, ptr %3, align 4
  %31 = lshr i8 %28, 1
  %conv1.i72 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i70 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i72, ptr %msg.i70, align 4
  %33 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i73, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i75 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i76 = icmp eq ptr %call7.i.i75, null
  br i1 %tobool.not.i76, label %for.body26.dib3000mc_write_word.exit89_crit_edge, label %if.end.i87

for.body26.dib3000mc_write_word.exit89_crit_edge: ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit89

if.end.i87:                                       ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  %shl33 = shl i8 %28, 3
  %35 = ptrtoint ptr %call7.i.i75 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %call7.i.i75, align 8
  %arrayidx6.i78 = getelementptr i8, ptr %call7.i.i75, i32 1
  %36 = ptrtoint ptr %arrayidx6.i78 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx6.i78, align 1
  %37 = lshr i8 %28, 5
  %arrayidx10.i80 = getelementptr i8, ptr %call7.i.i75, i32 2
  %38 = ptrtoint ptr %arrayidx10.i80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx10.i80, align 2
  %arrayidx12.i82 = getelementptr i8, ptr %call7.i.i75, i32 3
  %39 = ptrtoint ptr %arrayidx12.i82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %shl33, ptr %arrayidx12.i82, align 1
  %40 = ptrtoint ptr %buf.i77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i75, ptr %buf.i77, align 4
  %41 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_adap, align 8
  %call14.i84 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i70, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i75) #7
  br label %dib3000mc_write_word.exit89

dib3000mc_write_word.exit89:                      ; preds = %if.end.i87, %for.body26.dib3000mc_write_word.exit89_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i70) #7
  call fastcc void @dib3000mc_set_output_mode(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  %inc = add nuw nsw i32 %k.195, 1
  %exitcond.not = icmp eq i32 %inc, %no_of_demods
  br i1 %exitcond.not, label %dib3000mc_write_word.exit89.cleanup.sink.split_crit_edge, label %dib3000mc_write_word.exit89.for.body26_crit_edge

dib3000mc_write_word.exit89.for.body26_crit_edge: ; preds = %dib3000mc_write_word.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26

dib3000mc_write_word.exit89.cleanup.sink.split_crit_edge: ; preds = %dib3000mc_write_word.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %dib3000mc_write_word.exit89.cleanup.sink.split_crit_edge, %do.end, %do.body.cleanup.sink.split_crit_edge, %for.cond23.preheader.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %do.end ], [ -19, %do.body.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %for.cond23.preheader.cleanup.sink.split_crit_edge ], [ 0, %dib3000mc_write_word.exit89.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib3000mc_identify(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 1025)
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 435, i16 %call)
  %cmp.not = icmp eq i16 %call, 435
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 1026)
  %conv10 = zext i16 %call9 to i32
  %call9.off = add i16 %call9, -12289
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call9.off)
  %switch = icmp ult i16 %call9.off, 2
  br i1 %switch, label %if.end29, label %do.body17

do.body17:                                        ; preds = %if.end8
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool18.not = icmp eq i32 %1, 0
  br i1 %tobool18.not, label %do.body17.cleanup_crit_edge, label %do.end22

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv10) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  %dev_id = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 7
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call9, ptr %dev_id, align 8
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool31.not = icmp eq i32 %3, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %do.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %conv10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end29.cleanup_crit_edge, %do.end22, %do.body17.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ -121, %do.body.cleanup_crit_edge ], [ -121, %do.end22 ], [ -121, %do.body17.cleanup_crit_edge ], [ 0, %do.end35 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_output_mode(ptr noundef %state, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %msg.i41 = alloca %struct.i2c_msg, align 4
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 206)
  %0 = and i16 %call, 16
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %state, i32 noundef %mode) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.body13 [
    i32 0, label %do.end5.sw.epilog_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 4, label %sw.bb12
    i32 5, label %sw.bb9
  ]

do.end5.sw.epilog_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %3 = or i16 %0, 6
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body13:                                        ; preds = %do.end5
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %do.body13.sw.epilog_crit_edge, label %do.end18

do.body13.sw.epilog_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %state) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %do.body13.sw.epilog_crit_edge, %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb6, %do.end5.sw.epilog_crit_edge
  %outmode.0 = phi i16 [ 8192, %sw.bb12 ], [ 10240, %sw.bb9 ], [ 2048, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %do.end5.sw.epilog_crit_edge ], [ 0, %do.end18 ], [ 0, %do.body13.sw.epilog_crit_edge ]
  %elecout.0.off0 = phi i8 [ 1, %sw.bb12 ], [ 3, %sw.bb9 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 0, %do.end5.sw.epilog_crit_edge ], [ 1, %do.end18 ], [ 1, %do.body13.sw.epilog_crit_edge ]
  %smo_reg.0 = phi i16 [ %0, %sw.bb12 ], [ %3, %sw.bb9 ], [ %0, %sw.bb7 ], [ %0, %sw.bb6 ], [ %0, %do.end5.sw.epilog_crit_edge ], [ %0, %do.end18 ], [ %0, %do.body13.sw.epilog_crit_edge ]
  %fifo_threshold.0.off8 = phi i8 [ 7, %sw.bb12 ], [ 2, %sw.bb9 ], [ 7, %sw.bb7 ], [ 7, %sw.bb6 ], [ 7, %do.end5.sw.epilog_crit_edge ], [ 7, %do.end18 ], [ 7, %do.body13.sw.epilog_crit_edge ]
  %cfg = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %output_mpeg2_in_188_bytes = getelementptr inbounds %struct.dib3000mc_config, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %output_mpeg2_in_188_bytes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output_mpeg2_in_188_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  %9 = or i16 %smo_reg.0, 32
  %spec.select = select i1 %tobool25.not, i16 %smo_reg.0, i16 %9
  %call31 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 244)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_addr.i, align 4
  %14 = lshr i8 %13, 1
  %conv1.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.dib3000mc_write_word.exit_crit_edge, label %if.end.i

sw.epilog.dib3000mc_write_word.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %18 = and i16 %call31, 1792
  %or37 = or i16 %18, %outmode.0
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -12, ptr %arrayidx6.i, align 1
  %21 = lshr exact i16 %or37, 8
  %conv9.i = trunc i16 %21 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i16 %call31 to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %25 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %sw.epilog.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #7
  %27 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %29 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_addr.i, align 4
  %31 = lshr i8 %30, 1
  %conv1.i3 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i3, ptr %msg.i1, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i4, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i7 = icmp eq ptr %call7.i.i6, null
  br i1 %tobool.not.i7, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit20_crit_edge, label %if.end.i18

dib3000mc_write_word.exit.dib3000mc_write_word.exit20_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit20

if.end.i18:                                       ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %35 = ptrtoint ptr %call7.i.i6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call7.i.i6, align 8
  %arrayidx6.i9 = getelementptr i8, ptr %call7.i.i6, i32 1
  %36 = ptrtoint ptr %arrayidx6.i9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -50, ptr %arrayidx6.i9, align 1
  %37 = lshr i16 %spec.select, 8
  %conv9.i10 = trunc i16 %37 to i8
  %arrayidx10.i11 = getelementptr i8, ptr %call7.i.i6, i32 2
  %38 = ptrtoint ptr %arrayidx10.i11 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv9.i10, ptr %arrayidx10.i11, align 2
  %conv11.i12 = trunc i16 %spec.select to i8
  %arrayidx12.i13 = getelementptr i8, ptr %call7.i.i6, i32 3
  %39 = ptrtoint ptr %arrayidx12.i13 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv11.i12, ptr %arrayidx12.i13, align 1
  %40 = ptrtoint ptr %buf.i8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i6, ptr %buf.i8, align 4
  %i2c_adap.i14 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %41 = ptrtoint ptr %i2c_adap.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_adap.i14, align 8
  %call14.i15 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i1, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i6) #7
  br label %dib3000mc_write_word.exit20

dib3000mc_write_word.exit20:                      ; preds = %if.end.i18, %dib3000mc_write_word.exit.dib3000mc_write_word.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #7
  %43 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 327679, ptr %43, align 4
  %45 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i2c_addr.i, align 4
  %47 = lshr i8 %46, 1
  %conv1.i23 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv1.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i24, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i27 = icmp eq ptr %call7.i.i26, null
  br i1 %tobool.not.i27, label %dib3000mc_write_word.exit20.dib3000mc_write_word.exit40_crit_edge, label %if.end.i38

dib3000mc_write_word.exit20.dib3000mc_write_word.exit40_crit_edge: ; preds = %dib3000mc_write_word.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit40

if.end.i38:                                       ; preds = %dib3000mc_write_word.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %51 = ptrtoint ptr %call7.i.i26 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %call7.i.i26, align 8
  %arrayidx6.i29 = getelementptr i8, ptr %call7.i.i26, i32 1
  %52 = ptrtoint ptr %arrayidx6.i29 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -49, ptr %arrayidx6.i29, align 1
  %arrayidx10.i31 = getelementptr i8, ptr %call7.i.i26, i32 2
  %53 = ptrtoint ptr %arrayidx10.i31 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %fifo_threshold.0.off8, ptr %arrayidx10.i31, align 2
  %arrayidx12.i33 = getelementptr i8, ptr %call7.i.i26, i32 3
  %54 = ptrtoint ptr %arrayidx12.i33 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx12.i33, align 1
  %55 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i26, ptr %buf.i28, align 4
  %i2c_adap.i34 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %56 = ptrtoint ptr %i2c_adap.i34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_adap.i34, align 8
  %call14.i35 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i21, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i26) #7
  br label %dib3000mc_write_word.exit40

dib3000mc_write_word.exit40:                      ; preds = %if.end.i38, %dib3000mc_write_word.exit20.dib3000mc_write_word.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41) #7
  %58 = getelementptr inbounds i8, ptr %msg.i41, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 327679, ptr %58, align 4
  %60 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i2c_addr.i, align 4
  %62 = lshr i8 %61, 1
  %conv1.i43 = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv1.i43, ptr %msg.i41, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i44, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i47 = icmp eq ptr %call7.i.i46, null
  br i1 %tobool.not.i47, label %dib3000mc_write_word.exit40.dib3000mc_write_word.exit59_crit_edge, label %if.end.i57

dib3000mc_write_word.exit40.dib3000mc_write_word.exit59_crit_edge: ; preds = %dib3000mc_write_word.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit59

if.end.i57:                                       ; preds = %dib3000mc_write_word.exit40
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 3
  %66 = ptrtoint ptr %call7.i.i46 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %call7.i.i46, align 8
  %arrayidx6.i49 = getelementptr i8, ptr %call7.i.i46, i32 1
  %67 = ptrtoint ptr %arrayidx6.i49 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 16, ptr %arrayidx6.i49, align 1
  %arrayidx10.i50 = getelementptr i8, ptr %call7.i.i46, i32 2
  %68 = ptrtoint ptr %arrayidx10.i50 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx10.i50, align 2
  %arrayidx12.i52 = getelementptr i8, ptr %call7.i.i46, i32 3
  %69 = ptrtoint ptr %arrayidx12.i52 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %elecout.0.off0, ptr %arrayidx12.i52, align 1
  %70 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i46, ptr %buf.i48, align 4
  %i2c_adap.i53 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %71 = ptrtoint ptr %i2c_adap.i53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_adap.i53, align 8
  %call14.i54 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i41, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i46) #7
  br label %dib3000mc_write_word.exit59

dib3000mc_write_word.exit59:                      ; preds = %if.end.i57, %dib3000mc_write_word.exit40.dib3000mc_write_word.exit59_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib3000mc_attach(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr, ptr noundef %cfg) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7040) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg1 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cfg, ptr %cfg1, align 8
  %i2c_adap2 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c_adap, ptr %i2c_adap2, align 8
  %i2c_addr3 = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %i2c_addr, ptr %i2c_addr3, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @dib3000mc_ops, i32 544)
  %call6 = tail call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %error

if.end9:                                          ; preds = %if.end
  %i2c_master = getelementptr inbounds %struct.dib3000mc_state, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_adap2, align 8
  %8 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr3, align 4
  %call12 = tail call i32 @dibx000_init_i2c_master(ptr noundef %i2c_master, i16 noundef zeroext 1, ptr noundef %7, i8 noundef zeroext %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %12 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_addr3, align 4
  %14 = lshr i8 %13, 1
  %conv1.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i28, null
  br i1 %tobool.not.i, label %if.end9.dib3000mc_write_word.exit_crit_edge, label %if.end.i

if.end9.dib3000mc_write_word.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %call7.i.i28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %call7.i.i28, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i28, i32 1
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 13, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i28, i32 2
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 49, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i28, i32 3
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 48, ptr %arrayidx12.i, align 1
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i28, ptr %buf.i, align 4
  %23 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap2, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i28) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %if.end9.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %dib3000mc_write_word.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %call7.i.i, %dib3000mc_write_word.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib3000mc_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_master = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 4
  tail call void @dibx000_exit_i2c_master(ptr noundef %i2c_master) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_init(ptr nocapture noundef readonly %demod) #0 align 64 {
entry:
  %msg.i1047 = alloca %struct.i2c_msg, align 4
  %msg.i1029 = alloca %struct.i2c_msg, align 4
  %msg.i1011 = alloca %struct.i2c_msg, align 4
  %msg.i993 = alloca %struct.i2c_msg, align 4
  %msg.i975 = alloca %struct.i2c_msg, align 4
  %msg.i957 = alloca %struct.i2c_msg, align 4
  %msg.i939 = alloca %struct.i2c_msg, align 4
  %msg.i921 = alloca %struct.i2c_msg, align 4
  %msg.i903 = alloca %struct.i2c_msg, align 4
  %msg.i885 = alloca %struct.i2c_msg, align 4
  %msg.i867 = alloca %struct.i2c_msg, align 4
  %msg.i849 = alloca %struct.i2c_msg, align 4
  %msg.i831 = alloca %struct.i2c_msg, align 4
  %msg.i813 = alloca %struct.i2c_msg, align 4
  %msg.i794 = alloca %struct.i2c_msg, align 4
  %msg.i775 = alloca %struct.i2c_msg, align 4
  %msg.i756 = alloca %struct.i2c_msg, align 4
  %msg.i737 = alloca %struct.i2c_msg, align 4
  %msg.i717 = alloca %struct.i2c_msg, align 4
  %msg.i697 = alloca %struct.i2c_msg, align 4
  %msg.i677 = alloca %struct.i2c_msg, align 4
  %msg.i657 = alloca %struct.i2c_msg, align 4
  %msg.i639 = alloca %struct.i2c_msg, align 4
  %msg.i621 = alloca %struct.i2c_msg, align 4
  %msg.i601 = alloca %struct.i2c_msg, align 4
  %msg.i581 = alloca %struct.i2c_msg, align 4
  %msg.i561 = alloca %struct.i2c_msg, align 4
  %msg.i543 = alloca %struct.i2c_msg, align 4
  %msg.i525 = alloca %struct.i2c_msg, align 4
  %msg.i507 = alloca %struct.i2c_msg, align 4
  %msg.i57.i = alloca %struct.i2c_msg, align 4
  %msg.i39.i = alloca %struct.i2c_msg, align 4
  %msg.i21.i = alloca %struct.i2c_msg, align 4
  %msg.i1.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i488 = alloca %struct.i2c_msg, align 4
  %msg.i470 = alloca %struct.i2c_msg, align 4
  %msg.i452 = alloca %struct.i2c_msg, align 4
  %msg.i434 = alloca %struct.i2c_msg, align 4
  %msg.i416 = alloca %struct.i2c_msg, align 4
  %msg.i398 = alloca %struct.i2c_msg, align 4
  %msg.i380 = alloca %struct.i2c_msg, align 4
  %msg.i362 = alloca %struct.i2c_msg, align 4
  %msg.i344 = alloca %struct.i2c_msg, align 4
  %msg.i326 = alloca %struct.i2c_msg, align 4
  %msg.i308 = alloca %struct.i2c_msg, align 4
  %msg.i290 = alloca %struct.i2c_msg, align 4
  %msg.i272 = alloca %struct.i2c_msg, align 4
  %msg.i254 = alloca %struct.i2c_msg, align 4
  %msg.i236 = alloca %struct.i2c_msg, align 4
  %msg.i218 = alloca %struct.i2c_msg, align 4
  %msg.i200 = alloca %struct.i2c_msg, align 4
  %msg.i182 = alloca %struct.i2c_msg, align 4
  %msg.i164 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %cfg = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327679, ptr %6, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr.i, align 4
  %10 = lshr i8 %9, 1
  %conv1.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.dib3000mc_write_word.exit_crit_edge, label %if.end.i

entry.dib3000mc_write_word.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx12.i, align 1
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %entry.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i164) #7
  %21 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 327679, ptr %21, align 4
  %23 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_addr.i, align 4
  %25 = lshr i8 %24, 1
  %conv1.i166 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv1.i166, ptr %msg.i164, align 4
  %flags.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i167, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i169 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i170 = icmp eq ptr %call7.i.i169, null
  br i1 %tobool.not.i170, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit181_crit_edge, label %if.end.i179

dib3000mc_write_word.exit.dib3000mc_write_word.exit181_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit181

if.end.i179:                                      ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %29 = ptrtoint ptr %call7.i.i169 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %call7.i.i169, align 8
  %arrayidx6.i172 = getelementptr i8, ptr %call7.i.i169, i32 1
  %30 = ptrtoint ptr %arrayidx6.i172 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx6.i172, align 1
  %arrayidx10.i173 = getelementptr i8, ptr %call7.i.i169, i32 2
  %31 = ptrtoint ptr %arrayidx10.i173 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx10.i173, align 2
  %arrayidx12.i174 = getelementptr i8, ptr %call7.i.i169, i32 3
  %32 = ptrtoint ptr %arrayidx12.i174 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx12.i174, align 1
  %33 = ptrtoint ptr %buf.i171 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i169, ptr %buf.i171, align 4
  %i2c_adap.i175 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %i2c_adap.i175 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_adap.i175, align 8
  %call14.i176 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i164, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i169) #7
  br label %dib3000mc_write_word.exit181

dib3000mc_write_word.exit181:                     ; preds = %if.end.i179, %dib3000mc_write_word.exit.dib3000mc_write_word.exit181_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i182) #7
  %36 = getelementptr inbounds i8, ptr %msg.i182, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 327679, ptr %36, align 4
  %38 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_addr.i, align 4
  %40 = lshr i8 %39, 1
  %conv1.i184 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i182 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv1.i184, ptr %msg.i182, align 4
  %flags.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i185 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i185, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i187 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i188 = icmp eq ptr %call7.i.i187, null
  br i1 %tobool.not.i188, label %dib3000mc_write_word.exit181.dib3000mc_write_word.exit199_crit_edge, label %if.end.i197

dib3000mc_write_word.exit181.dib3000mc_write_word.exit199_crit_edge: ; preds = %dib3000mc_write_word.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit199

if.end.i197:                                      ; preds = %dib3000mc_write_word.exit181
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182, i32 0, i32 3
  %44 = ptrtoint ptr %call7.i.i187 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %call7.i.i187, align 8
  %arrayidx6.i190 = getelementptr i8, ptr %call7.i.i187, i32 1
  %45 = ptrtoint ptr %arrayidx6.i190 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -116, ptr %arrayidx6.i190, align 1
  %arrayidx10.i191 = getelementptr i8, ptr %call7.i.i187, i32 2
  %46 = ptrtoint ptr %arrayidx10.i191 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx10.i191, align 2
  %arrayidx12.i192 = getelementptr i8, ptr %call7.i.i187, i32 3
  %47 = ptrtoint ptr %arrayidx12.i192 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx12.i192, align 1
  %48 = ptrtoint ptr %buf.i189 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i187, ptr %buf.i189, align 4
  %i2c_adap.i193 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %i2c_adap.i193 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_adap.i193, align 8
  %call14.i194 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i182, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i187) #7
  br label %dib3000mc_write_word.exit199

dib3000mc_write_word.exit199:                     ; preds = %if.end.i197, %dib3000mc_write_word.exit181.dib3000mc_write_word.exit199_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i182) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i200) #7
  %51 = getelementptr inbounds i8, ptr %msg.i200, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 327679, ptr %51, align 4
  %53 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i2c_addr.i, align 4
  %55 = lshr i8 %54, 1
  %conv1.i202 = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i200 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv1.i202, ptr %msg.i200, align 4
  %flags.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i203 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i203, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i205 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i206 = icmp eq ptr %call7.i.i205, null
  br i1 %tobool.not.i206, label %dib3000mc_write_word.exit199.dib3000mc_write_word.exit217_crit_edge, label %if.end.i215

dib3000mc_write_word.exit199.dib3000mc_write_word.exit217_crit_edge: ; preds = %dib3000mc_write_word.exit199
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit217

if.end.i215:                                      ; preds = %dib3000mc_write_word.exit199
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i200, i32 0, i32 3
  %59 = ptrtoint ptr %call7.i.i205 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 4, ptr %call7.i.i205, align 8
  %arrayidx6.i208 = getelementptr i8, ptr %call7.i.i205, i32 1
  %60 = ptrtoint ptr %arrayidx6.i208 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 7, ptr %arrayidx6.i208, align 1
  %arrayidx10.i209 = getelementptr i8, ptr %call7.i.i205, i32 2
  %61 = ptrtoint ptr %arrayidx10.i209 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx10.i209, align 2
  %arrayidx12.i210 = getelementptr i8, ptr %call7.i.i205, i32 3
  %62 = ptrtoint ptr %arrayidx12.i210 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx12.i210, align 1
  %63 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i205, ptr %buf.i207, align 4
  %i2c_adap.i211 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %i2c_adap.i211 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_adap.i211, align 8
  %call14.i212 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i200, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i205) #7
  br label %dib3000mc_write_word.exit217

dib3000mc_write_word.exit217:                     ; preds = %if.end.i215, %dib3000mc_write_word.exit199.dib3000mc_write_word.exit217_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i200) #7
  %66 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg, align 8
  %mobile_mode = getelementptr inbounds %struct.dib3000mc_config, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %mobile_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mobile_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not = icmp eq i8 %69, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dib3000mc_write_word.exit217
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i218) #7
  %70 = getelementptr inbounds i8, ptr %msg.i218, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 327679, ptr %70, align 4
  %72 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i2c_addr.i, align 4
  %74 = lshr i8 %73, 1
  %conv1.i220 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i218 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv1.i220, ptr %msg.i218, align 4
  %flags.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i218, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i221 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i221, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i223 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i224 = icmp eq ptr %call7.i.i223, null
  br i1 %tobool.not.i224, label %if.then.dib3000mc_write_word.exit235_crit_edge, label %if.end.i233

if.then.dib3000mc_write_word.exit235_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit235

if.end.i233:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i218, i32 0, i32 3
  %78 = ptrtoint ptr %call7.i.i223 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %call7.i.i223, align 8
  %arrayidx6.i226 = getelementptr i8, ptr %call7.i.i223, i32 1
  %79 = ptrtoint ptr %arrayidx6.i226 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -117, ptr %arrayidx6.i226, align 1
  %arrayidx10.i227 = getelementptr i8, ptr %call7.i.i223, i32 2
  %80 = ptrtoint ptr %arrayidx10.i227 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx10.i227, align 2
  %arrayidx12.i228 = getelementptr i8, ptr %call7.i.i223, i32 3
  %81 = ptrtoint ptr %arrayidx12.i228 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx12.i228, align 1
  %82 = ptrtoint ptr %buf.i225 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i223, ptr %buf.i225, align 4
  %i2c_adap.i229 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %i2c_adap.i229 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_adap.i229, align 8
  %call14.i230 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i218, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i223) #7
  br label %dib3000mc_write_word.exit235

dib3000mc_write_word.exit235:                     ; preds = %if.end.i233, %if.then.dib3000mc_write_word.exit235_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i218) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i236) #7
  %85 = getelementptr inbounds i8, ptr %msg.i236, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 327679, ptr %85, align 4
  %87 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i2c_addr.i, align 4
  %89 = lshr i8 %88, 1
  %conv1.i238 = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i236 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv1.i238, ptr %msg.i236, align 4
  %flags.i239 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i236, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i239 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i239, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i241 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i242 = icmp eq ptr %call7.i.i241, null
  br i1 %tobool.not.i242, label %dib3000mc_write_word.exit235.dib3000mc_write_word.exit253_crit_edge, label %if.end.i251

dib3000mc_write_word.exit235.dib3000mc_write_word.exit253_crit_edge: ; preds = %dib3000mc_write_word.exit235
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit253

if.end.i251:                                      ; preds = %dib3000mc_write_word.exit235
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i243 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i236, i32 0, i32 3
  %93 = ptrtoint ptr %call7.i.i241 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %call7.i.i241, align 8
  %arrayidx6.i244 = getelementptr i8, ptr %call7.i.i241, i32 1
  %94 = ptrtoint ptr %arrayidx6.i244 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -115, ptr %arrayidx6.i244, align 1
  %arrayidx10.i245 = getelementptr i8, ptr %call7.i.i241, i32 2
  %95 = ptrtoint ptr %arrayidx10.i245 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx10.i245, align 2
  %arrayidx12.i246 = getelementptr i8, ptr %call7.i.i241, i32 3
  %96 = ptrtoint ptr %arrayidx12.i246 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx12.i246, align 1
  %97 = ptrtoint ptr %buf.i243 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i241, ptr %buf.i243, align 4
  %i2c_adap.i247 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %i2c_adap.i247 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_adap.i247, align 8
  %call14.i248 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i236, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i241) #7
  br label %dib3000mc_write_word.exit253

dib3000mc_write_word.exit253:                     ; preds = %if.end.i251, %dib3000mc_write_word.exit235.dib3000mc_write_word.exit253_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i236) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i254) #7
  %100 = getelementptr inbounds i8, ptr %msg.i254, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 327679, ptr %100, align 4
  %102 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %i2c_addr.i, align 4
  %104 = lshr i8 %103, 1
  %conv1.i256 = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i254 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv1.i256, ptr %msg.i254, align 4
  %flags.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i257 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i257, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i259 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i260 = icmp eq ptr %call7.i.i259, null
  br i1 %tobool.not.i260, label %dib3000mc_write_word.exit253.dib3000mc_write_word.exit271_crit_edge, label %if.end.i269

dib3000mc_write_word.exit253.dib3000mc_write_word.exit271_crit_edge: ; preds = %dib3000mc_write_word.exit253
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit271

if.end.i269:                                      ; preds = %dib3000mc_write_word.exit253
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254, i32 0, i32 3
  %108 = ptrtoint ptr %call7.i.i259 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %call7.i.i259, align 8
  %arrayidx6.i262 = getelementptr i8, ptr %call7.i.i259, i32 1
  %109 = ptrtoint ptr %arrayidx6.i262 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -81, ptr %arrayidx6.i262, align 1
  %arrayidx10.i263 = getelementptr i8, ptr %call7.i.i259, i32 2
  %110 = ptrtoint ptr %arrayidx10.i263 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx10.i263, align 2
  %arrayidx12.i264 = getelementptr i8, ptr %call7.i.i259, i32 3
  %111 = ptrtoint ptr %arrayidx12.i264 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 2, ptr %arrayidx12.i264, align 1
  %112 = ptrtoint ptr %buf.i261 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i259, ptr %buf.i261, align 4
  %i2c_adap.i265 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %i2c_adap.i265 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i2c_adap.i265, align 8
  %call14.i266 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i254, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i259) #7
  br label %dib3000mc_write_word.exit271

dib3000mc_write_word.exit271:                     ; preds = %if.end.i269, %dib3000mc_write_word.exit253.dib3000mc_write_word.exit271_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i254) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i272) #7
  %115 = getelementptr inbounds i8, ptr %msg.i272, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 327679, ptr %115, align 4
  %117 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i2c_addr.i, align 4
  %119 = lshr i8 %118, 1
  %conv1.i274 = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i272 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv1.i274, ptr %msg.i272, align 4
  %flags.i275 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i272, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i275 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i275, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i277 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i278 = icmp eq ptr %call7.i.i277, null
  br i1 %tobool.not.i278, label %dib3000mc_write_word.exit271.dib3000mc_write_word.exit289_crit_edge, label %if.end.i287

dib3000mc_write_word.exit271.dib3000mc_write_word.exit289_crit_edge: ; preds = %dib3000mc_write_word.exit271
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit289

if.end.i287:                                      ; preds = %dib3000mc_write_word.exit271
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i272, i32 0, i32 3
  %123 = ptrtoint ptr %call7.i.i277 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %call7.i.i277, align 8
  %arrayidx6.i280 = getelementptr i8, ptr %call7.i.i277, i32 1
  %124 = ptrtoint ptr %arrayidx6.i280 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 8, ptr %arrayidx6.i280, align 1
  %arrayidx10.i281 = getelementptr i8, ptr %call7.i.i277, i32 2
  %125 = ptrtoint ptr %arrayidx10.i281 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %arrayidx10.i281, align 2
  %arrayidx12.i282 = getelementptr i8, ptr %call7.i.i277, i32 3
  %126 = ptrtoint ptr %arrayidx12.i282 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx12.i282, align 1
  %127 = ptrtoint ptr %buf.i279 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i277, ptr %buf.i279, align 4
  %i2c_adap.i283 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %128 = ptrtoint ptr %i2c_adap.i283 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_adap.i283, align 8
  %call14.i284 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i272, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i277) #7
  br label %dib3000mc_write_word.exit289

dib3000mc_write_word.exit289:                     ; preds = %if.end.i287, %dib3000mc_write_word.exit271.dib3000mc_write_word.exit289_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i272) #7
  br label %if.end

if.else:                                          ; preds = %dib3000mc_write_word.exit217
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i290) #7
  %130 = getelementptr inbounds i8, ptr %msg.i290, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 327679, ptr %130, align 4
  %132 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %i2c_addr.i, align 4
  %134 = lshr i8 %133, 1
  %conv1.i292 = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i290 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv1.i292, ptr %msg.i290, align 4
  %flags.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i293 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i293, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i295 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i296 = icmp eq ptr %call7.i.i295, null
  br i1 %tobool.not.i296, label %if.else.dib3000mc_write_word.exit307_crit_edge, label %if.end.i305

if.else.dib3000mc_write_word.exit307_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit307

if.end.i305:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 3
  %138 = ptrtoint ptr %call7.i.i295 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %call7.i.i295, align 8
  %arrayidx6.i298 = getelementptr i8, ptr %call7.i.i295, i32 1
  %139 = ptrtoint ptr %arrayidx6.i298 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -117, ptr %arrayidx6.i298, align 1
  %arrayidx10.i299 = getelementptr i8, ptr %call7.i.i295, i32 2
  %140 = ptrtoint ptr %arrayidx10.i299 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx10.i299, align 2
  %arrayidx12.i300 = getelementptr i8, ptr %call7.i.i295, i32 3
  %141 = ptrtoint ptr %arrayidx12.i300 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %arrayidx12.i300, align 1
  %142 = ptrtoint ptr %buf.i297 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i295, ptr %buf.i297, align 4
  %i2c_adap.i301 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %143 = ptrtoint ptr %i2c_adap.i301 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c_adap.i301, align 8
  %call14.i302 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i290, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i295) #7
  br label %dib3000mc_write_word.exit307

dib3000mc_write_word.exit307:                     ; preds = %if.end.i305, %if.else.dib3000mc_write_word.exit307_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i290) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i308) #7
  %145 = getelementptr inbounds i8, ptr %msg.i308, i32 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 327679, ptr %145, align 4
  %147 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %i2c_addr.i, align 4
  %149 = lshr i8 %148, 1
  %conv1.i310 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i308 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv1.i310, ptr %msg.i308, align 4
  %flags.i311 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i311, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %152 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i313 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %152, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i314 = icmp eq ptr %call7.i.i313, null
  br i1 %tobool.not.i314, label %dib3000mc_write_word.exit307.dib3000mc_write_word.exit325_crit_edge, label %if.end.i323

dib3000mc_write_word.exit307.dib3000mc_write_word.exit325_crit_edge: ; preds = %dib3000mc_write_word.exit307
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit325

if.end.i323:                                      ; preds = %dib3000mc_write_word.exit307
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308, i32 0, i32 3
  %153 = ptrtoint ptr %call7.i.i313 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %call7.i.i313, align 8
  %arrayidx6.i316 = getelementptr i8, ptr %call7.i.i313, i32 1
  %154 = ptrtoint ptr %arrayidx6.i316 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -115, ptr %arrayidx6.i316, align 1
  %arrayidx10.i317 = getelementptr i8, ptr %call7.i.i313, i32 2
  %155 = ptrtoint ptr %arrayidx10.i317 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx10.i317, align 2
  %arrayidx12.i318 = getelementptr i8, ptr %call7.i.i313, i32 3
  %156 = ptrtoint ptr %arrayidx12.i318 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %arrayidx12.i318, align 1
  %157 = ptrtoint ptr %buf.i315 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call7.i.i313, ptr %buf.i315, align 4
  %i2c_adap.i319 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %158 = ptrtoint ptr %i2c_adap.i319 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i2c_adap.i319, align 8
  %call14.i320 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i308, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i313) #7
  br label %dib3000mc_write_word.exit325

dib3000mc_write_word.exit325:                     ; preds = %if.end.i323, %dib3000mc_write_word.exit307.dib3000mc_write_word.exit325_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i308) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i326) #7
  %160 = getelementptr inbounds i8, ptr %msg.i326, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 327679, ptr %160, align 4
  %162 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %i2c_addr.i, align 4
  %164 = lshr i8 %163, 1
  %conv1.i328 = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i326 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv1.i328, ptr %msg.i326, align 4
  %flags.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i329, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i331 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i332 = icmp eq ptr %call7.i.i331, null
  br i1 %tobool.not.i332, label %dib3000mc_write_word.exit325.dib3000mc_write_word.exit343_crit_edge, label %if.end.i341

dib3000mc_write_word.exit325.dib3000mc_write_word.exit343_crit_edge: ; preds = %dib3000mc_write_word.exit325
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit343

if.end.i341:                                      ; preds = %dib3000mc_write_word.exit325
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i333 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326, i32 0, i32 3
  %168 = ptrtoint ptr %call7.i.i331 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %call7.i.i331, align 8
  %arrayidx6.i334 = getelementptr i8, ptr %call7.i.i331, i32 1
  %169 = ptrtoint ptr %arrayidx6.i334 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -81, ptr %arrayidx6.i334, align 1
  %arrayidx10.i335 = getelementptr i8, ptr %call7.i.i331, i32 2
  %170 = ptrtoint ptr %arrayidx10.i335 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %arrayidx10.i335, align 2
  %arrayidx12.i336 = getelementptr i8, ptr %call7.i.i331, i32 3
  %171 = ptrtoint ptr %arrayidx12.i336 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %arrayidx12.i336, align 1
  %172 = ptrtoint ptr %buf.i333 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call7.i.i331, ptr %buf.i333, align 4
  %i2c_adap.i337 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %173 = ptrtoint ptr %i2c_adap.i337 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c_adap.i337, align 8
  %call14.i338 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %msg.i326, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i331) #7
  br label %dib3000mc_write_word.exit343

dib3000mc_write_word.exit343:                     ; preds = %if.end.i341, %dib3000mc_write_word.exit325.dib3000mc_write_word.exit343_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i326) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i344) #7
  %175 = getelementptr inbounds i8, ptr %msg.i344, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 327679, ptr %175, align 4
  %177 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %i2c_addr.i, align 4
  %179 = lshr i8 %178, 1
  %conv1.i346 = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i344 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv1.i346, ptr %msg.i344, align 4
  %flags.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i344, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i347 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i347, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %182 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i349 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %182, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i350 = icmp eq ptr %call7.i.i349, null
  br i1 %tobool.not.i350, label %dib3000mc_write_word.exit343.dib3000mc_write_word.exit361_crit_edge, label %if.end.i359

dib3000mc_write_word.exit343.dib3000mc_write_word.exit361_crit_edge: ; preds = %dib3000mc_write_word.exit343
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit361

if.end.i359:                                      ; preds = %dib3000mc_write_word.exit343
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i351 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i344, i32 0, i32 3
  %183 = ptrtoint ptr %call7.i.i349 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 4, ptr %call7.i.i349, align 8
  %arrayidx6.i352 = getelementptr i8, ptr %call7.i.i349, i32 1
  %184 = ptrtoint ptr %arrayidx6.i352 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 8, ptr %arrayidx6.i352, align 1
  %arrayidx10.i353 = getelementptr i8, ptr %call7.i.i349, i32 2
  %185 = ptrtoint ptr %arrayidx10.i353 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %arrayidx10.i353, align 2
  %arrayidx12.i354 = getelementptr i8, ptr %call7.i.i349, i32 3
  %186 = ptrtoint ptr %arrayidx12.i354 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 44, ptr %arrayidx12.i354, align 1
  %187 = ptrtoint ptr %buf.i351 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call7.i.i349, ptr %buf.i351, align 4
  %i2c_adap.i355 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %188 = ptrtoint ptr %i2c_adap.i355 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i2c_adap.i355, align 8
  %call14.i356 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %msg.i344, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i349) #7
  br label %dib3000mc_write_word.exit361

dib3000mc_write_word.exit361:                     ; preds = %if.end.i359, %dib3000mc_write_word.exit343.dib3000mc_write_word.exit361_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i344) #7
  br label %if.end

if.end:                                           ; preds = %dib3000mc_write_word.exit361, %dib3000mc_write_word.exit289
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i362) #7
  %190 = getelementptr inbounds i8, ptr %msg.i362, i32 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 327679, ptr %190, align 4
  %192 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %i2c_addr.i, align 4
  %194 = lshr i8 %193, 1
  %conv1.i364 = zext i8 %194 to i16
  %195 = ptrtoint ptr %msg.i362 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv1.i364, ptr %msg.i362, align 4
  %flags.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362, i32 0, i32 1
  %196 = ptrtoint ptr %flags.i365 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %flags.i365, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %197 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i367 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %197, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i368 = icmp eq ptr %call7.i.i367, null
  br i1 %tobool.not.i368, label %if.end.dib3000mc_write_word.exit379_crit_edge, label %if.end.i377

if.end.dib3000mc_write_word.exit379_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit379

if.end.i377:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362, i32 0, i32 3
  %198 = ptrtoint ptr %call7.i.i367 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 4, ptr %call7.i.i367, align 8
  %arrayidx6.i370 = getelementptr i8, ptr %call7.i.i367, i32 1
  %199 = ptrtoint ptr %arrayidx6.i370 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 9, ptr %arrayidx6.i370, align 1
  %arrayidx10.i371 = getelementptr i8, ptr %call7.i.i367, i32 2
  %200 = ptrtoint ptr %arrayidx10.i371 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %arrayidx10.i371, align 2
  %arrayidx12.i372 = getelementptr i8, ptr %call7.i.i367, i32 3
  %201 = ptrtoint ptr %arrayidx12.i372 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %arrayidx12.i372, align 1
  %202 = ptrtoint ptr %buf.i369 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call7.i.i367, ptr %buf.i369, align 4
  %i2c_adap.i373 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %203 = ptrtoint ptr %i2c_adap.i373 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i2c_adap.i373, align 8
  %call14.i374 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i362, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i367) #7
  br label %dib3000mc_write_word.exit379

dib3000mc_write_word.exit379:                     ; preds = %if.end.i377, %if.end.dib3000mc_write_word.exit379_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i362) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i380) #7
  %205 = getelementptr inbounds i8, ptr %msg.i380, i32 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 327679, ptr %205, align 4
  %207 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %i2c_addr.i, align 4
  %209 = lshr i8 %208, 1
  %conv1.i382 = zext i8 %209 to i16
  %210 = ptrtoint ptr %msg.i380 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv1.i382, ptr %msg.i380, align 4
  %flags.i383 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i383 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i383, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %212 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i385 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %212, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i386 = icmp eq ptr %call7.i.i385, null
  br i1 %tobool.not.i386, label %dib3000mc_write_word.exit379.dib3000mc_write_word.exit397_crit_edge, label %if.end.i395

dib3000mc_write_word.exit379.dib3000mc_write_word.exit397_crit_edge: ; preds = %dib3000mc_write_word.exit379
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit397

if.end.i395:                                      ; preds = %dib3000mc_write_word.exit379
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 3
  %213 = ptrtoint ptr %call7.i.i385 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 4, ptr %call7.i.i385, align 8
  %arrayidx6.i388 = getelementptr i8, ptr %call7.i.i385, i32 1
  %214 = ptrtoint ptr %arrayidx6.i388 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 13, ptr %arrayidx6.i388, align 1
  %arrayidx10.i389 = getelementptr i8, ptr %call7.i.i385, i32 2
  %215 = ptrtoint ptr %arrayidx10.i389 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 49, ptr %arrayidx10.i389, align 2
  %arrayidx12.i390 = getelementptr i8, ptr %call7.i.i385, i32 3
  %216 = ptrtoint ptr %arrayidx12.i390 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 48, ptr %arrayidx12.i390, align 1
  %217 = ptrtoint ptr %buf.i387 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call7.i.i385, ptr %buf.i387, align 4
  %i2c_adap.i391 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %218 = ptrtoint ptr %i2c_adap.i391 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i2c_adap.i391, align 8
  %call14.i392 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %msg.i380, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i385) #7
  br label %dib3000mc_write_word.exit397

dib3000mc_write_word.exit397:                     ; preds = %if.end.i395, %dib3000mc_write_word.exit379.dib3000mc_write_word.exit397_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i380) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i398) #7
  %220 = getelementptr inbounds i8, ptr %msg.i398, i32 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 327679, ptr %220, align 4
  %222 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %i2c_addr.i, align 4
  %224 = lshr i8 %223, 1
  %conv1.i400 = zext i8 %224 to i16
  %225 = ptrtoint ptr %msg.i398 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv1.i400, ptr %msg.i398, align 4
  %flags.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i398, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i401 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i401, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %227 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i403 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i404 = icmp eq ptr %call7.i.i403, null
  br i1 %tobool.not.i404, label %dib3000mc_write_word.exit397.dib3000mc_write_word.exit415_crit_edge, label %if.end.i413

dib3000mc_write_word.exit397.dib3000mc_write_word.exit415_crit_edge: ; preds = %dib3000mc_write_word.exit397
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit415

if.end.i413:                                      ; preds = %dib3000mc_write_word.exit397
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i405 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i398, i32 0, i32 3
  %228 = ptrtoint ptr %call7.i.i403 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %call7.i.i403, align 8
  %arrayidx6.i406 = getelementptr i8, ptr %call7.i.i403, i32 1
  %229 = ptrtoint ptr %arrayidx6.i406 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 33, ptr %arrayidx6.i406, align 1
  %arrayidx10.i407 = getelementptr i8, ptr %call7.i.i403, i32 2
  %230 = ptrtoint ptr %arrayidx10.i407 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %arrayidx10.i407, align 2
  %arrayidx12.i408 = getelementptr i8, ptr %call7.i.i403, i32 3
  %231 = ptrtoint ptr %arrayidx12.i408 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 5, ptr %arrayidx12.i408, align 1
  %232 = ptrtoint ptr %buf.i405 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call7.i.i403, ptr %buf.i405, align 4
  %i2c_adap.i409 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %233 = ptrtoint ptr %i2c_adap.i409 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %i2c_adap.i409, align 8
  %call14.i410 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %msg.i398, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i403) #7
  br label %dib3000mc_write_word.exit415

dib3000mc_write_word.exit415:                     ; preds = %if.end.i413, %dib3000mc_write_word.exit397.dib3000mc_write_word.exit415_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i398) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i416) #7
  %235 = getelementptr inbounds i8, ptr %msg.i416, i32 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 327679, ptr %235, align 4
  %237 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %i2c_addr.i, align 4
  %239 = lshr i8 %238, 1
  %conv1.i418 = zext i8 %239 to i16
  %240 = ptrtoint ptr %msg.i416 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv1.i418, ptr %msg.i416, align 4
  %flags.i419 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i419 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i419, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %242 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i421 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %242, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i422 = icmp eq ptr %call7.i.i421, null
  br i1 %tobool.not.i422, label %dib3000mc_write_word.exit415.dib3000mc_write_word.exit433_crit_edge, label %if.end.i431

dib3000mc_write_word.exit415.dib3000mc_write_word.exit433_crit_edge: ; preds = %dib3000mc_write_word.exit415
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit433

if.end.i431:                                      ; preds = %dib3000mc_write_word.exit415
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i423 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 0, i32 3
  %243 = ptrtoint ptr %call7.i.i421 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %call7.i.i421, align 8
  %arrayidx6.i424 = getelementptr i8, ptr %call7.i.i421, i32 1
  %244 = ptrtoint ptr %arrayidx6.i424 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 88, ptr %arrayidx6.i424, align 1
  %arrayidx10.i425 = getelementptr i8, ptr %call7.i.i421, i32 2
  %245 = ptrtoint ptr %arrayidx10.i425 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 4, ptr %arrayidx10.i425, align 2
  %arrayidx12.i426 = getelementptr i8, ptr %call7.i.i421, i32 3
  %246 = ptrtoint ptr %arrayidx12.i426 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 16, ptr %arrayidx12.i426, align 1
  %247 = ptrtoint ptr %buf.i423 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call7.i.i421, ptr %buf.i423, align 4
  %i2c_adap.i427 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %248 = ptrtoint ptr %i2c_adap.i427 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %i2c_adap.i427, align 8
  %call14.i428 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i416, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i421) #7
  br label %dib3000mc_write_word.exit433

dib3000mc_write_word.exit433:                     ; preds = %if.end.i431, %dib3000mc_write_word.exit415.dib3000mc_write_word.exit433_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i416) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i434) #7
  %250 = getelementptr inbounds i8, ptr %msg.i434, i32 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 327679, ptr %250, align 4
  %252 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %i2c_addr.i, align 4
  %254 = lshr i8 %253, 1
  %conv1.i436 = zext i8 %254 to i16
  %255 = ptrtoint ptr %msg.i434 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv1.i436, ptr %msg.i434, align 4
  %flags.i437 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i434, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i437 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i437, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %257 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i439 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %257, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i440 = icmp eq ptr %call7.i.i439, null
  br i1 %tobool.not.i440, label %dib3000mc_write_word.exit433.dib3000mc_write_word.exit451_crit_edge, label %if.end.i449

dib3000mc_write_word.exit433.dib3000mc_write_word.exit451_crit_edge: ; preds = %dib3000mc_write_word.exit433
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit451

if.end.i449:                                      ; preds = %dib3000mc_write_word.exit433
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i441 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i434, i32 0, i32 3
  %258 = ptrtoint ptr %call7.i.i439 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %call7.i.i439, align 8
  %arrayidx6.i442 = getelementptr i8, ptr %call7.i.i439, i32 1
  %259 = ptrtoint ptr %arrayidx6.i442 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 99, ptr %arrayidx6.i442, align 1
  %arrayidx10.i443 = getelementptr i8, ptr %call7.i.i439, i32 2
  %260 = ptrtoint ptr %arrayidx10.i443 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 2, ptr %arrayidx10.i443, align 2
  %arrayidx12.i444 = getelementptr i8, ptr %call7.i.i439, i32 3
  %261 = ptrtoint ptr %arrayidx12.i444 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 32, ptr %arrayidx12.i444, align 1
  %262 = ptrtoint ptr %buf.i441 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call7.i.i439, ptr %buf.i441, align 4
  %i2c_adap.i445 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %263 = ptrtoint ptr %i2c_adap.i445 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %i2c_adap.i445, align 8
  %call14.i446 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %msg.i434, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i439) #7
  br label %dib3000mc_write_word.exit451

dib3000mc_write_word.exit451:                     ; preds = %if.end.i449, %dib3000mc_write_word.exit433.dib3000mc_write_word.exit451_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i434) #7
  %265 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cfg, align 8
  %phase_noise_mode = getelementptr inbounds %struct.dib3000mc_config, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %phase_noise_mode to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %phase_noise_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %cmp = icmp eq i8 %268, 0
  br i1 %cmp, label %if.then21, label %if.else23

if.then21:                                        ; preds = %dib3000mc_write_word.exit451
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i452) #7
  %269 = getelementptr inbounds i8, ptr %msg.i452, i32 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 327679, ptr %269, align 4
  %271 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %i2c_addr.i, align 4
  %273 = lshr i8 %272, 1
  %conv1.i454 = zext i8 %273 to i16
  %274 = ptrtoint ptr %msg.i452 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv1.i454, ptr %msg.i452, align 4
  %flags.i455 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i452, i32 0, i32 1
  %275 = ptrtoint ptr %flags.i455 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %flags.i455, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %276 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i457 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %276, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i458 = icmp eq ptr %call7.i.i457, null
  br i1 %tobool.not.i458, label %if.then21.dib3000mc_write_word.exit469_crit_edge, label %if.end.i467

if.then21.dib3000mc_write_word.exit469_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit469

if.end.i467:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i459 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i452, i32 0, i32 3
  %277 = ptrtoint ptr %call7.i.i457 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %call7.i.i457, align 8
  %arrayidx6.i460 = getelementptr i8, ptr %call7.i.i457, i32 1
  %278 = ptrtoint ptr %arrayidx6.i460 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 111, ptr %arrayidx6.i460, align 1
  %arrayidx10.i461 = getelementptr i8, ptr %call7.i.i457, i32 2
  %279 = ptrtoint ptr %arrayidx10.i461 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %arrayidx10.i461, align 2
  %arrayidx12.i462 = getelementptr i8, ptr %call7.i.i457, i32 3
  %280 = ptrtoint ptr %arrayidx12.i462 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %arrayidx12.i462, align 1
  %281 = ptrtoint ptr %buf.i459 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call7.i.i457, ptr %buf.i459, align 4
  %i2c_adap.i463 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %282 = ptrtoint ptr %i2c_adap.i463 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %i2c_adap.i463, align 8
  %call14.i464 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %msg.i452, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i457) #7
  br label %dib3000mc_write_word.exit469

dib3000mc_write_word.exit469:                     ; preds = %if.end.i467, %if.then21.dib3000mc_write_word.exit469_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i452) #7
  br label %if.end25

if.else23:                                        ; preds = %dib3000mc_write_word.exit451
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i470) #7
  %284 = getelementptr inbounds i8, ptr %msg.i470, i32 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 327679, ptr %284, align 4
  %286 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %i2c_addr.i, align 4
  %288 = lshr i8 %287, 1
  %conv1.i472 = zext i8 %288 to i16
  %289 = ptrtoint ptr %msg.i470 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv1.i472, ptr %msg.i470, align 4
  %flags.i473 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i470, i32 0, i32 1
  %290 = ptrtoint ptr %flags.i473 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 0, ptr %flags.i473, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %291 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i475 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %291, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i476 = icmp eq ptr %call7.i.i475, null
  br i1 %tobool.not.i476, label %if.else23.dib3000mc_write_word.exit487_crit_edge, label %if.end.i485

if.else23.dib3000mc_write_word.exit487_crit_edge: ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit487

if.end.i485:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i477 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i470, i32 0, i32 3
  %292 = ptrtoint ptr %call7.i.i475 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %call7.i.i475, align 8
  %arrayidx6.i478 = getelementptr i8, ptr %call7.i.i475, i32 1
  %293 = ptrtoint ptr %arrayidx6.i478 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 111, ptr %arrayidx6.i478, align 1
  %arrayidx10.i479 = getelementptr i8, ptr %call7.i.i475, i32 2
  %294 = ptrtoint ptr %arrayidx10.i479 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %arrayidx10.i479, align 2
  %arrayidx12.i480 = getelementptr i8, ptr %call7.i.i475, i32 3
  %295 = ptrtoint ptr %arrayidx12.i480 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 2, ptr %arrayidx12.i480, align 1
  %296 = ptrtoint ptr %buf.i477 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call7.i.i475, ptr %buf.i477, align 4
  %i2c_adap.i481 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %297 = ptrtoint ptr %i2c_adap.i481 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %i2c_adap.i481, align 8
  %call14.i482 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %msg.i470, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i475) #7
  br label %dib3000mc_write_word.exit487

dib3000mc_write_word.exit487:                     ; preds = %if.end.i485, %if.else23.dib3000mc_write_word.exit487_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i470) #7
  br label %if.end25

if.end25:                                         ; preds = %dib3000mc_write_word.exit487, %dib3000mc_write_word.exit469
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i488) #7
  %299 = getelementptr inbounds i8, ptr %msg.i488, i32 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 327679, ptr %299, align 4
  %301 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %i2c_addr.i, align 4
  %303 = lshr i8 %302, 1
  %conv1.i490 = zext i8 %303 to i16
  %304 = ptrtoint ptr %msg.i488 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %conv1.i490, ptr %msg.i488, align 4
  %flags.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i488, i32 0, i32 1
  %305 = ptrtoint ptr %flags.i491 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %flags.i491, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %306 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i493 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %306, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i494 = icmp eq ptr %call7.i.i493, null
  br i1 %tobool.not.i494, label %if.end25.dib3000mc_write_word.exit505_crit_edge, label %if.end.i503

if.end25.dib3000mc_write_word.exit505_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit505

if.end.i503:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i495 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i488, i32 0, i32 3
  %307 = ptrtoint ptr %call7.i.i493 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %call7.i.i493, align 8
  %arrayidx6.i496 = getelementptr i8, ptr %call7.i.i493, i32 1
  %308 = ptrtoint ptr %arrayidx6.i496 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 50, ptr %arrayidx6.i496, align 1
  %arrayidx10.i497 = getelementptr i8, ptr %call7.i.i493, i32 2
  %309 = ptrtoint ptr %arrayidx10.i497 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -128, ptr %arrayidx10.i497, align 2
  %arrayidx12.i498 = getelementptr i8, ptr %call7.i.i493, i32 3
  %310 = ptrtoint ptr %arrayidx12.i498 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %arrayidx12.i498, align 1
  %311 = ptrtoint ptr %buf.i495 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call7.i.i493, ptr %buf.i495, align 4
  %i2c_adap.i499 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %312 = ptrtoint ptr %i2c_adap.i499 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %i2c_adap.i499, align 8
  %call14.i500 = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %msg.i488, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i493) #7
  br label %dib3000mc_write_word.exit505

dib3000mc_write_word.exit505:                     ; preds = %if.end.i503, %if.end25.dib3000mc_write_word.exit505_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i488) #7
  %314 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cfg, align 8
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %setup.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %setup.i, align 2
  %320 = and i16 %319, -261
  %pwm3_inversion.i = getelementptr inbounds %struct.dib3000mc_config, ptr %315, i32 0, i32 3
  %321 = ptrtoint ptr %pwm3_inversion.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %pwm3_inversion.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i506 = icmp eq i8 %322, 0
  %reg_52.0.v.i = select i1 %tobool.not.i506, i16 256, i16 4
  %reg_52.0.i = or i16 %reg_52.0.v.i, %320
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %323 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 327679, ptr %323, align 4
  %325 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %i2c_addr.i, align 4
  %327 = lshr i8 %326, 1
  %conv1.i.i = zext i8 %327 to i16
  %328 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv1.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %329 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %flags.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %330 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %330, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %dib3000mc_write_word.exit505.dib3000mc_write_word.exit.i_crit_edge, label %if.end.i.i

dib3000mc_write_word.exit505.dib3000mc_write_word.exit.i_crit_edge: ; preds = %dib3000mc_write_word.exit505
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.i

if.end.i.i:                                       ; preds = %dib3000mc_write_word.exit505
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %331 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %call7.i.i.i, align 8
  %arrayidx6.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %332 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 51, ptr %arrayidx6.i.i, align 1
  %conv9.i.i = select i1 %tobool.not.i506, i8 -111, i8 -127
  %arrayidx10.i.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %333 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 2
  %arrayidx12.i.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %334 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 -54, ptr %arrayidx12.i.i, align 1
  %335 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call7.i.i.i, ptr %buf.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %336 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %i2c_adap.i.i, align 8
  %call14.i.i = call i32 @i2c_transfer(ptr noundef %337, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %dib3000mc_write_word.exit.i

dib3000mc_write_word.exit.i:                      ; preds = %if.end.i.i, %dib3000mc_write_word.exit505.dib3000mc_write_word.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i) #7
  %338 = getelementptr inbounds i8, ptr %msg.i1.i, i32 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 327679, ptr %338, align 4
  %340 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %i2c_addr.i, align 4
  %342 = lshr i8 %341, 1
  %conv1.i3.i = zext i8 %342 to i16
  %343 = ptrtoint ptr %msg.i1.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv1.i3.i, ptr %msg.i1.i, align 4
  %flags.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 1
  %344 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 0, ptr %flags.i4.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %345 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %345, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i7.i = icmp eq ptr %call7.i.i6.i, null
  br i1 %tobool.not.i7.i, label %dib3000mc_write_word.exit.i.dib3000mc_write_word.exit20.i_crit_edge, label %if.end.i18.i

dib3000mc_write_word.exit.i.dib3000mc_write_word.exit20.i_crit_edge: ; preds = %dib3000mc_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit20.i

if.end.i18.i:                                     ; preds = %dib3000mc_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 3
  %346 = ptrtoint ptr %call7.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 0, ptr %call7.i.i6.i, align 8
  %arrayidx6.i9.i = getelementptr i8, ptr %call7.i.i6.i, i32 1
  %347 = ptrtoint ptr %arrayidx6.i9.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 52, ptr %arrayidx6.i9.i, align 1
  %348 = lshr i16 %reg_52.0.i, 8
  %conv9.i10.i = trunc i16 %348 to i8
  %arrayidx10.i11.i = getelementptr i8, ptr %call7.i.i6.i, i32 2
  %349 = ptrtoint ptr %arrayidx10.i11.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv9.i10.i, ptr %arrayidx10.i11.i, align 2
  %conv11.i12.i = trunc i16 %reg_52.0.i to i8
  %arrayidx12.i13.i = getelementptr i8, ptr %call7.i.i6.i, i32 3
  %350 = ptrtoint ptr %arrayidx12.i13.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %conv11.i12.i, ptr %arrayidx12.i13.i, align 1
  %351 = ptrtoint ptr %buf.i8.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call7.i.i6.i, ptr %buf.i8.i, align 4
  %i2c_adap.i14.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %352 = ptrtoint ptr %i2c_adap.i14.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %i2c_adap.i14.i, align 8
  %call14.i15.i = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %msg.i1.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i6.i) #7
  br label %dib3000mc_write_word.exit20.i

dib3000mc_write_word.exit20.i:                    ; preds = %if.end.i18.i, %dib3000mc_write_word.exit.i.dib3000mc_write_word.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i) #7
  %354 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %cfg, align 8
  %use_pwm3.i = getelementptr inbounds %struct.dib3000mc_config, ptr %355, i32 0, i32 4
  %356 = ptrtoint ptr %use_pwm3.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %use_pwm3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool10.not.i = icmp eq i8 %357, 0
  br i1 %tobool10.not.i, label %if.else13.i, label %if.then11.i

if.then11.i:                                      ; preds = %dib3000mc_write_word.exit20.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21.i) #7
  %358 = getelementptr inbounds i8, ptr %msg.i21.i, i32 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 327679, ptr %358, align 4
  %360 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %i2c_addr.i, align 4
  %362 = lshr i8 %361, 1
  %conv1.i23.i = zext i8 %362 to i16
  %363 = ptrtoint ptr %msg.i21.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %conv1.i23.i, ptr %msg.i21.i, align 4
  %flags.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 1
  %364 = ptrtoint ptr %flags.i24.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 0, ptr %flags.i24.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %365 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %365, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i27.i = icmp eq ptr %call7.i.i26.i, null
  br i1 %tobool.not.i27.i, label %if.then11.i.dib3000mc_write_word.exit38.i_crit_edge, label %if.end.i36.i

if.then11.i.dib3000mc_write_word.exit38.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit38.i

if.end.i36.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i28.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 3
  %366 = ptrtoint ptr %call7.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %call7.i.i26.i, align 8
  %arrayidx6.i29.i = getelementptr i8, ptr %call7.i.i26.i, i32 1
  %367 = ptrtoint ptr %arrayidx6.i29.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -11, ptr %arrayidx6.i29.i, align 1
  %arrayidx10.i30.i = getelementptr i8, ptr %call7.i.i26.i, i32 2
  %368 = ptrtoint ptr %arrayidx10.i30.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 0, ptr %arrayidx10.i30.i, align 2
  %arrayidx12.i31.i = getelementptr i8, ptr %call7.i.i26.i, i32 3
  %369 = ptrtoint ptr %arrayidx12.i31.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 9, ptr %arrayidx12.i31.i, align 1
  %370 = ptrtoint ptr %buf.i28.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %call7.i.i26.i, ptr %buf.i28.i, align 4
  %i2c_adap.i32.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %371 = ptrtoint ptr %i2c_adap.i32.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %i2c_adap.i32.i, align 8
  %call14.i33.i = call i32 @i2c_transfer(ptr noundef %372, ptr noundef nonnull %msg.i21.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i26.i) #7
  br label %dib3000mc_write_word.exit38.i

dib3000mc_write_word.exit38.i:                    ; preds = %if.end.i36.i, %if.then11.i.dib3000mc_write_word.exit38.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21.i) #7
  br label %if.end15.i

if.else13.i:                                      ; preds = %dib3000mc_write_word.exit20.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39.i) #7
  %373 = getelementptr inbounds i8, ptr %msg.i39.i, i32 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 327679, ptr %373, align 4
  %375 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %i2c_addr.i, align 4
  %377 = lshr i8 %376, 1
  %conv1.i41.i = zext i8 %377 to i16
  %378 = ptrtoint ptr %msg.i39.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %conv1.i41.i, ptr %msg.i39.i, align 4
  %flags.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 1
  %379 = ptrtoint ptr %flags.i42.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 0, ptr %flags.i42.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %380 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i44.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %380, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i45.i = icmp eq ptr %call7.i.i44.i, null
  br i1 %tobool.not.i45.i, label %if.else13.i.dib3000mc_write_word.exit56.i_crit_edge, label %if.end.i54.i

if.else13.i.dib3000mc_write_word.exit56.i_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit56.i

if.end.i54.i:                                     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 3
  %381 = ptrtoint ptr %call7.i.i44.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 0, ptr %call7.i.i44.i, align 8
  %arrayidx6.i47.i = getelementptr i8, ptr %call7.i.i44.i, i32 1
  %382 = ptrtoint ptr %arrayidx6.i47.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 -11, ptr %arrayidx6.i47.i, align 1
  %arrayidx10.i48.i = getelementptr i8, ptr %call7.i.i44.i, i32 2
  %383 = ptrtoint ptr %arrayidx10.i48.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 0, ptr %arrayidx10.i48.i, align 2
  %arrayidx12.i49.i = getelementptr i8, ptr %call7.i.i44.i, i32 3
  %384 = ptrtoint ptr %arrayidx12.i49.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 0, ptr %arrayidx12.i49.i, align 1
  %385 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call7.i.i44.i, ptr %buf.i46.i, align 4
  %i2c_adap.i50.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %386 = ptrtoint ptr %i2c_adap.i50.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %i2c_adap.i50.i, align 8
  %call14.i51.i = call i32 @i2c_transfer(ptr noundef %387, ptr noundef nonnull %msg.i39.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i44.i) #7
  br label %dib3000mc_write_word.exit56.i

dib3000mc_write_word.exit56.i:                    ; preds = %if.end.i54.i, %if.else13.i.dib3000mc_write_word.exit56.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %dib3000mc_write_word.exit56.i, %dib3000mc_write_word.exit38.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i57.i) #7
  %388 = getelementptr inbounds i8, ptr %msg.i57.i, i32 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 327679, ptr %388, align 4
  %390 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %i2c_addr.i, align 4
  %392 = lshr i8 %391, 1
  %conv1.i59.i = zext i8 %392 to i16
  %393 = ptrtoint ptr %msg.i57.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %conv1.i59.i, ptr %msg.i57.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 1
  %394 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 0, ptr %flags.i60.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %395 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i62.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %395, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i63.i = icmp eq ptr %call7.i.i62.i, null
  br i1 %tobool.not.i63.i, label %if.end15.i.dib3000mc_setup_pwm_state.exit_crit_edge, label %if.end.i72.i

if.end15.i.dib3000mc_setup_pwm_state.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_setup_pwm_state.exit

if.end.i72.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57.i, i32 0, i32 3
  %396 = ptrtoint ptr %call7.i.i62.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 4, ptr %call7.i.i62.i, align 8
  %arrayidx6.i65.i = getelementptr i8, ptr %call7.i.i62.i, i32 1
  %397 = ptrtoint ptr %arrayidx6.i65.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 16, ptr %arrayidx6.i65.i, align 1
  %arrayidx10.i66.i = getelementptr i8, ptr %call7.i.i62.i, i32 2
  %398 = ptrtoint ptr %arrayidx10.i66.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %arrayidx10.i66.i, align 2
  %arrayidx12.i67.i = getelementptr i8, ptr %call7.i.i62.i, i32 3
  %399 = ptrtoint ptr %arrayidx12.i67.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 3, ptr %arrayidx12.i67.i, align 1
  %400 = ptrtoint ptr %buf.i64.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %call7.i.i62.i, ptr %buf.i64.i, align 4
  %i2c_adap.i68.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %401 = ptrtoint ptr %i2c_adap.i68.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %i2c_adap.i68.i, align 8
  %call14.i69.i = call i32 @i2c_transfer(ptr noundef %402, ptr noundef nonnull %msg.i57.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i62.i) #7
  br label %dib3000mc_setup_pwm_state.exit

dib3000mc_setup_pwm_state.exit:                   ; preds = %if.end.i72.i, %if.end15.i.dib3000mc_setup_pwm_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i57.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i507) #7
  %403 = getelementptr inbounds i8, ptr %msg.i507, i32 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 327679, ptr %403, align 4
  %405 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %i2c_addr.i, align 4
  %407 = lshr i8 %406, 1
  %conv1.i509 = zext i8 %407 to i16
  %408 = ptrtoint ptr %msg.i507 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %conv1.i509, ptr %msg.i507, align 4
  %flags.i510 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 0, i32 1
  %409 = ptrtoint ptr %flags.i510 to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 0, ptr %flags.i510, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %410 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i512 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %410, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i513 = icmp eq ptr %call7.i.i512, null
  br i1 %tobool.not.i513, label %dib3000mc_setup_pwm_state.exit.dib3000mc_write_word.exit524_crit_edge, label %if.end.i522

dib3000mc_setup_pwm_state.exit.dib3000mc_write_word.exit524_crit_edge: ; preds = %dib3000mc_setup_pwm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit524

if.end.i522:                                      ; preds = %dib3000mc_setup_pwm_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i514 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 0, i32 3
  %411 = ptrtoint ptr %call7.i.i512 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 0, ptr %call7.i.i512, align 8
  %arrayidx6.i515 = getelementptr i8, ptr %call7.i.i512, i32 1
  %412 = ptrtoint ptr %arrayidx6.i515 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 53, ptr %arrayidx6.i515, align 1
  %arrayidx10.i516 = getelementptr i8, ptr %call7.i.i512, i32 2
  %413 = ptrtoint ptr %arrayidx10.i516 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 0, ptr %arrayidx10.i516, align 2
  %arrayidx12.i517 = getelementptr i8, ptr %call7.i.i512, i32 3
  %414 = ptrtoint ptr %arrayidx12.i517 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 -121, ptr %arrayidx12.i517, align 1
  %415 = ptrtoint ptr %buf.i514 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call7.i.i512, ptr %buf.i514, align 4
  %i2c_adap.i518 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %416 = ptrtoint ptr %i2c_adap.i518 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %i2c_adap.i518, align 8
  %call14.i519 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %msg.i507, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i512) #7
  br label %dib3000mc_write_word.exit524

dib3000mc_write_word.exit524:                     ; preds = %if.end.i522, %dib3000mc_setup_pwm_state.exit.dib3000mc_write_word.exit524_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i507) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i525) #7
  %418 = getelementptr inbounds i8, ptr %msg.i525, i32 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 327679, ptr %418, align 4
  %420 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %i2c_addr.i, align 4
  %422 = lshr i8 %421, 1
  %conv1.i527 = zext i8 %422 to i16
  %423 = ptrtoint ptr %msg.i525 to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %conv1.i527, ptr %msg.i525, align 4
  %flags.i528 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i525, i32 0, i32 1
  %424 = ptrtoint ptr %flags.i528 to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 0, ptr %flags.i528, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %425 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i530 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %425, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i531 = icmp eq ptr %call7.i.i530, null
  br i1 %tobool.not.i531, label %dib3000mc_write_word.exit524.dib3000mc_write_word.exit542_crit_edge, label %if.end.i540

dib3000mc_write_word.exit524.dib3000mc_write_word.exit542_crit_edge: ; preds = %dib3000mc_write_word.exit524
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit542

if.end.i540:                                      ; preds = %dib3000mc_write_word.exit524
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i532 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i525, i32 0, i32 3
  %426 = ptrtoint ptr %call7.i.i530 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %call7.i.i530, align 8
  %arrayidx6.i533 = getelementptr i8, ptr %call7.i.i530, i32 1
  %427 = ptrtoint ptr %arrayidx6.i533 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 54, ptr %arrayidx6.i533, align 1
  %arrayidx10.i534 = getelementptr i8, ptr %call7.i.i530, i32 2
  %428 = ptrtoint ptr %arrayidx10.i534 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %arrayidx10.i534, align 2
  %arrayidx12.i535 = getelementptr i8, ptr %call7.i.i530, i32 3
  %429 = ptrtoint ptr %arrayidx12.i535 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 -121, ptr %arrayidx12.i535, align 1
  %430 = ptrtoint ptr %buf.i532 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %call7.i.i530, ptr %buf.i532, align 4
  %i2c_adap.i536 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %431 = ptrtoint ptr %i2c_adap.i536 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %i2c_adap.i536, align 8
  %call14.i537 = call i32 @i2c_transfer(ptr noundef %432, ptr noundef nonnull %msg.i525, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i530) #7
  br label %dib3000mc_write_word.exit542

dib3000mc_write_word.exit542:                     ; preds = %if.end.i540, %dib3000mc_write_word.exit524.dib3000mc_write_word.exit542_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i525) #7
  %433 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cfg, align 8
  %max_time = getelementptr inbounds %struct.dib3000mc_config, ptr %434, i32 0, i32 6
  %435 = ptrtoint ptr %max_time to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %max_time, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i543) #7
  %437 = getelementptr inbounds i8, ptr %msg.i543, i32 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 327679, ptr %437, align 4
  %439 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %i2c_addr.i, align 4
  %441 = lshr i8 %440, 1
  %conv1.i545 = zext i8 %441 to i16
  %442 = ptrtoint ptr %msg.i543 to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %conv1.i545, ptr %msg.i543, align 4
  %flags.i546 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i543, i32 0, i32 1
  %443 = ptrtoint ptr %flags.i546 to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 0, ptr %flags.i546, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %444 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i548 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %444, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i549 = icmp eq ptr %call7.i.i548, null
  br i1 %tobool.not.i549, label %dib3000mc_write_word.exit542.dib3000mc_write_word.exit560_crit_edge, label %if.end.i558

dib3000mc_write_word.exit542.dib3000mc_write_word.exit560_crit_edge: ; preds = %dib3000mc_write_word.exit542
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit560

if.end.i558:                                      ; preds = %dib3000mc_write_word.exit542
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i550 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i543, i32 0, i32 3
  %445 = ptrtoint ptr %call7.i.i548 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %call7.i.i548, align 8
  %arrayidx6.i551 = getelementptr i8, ptr %call7.i.i548, i32 1
  %446 = ptrtoint ptr %arrayidx6.i551 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 36, ptr %arrayidx6.i551, align 1
  %447 = lshr i16 %436, 8
  %conv9.i = trunc i16 %447 to i8
  %arrayidx10.i552 = getelementptr i8, ptr %call7.i.i548, i32 2
  %448 = ptrtoint ptr %arrayidx10.i552 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %conv9.i, ptr %arrayidx10.i552, align 2
  %conv11.i = trunc i16 %436 to i8
  %arrayidx12.i553 = getelementptr i8, ptr %call7.i.i548, i32 3
  %449 = ptrtoint ptr %arrayidx12.i553 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %conv11.i, ptr %arrayidx12.i553, align 1
  %450 = ptrtoint ptr %buf.i550 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %call7.i.i548, ptr %buf.i550, align 4
  %i2c_adap.i554 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %451 = ptrtoint ptr %i2c_adap.i554 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %i2c_adap.i554, align 8
  %call14.i555 = call i32 @i2c_transfer(ptr noundef %452, ptr noundef nonnull %msg.i543, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i548) #7
  br label %dib3000mc_write_word.exit560

dib3000mc_write_word.exit560:                     ; preds = %if.end.i558, %dib3000mc_write_word.exit542.dib3000mc_write_word.exit560_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i543) #7
  %453 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %cfg, align 8
  %agc_command1 = getelementptr inbounds %struct.dib3000mc_config, ptr %454, i32 0, i32 8
  %455 = ptrtoint ptr %agc_command1 to i32
  call void @__asan_load1_noabort(i32 %455)
  %bf.load = load i8, ptr %agc_command1, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i561) #7
  %456 = getelementptr inbounds i8, ptr %msg.i561, i32 4
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 327679, ptr %456, align 4
  %458 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %i2c_addr.i, align 4
  %460 = lshr i8 %459, 1
  %conv1.i563 = zext i8 %460 to i16
  %461 = ptrtoint ptr %msg.i561 to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %conv1.i563, ptr %msg.i561, align 4
  %flags.i564 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i561, i32 0, i32 1
  %462 = ptrtoint ptr %flags.i564 to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 0, ptr %flags.i564, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %463 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i566 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %463, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i567 = icmp eq ptr %call7.i.i566, null
  br i1 %tobool.not.i567, label %dib3000mc_write_word.exit560.dib3000mc_write_word.exit580_crit_edge, label %if.end.i578

dib3000mc_write_word.exit560.dib3000mc_write_word.exit580_crit_edge: ; preds = %dib3000mc_write_word.exit560
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit580

if.end.i578:                                      ; preds = %dib3000mc_write_word.exit560
  call void @__sanitizer_cov_trace_pc() #9
  %464 = lshr i8 %bf.load, 2
  %or1065 = and i8 %464, 48
  %buf.i568 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i561, i32 0, i32 3
  %465 = ptrtoint ptr %call7.i.i566 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 0, ptr %call7.i.i566, align 8
  %arrayidx6.i569 = getelementptr i8, ptr %call7.i.i566, i32 1
  %466 = ptrtoint ptr %arrayidx6.i569 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 37, ptr %arrayidx6.i569, align 1
  %arrayidx10.i571 = getelementptr i8, ptr %call7.i.i566, i32 2
  %467 = ptrtoint ptr %arrayidx10.i571 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %or1065, ptr %arrayidx10.i571, align 2
  %arrayidx12.i573 = getelementptr i8, ptr %call7.i.i566, i32 3
  %468 = ptrtoint ptr %arrayidx12.i573 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 29, ptr %arrayidx12.i573, align 1
  %469 = ptrtoint ptr %buf.i568 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call7.i.i566, ptr %buf.i568, align 4
  %i2c_adap.i574 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %470 = ptrtoint ptr %i2c_adap.i574 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %i2c_adap.i574, align 8
  %call14.i575 = call i32 @i2c_transfer(ptr noundef %471, ptr noundef nonnull %msg.i561, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i566) #7
  br label %dib3000mc_write_word.exit580

dib3000mc_write_word.exit580:                     ; preds = %if.end.i578, %dib3000mc_write_word.exit560.dib3000mc_write_word.exit580_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i561) #7
  %472 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %cfg, align 8
  %pwm3_value = getelementptr inbounds %struct.dib3000mc_config, ptr %473, i32 0, i32 5
  %474 = ptrtoint ptr %pwm3_value to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %pwm3_value, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i581) #7
  %476 = getelementptr inbounds i8, ptr %msg.i581, i32 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 327679, ptr %476, align 4
  %478 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %i2c_addr.i, align 4
  %480 = lshr i8 %479, 1
  %conv1.i583 = zext i8 %480 to i16
  %481 = ptrtoint ptr %msg.i581 to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 %conv1.i583, ptr %msg.i581, align 4
  %flags.i584 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i581, i32 0, i32 1
  %482 = ptrtoint ptr %flags.i584 to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 0, ptr %flags.i584, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %483 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i586 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %483, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i587 = icmp eq ptr %call7.i.i586, null
  br i1 %tobool.not.i587, label %dib3000mc_write_word.exit580.dib3000mc_write_word.exit600_crit_edge, label %if.end.i598

dib3000mc_write_word.exit580.dib3000mc_write_word.exit600_crit_edge: ; preds = %dib3000mc_write_word.exit580
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit600

if.end.i598:                                      ; preds = %dib3000mc_write_word.exit580
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i588 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i581, i32 0, i32 3
  %484 = ptrtoint ptr %call7.i.i586 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 0, ptr %call7.i.i586, align 8
  %arrayidx6.i589 = getelementptr i8, ptr %call7.i.i586, i32 1
  %485 = ptrtoint ptr %arrayidx6.i589 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 38, ptr %arrayidx6.i589, align 1
  %486 = lshr i16 %475, 8
  %conv9.i590 = trunc i16 %486 to i8
  %arrayidx10.i591 = getelementptr i8, ptr %call7.i.i586, i32 2
  %487 = ptrtoint ptr %arrayidx10.i591 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %conv9.i590, ptr %arrayidx10.i591, align 2
  %conv11.i592 = trunc i16 %475 to i8
  %arrayidx12.i593 = getelementptr i8, ptr %call7.i.i586, i32 3
  %488 = ptrtoint ptr %arrayidx12.i593 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %conv11.i592, ptr %arrayidx12.i593, align 1
  %489 = ptrtoint ptr %buf.i588 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call7.i.i586, ptr %buf.i588, align 4
  %i2c_adap.i594 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %490 = ptrtoint ptr %i2c_adap.i594 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %i2c_adap.i594, align 8
  %call14.i595 = call i32 @i2c_transfer(ptr noundef %491, ptr noundef nonnull %msg.i581, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i586) #7
  br label %dib3000mc_write_word.exit600

dib3000mc_write_word.exit600:                     ; preds = %if.end.i598, %dib3000mc_write_word.exit580.dib3000mc_write_word.exit600_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i581) #7
  %492 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %cfg, align 8
  %ln_adc_level = getelementptr inbounds %struct.dib3000mc_config, ptr %493, i32 0, i32 7
  %494 = ptrtoint ptr %ln_adc_level to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %ln_adc_level, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i601) #7
  %496 = getelementptr inbounds i8, ptr %msg.i601, i32 4
  %497 = ptrtoint ptr %496 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 327679, ptr %496, align 4
  %498 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %i2c_addr.i, align 4
  %500 = lshr i8 %499, 1
  %conv1.i603 = zext i8 %500 to i16
  %501 = ptrtoint ptr %msg.i601 to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 %conv1.i603, ptr %msg.i601, align 4
  %flags.i604 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i601, i32 0, i32 1
  %502 = ptrtoint ptr %flags.i604 to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 0, ptr %flags.i604, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %503 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i606 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %503, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i607 = icmp eq ptr %call7.i.i606, null
  br i1 %tobool.not.i607, label %dib3000mc_write_word.exit600.dib3000mc_write_word.exit620_crit_edge, label %if.end.i618

dib3000mc_write_word.exit600.dib3000mc_write_word.exit620_crit_edge: ; preds = %dib3000mc_write_word.exit600
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit620

if.end.i618:                                      ; preds = %dib3000mc_write_word.exit600
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i608 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i601, i32 0, i32 3
  %504 = ptrtoint ptr %call7.i.i606 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %call7.i.i606, align 8
  %arrayidx6.i609 = getelementptr i8, ptr %call7.i.i606, i32 1
  %505 = ptrtoint ptr %arrayidx6.i609 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 39, ptr %arrayidx6.i609, align 1
  %506 = lshr i16 %495, 8
  %conv9.i610 = trunc i16 %506 to i8
  %arrayidx10.i611 = getelementptr i8, ptr %call7.i.i606, i32 2
  %507 = ptrtoint ptr %arrayidx10.i611 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %conv9.i610, ptr %arrayidx10.i611, align 2
  %conv11.i612 = trunc i16 %495 to i8
  %arrayidx12.i613 = getelementptr i8, ptr %call7.i.i606, i32 3
  %508 = ptrtoint ptr %arrayidx12.i613 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %conv11.i612, ptr %arrayidx12.i613, align 1
  %509 = ptrtoint ptr %buf.i608 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %call7.i.i606, ptr %buf.i608, align 4
  %i2c_adap.i614 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %510 = ptrtoint ptr %i2c_adap.i614 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %i2c_adap.i614, align 8
  %call14.i615 = call i32 @i2c_transfer(ptr noundef %511, ptr noundef nonnull %msg.i601, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i606) #7
  br label %dib3000mc_write_word.exit620

dib3000mc_write_word.exit620:                     ; preds = %if.end.i618, %dib3000mc_write_word.exit600.dib3000mc_write_word.exit620_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i601) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i621) #7
  %512 = getelementptr inbounds i8, ptr %msg.i621, i32 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 327679, ptr %512, align 4
  %514 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %i2c_addr.i, align 4
  %516 = lshr i8 %515, 1
  %conv1.i623 = zext i8 %516 to i16
  %517 = ptrtoint ptr %msg.i621 to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 %conv1.i623, ptr %msg.i621, align 4
  %flags.i624 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621, i32 0, i32 1
  %518 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_store2_noabort(i32 %518)
  store i16 0, ptr %flags.i624, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %519 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i626 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %519, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i627 = icmp eq ptr %call7.i.i626, null
  br i1 %tobool.not.i627, label %dib3000mc_write_word.exit620.dib3000mc_write_word.exit638_crit_edge, label %if.end.i636

dib3000mc_write_word.exit620.dib3000mc_write_word.exit638_crit_edge: ; preds = %dib3000mc_write_word.exit620
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit638

if.end.i636:                                      ; preds = %dib3000mc_write_word.exit620
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i628 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621, i32 0, i32 3
  %520 = ptrtoint ptr %call7.i.i626 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 0, ptr %call7.i.i626, align 8
  %arrayidx6.i629 = getelementptr i8, ptr %call7.i.i626, i32 1
  %521 = ptrtoint ptr %arrayidx6.i629 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 40, ptr %arrayidx6.i629, align 1
  %arrayidx10.i630 = getelementptr i8, ptr %call7.i.i626, i32 2
  %522 = ptrtoint ptr %arrayidx10.i630 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 1, ptr %arrayidx10.i630, align 2
  %arrayidx12.i631 = getelementptr i8, ptr %call7.i.i626, i32 3
  %523 = ptrtoint ptr %arrayidx12.i631 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 121, ptr %arrayidx12.i631, align 1
  %524 = ptrtoint ptr %buf.i628 to i32
  call void @__asan_store4_noabort(i32 %524)
  store ptr %call7.i.i626, ptr %buf.i628, align 4
  %i2c_adap.i632 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %525 = ptrtoint ptr %i2c_adap.i632 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %i2c_adap.i632, align 8
  %call14.i633 = call i32 @i2c_transfer(ptr noundef %526, ptr noundef nonnull %msg.i621, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i626) #7
  br label %dib3000mc_write_word.exit638

dib3000mc_write_word.exit638:                     ; preds = %if.end.i636, %dib3000mc_write_word.exit620.dib3000mc_write_word.exit638_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i621) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i639) #7
  %527 = getelementptr inbounds i8, ptr %msg.i639, i32 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 327679, ptr %527, align 4
  %529 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %i2c_addr.i, align 4
  %531 = lshr i8 %530, 1
  %conv1.i641 = zext i8 %531 to i16
  %532 = ptrtoint ptr %msg.i639 to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 %conv1.i641, ptr %msg.i639, align 4
  %flags.i642 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i639, i32 0, i32 1
  %533 = ptrtoint ptr %flags.i642 to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 0, ptr %flags.i642, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %534 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i644 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %534, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i645 = icmp eq ptr %call7.i.i644, null
  br i1 %tobool.not.i645, label %dib3000mc_write_word.exit638.dib3000mc_write_word.exit656_crit_edge, label %if.end.i654

dib3000mc_write_word.exit638.dib3000mc_write_word.exit656_crit_edge: ; preds = %dib3000mc_write_word.exit638
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit656

if.end.i654:                                      ; preds = %dib3000mc_write_word.exit638
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i646 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i639, i32 0, i32 3
  %535 = ptrtoint ptr %call7.i.i644 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 0, ptr %call7.i.i644, align 8
  %arrayidx6.i647 = getelementptr i8, ptr %call7.i.i644, i32 1
  %536 = ptrtoint ptr %arrayidx6.i647 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 41, ptr %arrayidx6.i647, align 1
  %arrayidx10.i648 = getelementptr i8, ptr %call7.i.i644, i32 2
  %537 = ptrtoint ptr %arrayidx10.i648 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 3, ptr %arrayidx10.i648, align 2
  %arrayidx12.i649 = getelementptr i8, ptr %call7.i.i644, i32 3
  %538 = ptrtoint ptr %arrayidx12.i649 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 -16, ptr %arrayidx12.i649, align 1
  %539 = ptrtoint ptr %buf.i646 to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %call7.i.i644, ptr %buf.i646, align 4
  %i2c_adap.i650 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %540 = ptrtoint ptr %i2c_adap.i650 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %i2c_adap.i650, align 8
  %call14.i651 = call i32 @i2c_transfer(ptr noundef %541, ptr noundef nonnull %msg.i639, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i644) #7
  br label %dib3000mc_write_word.exit656

dib3000mc_write_word.exit656:                     ; preds = %if.end.i654, %dib3000mc_write_word.exit638.dib3000mc_write_word.exit656_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i639) #7
  %agc1_max = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 10
  %542 = ptrtoint ptr %agc1_max to i32
  call void @__asan_load2_noabort(i32 %542)
  %543 = load i16, ptr %agc1_max, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i657) #7
  %544 = getelementptr inbounds i8, ptr %msg.i657, i32 4
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 327679, ptr %544, align 4
  %546 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %i2c_addr.i, align 4
  %548 = lshr i8 %547, 1
  %conv1.i659 = zext i8 %548 to i16
  %549 = ptrtoint ptr %msg.i657 to i32
  call void @__asan_store2_noabort(i32 %549)
  store i16 %conv1.i659, ptr %msg.i657, align 4
  %flags.i660 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i657, i32 0, i32 1
  %550 = ptrtoint ptr %flags.i660 to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 0, ptr %flags.i660, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %551 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i662 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %551, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i663 = icmp eq ptr %call7.i.i662, null
  br i1 %tobool.not.i663, label %dib3000mc_write_word.exit656.dib3000mc_write_word.exit676_crit_edge, label %if.end.i674

dib3000mc_write_word.exit656.dib3000mc_write_word.exit676_crit_edge: ; preds = %dib3000mc_write_word.exit656
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit676

if.end.i674:                                      ; preds = %dib3000mc_write_word.exit656
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i664 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i657, i32 0, i32 3
  %552 = ptrtoint ptr %call7.i.i662 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 0, ptr %call7.i.i662, align 8
  %arrayidx6.i665 = getelementptr i8, ptr %call7.i.i662, i32 1
  %553 = ptrtoint ptr %arrayidx6.i665 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 42, ptr %arrayidx6.i665, align 1
  %554 = lshr i16 %543, 8
  %conv9.i666 = trunc i16 %554 to i8
  %arrayidx10.i667 = getelementptr i8, ptr %call7.i.i662, i32 2
  %555 = ptrtoint ptr %arrayidx10.i667 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %conv9.i666, ptr %arrayidx10.i667, align 2
  %conv11.i668 = trunc i16 %543 to i8
  %arrayidx12.i669 = getelementptr i8, ptr %call7.i.i662, i32 3
  %556 = ptrtoint ptr %arrayidx12.i669 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv11.i668, ptr %arrayidx12.i669, align 1
  %557 = ptrtoint ptr %buf.i664 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %call7.i.i662, ptr %buf.i664, align 4
  %i2c_adap.i670 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %558 = ptrtoint ptr %i2c_adap.i670 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %i2c_adap.i670, align 8
  %call14.i671 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %msg.i657, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i662) #7
  br label %dib3000mc_write_word.exit676

dib3000mc_write_word.exit676:                     ; preds = %if.end.i674, %dib3000mc_write_word.exit656.dib3000mc_write_word.exit676_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i657) #7
  %agc1_min = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 11
  %560 = ptrtoint ptr %agc1_min to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %agc1_min, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i677) #7
  %562 = getelementptr inbounds i8, ptr %msg.i677, i32 4
  %563 = ptrtoint ptr %562 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 327679, ptr %562, align 4
  %564 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %i2c_addr.i, align 4
  %566 = lshr i8 %565, 1
  %conv1.i679 = zext i8 %566 to i16
  %567 = ptrtoint ptr %msg.i677 to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %conv1.i679, ptr %msg.i677, align 4
  %flags.i680 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i677, i32 0, i32 1
  %568 = ptrtoint ptr %flags.i680 to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 0, ptr %flags.i680, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %569 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i682 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %569, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i683 = icmp eq ptr %call7.i.i682, null
  br i1 %tobool.not.i683, label %dib3000mc_write_word.exit676.dib3000mc_write_word.exit696_crit_edge, label %if.end.i694

dib3000mc_write_word.exit676.dib3000mc_write_word.exit696_crit_edge: ; preds = %dib3000mc_write_word.exit676
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit696

if.end.i694:                                      ; preds = %dib3000mc_write_word.exit676
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i684 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i677, i32 0, i32 3
  %570 = ptrtoint ptr %call7.i.i682 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 0, ptr %call7.i.i682, align 8
  %arrayidx6.i685 = getelementptr i8, ptr %call7.i.i682, i32 1
  %571 = ptrtoint ptr %arrayidx6.i685 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 43, ptr %arrayidx6.i685, align 1
  %572 = lshr i16 %561, 8
  %conv9.i686 = trunc i16 %572 to i8
  %arrayidx10.i687 = getelementptr i8, ptr %call7.i.i682, i32 2
  %573 = ptrtoint ptr %arrayidx10.i687 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %conv9.i686, ptr %arrayidx10.i687, align 2
  %conv11.i688 = trunc i16 %561 to i8
  %arrayidx12.i689 = getelementptr i8, ptr %call7.i.i682, i32 3
  %574 = ptrtoint ptr %arrayidx12.i689 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %conv11.i688, ptr %arrayidx12.i689, align 1
  %575 = ptrtoint ptr %buf.i684 to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %call7.i.i682, ptr %buf.i684, align 4
  %i2c_adap.i690 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %576 = ptrtoint ptr %i2c_adap.i690 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %i2c_adap.i690, align 8
  %call14.i691 = call i32 @i2c_transfer(ptr noundef %577, ptr noundef nonnull %msg.i677, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i682) #7
  br label %dib3000mc_write_word.exit696

dib3000mc_write_word.exit696:                     ; preds = %if.end.i694, %dib3000mc_write_word.exit676.dib3000mc_write_word.exit696_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i677) #7
  %agc2_max = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 12
  %578 = ptrtoint ptr %agc2_max to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %agc2_max, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #7
  %580 = getelementptr inbounds i8, ptr %msg.i697, i32 4
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 327679, ptr %580, align 4
  %582 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %i2c_addr.i, align 4
  %584 = lshr i8 %583, 1
  %conv1.i699 = zext i8 %584 to i16
  %585 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %585)
  store i16 %conv1.i699, ptr %msg.i697, align 4
  %flags.i700 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i697, i32 0, i32 1
  %586 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 0, ptr %flags.i700, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %587 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i702 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %587, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i703 = icmp eq ptr %call7.i.i702, null
  br i1 %tobool.not.i703, label %dib3000mc_write_word.exit696.dib3000mc_write_word.exit716_crit_edge, label %if.end.i714

dib3000mc_write_word.exit696.dib3000mc_write_word.exit716_crit_edge: ; preds = %dib3000mc_write_word.exit696
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit716

if.end.i714:                                      ; preds = %dib3000mc_write_word.exit696
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i704 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i697, i32 0, i32 3
  %588 = ptrtoint ptr %call7.i.i702 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 0, ptr %call7.i.i702, align 8
  %arrayidx6.i705 = getelementptr i8, ptr %call7.i.i702, i32 1
  %589 = ptrtoint ptr %arrayidx6.i705 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 44, ptr %arrayidx6.i705, align 1
  %590 = lshr i16 %579, 8
  %conv9.i706 = trunc i16 %590 to i8
  %arrayidx10.i707 = getelementptr i8, ptr %call7.i.i702, i32 2
  %591 = ptrtoint ptr %arrayidx10.i707 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %conv9.i706, ptr %arrayidx10.i707, align 2
  %conv11.i708 = trunc i16 %579 to i8
  %arrayidx12.i709 = getelementptr i8, ptr %call7.i.i702, i32 3
  %592 = ptrtoint ptr %arrayidx12.i709 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %conv11.i708, ptr %arrayidx12.i709, align 1
  %593 = ptrtoint ptr %buf.i704 to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %call7.i.i702, ptr %buf.i704, align 4
  %i2c_adap.i710 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %594 = ptrtoint ptr %i2c_adap.i710 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %i2c_adap.i710, align 8
  %call14.i711 = call i32 @i2c_transfer(ptr noundef %595, ptr noundef nonnull %msg.i697, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i702) #7
  br label %dib3000mc_write_word.exit716

dib3000mc_write_word.exit716:                     ; preds = %if.end.i714, %dib3000mc_write_word.exit696.dib3000mc_write_word.exit716_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #7
  %agc2_min = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 13
  %596 = ptrtoint ptr %agc2_min to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %agc2_min, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i717) #7
  %598 = getelementptr inbounds i8, ptr %msg.i717, i32 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 327679, ptr %598, align 4
  %600 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %i2c_addr.i, align 4
  %602 = lshr i8 %601, 1
  %conv1.i719 = zext i8 %602 to i16
  %603 = ptrtoint ptr %msg.i717 to i32
  call void @__asan_store2_noabort(i32 %603)
  store i16 %conv1.i719, ptr %msg.i717, align 4
  %flags.i720 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i717, i32 0, i32 1
  %604 = ptrtoint ptr %flags.i720 to i32
  call void @__asan_store2_noabort(i32 %604)
  store i16 0, ptr %flags.i720, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %605 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i722 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %605, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i723 = icmp eq ptr %call7.i.i722, null
  br i1 %tobool.not.i723, label %dib3000mc_write_word.exit716.dib3000mc_write_word.exit736_crit_edge, label %if.end.i734

dib3000mc_write_word.exit716.dib3000mc_write_word.exit736_crit_edge: ; preds = %dib3000mc_write_word.exit716
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit736

if.end.i734:                                      ; preds = %dib3000mc_write_word.exit716
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i724 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i717, i32 0, i32 3
  %606 = ptrtoint ptr %call7.i.i722 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 0, ptr %call7.i.i722, align 8
  %arrayidx6.i725 = getelementptr i8, ptr %call7.i.i722, i32 1
  %607 = ptrtoint ptr %arrayidx6.i725 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 45, ptr %arrayidx6.i725, align 1
  %608 = lshr i16 %597, 8
  %conv9.i726 = trunc i16 %608 to i8
  %arrayidx10.i727 = getelementptr i8, ptr %call7.i.i722, i32 2
  %609 = ptrtoint ptr %arrayidx10.i727 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %conv9.i726, ptr %arrayidx10.i727, align 2
  %conv11.i728 = trunc i16 %597 to i8
  %arrayidx12.i729 = getelementptr i8, ptr %call7.i.i722, i32 3
  %610 = ptrtoint ptr %arrayidx12.i729 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %conv11.i728, ptr %arrayidx12.i729, align 1
  %611 = ptrtoint ptr %buf.i724 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %call7.i.i722, ptr %buf.i724, align 4
  %i2c_adap.i730 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %612 = ptrtoint ptr %i2c_adap.i730 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %i2c_adap.i730, align 8
  %call14.i731 = call i32 @i2c_transfer(ptr noundef %613, ptr noundef nonnull %msg.i717, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i722) #7
  br label %dib3000mc_write_word.exit736

dib3000mc_write_word.exit736:                     ; preds = %if.end.i734, %dib3000mc_write_word.exit716.dib3000mc_write_word.exit736_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i717) #7
  %agc1_pt1 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 14
  %614 = ptrtoint ptr %agc1_pt1 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %agc1_pt1, align 2
  %agc1_pt2 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 15
  %616 = ptrtoint ptr %agc1_pt2 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %agc1_pt2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i737) #7
  %618 = getelementptr inbounds i8, ptr %msg.i737, i32 4
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 327679, ptr %618, align 4
  %620 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %i2c_addr.i, align 4
  %622 = lshr i8 %621, 1
  %conv1.i739 = zext i8 %622 to i16
  %623 = ptrtoint ptr %msg.i737 to i32
  call void @__asan_store2_noabort(i32 %623)
  store i16 %conv1.i739, ptr %msg.i737, align 4
  %flags.i740 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i737, i32 0, i32 1
  %624 = ptrtoint ptr %flags.i740 to i32
  call void @__asan_store2_noabort(i32 %624)
  store i16 0, ptr %flags.i740, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %625 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i742 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %625, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i743 = icmp eq ptr %call7.i.i742, null
  br i1 %tobool.not.i743, label %dib3000mc_write_word.exit736.dib3000mc_write_word.exit755_crit_edge, label %if.end.i753

dib3000mc_write_word.exit736.dib3000mc_write_word.exit755_crit_edge: ; preds = %dib3000mc_write_word.exit736
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit755

if.end.i753:                                      ; preds = %dib3000mc_write_word.exit736
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i744 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i737, i32 0, i32 3
  %626 = ptrtoint ptr %call7.i.i742 to i32
  call void @__asan_store1_noabort(i32 %626)
  store i8 0, ptr %call7.i.i742, align 8
  %arrayidx6.i745 = getelementptr i8, ptr %call7.i.i742, i32 1
  %627 = ptrtoint ptr %arrayidx6.i745 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 46, ptr %arrayidx6.i745, align 1
  %arrayidx10.i746 = getelementptr i8, ptr %call7.i.i742, i32 2
  %628 = ptrtoint ptr %arrayidx10.i746 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %615, ptr %arrayidx10.i746, align 2
  %arrayidx12.i748 = getelementptr i8, ptr %call7.i.i742, i32 3
  %629 = ptrtoint ptr %arrayidx12.i748 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 %617, ptr %arrayidx12.i748, align 1
  %630 = ptrtoint ptr %buf.i744 to i32
  call void @__asan_store4_noabort(i32 %630)
  store ptr %call7.i.i742, ptr %buf.i744, align 4
  %i2c_adap.i749 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %631 = ptrtoint ptr %i2c_adap.i749 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %i2c_adap.i749, align 8
  %call14.i750 = call i32 @i2c_transfer(ptr noundef %632, ptr noundef nonnull %msg.i737, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i742) #7
  br label %dib3000mc_write_word.exit755

dib3000mc_write_word.exit755:                     ; preds = %if.end.i753, %dib3000mc_write_word.exit736.dib3000mc_write_word.exit755_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i737) #7
  %agc1_slope1 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 17
  %633 = ptrtoint ptr %agc1_slope1 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %agc1_slope1, align 1
  %agc1_slope2 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 18
  %635 = ptrtoint ptr %agc1_slope2 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %agc1_slope2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i756) #7
  %637 = getelementptr inbounds i8, ptr %msg.i756, i32 4
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 327679, ptr %637, align 4
  %639 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %i2c_addr.i, align 4
  %641 = lshr i8 %640, 1
  %conv1.i758 = zext i8 %641 to i16
  %642 = ptrtoint ptr %msg.i756 to i32
  call void @__asan_store2_noabort(i32 %642)
  store i16 %conv1.i758, ptr %msg.i756, align 4
  %flags.i759 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i756, i32 0, i32 1
  %643 = ptrtoint ptr %flags.i759 to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 0, ptr %flags.i759, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %644 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i761 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %644, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i762 = icmp eq ptr %call7.i.i761, null
  br i1 %tobool.not.i762, label %dib3000mc_write_word.exit755.dib3000mc_write_word.exit774_crit_edge, label %if.end.i772

dib3000mc_write_word.exit755.dib3000mc_write_word.exit774_crit_edge: ; preds = %dib3000mc_write_word.exit755
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit774

if.end.i772:                                      ; preds = %dib3000mc_write_word.exit755
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i763 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i756, i32 0, i32 3
  %645 = ptrtoint ptr %call7.i.i761 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 0, ptr %call7.i.i761, align 8
  %arrayidx6.i764 = getelementptr i8, ptr %call7.i.i761, i32 1
  %646 = ptrtoint ptr %arrayidx6.i764 to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 47, ptr %arrayidx6.i764, align 1
  %arrayidx10.i765 = getelementptr i8, ptr %call7.i.i761, i32 2
  %647 = ptrtoint ptr %arrayidx10.i765 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 %634, ptr %arrayidx10.i765, align 2
  %arrayidx12.i767 = getelementptr i8, ptr %call7.i.i761, i32 3
  %648 = ptrtoint ptr %arrayidx12.i767 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 %636, ptr %arrayidx12.i767, align 1
  %649 = ptrtoint ptr %buf.i763 to i32
  call void @__asan_store4_noabort(i32 %649)
  store ptr %call7.i.i761, ptr %buf.i763, align 4
  %i2c_adap.i768 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %650 = ptrtoint ptr %i2c_adap.i768 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %i2c_adap.i768, align 8
  %call14.i769 = call i32 @i2c_transfer(ptr noundef %651, ptr noundef nonnull %msg.i756, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i761) #7
  br label %dib3000mc_write_word.exit774

dib3000mc_write_word.exit774:                     ; preds = %if.end.i772, %dib3000mc_write_word.exit755.dib3000mc_write_word.exit774_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i756) #7
  %agc2_pt1 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 19
  %652 = ptrtoint ptr %agc2_pt1 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %agc2_pt1, align 1
  %agc2_pt2 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 20
  %654 = ptrtoint ptr %agc2_pt2 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %agc2_pt2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i775) #7
  %656 = getelementptr inbounds i8, ptr %msg.i775, i32 4
  %657 = ptrtoint ptr %656 to i32
  call void @__asan_store4_noabort(i32 %657)
  store i32 327679, ptr %656, align 4
  %658 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %i2c_addr.i, align 4
  %660 = lshr i8 %659, 1
  %conv1.i777 = zext i8 %660 to i16
  %661 = ptrtoint ptr %msg.i775 to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %conv1.i777, ptr %msg.i775, align 4
  %flags.i778 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i775, i32 0, i32 1
  %662 = ptrtoint ptr %flags.i778 to i32
  call void @__asan_store2_noabort(i32 %662)
  store i16 0, ptr %flags.i778, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %663 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i780 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %663, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i781 = icmp eq ptr %call7.i.i780, null
  br i1 %tobool.not.i781, label %dib3000mc_write_word.exit774.dib3000mc_write_word.exit793_crit_edge, label %if.end.i791

dib3000mc_write_word.exit774.dib3000mc_write_word.exit793_crit_edge: ; preds = %dib3000mc_write_word.exit774
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit793

if.end.i791:                                      ; preds = %dib3000mc_write_word.exit774
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i782 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i775, i32 0, i32 3
  %664 = ptrtoint ptr %call7.i.i780 to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 0, ptr %call7.i.i780, align 8
  %arrayidx6.i783 = getelementptr i8, ptr %call7.i.i780, i32 1
  %665 = ptrtoint ptr %arrayidx6.i783 to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 48, ptr %arrayidx6.i783, align 1
  %arrayidx10.i784 = getelementptr i8, ptr %call7.i.i780, i32 2
  %666 = ptrtoint ptr %arrayidx10.i784 to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 %653, ptr %arrayidx10.i784, align 2
  %arrayidx12.i786 = getelementptr i8, ptr %call7.i.i780, i32 3
  %667 = ptrtoint ptr %arrayidx12.i786 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 %655, ptr %arrayidx12.i786, align 1
  %668 = ptrtoint ptr %buf.i782 to i32
  call void @__asan_store4_noabort(i32 %668)
  store ptr %call7.i.i780, ptr %buf.i782, align 4
  %i2c_adap.i787 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %669 = ptrtoint ptr %i2c_adap.i787 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %i2c_adap.i787, align 8
  %call14.i788 = call i32 @i2c_transfer(ptr noundef %670, ptr noundef nonnull %msg.i775, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i780) #7
  br label %dib3000mc_write_word.exit793

dib3000mc_write_word.exit793:                     ; preds = %if.end.i791, %dib3000mc_write_word.exit774.dib3000mc_write_word.exit793_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i775) #7
  %agc2_slope1 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 21
  %671 = ptrtoint ptr %agc2_slope1 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %agc2_slope1, align 1
  %agc2_slope2 = getelementptr inbounds %struct.dibx000_agc_config, ptr %5, i32 0, i32 22
  %673 = ptrtoint ptr %agc2_slope2 to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %agc2_slope2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i794) #7
  %675 = getelementptr inbounds i8, ptr %msg.i794, i32 4
  %676 = ptrtoint ptr %675 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 327679, ptr %675, align 4
  %677 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %i2c_addr.i, align 4
  %679 = lshr i8 %678, 1
  %conv1.i796 = zext i8 %679 to i16
  %680 = ptrtoint ptr %msg.i794 to i32
  call void @__asan_store2_noabort(i32 %680)
  store i16 %conv1.i796, ptr %msg.i794, align 4
  %flags.i797 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i794, i32 0, i32 1
  %681 = ptrtoint ptr %flags.i797 to i32
  call void @__asan_store2_noabort(i32 %681)
  store i16 0, ptr %flags.i797, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %682 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i799 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %682, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i800 = icmp eq ptr %call7.i.i799, null
  br i1 %tobool.not.i800, label %dib3000mc_write_word.exit793.dib3000mc_write_word.exit812_crit_edge, label %if.end.i810

dib3000mc_write_word.exit793.dib3000mc_write_word.exit812_crit_edge: ; preds = %dib3000mc_write_word.exit793
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit812

if.end.i810:                                      ; preds = %dib3000mc_write_word.exit793
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i801 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i794, i32 0, i32 3
  %683 = ptrtoint ptr %call7.i.i799 to i32
  call void @__asan_store1_noabort(i32 %683)
  store i8 0, ptr %call7.i.i799, align 8
  %arrayidx6.i802 = getelementptr i8, ptr %call7.i.i799, i32 1
  %684 = ptrtoint ptr %arrayidx6.i802 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 49, ptr %arrayidx6.i802, align 1
  %arrayidx10.i803 = getelementptr i8, ptr %call7.i.i799, i32 2
  %685 = ptrtoint ptr %arrayidx10.i803 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %672, ptr %arrayidx10.i803, align 2
  %arrayidx12.i805 = getelementptr i8, ptr %call7.i.i799, i32 3
  %686 = ptrtoint ptr %arrayidx12.i805 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 %674, ptr %arrayidx12.i805, align 1
  %687 = ptrtoint ptr %buf.i801 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr %call7.i.i799, ptr %buf.i801, align 4
  %i2c_adap.i806 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %688 = ptrtoint ptr %i2c_adap.i806 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %i2c_adap.i806, align 8
  %call14.i807 = call i32 @i2c_transfer(ptr noundef %689, ptr noundef nonnull %msg.i794, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i799) #7
  br label %dib3000mc_write_word.exit812

dib3000mc_write_word.exit812:                     ; preds = %if.end.i810, %dib3000mc_write_word.exit793.dib3000mc_write_word.exit812_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i794) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i813) #7
  %690 = getelementptr inbounds i8, ptr %msg.i813, i32 4
  %691 = ptrtoint ptr %690 to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 327679, ptr %690, align 4
  %692 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %i2c_addr.i, align 4
  %694 = lshr i8 %693, 1
  %conv1.i815 = zext i8 %694 to i16
  %695 = ptrtoint ptr %msg.i813 to i32
  call void @__asan_store2_noabort(i32 %695)
  store i16 %conv1.i815, ptr %msg.i813, align 4
  %flags.i816 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i813, i32 0, i32 1
  %696 = ptrtoint ptr %flags.i816 to i32
  call void @__asan_store2_noabort(i32 %696)
  store i16 0, ptr %flags.i816, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %697 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i818 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %697, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i819 = icmp eq ptr %call7.i.i818, null
  br i1 %tobool.not.i819, label %dib3000mc_write_word.exit812.dib3000mc_write_word.exit830_crit_edge, label %if.end.i828

dib3000mc_write_word.exit812.dib3000mc_write_word.exit830_crit_edge: ; preds = %dib3000mc_write_word.exit812
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit830

if.end.i828:                                      ; preds = %dib3000mc_write_word.exit812
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i820 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i813, i32 0, i32 3
  %698 = ptrtoint ptr %call7.i.i818 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 0, ptr %call7.i.i818, align 8
  %arrayidx6.i821 = getelementptr i8, ptr %call7.i.i818, i32 1
  %699 = ptrtoint ptr %arrayidx6.i821 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 110, ptr %arrayidx6.i821, align 1
  %arrayidx10.i822 = getelementptr i8, ptr %call7.i.i818, i32 2
  %700 = ptrtoint ptr %arrayidx10.i822 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 12, ptr %arrayidx10.i822, align 2
  %arrayidx12.i823 = getelementptr i8, ptr %call7.i.i818, i32 3
  %701 = ptrtoint ptr %arrayidx12.i823 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 -51, ptr %arrayidx12.i823, align 1
  %702 = ptrtoint ptr %buf.i820 to i32
  call void @__asan_store4_noabort(i32 %702)
  store ptr %call7.i.i818, ptr %buf.i820, align 4
  %i2c_adap.i824 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %703 = ptrtoint ptr %i2c_adap.i824 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %i2c_adap.i824, align 8
  %call14.i825 = call i32 @i2c_transfer(ptr noundef %704, ptr noundef nonnull %msg.i813, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i818) #7
  br label %dib3000mc_write_word.exit830

dib3000mc_write_word.exit830:                     ; preds = %if.end.i828, %dib3000mc_write_word.exit812.dib3000mc_write_word.exit830_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i813) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i831) #7
  %705 = getelementptr inbounds i8, ptr %msg.i831, i32 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 327679, ptr %705, align 4
  %707 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %i2c_addr.i, align 4
  %709 = lshr i8 %708, 1
  %conv1.i833 = zext i8 %709 to i16
  %710 = ptrtoint ptr %msg.i831 to i32
  call void @__asan_store2_noabort(i32 %710)
  store i16 %conv1.i833, ptr %msg.i831, align 4
  %flags.i834 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i831, i32 0, i32 1
  %711 = ptrtoint ptr %flags.i834 to i32
  call void @__asan_store2_noabort(i32 %711)
  store i16 0, ptr %flags.i834, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %712 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i836 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %712, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i837 = icmp eq ptr %call7.i.i836, null
  br i1 %tobool.not.i837, label %dib3000mc_write_word.exit830.dib3000mc_write_word.exit848_crit_edge, label %if.end.i846

dib3000mc_write_word.exit830.dib3000mc_write_word.exit848_crit_edge: ; preds = %dib3000mc_write_word.exit830
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit848

if.end.i846:                                      ; preds = %dib3000mc_write_word.exit830
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i838 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i831, i32 0, i32 3
  %713 = ptrtoint ptr %call7.i.i836 to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 0, ptr %call7.i.i836, align 8
  %arrayidx6.i839 = getelementptr i8, ptr %call7.i.i836, i32 1
  %714 = ptrtoint ptr %arrayidx6.i839 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 26, ptr %arrayidx6.i839, align 1
  %arrayidx10.i840 = getelementptr i8, ptr %call7.i.i836, i32 2
  %715 = ptrtoint ptr %arrayidx10.i840 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 102, ptr %arrayidx10.i840, align 2
  %arrayidx12.i841 = getelementptr i8, ptr %call7.i.i836, i32 3
  %716 = ptrtoint ptr %arrayidx12.i841 to i32
  call void @__asan_store1_noabort(i32 %716)
  store i8 -128, ptr %arrayidx12.i841, align 1
  %717 = ptrtoint ptr %buf.i838 to i32
  call void @__asan_store4_noabort(i32 %717)
  store ptr %call7.i.i836, ptr %buf.i838, align 4
  %i2c_adap.i842 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %718 = ptrtoint ptr %i2c_adap.i842 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %i2c_adap.i842, align 8
  %call14.i843 = call i32 @i2c_transfer(ptr noundef %719, ptr noundef nonnull %msg.i831, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i836) #7
  br label %dib3000mc_write_word.exit848

dib3000mc_write_word.exit848:                     ; preds = %if.end.i846, %dib3000mc_write_word.exit830.dib3000mc_write_word.exit848_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i831) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i849) #7
  %720 = getelementptr inbounds i8, ptr %msg.i849, i32 4
  %721 = ptrtoint ptr %720 to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 327679, ptr %720, align 4
  %722 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %i2c_addr.i, align 4
  %724 = lshr i8 %723, 1
  %conv1.i851 = zext i8 %724 to i16
  %725 = ptrtoint ptr %msg.i849 to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 %conv1.i851, ptr %msg.i849, align 4
  %flags.i852 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i849, i32 0, i32 1
  %726 = ptrtoint ptr %flags.i852 to i32
  call void @__asan_store2_noabort(i32 %726)
  store i16 0, ptr %flags.i852, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %727 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i854 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %727, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i855 = icmp eq ptr %call7.i.i854, null
  br i1 %tobool.not.i855, label %dib3000mc_write_word.exit848.dib3000mc_write_word.exit866_crit_edge, label %if.end.i864

dib3000mc_write_word.exit848.dib3000mc_write_word.exit866_crit_edge: ; preds = %dib3000mc_write_word.exit848
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit866

if.end.i864:                                      ; preds = %dib3000mc_write_word.exit848
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i856 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i849, i32 0, i32 3
  %728 = ptrtoint ptr %call7.i.i854 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 0, ptr %call7.i.i854, align 8
  %arrayidx6.i857 = getelementptr i8, ptr %call7.i.i854, i32 1
  %729 = ptrtoint ptr %arrayidx6.i857 to i32
  call void @__asan_store1_noabort(i32 %729)
  store i8 1, ptr %arrayidx6.i857, align 1
  %arrayidx10.i858 = getelementptr i8, ptr %call7.i.i854, i32 2
  %730 = ptrtoint ptr %arrayidx10.i858 to i32
  call void @__asan_store1_noabort(i32 %730)
  store i8 0, ptr %arrayidx10.i858, align 2
  %arrayidx12.i859 = getelementptr i8, ptr %call7.i.i854, i32 3
  %731 = ptrtoint ptr %arrayidx12.i859 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 4, ptr %arrayidx12.i859, align 1
  %732 = ptrtoint ptr %buf.i856 to i32
  call void @__asan_store4_noabort(i32 %732)
  store ptr %call7.i.i854, ptr %buf.i856, align 4
  %i2c_adap.i860 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %733 = ptrtoint ptr %i2c_adap.i860 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %i2c_adap.i860, align 8
  %call14.i861 = call i32 @i2c_transfer(ptr noundef %734, ptr noundef nonnull %msg.i849, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i854) #7
  br label %dib3000mc_write_word.exit866

dib3000mc_write_word.exit866:                     ; preds = %if.end.i864, %dib3000mc_write_word.exit848.dib3000mc_write_word.exit866_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i849) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i867) #7
  %735 = getelementptr inbounds i8, ptr %msg.i867, i32 4
  %736 = ptrtoint ptr %735 to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 327679, ptr %735, align 4
  %737 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %i2c_addr.i, align 4
  %739 = lshr i8 %738, 1
  %conv1.i869 = zext i8 %739 to i16
  %740 = ptrtoint ptr %msg.i867 to i32
  call void @__asan_store2_noabort(i32 %740)
  store i16 %conv1.i869, ptr %msg.i867, align 4
  %flags.i870 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i867, i32 0, i32 1
  %741 = ptrtoint ptr %flags.i870 to i32
  call void @__asan_store2_noabort(i32 %741)
  store i16 0, ptr %flags.i870, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %742 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i872 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %742, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i873 = icmp eq ptr %call7.i.i872, null
  br i1 %tobool.not.i873, label %dib3000mc_write_word.exit866.dib3000mc_write_word.exit884_crit_edge, label %if.end.i882

dib3000mc_write_word.exit866.dib3000mc_write_word.exit884_crit_edge: ; preds = %dib3000mc_write_word.exit866
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit884

if.end.i882:                                      ; preds = %dib3000mc_write_word.exit866
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i874 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i867, i32 0, i32 3
  %743 = ptrtoint ptr %call7.i.i872 to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 0, ptr %call7.i.i872, align 8
  %arrayidx6.i875 = getelementptr i8, ptr %call7.i.i872, i32 1
  %744 = ptrtoint ptr %arrayidx6.i875 to i32
  call void @__asan_store1_noabort(i32 %744)
  store i8 2, ptr %arrayidx6.i875, align 1
  %arrayidx10.i876 = getelementptr i8, ptr %call7.i.i872, i32 2
  %745 = ptrtoint ptr %arrayidx10.i876 to i32
  call void @__asan_store1_noabort(i32 %745)
  store i8 0, ptr %arrayidx10.i876, align 2
  %arrayidx12.i877 = getelementptr i8, ptr %call7.i.i872, i32 3
  %746 = ptrtoint ptr %arrayidx12.i877 to i32
  call void @__asan_store1_noabort(i32 %746)
  store i8 4, ptr %arrayidx12.i877, align 1
  %747 = ptrtoint ptr %buf.i874 to i32
  call void @__asan_store4_noabort(i32 %747)
  store ptr %call7.i.i872, ptr %buf.i874, align 4
  %i2c_adap.i878 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %748 = ptrtoint ptr %i2c_adap.i878 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %i2c_adap.i878, align 8
  %call14.i879 = call i32 @i2c_transfer(ptr noundef %749, ptr noundef nonnull %msg.i867, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i872) #7
  br label %dib3000mc_write_word.exit884

dib3000mc_write_word.exit884:                     ; preds = %if.end.i882, %dib3000mc_write_word.exit866.dib3000mc_write_word.exit884_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i867) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i885) #7
  %750 = getelementptr inbounds i8, ptr %msg.i885, i32 4
  %751 = ptrtoint ptr %750 to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 327679, ptr %750, align 4
  %752 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %i2c_addr.i, align 4
  %754 = lshr i8 %753, 1
  %conv1.i887 = zext i8 %754 to i16
  %755 = ptrtoint ptr %msg.i885 to i32
  call void @__asan_store2_noabort(i32 %755)
  store i16 %conv1.i887, ptr %msg.i885, align 4
  %flags.i888 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i885, i32 0, i32 1
  %756 = ptrtoint ptr %flags.i888 to i32
  call void @__asan_store2_noabort(i32 %756)
  store i16 0, ptr %flags.i888, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %757 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i890 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %757, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i891 = icmp eq ptr %call7.i.i890, null
  br i1 %tobool.not.i891, label %dib3000mc_write_word.exit884.dib3000mc_write_word.exit902_crit_edge, label %if.end.i900

dib3000mc_write_word.exit884.dib3000mc_write_word.exit902_crit_edge: ; preds = %dib3000mc_write_word.exit884
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit902

if.end.i900:                                      ; preds = %dib3000mc_write_word.exit884
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i892 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i885, i32 0, i32 3
  %758 = ptrtoint ptr %call7.i.i890 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 0, ptr %call7.i.i890, align 8
  %arrayidx6.i893 = getelementptr i8, ptr %call7.i.i890, i32 1
  %759 = ptrtoint ptr %arrayidx6.i893 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 3, ptr %arrayidx6.i893, align 1
  %arrayidx10.i894 = getelementptr i8, ptr %call7.i.i890, i32 2
  %760 = ptrtoint ptr %arrayidx10.i894 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 16, ptr %arrayidx10.i894, align 2
  %arrayidx12.i895 = getelementptr i8, ptr %call7.i.i890, i32 3
  %761 = ptrtoint ptr %arrayidx12.i895 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 0, ptr %arrayidx12.i895, align 1
  %762 = ptrtoint ptr %buf.i892 to i32
  call void @__asan_store4_noabort(i32 %762)
  store ptr %call7.i.i890, ptr %buf.i892, align 4
  %i2c_adap.i896 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %763 = ptrtoint ptr %i2c_adap.i896 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %i2c_adap.i896, align 8
  %call14.i897 = call i32 @i2c_transfer(ptr noundef %764, ptr noundef nonnull %msg.i885, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i890) #7
  br label %dib3000mc_write_word.exit902

dib3000mc_write_word.exit902:                     ; preds = %if.end.i900, %dib3000mc_write_word.exit884.dib3000mc_write_word.exit902_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i885) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i903) #7
  %765 = getelementptr inbounds i8, ptr %msg.i903, i32 4
  %766 = ptrtoint ptr %765 to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 327679, ptr %765, align 4
  %767 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %i2c_addr.i, align 4
  %769 = lshr i8 %768, 1
  %conv1.i905 = zext i8 %769 to i16
  %770 = ptrtoint ptr %msg.i903 to i32
  call void @__asan_store2_noabort(i32 %770)
  store i16 %conv1.i905, ptr %msg.i903, align 4
  %flags.i906 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i903, i32 0, i32 1
  %771 = ptrtoint ptr %flags.i906 to i32
  call void @__asan_store2_noabort(i32 %771)
  store i16 0, ptr %flags.i906, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %772 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i908 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %772, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i909 = icmp eq ptr %call7.i.i908, null
  br i1 %tobool.not.i909, label %dib3000mc_write_word.exit902.dib3000mc_write_word.exit920_crit_edge, label %if.end.i918

dib3000mc_write_word.exit902.dib3000mc_write_word.exit920_crit_edge: ; preds = %dib3000mc_write_word.exit902
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit920

if.end.i918:                                      ; preds = %dib3000mc_write_word.exit902
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i910 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i903, i32 0, i32 3
  %773 = ptrtoint ptr %call7.i.i908 to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 0, ptr %call7.i.i908, align 8
  %arrayidx6.i911 = getelementptr i8, ptr %call7.i.i908, i32 1
  %774 = ptrtoint ptr %arrayidx6.i911 to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 5, ptr %arrayidx6.i911, align 1
  %arrayidx10.i912 = getelementptr i8, ptr %call7.i.i908, i32 2
  %775 = ptrtoint ptr %arrayidx10.i912 to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 0, ptr %arrayidx10.i912, align 2
  %arrayidx12.i913 = getelementptr i8, ptr %call7.i.i908, i32 3
  %776 = ptrtoint ptr %arrayidx12.i913 to i32
  call void @__asan_store1_noabort(i32 %776)
  store i8 1, ptr %arrayidx12.i913, align 1
  %777 = ptrtoint ptr %buf.i910 to i32
  call void @__asan_store4_noabort(i32 %777)
  store ptr %call7.i.i908, ptr %buf.i910, align 4
  %i2c_adap.i914 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %778 = ptrtoint ptr %i2c_adap.i914 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %i2c_adap.i914, align 8
  %call14.i915 = call i32 @i2c_transfer(ptr noundef %779, ptr noundef nonnull %msg.i903, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i908) #7
  br label %dib3000mc_write_word.exit920

dib3000mc_write_word.exit920:                     ; preds = %if.end.i918, %dib3000mc_write_word.exit902.dib3000mc_write_word.exit920_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i903) #7
  call fastcc void @dib3000mc_set_bandwidth(ptr noundef %1, i32 noundef 8000)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i921) #7
  %780 = getelementptr inbounds i8, ptr %msg.i921, i32 4
  %781 = ptrtoint ptr %780 to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 327679, ptr %780, align 4
  %782 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %782)
  %783 = load i8, ptr %i2c_addr.i, align 4
  %784 = lshr i8 %783, 1
  %conv1.i923 = zext i8 %784 to i16
  %785 = ptrtoint ptr %msg.i921 to i32
  call void @__asan_store2_noabort(i32 %785)
  store i16 %conv1.i923, ptr %msg.i921, align 4
  %flags.i924 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i921, i32 0, i32 1
  %786 = ptrtoint ptr %flags.i924 to i32
  call void @__asan_store2_noabort(i32 %786)
  store i16 0, ptr %flags.i924, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %787 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i926 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %787, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i927 = icmp eq ptr %call7.i.i926, null
  br i1 %tobool.not.i927, label %dib3000mc_write_word.exit920.dib3000mc_write_word.exit938_crit_edge, label %if.end.i936

dib3000mc_write_word.exit920.dib3000mc_write_word.exit938_crit_edge: ; preds = %dib3000mc_write_word.exit920
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit938

if.end.i936:                                      ; preds = %dib3000mc_write_word.exit920
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i928 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i921, i32 0, i32 3
  %788 = ptrtoint ptr %call7.i.i926 to i32
  call void @__asan_store1_noabort(i32 %788)
  store i8 0, ptr %call7.i.i926, align 8
  %arrayidx6.i929 = getelementptr i8, ptr %call7.i.i926, i32 1
  %789 = ptrtoint ptr %arrayidx6.i929 to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 4, ptr %arrayidx6.i929, align 1
  %arrayidx10.i930 = getelementptr i8, ptr %call7.i.i926, i32 2
  %790 = ptrtoint ptr %arrayidx10.i930 to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 8, ptr %arrayidx10.i930, align 2
  %arrayidx12.i931 = getelementptr i8, ptr %call7.i.i926, i32 3
  %791 = ptrtoint ptr %arrayidx12.i931 to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 20, ptr %arrayidx12.i931, align 1
  %792 = ptrtoint ptr %buf.i928 to i32
  call void @__asan_store4_noabort(i32 %792)
  store ptr %call7.i.i926, ptr %buf.i928, align 4
  %i2c_adap.i932 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %793 = ptrtoint ptr %i2c_adap.i932 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %i2c_adap.i932, align 8
  %call14.i933 = call i32 @i2c_transfer(ptr noundef %794, ptr noundef nonnull %msg.i921, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i926) #7
  br label %dib3000mc_write_word.exit938

dib3000mc_write_word.exit938:                     ; preds = %if.end.i936, %dib3000mc_write_word.exit920.dib3000mc_write_word.exit938_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i921) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i939) #7
  %795 = getelementptr inbounds i8, ptr %msg.i939, i32 4
  %796 = ptrtoint ptr %795 to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 327679, ptr %795, align 4
  %797 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %i2c_addr.i, align 4
  %799 = lshr i8 %798, 1
  %conv1.i941 = zext i8 %799 to i16
  %800 = ptrtoint ptr %msg.i939 to i32
  call void @__asan_store2_noabort(i32 %800)
  store i16 %conv1.i941, ptr %msg.i939, align 4
  %flags.i942 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i939, i32 0, i32 1
  %801 = ptrtoint ptr %flags.i942 to i32
  call void @__asan_store2_noabort(i32 %801)
  store i16 0, ptr %flags.i942, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %802 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i944 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %802, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i945 = icmp eq ptr %call7.i.i944, null
  br i1 %tobool.not.i945, label %dib3000mc_write_word.exit938.dib3000mc_write_word.exit956_crit_edge, label %if.end.i954

dib3000mc_write_word.exit938.dib3000mc_write_word.exit956_crit_edge: ; preds = %dib3000mc_write_word.exit938
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit956

if.end.i954:                                      ; preds = %dib3000mc_write_word.exit938
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i946 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i939, i32 0, i32 3
  %803 = ptrtoint ptr %call7.i.i944 to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 0, ptr %call7.i.i944, align 8
  %arrayidx6.i947 = getelementptr i8, ptr %call7.i.i944, i32 1
  %804 = ptrtoint ptr %arrayidx6.i947 to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 21, ptr %arrayidx6.i947, align 1
  %arrayidx10.i948 = getelementptr i8, ptr %call7.i.i944, i32 2
  %805 = ptrtoint ptr %arrayidx10.i948 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 3, ptr %arrayidx10.i948, align 2
  %arrayidx12.i949 = getelementptr i8, ptr %call7.i.i944, i32 3
  %806 = ptrtoint ptr %arrayidx12.i949 to i32
  call void @__asan_store1_noabort(i32 %806)
  store i8 100, ptr %arrayidx12.i949, align 1
  %807 = ptrtoint ptr %buf.i946 to i32
  call void @__asan_store4_noabort(i32 %807)
  store ptr %call7.i.i944, ptr %buf.i946, align 4
  %i2c_adap.i950 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %808 = ptrtoint ptr %i2c_adap.i950 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %i2c_adap.i950, align 8
  %call14.i951 = call i32 @i2c_transfer(ptr noundef %809, ptr noundef nonnull %msg.i939, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i944) #7
  br label %dib3000mc_write_word.exit956

dib3000mc_write_word.exit956:                     ; preds = %if.end.i954, %dib3000mc_write_word.exit938.dib3000mc_write_word.exit956_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i939) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i957) #7
  %810 = getelementptr inbounds i8, ptr %msg.i957, i32 4
  %811 = ptrtoint ptr %810 to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 327679, ptr %810, align 4
  %812 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %i2c_addr.i, align 4
  %814 = lshr i8 %813, 1
  %conv1.i959 = zext i8 %814 to i16
  %815 = ptrtoint ptr %msg.i957 to i32
  call void @__asan_store2_noabort(i32 %815)
  store i16 %conv1.i959, ptr %msg.i957, align 4
  %flags.i960 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i957, i32 0, i32 1
  %816 = ptrtoint ptr %flags.i960 to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 0, ptr %flags.i960, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %817 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i962 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %817, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i963 = icmp eq ptr %call7.i.i962, null
  br i1 %tobool.not.i963, label %dib3000mc_write_word.exit956.dib3000mc_write_word.exit974_crit_edge, label %if.end.i972

dib3000mc_write_word.exit956.dib3000mc_write_word.exit974_crit_edge: ; preds = %dib3000mc_write_word.exit956
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit974

if.end.i972:                                      ; preds = %dib3000mc_write_word.exit956
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i964 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i957, i32 0, i32 3
  %818 = ptrtoint ptr %call7.i.i962 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 0, ptr %call7.i.i962, align 8
  %arrayidx6.i965 = getelementptr i8, ptr %call7.i.i962, i32 1
  %819 = ptrtoint ptr %arrayidx6.i965 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 22, ptr %arrayidx6.i965, align 1
  %arrayidx10.i966 = getelementptr i8, ptr %call7.i.i962, i32 2
  %820 = ptrtoint ptr %arrayidx10.i966 to i32
  call void @__asan_store1_noabort(i32 %820)
  store i8 70, ptr %arrayidx10.i966, align 2
  %arrayidx12.i967 = getelementptr i8, ptr %call7.i.i962, i32 3
  %821 = ptrtoint ptr %arrayidx12.i967 to i32
  call void @__asan_store1_noabort(i32 %821)
  store i8 61, ptr %arrayidx12.i967, align 1
  %822 = ptrtoint ptr %buf.i964 to i32
  call void @__asan_store4_noabort(i32 %822)
  store ptr %call7.i.i962, ptr %buf.i964, align 4
  %i2c_adap.i968 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %823 = ptrtoint ptr %i2c_adap.i968 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %i2c_adap.i968, align 8
  %call14.i969 = call i32 @i2c_transfer(ptr noundef %824, ptr noundef nonnull %msg.i957, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i962) #7
  br label %dib3000mc_write_word.exit974

dib3000mc_write_word.exit974:                     ; preds = %if.end.i972, %dib3000mc_write_word.exit956.dib3000mc_write_word.exit974_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i957) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i975) #7
  %825 = getelementptr inbounds i8, ptr %msg.i975, i32 4
  %826 = ptrtoint ptr %825 to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 327679, ptr %825, align 4
  %827 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %827)
  %828 = load i8, ptr %i2c_addr.i, align 4
  %829 = lshr i8 %828, 1
  %conv1.i977 = zext i8 %829 to i16
  %830 = ptrtoint ptr %msg.i975 to i32
  call void @__asan_store2_noabort(i32 %830)
  store i16 %conv1.i977, ptr %msg.i975, align 4
  %flags.i978 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i975, i32 0, i32 1
  %831 = ptrtoint ptr %flags.i978 to i32
  call void @__asan_store2_noabort(i32 %831)
  store i16 0, ptr %flags.i978, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %832 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i980 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %832, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i981 = icmp eq ptr %call7.i.i980, null
  br i1 %tobool.not.i981, label %dib3000mc_write_word.exit974.dib3000mc_write_word.exit992_crit_edge, label %if.end.i990

dib3000mc_write_word.exit974.dib3000mc_write_word.exit992_crit_edge: ; preds = %dib3000mc_write_word.exit974
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit992

if.end.i990:                                      ; preds = %dib3000mc_write_word.exit974
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i982 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i975, i32 0, i32 3
  %833 = ptrtoint ptr %call7.i.i980 to i32
  call void @__asan_store1_noabort(i32 %833)
  store i8 0, ptr %call7.i.i980, align 8
  %arrayidx6.i983 = getelementptr i8, ptr %call7.i.i980, i32 1
  %834 = ptrtoint ptr %arrayidx6.i983 to i32
  call void @__asan_store1_noabort(i32 %834)
  store i8 120, ptr %arrayidx6.i983, align 1
  %arrayidx10.i984 = getelementptr i8, ptr %call7.i.i980, i32 2
  %835 = ptrtoint ptr %arrayidx10.i984 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 32, ptr %arrayidx10.i984, align 2
  %arrayidx12.i985 = getelementptr i8, ptr %call7.i.i980, i32 3
  %836 = ptrtoint ptr %arrayidx12.i985 to i32
  call void @__asan_store1_noabort(i32 %836)
  store i8 15, ptr %arrayidx12.i985, align 1
  %837 = ptrtoint ptr %buf.i982 to i32
  call void @__asan_store4_noabort(i32 %837)
  store ptr %call7.i.i980, ptr %buf.i982, align 4
  %i2c_adap.i986 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %838 = ptrtoint ptr %i2c_adap.i986 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %i2c_adap.i986, align 8
  %call14.i987 = call i32 @i2c_transfer(ptr noundef %839, ptr noundef nonnull %msg.i975, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i980) #7
  br label %dib3000mc_write_word.exit992

dib3000mc_write_word.exit992:                     ; preds = %if.end.i990, %dib3000mc_write_word.exit974.dib3000mc_write_word.exit992_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i975) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i993) #7
  %840 = getelementptr inbounds i8, ptr %msg.i993, i32 4
  %841 = ptrtoint ptr %840 to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 327679, ptr %840, align 4
  %842 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %i2c_addr.i, align 4
  %844 = lshr i8 %843, 1
  %conv1.i995 = zext i8 %844 to i16
  %845 = ptrtoint ptr %msg.i993 to i32
  call void @__asan_store2_noabort(i32 %845)
  store i16 %conv1.i995, ptr %msg.i993, align 4
  %flags.i996 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i993, i32 0, i32 1
  %846 = ptrtoint ptr %flags.i996 to i32
  call void @__asan_store2_noabort(i32 %846)
  store i16 0, ptr %flags.i996, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %847 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i998 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %847, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i999 = icmp eq ptr %call7.i.i998, null
  br i1 %tobool.not.i999, label %dib3000mc_write_word.exit992.dib3000mc_write_word.exit1010_crit_edge, label %if.end.i1008

dib3000mc_write_word.exit992.dib3000mc_write_word.exit1010_crit_edge: ; preds = %dib3000mc_write_word.exit992
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit1010

if.end.i1008:                                     ; preds = %dib3000mc_write_word.exit992
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i1000 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i993, i32 0, i32 3
  %848 = ptrtoint ptr %call7.i.i998 to i32
  call void @__asan_store1_noabort(i32 %848)
  store i8 0, ptr %call7.i.i998, align 8
  %arrayidx6.i1001 = getelementptr i8, ptr %call7.i.i998, i32 1
  %849 = ptrtoint ptr %arrayidx6.i1001 to i32
  call void @__asan_store1_noabort(i32 %849)
  store i8 -122, ptr %arrayidx6.i1001, align 1
  %arrayidx10.i1002 = getelementptr i8, ptr %call7.i.i998, i32 2
  %850 = ptrtoint ptr %arrayidx10.i1002 to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 0, ptr %arrayidx10.i1002, align 2
  %arrayidx12.i1003 = getelementptr i8, ptr %call7.i.i998, i32 3
  %851 = ptrtoint ptr %arrayidx12.i1003 to i32
  call void @__asan_store1_noabort(i32 %851)
  store i8 0, ptr %arrayidx12.i1003, align 1
  %852 = ptrtoint ptr %buf.i1000 to i32
  call void @__asan_store4_noabort(i32 %852)
  store ptr %call7.i.i998, ptr %buf.i1000, align 4
  %i2c_adap.i1004 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %853 = ptrtoint ptr %i2c_adap.i1004 to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %i2c_adap.i1004, align 8
  %call14.i1005 = call i32 @i2c_transfer(ptr noundef %854, ptr noundef nonnull %msg.i993, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i998) #7
  br label %dib3000mc_write_word.exit1010

dib3000mc_write_word.exit1010:                    ; preds = %if.end.i1008, %dib3000mc_write_word.exit992.dib3000mc_write_word.exit1010_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i993) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1011) #7
  %855 = getelementptr inbounds i8, ptr %msg.i1011, i32 4
  %856 = ptrtoint ptr %855 to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 327679, ptr %855, align 4
  %857 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %857)
  %858 = load i8, ptr %i2c_addr.i, align 4
  %859 = lshr i8 %858, 1
  %conv1.i1013 = zext i8 %859 to i16
  %860 = ptrtoint ptr %msg.i1011 to i32
  call void @__asan_store2_noabort(i32 %860)
  store i16 %conv1.i1013, ptr %msg.i1011, align 4
  %flags.i1014 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1011, i32 0, i32 1
  %861 = ptrtoint ptr %flags.i1014 to i32
  call void @__asan_store2_noabort(i32 %861)
  store i16 0, ptr %flags.i1014, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %862 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1016 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %862, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i1017 = icmp eq ptr %call7.i.i1016, null
  br i1 %tobool.not.i1017, label %dib3000mc_write_word.exit1010.dib3000mc_write_word.exit1028_crit_edge, label %if.end.i1026

dib3000mc_write_word.exit1010.dib3000mc_write_word.exit1028_crit_edge: ; preds = %dib3000mc_write_word.exit1010
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit1028

if.end.i1026:                                     ; preds = %dib3000mc_write_word.exit1010
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i1018 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1011, i32 0, i32 3
  %863 = ptrtoint ptr %call7.i.i1016 to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 0, ptr %call7.i.i1016, align 8
  %arrayidx6.i1019 = getelementptr i8, ptr %call7.i.i1016, i32 1
  %864 = ptrtoint ptr %arrayidx6.i1019 to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 -61, ptr %arrayidx6.i1019, align 1
  %arrayidx10.i1020 = getelementptr i8, ptr %call7.i.i1016, i32 2
  %865 = ptrtoint ptr %arrayidx10.i1020 to i32
  call void @__asan_store1_noabort(i32 %865)
  store i8 0, ptr %arrayidx10.i1020, align 2
  %arrayidx12.i1021 = getelementptr i8, ptr %call7.i.i1016, i32 3
  %866 = ptrtoint ptr %arrayidx12.i1021 to i32
  call void @__asan_store1_noabort(i32 %866)
  store i8 16, ptr %arrayidx12.i1021, align 1
  %867 = ptrtoint ptr %buf.i1018 to i32
  call void @__asan_store4_noabort(i32 %867)
  store ptr %call7.i.i1016, ptr %buf.i1018, align 4
  %i2c_adap.i1022 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %868 = ptrtoint ptr %i2c_adap.i1022 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %i2c_adap.i1022, align 8
  %call14.i1023 = call i32 @i2c_transfer(ptr noundef %869, ptr noundef nonnull %msg.i1011, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1016) #7
  br label %dib3000mc_write_word.exit1028

dib3000mc_write_word.exit1028:                    ; preds = %if.end.i1026, %dib3000mc_write_word.exit1010.dib3000mc_write_word.exit1028_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1011) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1029) #7
  %870 = getelementptr inbounds i8, ptr %msg.i1029, i32 4
  %871 = ptrtoint ptr %870 to i32
  call void @__asan_store4_noabort(i32 %871)
  store i32 327679, ptr %870, align 4
  %872 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %i2c_addr.i, align 4
  %874 = lshr i8 %873, 1
  %conv1.i1031 = zext i8 %874 to i16
  %875 = ptrtoint ptr %msg.i1029 to i32
  call void @__asan_store2_noabort(i32 %875)
  store i16 %conv1.i1031, ptr %msg.i1029, align 4
  %flags.i1032 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1029, i32 0, i32 1
  %876 = ptrtoint ptr %flags.i1032 to i32
  call void @__asan_store2_noabort(i32 %876)
  store i16 0, ptr %flags.i1032, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %877 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1034 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %877, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i1035 = icmp eq ptr %call7.i.i1034, null
  br i1 %tobool.not.i1035, label %dib3000mc_write_word.exit1028.dib3000mc_write_word.exit1046_crit_edge, label %if.end.i1044

dib3000mc_write_word.exit1028.dib3000mc_write_word.exit1046_crit_edge: ; preds = %dib3000mc_write_word.exit1028
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit1046

if.end.i1044:                                     ; preds = %dib3000mc_write_word.exit1028
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i1036 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1029, i32 0, i32 3
  %878 = ptrtoint ptr %call7.i.i1034 to i32
  call void @__asan_store1_noabort(i32 %878)
  store i8 0, ptr %call7.i.i1034, align 8
  %arrayidx6.i1037 = getelementptr i8, ptr %call7.i.i1034, i32 1
  %879 = ptrtoint ptr %arrayidx6.i1037 to i32
  call void @__asan_store1_noabort(i32 %879)
  store i8 -76, ptr %arrayidx6.i1037, align 1
  %arrayidx10.i1038 = getelementptr i8, ptr %call7.i.i1034, i32 2
  %880 = ptrtoint ptr %arrayidx10.i1038 to i32
  call void @__asan_store1_noabort(i32 %880)
  store i8 47, ptr %arrayidx10.i1038, align 2
  %arrayidx12.i1039 = getelementptr i8, ptr %call7.i.i1034, i32 3
  %881 = ptrtoint ptr %arrayidx12.i1039 to i32
  call void @__asan_store1_noabort(i32 %881)
  store i8 -16, ptr %arrayidx12.i1039, align 1
  %882 = ptrtoint ptr %buf.i1036 to i32
  call void @__asan_store4_noabort(i32 %882)
  store ptr %call7.i.i1034, ptr %buf.i1036, align 4
  %i2c_adap.i1040 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %883 = ptrtoint ptr %i2c_adap.i1040 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %i2c_adap.i1040, align 8
  %call14.i1041 = call i32 @i2c_transfer(ptr noundef %884, ptr noundef nonnull %msg.i1029, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1034) #7
  br label %dib3000mc_write_word.exit1046

dib3000mc_write_word.exit1046:                    ; preds = %if.end.i1044, %dib3000mc_write_word.exit1028.dib3000mc_write_word.exit1046_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1029) #7
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %1, i8 noundef zeroext 0, i16 noundef signext 1)
  call fastcc void @dib3000mc_set_output_mode(ptr noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1047) #7
  %885 = getelementptr inbounds i8, ptr %msg.i1047, i32 4
  %886 = ptrtoint ptr %885 to i32
  call void @__asan_store4_noabort(i32 %886)
  store i32 327679, ptr %885, align 4
  %887 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %887)
  %888 = load i8, ptr %i2c_addr.i, align 4
  %889 = lshr i8 %888, 1
  %conv1.i1049 = zext i8 %889 to i16
  %890 = ptrtoint ptr %msg.i1047 to i32
  call void @__asan_store2_noabort(i32 %890)
  store i16 %conv1.i1049, ptr %msg.i1047, align 4
  %flags.i1050 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1047, i32 0, i32 1
  %891 = ptrtoint ptr %flags.i1050 to i32
  call void @__asan_store2_noabort(i32 %891)
  store i16 0, ptr %flags.i1050, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %892 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1052 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %892, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i1053 = icmp eq ptr %call7.i.i1052, null
  br i1 %tobool.not.i1053, label %dib3000mc_write_word.exit1046.dib3000mc_write_word.exit1064_crit_edge, label %if.end.i1062

dib3000mc_write_word.exit1046.dib3000mc_write_word.exit1064_crit_edge: ; preds = %dib3000mc_write_word.exit1046
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit1064

if.end.i1062:                                     ; preds = %dib3000mc_write_word.exit1046
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i1054 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1047, i32 0, i32 3
  %893 = ptrtoint ptr %call7.i.i1052 to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 3, ptr %call7.i.i1052, align 8
  %arrayidx6.i1055 = getelementptr i8, ptr %call7.i.i1052, i32 1
  %894 = ptrtoint ptr %arrayidx6.i1055 to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 1, ptr %arrayidx6.i1055, align 1
  %arrayidx10.i1056 = getelementptr i8, ptr %call7.i.i1052, i32 2
  %895 = ptrtoint ptr %arrayidx10.i1056 to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 0, ptr %arrayidx10.i1056, align 2
  %arrayidx12.i1057 = getelementptr i8, ptr %call7.i.i1052, i32 3
  %896 = ptrtoint ptr %arrayidx12.i1057 to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 -128, ptr %arrayidx12.i1057, align 1
  %897 = ptrtoint ptr %buf.i1054 to i32
  call void @__asan_store4_noabort(i32 %897)
  store ptr %call7.i.i1052, ptr %buf.i1054, align 4
  %i2c_adap.i1058 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %898 = ptrtoint ptr %i2c_adap.i1058 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %i2c_adap.i1058, align 8
  %call14.i1059 = call i32 @i2c_transfer(ptr noundef %899, ptr noundef nonnull %msg.i1047, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1052) #7
  br label %dib3000mc_write_word.exit1064

dib3000mc_write_word.exit1064:                    ; preds = %if.end.i1062, %dib3000mc_write_word.exit1046.dib3000mc_write_word.exit1064_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1047) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_sleep(ptr nocapture noundef readonly %demod) #0 align 64 {
entry:
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %msg.i5 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 327679, ptr %2, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr.i, align 4
  %6 = lshr i8 %5, 1
  %conv1.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.dib3000mc_write_word.exit_crit_edge, label %if.end.i

entry.dib3000mc_write_word.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %arrayidx12.i, align 1
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %entry.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5) #7
  %17 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 327679, ptr %17, align 4
  %19 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i2c_addr.i, align 4
  %21 = lshr i8 %20, 1
  %conv1.i7 = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i7, ptr %msg.i5, align 4
  %flags.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i8, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i11 = icmp eq ptr %call7.i.i10, null
  br i1 %tobool.not.i11, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit22_crit_edge, label %if.end.i20

dib3000mc_write_word.exit.dib3000mc_write_word.exit22_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit22

if.end.i20:                                       ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  %25 = ptrtoint ptr %call7.i.i10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %call7.i.i10, align 8
  %arrayidx6.i13 = getelementptr i8, ptr %call7.i.i10, i32 1
  %26 = ptrtoint ptr %arrayidx6.i13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %arrayidx6.i13, align 1
  %arrayidx10.i14 = getelementptr i8, ptr %call7.i.i10, i32 2
  %27 = ptrtoint ptr %arrayidx10.i14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx10.i14, align 2
  %arrayidx12.i15 = getelementptr i8, ptr %call7.i.i10, i32 3
  %28 = ptrtoint ptr %arrayidx12.i15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx12.i15, align 1
  %29 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i10, ptr %buf.i12, align 4
  %i2c_adap.i16 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %i2c_adap.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adap.i16, align 8
  %call14.i17 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i5, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i10) #7
  br label %dib3000mc_write_word.exit22

dib3000mc_write_word.exit22:                      ; preds = %if.end.i20, %dib3000mc_write_word.exit.dib3000mc_write_word.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #7
  %32 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 327679, ptr %32, align 4
  %34 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_addr.i, align 4
  %36 = lshr i8 %35, 1
  %conv1.i25 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv1.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i26, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i29 = icmp eq ptr %call7.i.i28, null
  br i1 %tobool.not.i29, label %dib3000mc_write_word.exit22.dib3000mc_write_word.exit40_crit_edge, label %if.end.i38

dib3000mc_write_word.exit22.dib3000mc_write_word.exit40_crit_edge: ; preds = %dib3000mc_write_word.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit40

if.end.i38:                                       ; preds = %dib3000mc_write_word.exit22
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %40 = ptrtoint ptr %call7.i.i28 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %call7.i.i28, align 8
  %arrayidx6.i31 = getelementptr i8, ptr %call7.i.i28, i32 1
  %41 = ptrtoint ptr %arrayidx6.i31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 9, ptr %arrayidx6.i31, align 1
  %arrayidx10.i32 = getelementptr i8, ptr %call7.i.i28, i32 2
  %42 = ptrtoint ptr %arrayidx10.i32 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %arrayidx10.i32, align 2
  %arrayidx12.i33 = getelementptr i8, ptr %call7.i.i28, i32 3
  %43 = ptrtoint ptr %arrayidx12.i33 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -16, ptr %arrayidx12.i33, align 1
  %44 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i28, ptr %buf.i30, align 4
  %i2c_adap.i34 = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %i2c_adap.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_adap.i34, align 8
  %call14.i35 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i23, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i28) #7
  br label %dib3000mc_write_word.exit40

dib3000mc_write_word.exit40:                      ; preds = %if.end.i38, %dib3000mc_write_word.exit22.dib3000mc_write_word.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i109.i = alloca %struct.i2c_msg, align 4
  %msg.i91.i = alloca %struct.i2c_msg, align 4
  %msg.i73.i = alloca %struct.i2c_msg, align 4
  %msg.i55.i = alloca %struct.i2c_msg, align 4
  %msg.i37.i = alloca %struct.i2c_msg, align 4
  %msg.i19.i = alloca %struct.i2c_msg, align 4
  %msg.i1.i71 = alloca %struct.i2c_msg, align 4
  %msg.i.i72 = alloca %struct.i2c_msg, align 4
  %msg.i1.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %schan.i = alloca %struct.dtv_frontend_properties, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @dib3000mc_set_output_mode(ptr noundef %1, i32 noundef 0)
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %current_bandwidth = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %current_bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %current_bandwidth, align 4
  %5 = load i32, ptr %bandwidth_hz, align 4
  %div = udiv i32 %5, 1000
  tail call fastcc void @dib3000mc_set_bandwidth(ptr noundef %1, i32 noundef %div)
  %6 = load i32, ptr @buggy_sfn_workaround, align 4
  %conv = trunc i32 %6 to i8
  %sfn_workaround_active = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %sfn_workaround_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %sfn_workaround_active, align 2
  %bf.shl = shl i8 %conv, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %sfn_workaround_active, align 2
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %8 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 %9(ptr noundef %fe) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.end.if.then16_crit_edge, label %lor.lhs.false

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %12 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp8 = icmp eq i32 %13, 4
  br i1 %cmp8, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false10

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp11 = icmp eq i32 %15, 6
  br i1 %cmp11, label %lor.lhs.false10.if.then16_crit_edge, label %lor.lhs.false13

lor.lhs.false10.if.then16_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %16 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code_rate_HP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp14 = icmp eq i32 %17, 9
  br i1 %cmp14, label %lor.lhs.false13.if.then16_crit_edge, label %lor.lhs.false13.if.end41_crit_edge

lor.lhs.false13.if.end41_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %lor.lhs.false10.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %18 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %schan.i) #7
  %20 = call ptr @memcpy(ptr %schan.i, ptr %dtv_property_cache, i32 456)
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 6
  %21 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %transmission_mode.i, align 4
  %guard_interval.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 8
  %22 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %guard_interval.i, align 4
  %modulation.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 1
  %23 = ptrtoint ptr %modulation.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %modulation.i, align 4
  %code_rate_HP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 11
  %24 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %code_rate_HP.i, align 4
  %code_rate_LP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 12
  %25 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %code_rate_LP.i, align 4
  %hierarchy.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 9
  %26 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %hierarchy.i, align 4
  call fastcc void @dib3000mc_set_channel_cfg(ptr noundef %19, ptr noundef nonnull %schan.i, i16 noundef zeroext 11) #7
  %call.i = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %19, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.dib3000mc_state, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_addr.i.i, align 4
  %31 = lshr i8 %30, 1
  %conv1.i.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then16.dib3000mc_write_word.exit.i_crit_edge, label %if.end.i.i

if.then16.dib3000mc_write_word.exit.i_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.i

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call7.i.i.i, align 8
  %arrayidx6.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %36 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx6.i.i, align 1
  %37 = lshr i16 %call.i, 8
  %38 = trunc i16 %37 to i8
  %conv9.i.i = or i8 %38, 1
  %arrayidx10.i.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %39 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 2
  %conv11.i.i = trunc i16 %call.i to i8
  %arrayidx12.i.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %40 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv11.i.i, ptr %arrayidx12.i.i, align 1
  %41 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %buf.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.dib3000mc_state, ptr %19, i32 0, i32 3
  %42 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_adap.i.i, align 8
  %call14.i.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %dib3000mc_write_word.exit.i

dib3000mc_write_word.exit.i:                      ; preds = %if.end.i.i, %if.then16.dib3000mc_write_word.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %call3.i = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %19, i16 noundef zeroext 511) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i) #7
  %44 = getelementptr inbounds i8, ptr %msg.i1.i, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 327679, ptr %44, align 4
  %46 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_addr.i.i, align 4
  %48 = lshr i8 %47, 1
  %conv1.i3.i = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i1.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i3.i, ptr %msg.i1.i, align 4
  %flags.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i4.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i7.i = icmp eq ptr %call7.i.i6.i, null
  br i1 %tobool.not.i7.i, label %dib3000mc_write_word.exit.i.dib3000mc_autosearch_start.exit_crit_edge, label %if.end.i18.i

dib3000mc_write_word.exit.i.dib3000mc_autosearch_start.exit_crit_edge: ; preds = %dib3000mc_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_autosearch_start.exit

if.end.i18.i:                                     ; preds = %dib3000mc_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i, i32 0, i32 3
  %52 = ptrtoint ptr %call7.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %call7.i.i6.i, align 8
  %arrayidx6.i9.i = getelementptr i8, ptr %call7.i.i6.i, i32 1
  %53 = ptrtoint ptr %arrayidx6.i9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx6.i9.i, align 1
  %54 = lshr i16 %call.i, 8
  %conv9.i10.i = trunc i16 %54 to i8
  %arrayidx10.i11.i = getelementptr i8, ptr %call7.i.i6.i, i32 2
  %55 = ptrtoint ptr %arrayidx10.i11.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv9.i10.i, ptr %arrayidx10.i11.i, align 2
  %conv11.i12.i = trunc i16 %call.i to i8
  %arrayidx12.i13.i = getelementptr i8, ptr %call7.i.i6.i, i32 3
  %56 = ptrtoint ptr %arrayidx12.i13.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv11.i12.i, ptr %arrayidx12.i13.i, align 1
  %57 = ptrtoint ptr %buf.i8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i6.i, ptr %buf.i8.i, align 4
  %i2c_adap.i14.i = getelementptr inbounds %struct.dib3000mc_state, ptr %19, i32 0, i32 3
  %58 = ptrtoint ptr %i2c_adap.i14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_adap.i14.i, align 8
  %call14.i15.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i1.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i6.i) #7
  br label %dib3000mc_autosearch_start.exit

dib3000mc_autosearch_start.exit:                  ; preds = %if.end.i18.i, %dib3000mc_write_word.exit.i.dib3000mc_autosearch_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i) #7
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %schan.i) #7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %dib3000mc_autosearch_start.exit
  %i.0 = phi i32 [ 1000, %dib3000mc_autosearch_start.exit ], [ %dec, %do.body.do.body_crit_edge ]
  call void @msleep(i32 noundef 1) #7
  %60 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %demodulator_priv, align 4
  %call.i70 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %61, i16 noundef zeroext 511) #7
  %conv.i = zext i16 %call.i70 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  %retval.0.i = select i1 %tobool.not.i, i32 %and2.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp ne i32 %retval.0.i, 0
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool21.not = icmp eq i32 %i.0, 0
  %or.cond = select i1 %cmp19, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %do.body22, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body22:                                        ; preds = %do.body
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool23.not = icmp eq i32 %62, 0
  br i1 %tobool23.not, label %do.body22.do.end31_crit_edge, label %do.end27

do.body22.do.end31_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i) #11
  br label %do.end31

do.end31:                                         ; preds = %do.end27, %do.body22.do.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %switch = icmp ult i32 %retval.0.i, 2
  br i1 %switch, label %do.end31.cleanup44_crit_edge, label %if.end38

do.end31.cleanup44_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 @dib3000mc_get_frontend(ptr noundef %fe, ptr noundef %dtv_property_cache)
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %lor.lhs.false13.if.end41_crit_edge
  %63 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %demodulator_priv, align 4
  call fastcc void @dib3000mc_set_channel_cfg(ptr noundef %64, ptr noundef %dtv_property_cache, i16 noundef zeroext 0) #7
  %sfn_workaround_active.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %sfn_workaround_active.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %sfn_workaround_active.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i75 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i75, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end41
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool1.not.i = icmp eq i32 %66, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end5.i_crit_edge, label %do.end.i

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i72) #7
  %67 = getelementptr inbounds i8, ptr %msg.i.i72, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 327679, ptr %67, align 4
  %i2c_addr.i.i77 = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 2
  %69 = ptrtoint ptr %i2c_addr.i.i77 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i2c_addr.i.i77, align 4
  %71 = lshr i8 %70, 1
  %conv1.i.i78 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i.i72 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv1.i.i78, ptr %msg.i.i72, align 4
  %flags.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i72, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i.i79 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i.i79, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i80 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.i81 = icmp eq ptr %call7.i.i.i80, null
  br i1 %tobool.not.i.i81, label %do.end5.i.dib3000mc_write_word.exit.i93_crit_edge, label %if.end.i.i88

do.end5.i.dib3000mc_write_word.exit.i93_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.i93

if.end.i.i88:                                     ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i72, i32 0, i32 3
  %75 = ptrtoint ptr %call7.i.i.i80 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %call7.i.i.i80, align 8
  %arrayidx6.i.i83 = getelementptr i8, ptr %call7.i.i.i80, i32 1
  %76 = ptrtoint ptr %arrayidx6.i.i83 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 29, ptr %arrayidx6.i.i83, align 1
  %arrayidx10.i.i84 = getelementptr i8, ptr %call7.i.i.i80, i32 2
  %77 = ptrtoint ptr %arrayidx10.i.i84 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 18, ptr %arrayidx10.i.i84, align 2
  %arrayidx12.i.i85 = getelementptr i8, ptr %call7.i.i.i80, i32 3
  %78 = ptrtoint ptr %arrayidx12.i.i85 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 115, ptr %arrayidx12.i.i85, align 1
  %79 = ptrtoint ptr %buf.i.i82 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i80, ptr %buf.i.i82, align 4
  %i2c_adap.i.i86 = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %80 = ptrtoint ptr %i2c_adap.i.i86 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_adap.i.i86, align 8
  %call14.i.i87 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i.i72, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i80) #7
  br label %dib3000mc_write_word.exit.i93

dib3000mc_write_word.exit.i93:                    ; preds = %if.end.i.i88, %do.end5.i.dib3000mc_write_word.exit.i93_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i72) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1.i71) #7
  %82 = getelementptr inbounds i8, ptr %msg.i1.i71, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 327679, ptr %82, align 4
  %84 = ptrtoint ptr %i2c_addr.i.i77 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %i2c_addr.i.i77, align 4
  %86 = lshr i8 %85, 1
  %conv1.i3.i89 = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i1.i71 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv1.i3.i89, ptr %msg.i1.i71, align 4
  %flags.i4.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i71, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i4.i90 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i4.i90, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6.i91 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i7.i92 = icmp eq ptr %call7.i.i6.i91, null
  br i1 %tobool.not.i7.i92, label %dib3000mc_write_word.exit.i93.dib3000mc_write_word.exit18.i_crit_edge, label %if.end.i16.i

dib3000mc_write_word.exit.i93.dib3000mc_write_word.exit18.i_crit_edge: ; preds = %dib3000mc_write_word.exit.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit18.i

if.end.i16.i:                                     ; preds = %dib3000mc_write_word.exit.i93
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i8.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1.i71, i32 0, i32 3
  %90 = ptrtoint ptr %call7.i.i6.i91 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %call7.i.i6.i91, align 8
  %arrayidx6.i9.i95 = getelementptr i8, ptr %call7.i.i6.i91, i32 1
  %91 = ptrtoint ptr %arrayidx6.i9.i95 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 108, ptr %arrayidx6.i9.i95, align 1
  %arrayidx10.i10.i = getelementptr i8, ptr %call7.i.i6.i91, i32 2
  %92 = ptrtoint ptr %arrayidx10.i10.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 64, ptr %arrayidx10.i10.i, align 2
  %arrayidx12.i11.i = getelementptr i8, ptr %call7.i.i6.i91, i32 3
  %93 = ptrtoint ptr %arrayidx12.i11.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx12.i11.i, align 1
  %94 = ptrtoint ptr %buf.i8.i94 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i6.i91, ptr %buf.i8.i94, align 4
  %i2c_adap.i12.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %95 = ptrtoint ptr %i2c_adap.i12.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_adap.i12.i, align 8
  %call14.i13.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i1.i71, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i6.i91) #7
  br label %dib3000mc_write_word.exit18.i

dib3000mc_write_word.exit18.i:                    ; preds = %if.end.i16.i, %dib3000mc_write_word.exit.i93.dib3000mc_write_word.exit18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1.i71) #7
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19.i) #7
  %97 = getelementptr inbounds i8, ptr %msg.i19.i, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 327679, ptr %97, align 4
  %i2c_addr.i20.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 2
  %99 = ptrtoint ptr %i2c_addr.i20.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %i2c_addr.i20.i, align 4
  %101 = lshr i8 %100, 1
  %conv1.i21.i = zext i8 %101 to i16
  %102 = ptrtoint ptr %msg.i19.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv1.i21.i, ptr %msg.i19.i, align 4
  %flags.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i22.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i25.i = icmp eq ptr %call7.i.i24.i, null
  br i1 %tobool.not.i25.i, label %if.else.i.dib3000mc_write_word.exit36.i_crit_edge, label %if.end.i34.i

if.else.i.dib3000mc_write_word.exit36.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit36.i

if.end.i34.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 3
  %105 = ptrtoint ptr %call7.i.i24.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %call7.i.i24.i, align 8
  %arrayidx6.i27.i = getelementptr i8, ptr %call7.i.i24.i, i32 1
  %106 = ptrtoint ptr %arrayidx6.i27.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 29, ptr %arrayidx6.i27.i, align 1
  %arrayidx10.i28.i = getelementptr i8, ptr %call7.i.i24.i, i32 2
  %107 = ptrtoint ptr %arrayidx10.i28.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 16, ptr %arrayidx10.i28.i, align 2
  %arrayidx12.i29.i = getelementptr i8, ptr %call7.i.i24.i, i32 3
  %108 = ptrtoint ptr %arrayidx12.i29.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 115, ptr %arrayidx12.i29.i, align 1
  %109 = ptrtoint ptr %buf.i26.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i24.i, ptr %buf.i26.i, align 4
  %i2c_adap.i30.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %110 = ptrtoint ptr %i2c_adap.i30.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_adap.i30.i, align 8
  %call14.i31.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i19.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i24.i) #7
  br label %dib3000mc_write_word.exit36.i

dib3000mc_write_word.exit36.i:                    ; preds = %if.end.i34.i, %if.else.i.dib3000mc_write_word.exit36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i37.i) #7
  %112 = getelementptr inbounds i8, ptr %msg.i37.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 327679, ptr %112, align 4
  %114 = ptrtoint ptr %i2c_addr.i20.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %i2c_addr.i20.i, align 4
  %116 = lshr i8 %115, 1
  %conv1.i39.i = zext i8 %116 to i16
  %117 = ptrtoint ptr %msg.i37.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv1.i39.i, ptr %msg.i37.i, align 4
  %flags.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i40.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %119 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i42.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i43.i = icmp eq ptr %call7.i.i42.i, null
  br i1 %tobool.not.i43.i, label %dib3000mc_write_word.exit36.i.dib3000mc_write_word.exit54.i_crit_edge, label %if.end.i52.i

dib3000mc_write_word.exit36.i.dib3000mc_write_word.exit54.i_crit_edge: ; preds = %dib3000mc_write_word.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit54.i

if.end.i52.i:                                     ; preds = %dib3000mc_write_word.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37.i, i32 0, i32 3
  %120 = ptrtoint ptr %call7.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %call7.i.i42.i, align 8
  %arrayidx6.i45.i = getelementptr i8, ptr %call7.i.i42.i, i32 1
  %121 = ptrtoint ptr %arrayidx6.i45.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 108, ptr %arrayidx6.i45.i, align 1
  %arrayidx10.i46.i = getelementptr i8, ptr %call7.i.i42.i, i32 2
  %122 = ptrtoint ptr %arrayidx10.i46.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %arrayidx10.i46.i, align 2
  %arrayidx12.i47.i = getelementptr i8, ptr %call7.i.i42.i, i32 3
  %123 = ptrtoint ptr %arrayidx12.i47.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx12.i47.i, align 1
  %124 = ptrtoint ptr %buf.i44.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i42.i, ptr %buf.i44.i, align 4
  %i2c_adap.i48.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %125 = ptrtoint ptr %i2c_adap.i48.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c_adap.i48.i, align 8
  %call14.i49.i = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %msg.i37.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i42.i) #7
  br label %dib3000mc_write_word.exit54.i

dib3000mc_write_word.exit54.i:                    ; preds = %if.end.i52.i, %dib3000mc_write_word.exit36.i.dib3000mc_write_word.exit54.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37.i) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %dib3000mc_write_word.exit54.i, %dib3000mc_write_word.exit18.i
  %modulation.i96 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %127 = ptrtoint ptr %modulation.i96 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %modulation.i96, align 4
  %129 = trunc i32 %128 to i16
  %conv11.i = and i16 %129, 255
  call fastcc void @dib3000mc_set_adp_cfg(ptr noundef %64, i16 noundef signext %conv11.i) #7
  %130 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp.i = icmp eq i32 %131, 1
  br i1 %cmp.i, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55.i) #7
  %132 = getelementptr inbounds i8, ptr %msg.i55.i, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 327679, ptr %132, align 4
  %i2c_addr.i56.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 2
  %134 = ptrtoint ptr %i2c_addr.i56.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i2c_addr.i56.i, align 4
  %136 = lshr i8 %135, 1
  %conv1.i57.i = zext i8 %136 to i16
  %137 = ptrtoint ptr %msg.i55.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv1.i57.i, ptr %msg.i55.i, align 4
  %flags.i58.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55.i, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i58.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i60.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i61.i = icmp eq ptr %call7.i.i60.i, null
  br i1 %tobool.not.i61.i, label %if.then13.i.dib3000mc_write_word.exit72.i_crit_edge, label %if.end.i70.i

if.then13.i.dib3000mc_write_word.exit72.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit72.i

if.end.i70.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55.i, i32 0, i32 3
  %140 = ptrtoint ptr %call7.i.i60.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %call7.i.i60.i, align 8
  %arrayidx6.i63.i = getelementptr i8, ptr %call7.i.i60.i, i32 1
  %141 = ptrtoint ptr %arrayidx6.i63.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 26, ptr %arrayidx6.i63.i, align 1
  %arrayidx10.i64.i = getelementptr i8, ptr %call7.i.i60.i, i32 2
  %142 = ptrtoint ptr %arrayidx10.i64.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -106, ptr %arrayidx10.i64.i, align 2
  %arrayidx12.i65.i = getelementptr i8, ptr %call7.i.i60.i, i32 3
  %143 = ptrtoint ptr %arrayidx12.i65.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -128, ptr %arrayidx12.i65.i, align 1
  %144 = ptrtoint ptr %buf.i62.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i.i60.i, ptr %buf.i62.i, align 4
  %i2c_adap.i66.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %145 = ptrtoint ptr %i2c_adap.i66.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i2c_adap.i66.i, align 8
  %call14.i67.i = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i55.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i60.i) #7
  br label %dib3000mc_write_word.exit72.i

dib3000mc_write_word.exit72.i:                    ; preds = %if.end.i70.i, %if.then13.i.dib3000mc_write_word.exit72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73.i) #7
  %147 = getelementptr inbounds i8, ptr %msg.i73.i, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 327679, ptr %147, align 4
  %149 = ptrtoint ptr %i2c_addr.i56.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %i2c_addr.i56.i, align 4
  %151 = lshr i8 %150, 1
  %conv1.i75.i = zext i8 %151 to i16
  %152 = ptrtoint ptr %msg.i73.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv1.i75.i, ptr %msg.i73.i, align 4
  %flags.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i76.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %154 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i78.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i79.i = icmp eq ptr %call7.i.i78.i, null
  br i1 %tobool.not.i79.i, label %dib3000mc_write_word.exit72.i.dib3000mc_write_word.exit90.i_crit_edge, label %if.end.i88.i

dib3000mc_write_word.exit72.i.dib3000mc_write_word.exit90.i_crit_edge: ; preds = %dib3000mc_write_word.exit72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit90.i

if.end.i88.i:                                     ; preds = %dib3000mc_write_word.exit72.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73.i, i32 0, i32 3
  %155 = ptrtoint ptr %call7.i.i78.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %call7.i.i78.i, align 8
  %arrayidx6.i81.i = getelementptr i8, ptr %call7.i.i78.i, i32 1
  %156 = ptrtoint ptr %arrayidx6.i81.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 33, ptr %arrayidx6.i81.i, align 1
  %arrayidx10.i82.i = getelementptr i8, ptr %call7.i.i78.i, i32 2
  %157 = ptrtoint ptr %arrayidx10.i82.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %arrayidx10.i82.i, align 2
  %arrayidx12.i83.i = getelementptr i8, ptr %call7.i.i78.i, i32 3
  %158 = ptrtoint ptr %arrayidx12.i83.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 8, ptr %arrayidx12.i83.i, align 1
  %159 = ptrtoint ptr %buf.i80.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i78.i, ptr %buf.i80.i, align 4
  %i2c_adap.i84.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %160 = ptrtoint ptr %i2c_adap.i84.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i2c_adap.i84.i, align 8
  %call14.i85.i = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i73.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i78.i) #7
  br label %dib3000mc_write_word.exit90.i

dib3000mc_write_word.exit90.i:                    ; preds = %if.end.i88.i, %dib3000mc_write_word.exit72.i.dib3000mc_write_word.exit90.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73.i) #7
  br label %if.end19.i

if.else16.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i91.i) #7
  %162 = getelementptr inbounds i8, ptr %msg.i91.i, i32 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 327679, ptr %162, align 4
  %i2c_addr.i92.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 2
  %164 = ptrtoint ptr %i2c_addr.i92.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %i2c_addr.i92.i, align 4
  %166 = lshr i8 %165, 1
  %conv1.i93.i = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i91.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv1.i93.i, ptr %msg.i91.i, align 4
  %flags.i94.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91.i, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i94.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i94.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %169 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i96.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %169, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i97.i = icmp eq ptr %call7.i.i96.i, null
  br i1 %tobool.not.i97.i, label %if.else16.i.dib3000mc_write_word.exit108.i_crit_edge, label %if.end.i106.i

if.else16.i.dib3000mc_write_word.exit108.i_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit108.i

if.end.i106.i:                                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91.i, i32 0, i32 3
  %170 = ptrtoint ptr %call7.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %call7.i.i96.i, align 8
  %arrayidx6.i99.i = getelementptr i8, ptr %call7.i.i96.i, i32 1
  %171 = ptrtoint ptr %arrayidx6.i99.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 26, ptr %arrayidx6.i99.i, align 1
  %arrayidx10.i100.i = getelementptr i8, ptr %call7.i.i96.i, i32 2
  %172 = ptrtoint ptr %arrayidx10.i100.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 118, ptr %arrayidx10.i100.i, align 2
  %arrayidx12.i101.i = getelementptr i8, ptr %call7.i.i96.i, i32 3
  %173 = ptrtoint ptr %arrayidx12.i101.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -128, ptr %arrayidx12.i101.i, align 1
  %174 = ptrtoint ptr %buf.i98.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call7.i.i96.i, ptr %buf.i98.i, align 4
  %i2c_adap.i102.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %175 = ptrtoint ptr %i2c_adap.i102.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i2c_adap.i102.i, align 8
  %call14.i103.i = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %msg.i91.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i96.i) #7
  br label %dib3000mc_write_word.exit108.i

dib3000mc_write_word.exit108.i:                   ; preds = %if.end.i106.i, %if.else16.i.dib3000mc_write_word.exit108.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i91.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109.i) #7
  %177 = getelementptr inbounds i8, ptr %msg.i109.i, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 327679, ptr %177, align 4
  %179 = ptrtoint ptr %i2c_addr.i92.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %i2c_addr.i92.i, align 4
  %181 = lshr i8 %180, 1
  %conv1.i111.i = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i109.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv1.i111.i, ptr %msg.i109.i, align 4
  %flags.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i112.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %184 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i114.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i115.i = icmp eq ptr %call7.i.i114.i, null
  br i1 %tobool.not.i115.i, label %dib3000mc_write_word.exit108.i.dib3000mc_write_word.exit126.i_crit_edge, label %if.end.i124.i

dib3000mc_write_word.exit108.i.dib3000mc_write_word.exit126.i_crit_edge: ; preds = %dib3000mc_write_word.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit126.i

if.end.i124.i:                                    ; preds = %dib3000mc_write_word.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 3
  %185 = ptrtoint ptr %call7.i.i114.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %call7.i.i114.i, align 8
  %arrayidx6.i117.i = getelementptr i8, ptr %call7.i.i114.i, i32 1
  %186 = ptrtoint ptr %arrayidx6.i117.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 33, ptr %arrayidx6.i117.i, align 1
  %arrayidx10.i118.i = getelementptr i8, ptr %call7.i.i114.i, i32 2
  %187 = ptrtoint ptr %arrayidx10.i118.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %arrayidx10.i118.i, align 2
  %arrayidx12.i119.i = getelementptr i8, ptr %call7.i.i114.i, i32 3
  %188 = ptrtoint ptr %arrayidx12.i119.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 6, ptr %arrayidx12.i119.i, align 1
  %189 = ptrtoint ptr %buf.i116.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call7.i.i114.i, ptr %buf.i116.i, align 4
  %i2c_adap.i120.i = getelementptr inbounds %struct.dib3000mc_state, ptr %64, i32 0, i32 3
  %190 = ptrtoint ptr %i2c_adap.i120.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %i2c_adap.i120.i, align 8
  %call14.i121.i = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %msg.i109.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i114.i) #7
  br label %dib3000mc_write_word.exit126.i

dib3000mc_write_word.exit126.i:                   ; preds = %if.end.i124.i, %dib3000mc_write_word.exit108.i.dib3000mc_write_word.exit126.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109.i) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %dib3000mc_write_word.exit126.i, %dib3000mc_write_word.exit90.i
  %call20.i = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %64, i16 noundef zeroext 509) #7
  %192 = and i16 %call20.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool22.not.i = icmp eq i16 %192, 0
  br i1 %tobool22.not.i, label %if.end19.i.dib3000mc_tune.exit_crit_edge, label %if.then23.i

if.end19.i.dib3000mc_tune.exit_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_tune.exit

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %transmission_mode, align 4
  %conv25.i = trunc i32 %194 to i16
  %195 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bandwidth_hz, align 4
  %div.i = udiv i32 %196, 1000
  call fastcc void @dib3000mc_set_timing(ptr noundef %64, i16 noundef signext %conv25.i, i32 noundef %div.i, i8 noundef zeroext 1) #7
  br label %dib3000mc_tune.exit

dib3000mc_tune.exit:                              ; preds = %if.then23.i, %if.end19.i.dib3000mc_tune.exit_crit_edge
  call fastcc void @dib3000mc_set_output_mode(ptr noundef %1, i32 noundef 5)
  br label %cleanup44

cleanup44:                                        ; preds = %dib3000mc_tune.exit, %do.end31.cleanup44_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mc_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %fep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 458)
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 4
  %2 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %inversion, align 4
  %current_bandwidth = getelementptr inbounds %struct.dib3000mc_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %current_bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_bandwidth, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bandwidth_hz, align 4
  %conv = zext i16 %call to i32
  %6 = lshr i32 %conv, 8
  %.lobit = and i32 %6, 1
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.lobit, ptr %7, align 4
  %and4 = and i32 %conv, 3
  %guard_interval11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %9 = ptrtoint ptr %guard_interval11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and4, ptr %guard_interval11, align 4
  %10 = lshr i32 %conv, 13
  %and15 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and15)
  %switch.selectcmp = icmp eq i32 %and15, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %switch.selectcmp80 = icmp eq i32 %and15, 0
  %switch.select81 = select i1 %switch.selectcmp80, i32 0, i32 %switch.select
  %modulation20 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 1
  %11 = ptrtoint ptr %modulation20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.select81, ptr %modulation20, align 4
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %12 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hierarchy, align 4
  %13 = lshr i32 %conv, 5
  %and24 = and i32 %13, 7
  %switch.tableidx = add nsw i32 %and24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 5
  br i1 %14, label %switch.lookup, label %entry.sw.epilog35_crit_edge

entry.sw.epilog35_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog35

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dib3000mc_get_frontend, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %switch.lookup, %entry.sw.epilog35_crit_edge
  %.sink78 = phi i32 [ %switch.load, %switch.lookup ], [ 7, %entry.sw.epilog35_crit_edge ]
  %code_rate_HP34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %16 = ptrtoint ptr %code_rate_HP34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink78, ptr %code_rate_HP34, align 4
  %17 = lshr i32 %conv, 2
  %and38 = and i32 %17, 7
  %switch.tableidx83 = add nsw i32 %and38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx83)
  %18 = icmp ult i32 %switch.tableidx83, 5
  br i1 %18, label %switch.lookup82, label %sw.epilog35.sw.epilog49_crit_edge

sw.epilog35.sw.epilog49_crit_edge:                ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog49

switch.lookup82:                                  ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep84 = getelementptr inbounds [5 x i32], ptr @switch.table.dib3000mc_get_frontend.24, i32 0, i32 %switch.tableidx83
  %19 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load85 = load i32, ptr %switch.gep84, align 4
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %switch.lookup82, %sw.epilog35.sw.epilog49_crit_edge
  %.sink79 = phi i32 [ %switch.load85, %switch.lookup82 ], [ 7, %sw.epilog35.sw.epilog49_crit_edge ]
  %code_rate_LP48 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %20 = ptrtoint ptr %code_rate_LP48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink79, ptr %code_rate_LP48, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 509)
  %conv = zext i16 %call to i32
  %and.lobit = lshr i32 %conv, 15
  %and2 = and i32 %conv, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or5 = or i32 %and.lobit, 2
  %spec.select = select i1 %tobool3.not, i32 %and.lobit, i32 %or5
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %stat, align 4
  %and8 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %entry.if.end12_crit_edge, label %if.then10

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  %or11 = or i32 %4, 4
  store i32 %or11, ptr %stat, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %entry.if.end12_crit_edge
  %and14 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %or17 = or i32 %6, 8
  store i32 %or17, ptr %stat, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %and20 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat, align 4
  %or23 = or i32 %8, 16
  store i32 %or23, ptr %stat, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 500)
  %conv = zext i16 %call to i32
  %shl = shl nuw i32 %conv, 16
  %call1 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 501)
  %conv2 = zext i16 %call1 to i32
  %or = or i32 %shl, %conv2
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 392)
  %2 = xor i16 %call, -1
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mc_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %snr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %1, i16 noundef zeroext 508)
  %conv = zext i16 %call to i32
  %2 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_bandwidth(ptr noundef %state, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %msg.i145 = alloca %struct.i2c_msg, align 4
  %msg.i127 = alloca %struct.i2c_msg, align 4
  %msg.i109 = alloca %struct.i2c_msg, align 4
  %msg.i91 = alloca %struct.i2c_msg, align 4
  %msg.i73 = alloca %struct.i2c_msg, align 4
  %msg.i55 = alloca %struct.i2c_msg, align 4
  %msg.i37 = alloca %struct.i2c_msg, align 4
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %bw_cfg = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bw_cfg) #7
  %0 = call ptr @memset(ptr %bw_cfg, i32 0, i32 12)
  %1 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %bw, label %entry.cleanup_crit_edge [
    i32 8000, label %sw.bb
    i32 7000, label %sw.bb9
    i32 6000, label %sw.bb19
    i32 5000, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %bw_cfg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 25, ptr %bw_cfg, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %bw_cfg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 28, ptr %bw_cfg, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bw_cfg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 33, ptr %bw_cfg, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %bw_cfg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 40, ptr %bw_cfg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb19, %sw.bb9, %sw.bb
  %.sink177 = phi i16 [ -27776, %sw.bb29 ], [ -12224, %sw.bb19 ], [ -1115, %sw.bb9 ], [ 23600, %sw.bb ]
  %.sink176 = phi i16 [ 135, %sw.bb29 ], [ 112, %sw.bb19 ], [ 96, %sw.bb9 ], [ 84, %sw.bb ]
  %.sink175 = phi i16 [ 16640, %sw.bb29 ], [ -18901, %sw.bb19 ], [ -25563, %sw.bb9 ], [ -30560, %sw.bb ]
  %.sink174 = phi i16 [ 676, %sw.bb29 ], [ 563, %sw.bb19 ], [ 483, %sw.bb9 ], [ 422, %sw.bb ]
  %.sink = phi i16 [ 17664, %sw.bb29 ], [ -28971, %sw.bb19 ], [ 3255, %sw.bb9 ], [ -21728, %sw.bb ]
  %imp_bw_cfg.sroa.8.0.off0 = phi i8 [ -119, %sw.bb29 ], [ -91, %sw.bb19 ], [ -64, %sw.bb9 ], [ -37, %sw.bb ]
  %imp_bw_cfg.sroa.13.0.off0 = phi i8 [ 114, %sw.bb29 ], [ -119, %sw.bb19 ], [ -96, %sw.bb9 ], [ -73, %sw.bb ]
  %arrayidx31 = getelementptr inbounds [6 x i16], ptr %bw_cfg, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink177, ptr %arrayidx31, align 2
  %arrayidx32 = getelementptr inbounds [6 x i16], ptr %bw_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink176, ptr %arrayidx32, align 2
  %arrayidx33 = getelementptr inbounds [6 x i16], ptr %bw_cfg, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink175, ptr %arrayidx33, align 2
  %arrayidx34 = getelementptr inbounds [6 x i16], ptr %bw_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink174, ptr %arrayidx34, align 2
  %arrayidx35 = getelementptr inbounds [6 x i16], ptr %bw_cfg, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %arrayidx35, align 2
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %dib3000mc_write_word.exit.for.body_crit_edge, %sw.epilog
  %indvars.iv = phi i32 [ 6, %sw.epilog ], [ %indvars.iv.next, %dib3000mc_write_word.exit.for.body_crit_edge ]
  %reg.0167 = phi i16 [ 6, %sw.epilog ], [ %inc, %dib3000mc_write_word.exit.for.body_crit_edge ]
  %sub = add nsw i32 %indvars.iv, -6
  %arrayidx41 = getelementptr [6 x i16], ptr %bw_cfg, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx41, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 327679, ptr %11, align 4
  %15 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_addr.i, align 4
  %17 = lshr i8 %16, 1
  %conv1.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i, ptr %msg.i, align 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.dib3000mc_write_word.exit_crit_edge, label %if.end.i

for.body.dib3000mc_write_word.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = lshr i32 %indvars.iv, 8
  %conv4.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i, ptr %call7.i.i, align 8
  %conv5.i = trunc i16 %reg.0167 to i8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %24 = lshr i16 %13, 8
  %conv9.i = trunc i16 %24 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i16 %13 to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %26 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %28 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %for.body.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i16 %reg.0167, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 12
  br i1 %exitcond.not, label %for.end, label %dib3000mc_write_word.exit.for.body_crit_edge

dib3000mc_write_word.exit.for.body_crit_edge:     ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %dib3000mc_write_word.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #7
  %30 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 327679, ptr %30, align 4
  %32 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_addr.i, align 4
  %34 = lshr i8 %33, 1
  %conv1.i3 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv1.i3, ptr %msg.i1, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i4, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i7 = icmp eq ptr %call7.i.i6, null
  br i1 %tobool.not.i7, label %for.end.dib3000mc_write_word.exit18_crit_edge, label %if.end.i16

for.end.dib3000mc_write_word.exit18_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit18

if.end.i16:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %38 = ptrtoint ptr %call7.i.i6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %call7.i.i6, align 8
  %arrayidx6.i9 = getelementptr i8, ptr %call7.i.i6, i32 1
  %39 = ptrtoint ptr %arrayidx6.i9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 12, ptr %arrayidx6.i9, align 1
  %arrayidx10.i10 = getelementptr i8, ptr %call7.i.i6, i32 2
  %40 = ptrtoint ptr %arrayidx10.i10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx10.i10, align 2
  %arrayidx12.i11 = getelementptr i8, ptr %call7.i.i6, i32 3
  %41 = ptrtoint ptr %arrayidx12.i11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx12.i11, align 1
  %42 = ptrtoint ptr %buf.i8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i6, ptr %buf.i8, align 4
  %43 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i13 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i1, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i6) #7
  br label %dib3000mc_write_word.exit18

dib3000mc_write_word.exit18:                      ; preds = %if.end.i16, %for.end.dib3000mc_write_word.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #7
  %45 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 327679, ptr %45, align 4
  %47 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %i2c_addr.i, align 4
  %49 = lshr i8 %48, 1
  %conv1.i21 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv1.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i22, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i25 = icmp eq ptr %call7.i.i24, null
  br i1 %tobool.not.i25, label %dib3000mc_write_word.exit18.dib3000mc_write_word.exit36_crit_edge, label %if.end.i34

dib3000mc_write_word.exit18.dib3000mc_write_word.exit36_crit_edge: ; preds = %dib3000mc_write_word.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit36

if.end.i34:                                       ; preds = %dib3000mc_write_word.exit18
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %53 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %call7.i.i24, align 8
  %arrayidx6.i27 = getelementptr i8, ptr %call7.i.i24, i32 1
  %54 = ptrtoint ptr %arrayidx6.i27 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 13, ptr %arrayidx6.i27, align 1
  %arrayidx10.i28 = getelementptr i8, ptr %call7.i.i24, i32 2
  %55 = ptrtoint ptr %arrayidx10.i28 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %arrayidx10.i28, align 2
  %arrayidx12.i29 = getelementptr i8, ptr %call7.i.i24, i32 3
  %56 = ptrtoint ptr %arrayidx12.i29 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -24, ptr %arrayidx12.i29, align 1
  %57 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i24, ptr %buf.i26, align 4
  %58 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i31 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i19, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i24) #7
  br label %dib3000mc_write_word.exit36

dib3000mc_write_word.exit36:                      ; preds = %if.end.i34, %dib3000mc_write_word.exit18.dib3000mc_write_word.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i37) #7
  %60 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 327679, ptr %60, align 4
  %62 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_addr.i, align 4
  %64 = lshr i8 %63, 1
  %conv1.i39 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv1.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i40, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i42 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i43 = icmp eq ptr %call7.i.i42, null
  br i1 %tobool.not.i43, label %dib3000mc_write_word.exit36.dib3000mc_write_word.exit54_crit_edge, label %if.end.i52

dib3000mc_write_word.exit36.dib3000mc_write_word.exit54_crit_edge: ; preds = %dib3000mc_write_word.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit54

if.end.i52:                                       ; preds = %dib3000mc_write_word.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %68 = ptrtoint ptr %call7.i.i42 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %call7.i.i42, align 8
  %arrayidx6.i45 = getelementptr i8, ptr %call7.i.i42, i32 1
  %69 = ptrtoint ptr %arrayidx6.i45 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 14, ptr %arrayidx6.i45, align 1
  %arrayidx10.i46 = getelementptr i8, ptr %call7.i.i42, i32 2
  %70 = ptrtoint ptr %arrayidx10.i46 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx10.i46, align 2
  %arrayidx12.i47 = getelementptr i8, ptr %call7.i.i42, i32 3
  %71 = ptrtoint ptr %arrayidx12.i47 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx12.i47, align 1
  %72 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i42, ptr %buf.i44, align 4
  %73 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i49 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i37, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i42) #7
  br label %dib3000mc_write_word.exit54

dib3000mc_write_word.exit54:                      ; preds = %if.end.i52, %dib3000mc_write_word.exit36.dib3000mc_write_word.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55) #7
  %75 = getelementptr inbounds i8, ptr %msg.i55, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 327679, ptr %75, align 4
  %77 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i2c_addr.i, align 4
  %79 = lshr i8 %78, 1
  %conv1.i57 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i55 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv1.i57, ptr %msg.i55, align 4
  %flags.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i58, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i60 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i61 = icmp eq ptr %call7.i.i60, null
  br i1 %tobool.not.i61, label %dib3000mc_write_word.exit54.dib3000mc_write_word.exit72_crit_edge, label %if.end.i70

dib3000mc_write_word.exit54.dib3000mc_write_word.exit72_crit_edge: ; preds = %dib3000mc_write_word.exit54
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit72

if.end.i70:                                       ; preds = %dib3000mc_write_word.exit54
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 3
  %83 = ptrtoint ptr %call7.i.i60 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %call7.i.i60, align 8
  %arrayidx6.i63 = getelementptr i8, ptr %call7.i.i60, i32 1
  %84 = ptrtoint ptr %arrayidx6.i63 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 15, ptr %arrayidx6.i63, align 1
  %arrayidx10.i64 = getelementptr i8, ptr %call7.i.i60, i32 2
  %85 = ptrtoint ptr %arrayidx10.i64 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 3, ptr %arrayidx10.i64, align 2
  %arrayidx12.i65 = getelementptr i8, ptr %call7.i.i60, i32 3
  %86 = ptrtoint ptr %arrayidx12.i65 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -14, ptr %arrayidx12.i65, align 1
  %87 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i60, ptr %buf.i62, align 4
  %88 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i67 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i55, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i60) #7
  br label %dib3000mc_write_word.exit72

dib3000mc_write_word.exit72:                      ; preds = %if.end.i70, %dib3000mc_write_word.exit54.dib3000mc_write_word.exit72_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73) #7
  %90 = getelementptr inbounds i8, ptr %msg.i73, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 327679, ptr %90, align 4
  %92 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_addr.i, align 4
  %94 = lshr i8 %93, 1
  %conv1.i75 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv1.i75, ptr %msg.i73, align 4
  %flags.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i76, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i78 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i79 = icmp eq ptr %call7.i.i78, null
  br i1 %tobool.not.i79, label %dib3000mc_write_word.exit72.dib3000mc_write_word.exit90_crit_edge, label %if.end.i88

dib3000mc_write_word.exit72.dib3000mc_write_word.exit90_crit_edge: ; preds = %dib3000mc_write_word.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit90

if.end.i88:                                       ; preds = %dib3000mc_write_word.exit72
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 3
  %98 = ptrtoint ptr %call7.i.i78 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %call7.i.i78, align 8
  %arrayidx6.i81 = getelementptr i8, ptr %call7.i.i78, i32 1
  %99 = ptrtoint ptr %arrayidx6.i81 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 16, ptr %arrayidx6.i81, align 1
  %arrayidx10.i82 = getelementptr i8, ptr %call7.i.i78, i32 2
  %100 = ptrtoint ptr %arrayidx10.i82 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx10.i82, align 2
  %arrayidx12.i83 = getelementptr i8, ptr %call7.i.i78, i32 3
  %101 = ptrtoint ptr %arrayidx12.i83 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %arrayidx12.i83, align 1
  %102 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i78, ptr %buf.i80, align 4
  %103 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i85 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i73, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i78) #7
  br label %dib3000mc_write_word.exit90

dib3000mc_write_word.exit90:                      ; preds = %if.end.i88, %dib3000mc_write_word.exit72.dib3000mc_write_word.exit90_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i91) #7
  %105 = getelementptr inbounds i8, ptr %msg.i91, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 327679, ptr %105, align 4
  %107 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %i2c_addr.i, align 4
  %109 = lshr i8 %108, 1
  %conv1.i93 = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i91 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv1.i93, ptr %msg.i91, align 4
  %flags.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i94 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i94, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i96 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i97 = icmp eq ptr %call7.i.i96, null
  br i1 %tobool.not.i97, label %dib3000mc_write_word.exit90.dib3000mc_write_word.exit108_crit_edge, label %if.end.i106

dib3000mc_write_word.exit90.dib3000mc_write_word.exit108_crit_edge: ; preds = %dib3000mc_write_word.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit108

if.end.i106:                                      ; preds = %dib3000mc_write_word.exit90
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i91, i32 0, i32 3
  %113 = ptrtoint ptr %call7.i.i96 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %call7.i.i96, align 8
  %arrayidx6.i99 = getelementptr i8, ptr %call7.i.i96, i32 1
  %114 = ptrtoint ptr %arrayidx6.i99 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 17, ptr %arrayidx6.i99, align 1
  %arrayidx10.i100 = getelementptr i8, ptr %call7.i.i96, i32 2
  %115 = ptrtoint ptr %arrayidx10.i100 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -80, ptr %arrayidx10.i100, align 2
  %arrayidx12.i101 = getelementptr i8, ptr %call7.i.i96, i32 3
  %116 = ptrtoint ptr %arrayidx12.i101 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -48, ptr %arrayidx12.i101, align 1
  %117 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i96, ptr %buf.i98, align 4
  %118 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i103 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i91, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i96) #7
  br label %dib3000mc_write_word.exit108

dib3000mc_write_word.exit108:                     ; preds = %if.end.i106, %dib3000mc_write_word.exit90.dib3000mc_write_word.exit108_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i91) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109) #7
  %120 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 327679, ptr %120, align 4
  %122 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %i2c_addr.i, align 4
  %124 = lshr i8 %123, 1
  %conv1.i111 = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv1.i111, ptr %msg.i109, align 4
  %flags.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i112, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i114 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i115 = icmp eq ptr %call7.i.i114, null
  br i1 %tobool.not.i115, label %dib3000mc_write_word.exit108.dib3000mc_write_word.exit126_crit_edge, label %if.end.i124

dib3000mc_write_word.exit108.dib3000mc_write_word.exit126_crit_edge: ; preds = %dib3000mc_write_word.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit126

if.end.i124:                                      ; preds = %dib3000mc_write_word.exit108
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %128 = ptrtoint ptr %call7.i.i114 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %call7.i.i114, align 8
  %arrayidx6.i117 = getelementptr i8, ptr %call7.i.i114, i32 1
  %129 = ptrtoint ptr %arrayidx6.i117 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 18, ptr %arrayidx6.i117, align 1
  %arrayidx10.i118 = getelementptr i8, ptr %call7.i.i114, i32 2
  %130 = ptrtoint ptr %arrayidx10.i118 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 3, ptr %arrayidx10.i118, align 2
  %arrayidx12.i119 = getelementptr i8, ptr %call7.i.i114, i32 3
  %131 = ptrtoint ptr %arrayidx12.i119 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -109, ptr %arrayidx12.i119, align 1
  %132 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i114, ptr %buf.i116, align 4
  %133 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i121 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i109, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i114) #7
  br label %dib3000mc_write_word.exit126

dib3000mc_write_word.exit126:                     ; preds = %if.end.i124, %dib3000mc_write_word.exit108.dib3000mc_write_word.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i127) #7
  %135 = getelementptr inbounds i8, ptr %msg.i127, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 327679, ptr %135, align 4
  %137 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %i2c_addr.i, align 4
  %139 = lshr i8 %138, 1
  %conv1.i129 = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i127 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv1.i129, ptr %msg.i127, align 4
  %flags.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i130 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i130, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %142 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i132 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i133 = icmp eq ptr %call7.i.i132, null
  br i1 %tobool.not.i133, label %dib3000mc_write_word.exit126.dib3000mc_write_word.exit144_crit_edge, label %if.end.i142

dib3000mc_write_word.exit126.dib3000mc_write_word.exit144_crit_edge: ; preds = %dib3000mc_write_word.exit126
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit144

if.end.i142:                                      ; preds = %dib3000mc_write_word.exit126
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 3
  %143 = ptrtoint ptr %call7.i.i132 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %call7.i.i132, align 8
  %arrayidx6.i135 = getelementptr i8, ptr %call7.i.i132, i32 1
  %144 = ptrtoint ptr %arrayidx6.i135 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 19, ptr %arrayidx6.i135, align 1
  %arrayidx10.i136 = getelementptr i8, ptr %call7.i.i132, i32 2
  %145 = ptrtoint ptr %arrayidx10.i136 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -121, ptr %arrayidx10.i136, align 2
  %arrayidx12.i137 = getelementptr i8, ptr %call7.i.i132, i32 3
  %146 = ptrtoint ptr %arrayidx12.i137 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx12.i137, align 1
  %147 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call7.i.i132, ptr %buf.i134, align 4
  %148 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i139 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i127, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i132) #7
  br label %dib3000mc_write_word.exit144

dib3000mc_write_word.exit144:                     ; preds = %if.end.i142, %dib3000mc_write_word.exit126.dib3000mc_write_word.exit144_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #7
  %150 = getelementptr inbounds i8, ptr %msg.i145, i32 4
  %flags.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 0, i32 1
  %buf.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i145, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i145) #7
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 327679, ptr %150, align 4
  %152 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %i2c_addr.i, align 4
  %154 = lshr i8 %153, 1
  %conv1.i147 = zext i8 %154 to i16
  %155 = ptrtoint ptr %msg.i145 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv1.i147, ptr %msg.i145, align 4
  %156 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %flags.i148, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %157 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i150 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %157, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i151 = icmp eq ptr %call7.i.i150, null
  br i1 %tobool.not.i151, label %dib3000mc_write_word.exit144.dib3000mc_write_word.exit166_crit_edge, label %if.end.i164

dib3000mc_write_word.exit144.dib3000mc_write_word.exit166_crit_edge: ; preds = %dib3000mc_write_word.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit166

if.end.i164:                                      ; preds = %dib3000mc_write_word.exit144
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %call7.i.i150 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %call7.i.i150, align 8
  %arrayidx6.i155 = getelementptr i8, ptr %call7.i.i150, i32 1
  %159 = ptrtoint ptr %arrayidx6.i155 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 55, ptr %arrayidx6.i155, align 1
  %arrayidx10.i157 = getelementptr i8, ptr %call7.i.i150, i32 2
  %160 = ptrtoint ptr %arrayidx10.i157 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 4, ptr %arrayidx10.i157, align 2
  %arrayidx12.i159 = getelementptr i8, ptr %call7.i.i150, i32 3
  %161 = ptrtoint ptr %arrayidx12.i159 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %imp_bw_cfg.sroa.8.0.off0, ptr %arrayidx12.i159, align 1
  %162 = ptrtoint ptr %buf.i152 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call7.i.i150, ptr %buf.i152, align 4
  %163 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i161 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i145, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i150) #7
  br label %dib3000mc_write_word.exit166

dib3000mc_write_word.exit166:                     ; preds = %if.end.i164, %dib3000mc_write_word.exit144.dib3000mc_write_word.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i145) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i145) #7
  %165 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 327679, ptr %150, align 4
  %166 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %i2c_addr.i, align 4
  %168 = lshr i8 %167, 1
  %conv1.i147.1 = zext i8 %168 to i16
  %169 = ptrtoint ptr %msg.i145 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv1.i147.1, ptr %msg.i145, align 4
  %170 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i148, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %171 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i150.1 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i151.1 = icmp eq ptr %call7.i.i150.1, null
  br i1 %tobool.not.i151.1, label %dib3000mc_write_word.exit166.dib3000mc_write_word.exit166.1_crit_edge, label %if.end.i164.1

dib3000mc_write_word.exit166.dib3000mc_write_word.exit166.1_crit_edge: ; preds = %dib3000mc_write_word.exit166
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit166.1

if.end.i164.1:                                    ; preds = %dib3000mc_write_word.exit166
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %call7.i.i150.1 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %call7.i.i150.1, align 8
  %arrayidx6.i155.1 = getelementptr i8, ptr %call7.i.i150.1, i32 1
  %173 = ptrtoint ptr %arrayidx6.i155.1 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 56, ptr %arrayidx6.i155.1, align 1
  %arrayidx10.i157.1 = getelementptr i8, ptr %call7.i.i150.1, i32 2
  %174 = ptrtoint ptr %arrayidx10.i157.1 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %arrayidx10.i157.1, align 2
  %arrayidx12.i159.1 = getelementptr i8, ptr %call7.i.i150.1, i32 3
  %175 = ptrtoint ptr %arrayidx12.i159.1 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %imp_bw_cfg.sroa.8.0.off0, ptr %arrayidx12.i159.1, align 1
  %176 = ptrtoint ptr %buf.i152 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call7.i.i150.1, ptr %buf.i152, align 4
  %177 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i161.1 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i145, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i150.1) #7
  br label %dib3000mc_write_word.exit166.1

dib3000mc_write_word.exit166.1:                   ; preds = %if.end.i164.1, %dib3000mc_write_word.exit166.dib3000mc_write_word.exit166.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i145) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i145) #7
  %179 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 327679, ptr %150, align 4
  %180 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %i2c_addr.i, align 4
  %182 = lshr i8 %181, 1
  %conv1.i147.2 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i145 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv1.i147.2, ptr %msg.i145, align 4
  %184 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i148, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %185 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i150.2 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %185, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i151.2 = icmp eq ptr %call7.i.i150.2, null
  br i1 %tobool.not.i151.2, label %dib3000mc_write_word.exit166.1.dib3000mc_write_word.exit166.2_crit_edge, label %if.end.i164.2

dib3000mc_write_word.exit166.1.dib3000mc_write_word.exit166.2_crit_edge: ; preds = %dib3000mc_write_word.exit166.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit166.2

if.end.i164.2:                                    ; preds = %dib3000mc_write_word.exit166.1
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %call7.i.i150.2 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %call7.i.i150.2, align 8
  %arrayidx6.i155.2 = getelementptr i8, ptr %call7.i.i150.2, i32 1
  %187 = ptrtoint ptr %arrayidx6.i155.2 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 57, ptr %arrayidx6.i155.2, align 1
  %arrayidx10.i157.2 = getelementptr i8, ptr %call7.i.i150.2, i32 2
  %188 = ptrtoint ptr %arrayidx10.i157.2 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %arrayidx10.i157.2, align 2
  %arrayidx12.i159.2 = getelementptr i8, ptr %call7.i.i150.2, i32 3
  %189 = ptrtoint ptr %arrayidx12.i159.2 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %imp_bw_cfg.sroa.13.0.off0, ptr %arrayidx12.i159.2, align 1
  %190 = ptrtoint ptr %buf.i152 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call7.i.i150.2, ptr %buf.i152, align 4
  %191 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i161.2 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i145, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i150.2) #7
  br label %dib3000mc_write_word.exit166.2

dib3000mc_write_word.exit166.2:                   ; preds = %if.end.i164.2, %dib3000mc_write_word.exit166.1.dib3000mc_write_word.exit166.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i145) #7
  call fastcc void @dib3000mc_set_timing(ptr noundef %state, i16 noundef signext 0, i32 noundef %bw, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %dib3000mc_write_word.exit166.2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bw_cfg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_impulse_noise(ptr nocapture noundef readonly %state, i8 noundef zeroext %mode, i16 noundef signext %nfft) unnamed_addr #0 align 64 {
entry:
  %msg.i120 = alloca %struct.i2c_msg, align 4
  %msg.i102 = alloca %struct.i2c_msg, align 4
  %msg.i84 = alloca %struct.i2c_msg, align 4
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %msg.i30 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %dib3000mc_write_word.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 58, %entry ], [ %indvars.iv.next, %dib3000mc_write_word.exit.for.body_crit_edge ]
  %i.0140 = phi i16 [ 58, %entry ], [ %inc, %dib3000mc_write_word.exit.for.body_crit_edge ]
  %sub = add nsw i32 %indvars.iv, -58
  %arrayidx = getelementptr [29 x i16], ptr @impulse_noise_val, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 327679, ptr %0, align 4
  %4 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr.i, align 4
  %6 = lshr i8 %5, 1
  %conv1.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i, ptr %msg.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.dib3000mc_write_word.exit_crit_edge, label %if.end.i

for.body.dib3000mc_write_word.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = lshr i32 %indvars.iv, 8
  %conv4.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %call7.i.i, align 8
  %conv5.i = trunc i16 %i.0140 to i8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %13 = lshr i16 %2, 8
  %conv9.i = trunc i16 %13 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i16 %2 to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %17 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %for.body.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i16 %i.0140, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 87
  br i1 %exitcond.not, label %for.end, label %dib3000mc_write_word.exit.for.body_crit_edge

dib3000mc_write_word.exit.for.body_crit_edge:     ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %nfft)
  %cmp4 = icmp eq i16 %nfft, 1
  br i1 %cmp4, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30) #7
  %19 = getelementptr inbounds i8, ptr %msg.i30, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 327679, ptr %19, align 4
  %21 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_addr.i, align 4
  %23 = lshr i8 %22, 1
  %conv1.i32 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i30 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i32, ptr %msg.i30, align 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i33, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i36 = icmp eq ptr %call7.i.i35, null
  br i1 %tobool.not.i36, label %if.then.dib3000mc_write_word.exit47_crit_edge, label %if.end.i45

if.then.dib3000mc_write_word.exit47_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit47

if.end.i45:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 3
  %27 = ptrtoint ptr %call7.i.i35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %call7.i.i35, align 8
  %arrayidx6.i38 = getelementptr i8, ptr %call7.i.i35, i32 1
  %28 = ptrtoint ptr %arrayidx6.i38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 58, ptr %arrayidx6.i38, align 1
  %arrayidx10.i39 = getelementptr i8, ptr %call7.i.i35, i32 2
  %29 = ptrtoint ptr %arrayidx10.i39 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx10.i39, align 2
  %arrayidx12.i40 = getelementptr i8, ptr %call7.i.i35, i32 3
  %30 = ptrtoint ptr %arrayidx12.i40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 59, ptr %arrayidx12.i40, align 1
  %31 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i35, ptr %buf.i37, align 4
  %32 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i42 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i30, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i35) #7
  br label %dib3000mc_write_word.exit47

dib3000mc_write_word.exit47:                      ; preds = %if.end.i45, %if.then.dib3000mc_write_word.exit47_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #7
  %34 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 327679, ptr %34, align 4
  %36 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_addr.i, align 4
  %38 = lshr i8 %37, 1
  %conv1.i50 = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv1.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i51, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i54 = icmp eq ptr %call7.i.i53, null
  br i1 %tobool.not.i54, label %dib3000mc_write_word.exit47.dib3000mc_write_word.exit65_crit_edge, label %if.end.i63

dib3000mc_write_word.exit47.dib3000mc_write_word.exit65_crit_edge: ; preds = %dib3000mc_write_word.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit65

if.end.i63:                                       ; preds = %dib3000mc_write_word.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %42 = ptrtoint ptr %call7.i.i53 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %call7.i.i53, align 8
  %arrayidx6.i56 = getelementptr i8, ptr %call7.i.i53, i32 1
  %43 = ptrtoint ptr %arrayidx6.i56 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 84, ptr %arrayidx6.i56, align 1
  %arrayidx10.i57 = getelementptr i8, ptr %call7.i.i53, i32 2
  %44 = ptrtoint ptr %arrayidx10.i57 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx10.i57, align 2
  %arrayidx12.i58 = getelementptr i8, ptr %call7.i.i53, i32 3
  %45 = ptrtoint ptr %arrayidx12.i58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx12.i58, align 1
  %46 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i53, ptr %buf.i55, align 4
  %47 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i60 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i48, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i53) #7
  br label %dib3000mc_write_word.exit65

dib3000mc_write_word.exit65:                      ; preds = %if.end.i63, %dib3000mc_write_word.exit47.dib3000mc_write_word.exit65_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #7
  %49 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 327679, ptr %49, align 4
  %51 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_addr.i, align 4
  %53 = lshr i8 %52, 1
  %conv1.i68 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv1.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i69, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i72 = icmp eq ptr %call7.i.i71, null
  br i1 %tobool.not.i72, label %dib3000mc_write_word.exit65.dib3000mc_write_word.exit83_crit_edge, label %if.end.i81

dib3000mc_write_word.exit65.dib3000mc_write_word.exit83_crit_edge: ; preds = %dib3000mc_write_word.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit83

if.end.i81:                                       ; preds = %dib3000mc_write_word.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %57 = ptrtoint ptr %call7.i.i71 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %call7.i.i71, align 8
  %arrayidx6.i74 = getelementptr i8, ptr %call7.i.i71, i32 1
  %58 = ptrtoint ptr %arrayidx6.i74 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 85, ptr %arrayidx6.i74, align 1
  %arrayidx10.i75 = getelementptr i8, ptr %call7.i.i71, i32 2
  %59 = ptrtoint ptr %arrayidx10.i75 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -126, ptr %arrayidx10.i75, align 2
  %arrayidx12.i76 = getelementptr i8, ptr %call7.i.i71, i32 3
  %60 = ptrtoint ptr %arrayidx12.i76 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx12.i76, align 1
  %61 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i71, ptr %buf.i73, align 4
  %62 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i78 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i66, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i71) #7
  br label %dib3000mc_write_word.exit83

dib3000mc_write_word.exit83:                      ; preds = %if.end.i81, %dib3000mc_write_word.exit65.dib3000mc_write_word.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #7
  br label %if.end

if.end:                                           ; preds = %dib3000mc_write_word.exit83, %for.end.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #7
  %64 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 327679, ptr %64, align 4
  %66 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr.i, align 4
  %68 = lshr i8 %67, 1
  %conv1.i86 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv1.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i87, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i89 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i90 = icmp eq ptr %call7.i.i89, null
  br i1 %tobool.not.i90, label %if.end.dib3000mc_write_word.exit101_crit_edge, label %if.end.i99

if.end.dib3000mc_write_word.exit101_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit101

if.end.i99:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %72 = ptrtoint ptr %call7.i.i89 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %call7.i.i89, align 8
  %arrayidx6.i92 = getelementptr i8, ptr %call7.i.i89, i32 1
  %73 = ptrtoint ptr %arrayidx6.i92 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 34, ptr %arrayidx6.i92, align 1
  %arrayidx10.i93 = getelementptr i8, ptr %call7.i.i89, i32 2
  %74 = ptrtoint ptr %arrayidx10.i93 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 18, ptr %arrayidx10.i93, align 2
  %arrayidx12.i94 = getelementptr i8, ptr %call7.i.i89, i32 3
  %75 = ptrtoint ptr %arrayidx12.i94 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -108, ptr %arrayidx12.i94, align 1
  %76 = ptrtoint ptr %buf.i91 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i89, ptr %buf.i91, align 4
  %77 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i96 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i84, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i89) #7
  br label %dib3000mc_write_word.exit101

dib3000mc_write_word.exit101:                     ; preds = %if.end.i99, %if.end.dib3000mc_write_word.exit101_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102) #7
  %79 = getelementptr inbounds i8, ptr %msg.i102, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 327679, ptr %79, align 4
  %81 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %i2c_addr.i, align 4
  %83 = lshr i8 %82, 1
  %conv1.i104 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i104, ptr %msg.i102, align 4
  %flags.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i105, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i107 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i108 = icmp eq ptr %call7.i.i107, null
  br i1 %tobool.not.i108, label %dib3000mc_write_word.exit101.dib3000mc_write_word.exit119_crit_edge, label %if.end.i117

dib3000mc_write_word.exit101.dib3000mc_write_word.exit119_crit_edge: ; preds = %dib3000mc_write_word.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit119

if.end.i117:                                      ; preds = %dib3000mc_write_word.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 3
  %87 = ptrtoint ptr %call7.i.i107 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %call7.i.i107, align 8
  %arrayidx6.i110 = getelementptr i8, ptr %call7.i.i107, i32 1
  %88 = ptrtoint ptr %arrayidx6.i110 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 35, ptr %arrayidx6.i110, align 1
  %arrayidx10.i111 = getelementptr i8, ptr %call7.i.i107, i32 2
  %89 = ptrtoint ptr %arrayidx10.i111 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 31, ptr %arrayidx10.i111, align 2
  %arrayidx12.i112 = getelementptr i8, ptr %call7.i.i107, i32 3
  %90 = ptrtoint ptr %arrayidx12.i112 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -8, ptr %arrayidx12.i112, align 1
  %91 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i107, ptr %buf.i109, align 4
  %92 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i114 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i102, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i107) #7
  br label %dib3000mc_write_word.exit119

dib3000mc_write_word.exit119:                     ; preds = %if.end.i117, %dib3000mc_write_word.exit101.dib3000mc_write_word.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp12 = icmp eq i8 %mode, 1
  br i1 %cmp12, label %if.then14, label %dib3000mc_write_word.exit119.if.end19_crit_edge

dib3000mc_write_word.exit119.if.end19_crit_edge:  ; preds = %dib3000mc_write_word.exit119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %dib3000mc_write_word.exit119
  %call15 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 55)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i120) #7
  %94 = getelementptr inbounds i8, ptr %msg.i120, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 327679, ptr %94, align 4
  %96 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %i2c_addr.i, align 4
  %98 = lshr i8 %97, 1
  %conv1.i122 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i120 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv1.i122, ptr %msg.i120, align 4
  %flags.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i123, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i125 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i126 = icmp eq ptr %call7.i.i125, null
  br i1 %tobool.not.i126, label %if.then14.dib3000mc_write_word.exit139_crit_edge, label %if.end.i137

if.then14.dib3000mc_write_word.exit139_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit139

if.end.i137:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120, i32 0, i32 3
  %102 = ptrtoint ptr %call7.i.i125 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %call7.i.i125, align 8
  %arrayidx6.i128 = getelementptr i8, ptr %call7.i.i125, i32 1
  %103 = ptrtoint ptr %arrayidx6.i128 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 55, ptr %arrayidx6.i128, align 1
  %104 = lshr i16 %call15, 8
  %105 = trunc i16 %104 to i8
  %conv9.i129 = or i8 %105, 4
  %arrayidx10.i130 = getelementptr i8, ptr %call7.i.i125, i32 2
  %106 = ptrtoint ptr %arrayidx10.i130 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv9.i129, ptr %arrayidx10.i130, align 2
  %conv11.i131 = trunc i16 %call15 to i8
  %arrayidx12.i132 = getelementptr i8, ptr %call7.i.i125, i32 3
  %107 = ptrtoint ptr %arrayidx12.i132 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv11.i131, ptr %arrayidx12.i132, align 1
  %108 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call7.i.i125, ptr %buf.i127, align 4
  %109 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i134 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i120, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i125) #7
  br label %dib3000mc_write_word.exit139

dib3000mc_write_word.exit139:                     ; preds = %if.end.i137, %if.then14.dib3000mc_write_word.exit139_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i120) #7
  br label %if.end19

if.end19:                                         ; preds = %dib3000mc_write_word.exit139, %dib3000mc_write_word.exit119.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_timing(ptr nocapture noundef %state, i16 noundef signext %nfft, i32 noundef %bw, i8 noundef zeroext %update_offset) unnamed_addr #0 align 64 {
entry:
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timf1 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %timf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timf1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_offset)
  %tobool.not = icmp eq i8 %update_offset, 0
  br i1 %tobool.not, label %if.end4.thread, label %if.end4.thread26

if.end4.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %div23 = udiv i32 %bw, 1000
  %mul24 = mul i32 %div23, 1384402
  br label %do.body

if.end4.thread26:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 200) #7
  %div28 = udiv i32 %bw, 1000
  %mul29 = mul i32 %div28, 1384402
  br label %if.then6

if.end4:                                          ; preds = %entry
  %div = udiv i32 %bw, 1000
  %mul = mul i32 %1, %div
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_offset)
  %tobool5.not = icmp eq i8 %update_offset, 0
  br i1 %tobool5.not, label %if.end4.do.body_crit_edge, label %if.end4.if.then6_crit_edge

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.thread26
  %mul32 = phi i32 [ %mul29, %if.end4.thread26 ], [ %mul, %if.end4.if.then6_crit_edge ]
  %div31 = phi i32 [ %div28, %if.end4.thread26 ], [ %div, %if.end4.if.then6_crit_edge ]
  %call = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 416)
  %2 = and i16 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool7.not = icmp eq i16 %2, 0
  %sub = add i16 %call, -16384
  %spec.select = select i1 %tobool7.not, i16 %call, i16 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nfft)
  %cmp13 = icmp eq i16 %nfft, 0
  %mul17 = shl i16 %spec.select, 2
  %tim_offs.1 = select i1 %cmp13, i16 %mul17, i16 %spec.select
  %conv20 = sext i16 %tim_offs.1 to i32
  %add = add i32 %mul32, %conv20
  %div22 = udiv i32 %add, %div31
  %3 = ptrtoint ptr %timf1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div22, ptr %timf1, align 8
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end4.do.body_crit_edge, %if.end4.thread
  %timf.1 = phi i32 [ %add, %if.then6 ], [ %mul, %if.end4.do.body_crit_edge ], [ %mul24, %if.end4.thread ]
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %do.body.do.end31_crit_edge, label %do.end

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %timf.1) #11
  br label %do.end31

do.end31:                                         ; preds = %do.end, %do.body.do.end31_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 327679, ptr %5, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_addr.i, align 4
  %9 = lshr i8 %8, 1
  %conv1.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end31.dib3000mc_write_word.exit_crit_edge, label %if.end.i

do.end31.dib3000mc_write_word.exit_crit_edge:     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %timf.1, 16
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 23, ptr %arrayidx6.i, align 1
  %15 = lshr i32 %timf.1, 24
  %conv9.i = trunc i32 %15 to i8
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9.i, ptr %arrayidx10.i, align 2
  %conv11.i = trunc i32 %shr to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %do.end31.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %21 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 327679, ptr %21, align 4
  %23 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_addr.i, align 4
  %25 = lshr i8 %24, 1
  %conv1.i4 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv1.i4, ptr %msg.i2, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i5, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i8 = icmp eq ptr %call7.i.i7, null
  br i1 %tobool.not.i8, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit21_crit_edge, label %if.end.i19

dib3000mc_write_word.exit.dib3000mc_write_word.exit21_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit21

if.end.i19:                                       ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %29 = ptrtoint ptr %call7.i.i7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call7.i.i7, align 8
  %arrayidx6.i10 = getelementptr i8, ptr %call7.i.i7, i32 1
  %30 = ptrtoint ptr %arrayidx6.i10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 24, ptr %arrayidx6.i10, align 1
  %31 = lshr i32 %timf.1, 8
  %conv9.i11 = trunc i32 %31 to i8
  %arrayidx10.i12 = getelementptr i8, ptr %call7.i.i7, i32 2
  %32 = ptrtoint ptr %arrayidx10.i12 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv9.i11, ptr %arrayidx10.i12, align 2
  %conv11.i13 = trunc i32 %timf.1 to i8
  %arrayidx12.i14 = getelementptr i8, ptr %call7.i.i7, i32 3
  %33 = ptrtoint ptr %arrayidx12.i14 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv11.i13, ptr %arrayidx12.i14, align 1
  %34 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i7, ptr %buf.i9, align 4
  %i2c_adap.i15 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %35 = ptrtoint ptr %i2c_adap.i15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_adap.i15, align 8
  %call14.i16 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i7) #7
  br label %dib3000mc_write_word.exit21

dib3000mc_write_word.exit21:                      ; preds = %if.end.i19, %dib3000mc_write_word.exit.dib3000mc_write_word.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_channel_cfg(ptr noundef %state, ptr nocapture noundef readonly %ch, i16 noundef zeroext %seq) unnamed_addr #0 align 64 {
entry:
  %msg.i600 = alloca %struct.i2c_msg, align 4
  %msg.i580 = alloca %struct.i2c_msg, align 4
  %msg.i560 = alloca %struct.i2c_msg, align 4
  %msg.i540 = alloca %struct.i2c_msg, align 4
  %msg.i520 = alloca %struct.i2c_msg, align 4
  %msg.i502 = alloca %struct.i2c_msg, align 4
  %msg.i484 = alloca %struct.i2c_msg, align 4
  %msg.i466 = alloca %struct.i2c_msg, align 4
  %msg.i448 = alloca %struct.i2c_msg, align 4
  %msg.i430 = alloca %struct.i2c_msg, align 4
  %msg.i412 = alloca %struct.i2c_msg, align 4
  %msg.i394 = alloca %struct.i2c_msg, align 4
  %msg.i376 = alloca %struct.i2c_msg, align 4
  %msg.i358 = alloca %struct.i2c_msg, align 4
  %msg.i340 = alloca %struct.i2c_msg, align 4
  %msg.i322 = alloca %struct.i2c_msg, align 4
  %msg.i304 = alloca %struct.i2c_msg, align 4
  %msg.i286 = alloca %struct.i2c_msg, align 4
  %msg.i268 = alloca %struct.i2c_msg, align 4
  %msg.i250 = alloca %struct.i2c_msg, align 4
  %msg.i232 = alloca %struct.i2c_msg, align 4
  %msg.i214 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %div = udiv i32 %1, 1000
  tail call fastcc void @dib3000mc_set_bandwidth(ptr noundef %state, i32 noundef %div)
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 6
  %2 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transmission_mode, align 4
  %conv = trunc i32 %3 to i16
  tail call fastcc void @dib3000mc_set_timing(ptr noundef %state, i16 noundef signext %conv, i32 noundef %div, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 327679, ptr %4, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_addr.i, align 4
  %8 = lshr i8 %7, 1
  %conv1.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.dib3000mc_write_word.exit_crit_edge, label %if.end.i

entry.dib3000mc_write_word.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 100, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %arrayidx12.i, align 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %entry.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i214) #7
  %19 = getelementptr inbounds i8, ptr %msg.i214, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 327679, ptr %19, align 4
  %21 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_addr.i, align 4
  %23 = lshr i8 %22, 1
  %conv1.i216 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i214 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i216, ptr %msg.i214, align 4
  %flags.i217 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i217 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i217, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i219 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i220 = icmp eq ptr %call7.i.i219, null
  br i1 %tobool.not.i220, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit231_crit_edge, label %if.end.i229

dib3000mc_write_word.exit.dib3000mc_write_word.exit231_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit231

if.end.i229:                                      ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214, i32 0, i32 3
  %27 = ptrtoint ptr %call7.i.i219 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %call7.i.i219, align 8
  %arrayidx6.i222 = getelementptr i8, ptr %call7.i.i219, i32 1
  %28 = ptrtoint ptr %arrayidx6.i222 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %arrayidx6.i222, align 1
  %arrayidx10.i223 = getelementptr i8, ptr %call7.i.i219, i32 2
  %29 = ptrtoint ptr %arrayidx10.i223 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx10.i223, align 2
  %arrayidx12.i224 = getelementptr i8, ptr %call7.i.i219, i32 3
  %30 = ptrtoint ptr %arrayidx12.i224 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx12.i224, align 1
  %31 = ptrtoint ptr %buf.i221 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i219, ptr %buf.i221, align 4
  %i2c_adap.i225 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %32 = ptrtoint ptr %i2c_adap.i225 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_adap.i225, align 8
  %call14.i226 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i214, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i219) #7
  br label %dib3000mc_write_word.exit231

dib3000mc_write_word.exit231:                     ; preds = %if.end.i229, %dib3000mc_write_word.exit.dib3000mc_write_word.exit231_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i214) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i232) #7
  %34 = getelementptr inbounds i8, ptr %msg.i232, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 327679, ptr %34, align 4
  %36 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_addr.i, align 4
  %38 = lshr i8 %37, 1
  %conv1.i234 = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i232 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv1.i234, ptr %msg.i232, align 4
  %flags.i235 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i235, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i237 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i238 = icmp eq ptr %call7.i.i237, null
  br i1 %tobool.not.i238, label %dib3000mc_write_word.exit231.dib3000mc_write_word.exit249_crit_edge, label %if.end.i247

dib3000mc_write_word.exit231.dib3000mc_write_word.exit249_crit_edge: ; preds = %dib3000mc_write_word.exit231
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit249

if.end.i247:                                      ; preds = %dib3000mc_write_word.exit231
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i239 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i232, i32 0, i32 3
  %42 = ptrtoint ptr %call7.i.i237 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %call7.i.i237, align 8
  %arrayidx6.i240 = getelementptr i8, ptr %call7.i.i237, i32 1
  %43 = ptrtoint ptr %arrayidx6.i240 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %arrayidx6.i240, align 1
  %arrayidx10.i241 = getelementptr i8, ptr %call7.i.i237, i32 2
  %44 = ptrtoint ptr %arrayidx10.i241 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx10.i241, align 2
  %arrayidx12.i242 = getelementptr i8, ptr %call7.i.i237, i32 3
  %45 = ptrtoint ptr %arrayidx12.i242 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx12.i242, align 1
  %46 = ptrtoint ptr %buf.i239 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i237, ptr %buf.i239, align 4
  %i2c_adap.i243 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %47 = ptrtoint ptr %i2c_adap.i243 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_adap.i243, align 8
  %call14.i244 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i232, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i237) #7
  br label %dib3000mc_write_word.exit249

dib3000mc_write_word.exit249:                     ; preds = %if.end.i247, %dib3000mc_write_word.exit231.dib3000mc_write_word.exit249_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i232) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i250) #7
  %49 = getelementptr inbounds i8, ptr %msg.i250, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 327679, ptr %49, align 4
  %51 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_addr.i, align 4
  %53 = lshr i8 %52, 1
  %conv1.i252 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i250 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv1.i252, ptr %msg.i250, align 4
  %flags.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i250, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i253 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i253, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i255 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i256 = icmp eq ptr %call7.i.i255, null
  br i1 %tobool.not.i256, label %dib3000mc_write_word.exit249.dib3000mc_write_word.exit267_crit_edge, label %if.end.i265

dib3000mc_write_word.exit249.dib3000mc_write_word.exit267_crit_edge: ; preds = %dib3000mc_write_word.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit267

if.end.i265:                                      ; preds = %dib3000mc_write_word.exit249
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i250, i32 0, i32 3
  %57 = ptrtoint ptr %call7.i.i255 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %call7.i.i255, align 8
  %arrayidx6.i258 = getelementptr i8, ptr %call7.i.i255, i32 1
  %58 = ptrtoint ptr %arrayidx6.i258 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 26, ptr %arrayidx6.i258, align 1
  %arrayidx10.i259 = getelementptr i8, ptr %call7.i.i255, i32 2
  %59 = ptrtoint ptr %arrayidx10.i259 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 102, ptr %arrayidx10.i259, align 2
  %arrayidx12.i260 = getelementptr i8, ptr %call7.i.i255, i32 3
  %60 = ptrtoint ptr %arrayidx12.i260 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %arrayidx12.i260, align 1
  %61 = ptrtoint ptr %buf.i257 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i255, ptr %buf.i257, align 4
  %i2c_adap.i261 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %62 = ptrtoint ptr %i2c_adap.i261 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_adap.i261, align 8
  %call14.i262 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i250, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i255) #7
  br label %dib3000mc_write_word.exit267

dib3000mc_write_word.exit267:                     ; preds = %if.end.i265, %dib3000mc_write_word.exit249.dib3000mc_write_word.exit267_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i250) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i268) #7
  %64 = getelementptr inbounds i8, ptr %msg.i268, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 327679, ptr %64, align 4
  %66 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr.i, align 4
  %68 = lshr i8 %67, 1
  %conv1.i270 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i268 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv1.i270, ptr %msg.i268, align 4
  %flags.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i271, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i273 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i274 = icmp eq ptr %call7.i.i273, null
  br i1 %tobool.not.i274, label %dib3000mc_write_word.exit267.dib3000mc_write_word.exit285_crit_edge, label %if.end.i283

dib3000mc_write_word.exit267.dib3000mc_write_word.exit285_crit_edge: ; preds = %dib3000mc_write_word.exit267
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit285

if.end.i283:                                      ; preds = %dib3000mc_write_word.exit267
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i275 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i268, i32 0, i32 3
  %72 = ptrtoint ptr %call7.i.i273 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %call7.i.i273, align 8
  %arrayidx6.i276 = getelementptr i8, ptr %call7.i.i273, i32 1
  %73 = ptrtoint ptr %arrayidx6.i276 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 29, ptr %arrayidx6.i276, align 1
  %arrayidx10.i277 = getelementptr i8, ptr %call7.i.i273, i32 2
  %74 = ptrtoint ptr %arrayidx10.i277 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 18, ptr %arrayidx10.i277, align 2
  %arrayidx12.i278 = getelementptr i8, ptr %call7.i.i273, i32 3
  %75 = ptrtoint ptr %arrayidx12.i278 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 115, ptr %arrayidx12.i278, align 1
  %76 = ptrtoint ptr %buf.i275 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i273, ptr %buf.i275, align 4
  %i2c_adap.i279 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %77 = ptrtoint ptr %i2c_adap.i279 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_adap.i279, align 8
  %call14.i280 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i268, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i273) #7
  br label %dib3000mc_write_word.exit285

dib3000mc_write_word.exit285:                     ; preds = %if.end.i283, %dib3000mc_write_word.exit267.dib3000mc_write_word.exit285_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i268) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i286) #7
  %79 = getelementptr inbounds i8, ptr %msg.i286, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 327679, ptr %79, align 4
  %81 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %i2c_addr.i, align 4
  %83 = lshr i8 %82, 1
  %conv1.i288 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i286 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i288, ptr %msg.i286, align 4
  %flags.i289 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i289, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i291 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i292 = icmp eq ptr %call7.i.i291, null
  br i1 %tobool.not.i292, label %dib3000mc_write_word.exit285.dib3000mc_write_word.exit303_crit_edge, label %if.end.i301

dib3000mc_write_word.exit285.dib3000mc_write_word.exit303_crit_edge: ; preds = %dib3000mc_write_word.exit285
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit303

if.end.i301:                                      ; preds = %dib3000mc_write_word.exit285
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 3
  %87 = ptrtoint ptr %call7.i.i291 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %call7.i.i291, align 8
  %arrayidx6.i294 = getelementptr i8, ptr %call7.i.i291, i32 1
  %88 = ptrtoint ptr %arrayidx6.i294 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 33, ptr %arrayidx6.i294, align 1
  %arrayidx10.i295 = getelementptr i8, ptr %call7.i.i291, i32 2
  %89 = ptrtoint ptr %arrayidx10.i295 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx10.i295, align 2
  %arrayidx12.i296 = getelementptr i8, ptr %call7.i.i291, i32 3
  %90 = ptrtoint ptr %arrayidx12.i296 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 5, ptr %arrayidx12.i296, align 1
  %91 = ptrtoint ptr %buf.i293 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i291, ptr %buf.i293, align 4
  %i2c_adap.i297 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %92 = ptrtoint ptr %i2c_adap.i297 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adap.i297, align 8
  %call14.i298 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i286, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i291) #7
  br label %dib3000mc_write_word.exit303

dib3000mc_write_word.exit303:                     ; preds = %if.end.i301, %dib3000mc_write_word.exit285.dib3000mc_write_word.exit303_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i286) #7
  call fastcc void @dib3000mc_set_adp_cfg(ptr noundef %state, i16 noundef signext 1)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i304) #7
  %94 = getelementptr inbounds i8, ptr %msg.i304, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 327679, ptr %94, align 4
  %96 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %i2c_addr.i, align 4
  %98 = lshr i8 %97, 1
  %conv1.i306 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i304 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv1.i306, ptr %msg.i304, align 4
  %flags.i307 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i307 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i307, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i309 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i310 = icmp eq ptr %call7.i.i309, null
  br i1 %tobool.not.i310, label %dib3000mc_write_word.exit303.dib3000mc_write_word.exit321_crit_edge, label %if.end.i319

dib3000mc_write_word.exit303.dib3000mc_write_word.exit321_crit_edge: ; preds = %dib3000mc_write_word.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit321

if.end.i319:                                      ; preds = %dib3000mc_write_word.exit303
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i311 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304, i32 0, i32 3
  %102 = ptrtoint ptr %call7.i.i309 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %call7.i.i309, align 8
  %arrayidx6.i312 = getelementptr i8, ptr %call7.i.i309, i32 1
  %103 = ptrtoint ptr %arrayidx6.i312 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -123, ptr %arrayidx6.i312, align 1
  %arrayidx10.i313 = getelementptr i8, ptr %call7.i.i309, i32 2
  %104 = ptrtoint ptr %arrayidx10.i313 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 60, ptr %arrayidx10.i313, align 2
  %arrayidx12.i314 = getelementptr i8, ptr %call7.i.i309, i32 3
  %105 = ptrtoint ptr %arrayidx12.i314 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -52, ptr %arrayidx12.i314, align 1
  %106 = ptrtoint ptr %buf.i311 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i309, ptr %buf.i311, align 4
  %i2c_adap.i315 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %107 = ptrtoint ptr %i2c_adap.i315 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_adap.i315, align 8
  %call14.i316 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i304, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i309) #7
  br label %dib3000mc_write_word.exit321

dib3000mc_write_word.exit321:                     ; preds = %if.end.i319, %dib3000mc_write_word.exit303.dib3000mc_write_word.exit321_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i304) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i322) #7
  %109 = getelementptr inbounds i8, ptr %msg.i322, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 327679, ptr %109, align 4
  %111 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %i2c_addr.i, align 4
  %113 = lshr i8 %112, 1
  %conv1.i324 = zext i8 %113 to i16
  %114 = ptrtoint ptr %msg.i322 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv1.i324, ptr %msg.i322, align 4
  %flags.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i322, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i325 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i325, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i327 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i328 = icmp eq ptr %call7.i.i327, null
  br i1 %tobool.not.i328, label %dib3000mc_write_word.exit321.dib3000mc_write_word.exit339_crit_edge, label %if.end.i337

dib3000mc_write_word.exit321.dib3000mc_write_word.exit339_crit_edge: ; preds = %dib3000mc_write_word.exit321
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit339

if.end.i337:                                      ; preds = %dib3000mc_write_word.exit321
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i329 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i322, i32 0, i32 3
  %117 = ptrtoint ptr %call7.i.i327 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %call7.i.i327, align 8
  %arrayidx6.i330 = getelementptr i8, ptr %call7.i.i327, i32 1
  %118 = ptrtoint ptr %arrayidx6.i330 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 12, ptr %arrayidx6.i330, align 1
  %arrayidx10.i331 = getelementptr i8, ptr %call7.i.i327, i32 2
  %119 = ptrtoint ptr %arrayidx10.i331 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx10.i331, align 2
  %arrayidx12.i332 = getelementptr i8, ptr %call7.i.i327, i32 3
  %120 = ptrtoint ptr %arrayidx12.i332 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %arrayidx12.i332, align 1
  %121 = ptrtoint ptr %buf.i329 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i327, ptr %buf.i329, align 4
  %i2c_adap.i333 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %122 = ptrtoint ptr %i2c_adap.i333 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_adap.i333, align 8
  %call14.i334 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i322, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i327) #7
  br label %dib3000mc_write_word.exit339

dib3000mc_write_word.exit339:                     ; preds = %if.end.i337, %dib3000mc_write_word.exit321.dib3000mc_write_word.exit339_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i322) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i340) #7
  %124 = getelementptr inbounds i8, ptr %msg.i340, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 327679, ptr %124, align 4
  %126 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %i2c_addr.i, align 4
  %128 = lshr i8 %127, 1
  %conv1.i342 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i340 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv1.i342, ptr %msg.i340, align 4
  %flags.i343 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i340, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i343 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i343, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %131 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i345 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i346 = icmp eq ptr %call7.i.i345, null
  br i1 %tobool.not.i346, label %dib3000mc_write_word.exit339.dib3000mc_write_word.exit357_crit_edge, label %if.end.i355

dib3000mc_write_word.exit339.dib3000mc_write_word.exit357_crit_edge: ; preds = %dib3000mc_write_word.exit339
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit357

if.end.i355:                                      ; preds = %dib3000mc_write_word.exit339
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i340, i32 0, i32 3
  %132 = ptrtoint ptr %call7.i.i345 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %call7.i.i345, align 8
  %arrayidx6.i348 = getelementptr i8, ptr %call7.i.i345, i32 1
  %133 = ptrtoint ptr %arrayidx6.i348 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 13, ptr %arrayidx6.i348, align 1
  %arrayidx10.i349 = getelementptr i8, ptr %call7.i.i345, i32 2
  %134 = ptrtoint ptr %arrayidx10.i349 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 3, ptr %arrayidx10.i349, align 2
  %arrayidx12.i350 = getelementptr i8, ptr %call7.i.i345, i32 3
  %135 = ptrtoint ptr %arrayidx12.i350 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -24, ptr %arrayidx12.i350, align 1
  %136 = ptrtoint ptr %buf.i347 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i345, ptr %buf.i347, align 4
  %i2c_adap.i351 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %137 = ptrtoint ptr %i2c_adap.i351 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c_adap.i351, align 8
  %call14.i352 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i340, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i345) #7
  br label %dib3000mc_write_word.exit357

dib3000mc_write_word.exit357:                     ; preds = %if.end.i355, %dib3000mc_write_word.exit339.dib3000mc_write_word.exit357_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i340) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i358) #7
  %139 = getelementptr inbounds i8, ptr %msg.i358, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 327679, ptr %139, align 4
  %141 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %i2c_addr.i, align 4
  %143 = lshr i8 %142, 1
  %conv1.i360 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i358 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv1.i360, ptr %msg.i358, align 4
  %flags.i361 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i361 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i361, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %146 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i363 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %146, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i364 = icmp eq ptr %call7.i.i363, null
  br i1 %tobool.not.i364, label %dib3000mc_write_word.exit357.dib3000mc_write_word.exit375_crit_edge, label %if.end.i373

dib3000mc_write_word.exit357.dib3000mc_write_word.exit375_crit_edge: ; preds = %dib3000mc_write_word.exit357
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit375

if.end.i373:                                      ; preds = %dib3000mc_write_word.exit357
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358, i32 0, i32 3
  %147 = ptrtoint ptr %call7.i.i363 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %call7.i.i363, align 8
  %arrayidx6.i366 = getelementptr i8, ptr %call7.i.i363, i32 1
  %148 = ptrtoint ptr %arrayidx6.i366 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 14, ptr %arrayidx6.i366, align 1
  %arrayidx10.i367 = getelementptr i8, ptr %call7.i.i363, i32 2
  %149 = ptrtoint ptr %arrayidx10.i367 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %arrayidx10.i367, align 2
  %arrayidx12.i368 = getelementptr i8, ptr %call7.i.i363, i32 3
  %150 = ptrtoint ptr %arrayidx12.i368 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx12.i368, align 1
  %151 = ptrtoint ptr %buf.i365 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call7.i.i363, ptr %buf.i365, align 4
  %i2c_adap.i369 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %152 = ptrtoint ptr %i2c_adap.i369 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i2c_adap.i369, align 8
  %call14.i370 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i358, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i363) #7
  br label %dib3000mc_write_word.exit375

dib3000mc_write_word.exit375:                     ; preds = %if.end.i373, %dib3000mc_write_word.exit357.dib3000mc_write_word.exit375_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i358) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i376) #7
  %154 = getelementptr inbounds i8, ptr %msg.i376, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 327679, ptr %154, align 4
  %156 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %i2c_addr.i, align 4
  %158 = lshr i8 %157, 1
  %conv1.i378 = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i376 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv1.i378, ptr %msg.i376, align 4
  %flags.i379 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i376, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i379 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i379, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %161 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i381 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %161, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i382 = icmp eq ptr %call7.i.i381, null
  br i1 %tobool.not.i382, label %dib3000mc_write_word.exit375.dib3000mc_write_word.exit393_crit_edge, label %if.end.i391

dib3000mc_write_word.exit375.dib3000mc_write_word.exit393_crit_edge: ; preds = %dib3000mc_write_word.exit375
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit393

if.end.i391:                                      ; preds = %dib3000mc_write_word.exit375
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i383 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i376, i32 0, i32 3
  %162 = ptrtoint ptr %call7.i.i381 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %call7.i.i381, align 8
  %arrayidx6.i384 = getelementptr i8, ptr %call7.i.i381, i32 1
  %163 = ptrtoint ptr %arrayidx6.i384 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 15, ptr %arrayidx6.i384, align 1
  %arrayidx10.i385 = getelementptr i8, ptr %call7.i.i381, i32 2
  %164 = ptrtoint ptr %arrayidx10.i385 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 3, ptr %arrayidx10.i385, align 2
  %arrayidx12.i386 = getelementptr i8, ptr %call7.i.i381, i32 3
  %165 = ptrtoint ptr %arrayidx12.i386 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -14, ptr %arrayidx12.i386, align 1
  %166 = ptrtoint ptr %buf.i383 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call7.i.i381, ptr %buf.i383, align 4
  %i2c_adap.i387 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %167 = ptrtoint ptr %i2c_adap.i387 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i2c_adap.i387, align 8
  %call14.i388 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i376, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i381) #7
  br label %dib3000mc_write_word.exit393

dib3000mc_write_word.exit393:                     ; preds = %if.end.i391, %dib3000mc_write_word.exit375.dib3000mc_write_word.exit393_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i376) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i394) #7
  %169 = getelementptr inbounds i8, ptr %msg.i394, i32 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 327679, ptr %169, align 4
  %171 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %i2c_addr.i, align 4
  %173 = lshr i8 %172, 1
  %conv1.i396 = zext i8 %173 to i16
  %174 = ptrtoint ptr %msg.i394 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv1.i396, ptr %msg.i394, align 4
  %flags.i397 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i394, i32 0, i32 1
  %175 = ptrtoint ptr %flags.i397 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %flags.i397, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %176 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i399 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i400 = icmp eq ptr %call7.i.i399, null
  br i1 %tobool.not.i400, label %dib3000mc_write_word.exit393.dib3000mc_write_word.exit411_crit_edge, label %if.end.i409

dib3000mc_write_word.exit393.dib3000mc_write_word.exit411_crit_edge: ; preds = %dib3000mc_write_word.exit393
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit411

if.end.i409:                                      ; preds = %dib3000mc_write_word.exit393
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i394, i32 0, i32 3
  %177 = ptrtoint ptr %call7.i.i399 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %call7.i.i399, align 8
  %arrayidx6.i402 = getelementptr i8, ptr %call7.i.i399, i32 1
  %178 = ptrtoint ptr %arrayidx6.i402 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 93, ptr %arrayidx6.i402, align 1
  %arrayidx10.i403 = getelementptr i8, ptr %call7.i.i399, i32 2
  %179 = ptrtoint ptr %arrayidx10.i403 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %arrayidx10.i403, align 2
  %arrayidx12.i404 = getelementptr i8, ptr %call7.i.i399, i32 3
  %180 = ptrtoint ptr %arrayidx12.i404 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %arrayidx12.i404, align 1
  %181 = ptrtoint ptr %buf.i401 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call7.i.i399, ptr %buf.i401, align 4
  %i2c_adap.i405 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %182 = ptrtoint ptr %i2c_adap.i405 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i2c_adap.i405, align 8
  %call14.i406 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i394, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i399) #7
  br label %dib3000mc_write_word.exit411

dib3000mc_write_word.exit411:                     ; preds = %if.end.i409, %dib3000mc_write_word.exit393.dib3000mc_write_word.exit411_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i394) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i412) #7
  %184 = getelementptr inbounds i8, ptr %msg.i412, i32 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 327679, ptr %184, align 4
  %186 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %i2c_addr.i, align 4
  %188 = lshr i8 %187, 1
  %conv1.i414 = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i412 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv1.i414, ptr %msg.i412, align 4
  %flags.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i415 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i415, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %191 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i417 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %191, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i418 = icmp eq ptr %call7.i.i417, null
  br i1 %tobool.not.i418, label %dib3000mc_write_word.exit411.dib3000mc_write_word.exit429_crit_edge, label %if.end.i427

dib3000mc_write_word.exit411.dib3000mc_write_word.exit429_crit_edge: ; preds = %dib3000mc_write_word.exit411
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit429

if.end.i427:                                      ; preds = %dib3000mc_write_word.exit411
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i419 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 3
  %192 = ptrtoint ptr %call7.i.i417 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %call7.i.i417, align 8
  %arrayidx6.i420 = getelementptr i8, ptr %call7.i.i417, i32 1
  %193 = ptrtoint ptr %arrayidx6.i420 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 94, ptr %arrayidx6.i420, align 1
  %arrayidx10.i421 = getelementptr i8, ptr %call7.i.i417, i32 2
  %194 = ptrtoint ptr %arrayidx10.i421 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %arrayidx10.i421, align 2
  %arrayidx12.i422 = getelementptr i8, ptr %call7.i.i417, i32 3
  %195 = ptrtoint ptr %arrayidx12.i422 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx12.i422, align 1
  %196 = ptrtoint ptr %buf.i419 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call7.i.i417, ptr %buf.i419, align 4
  %i2c_adap.i423 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %197 = ptrtoint ptr %i2c_adap.i423 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %i2c_adap.i423, align 8
  %call14.i424 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i412, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i417) #7
  br label %dib3000mc_write_word.exit429

dib3000mc_write_word.exit429:                     ; preds = %if.end.i427, %dib3000mc_write_word.exit411.dib3000mc_write_word.exit429_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i430) #7
  %199 = getelementptr inbounds i8, ptr %msg.i430, i32 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 327679, ptr %199, align 4
  %201 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %i2c_addr.i, align 4
  %203 = lshr i8 %202, 1
  %conv1.i432 = zext i8 %203 to i16
  %204 = ptrtoint ptr %msg.i430 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv1.i432, ptr %msg.i430, align 4
  %flags.i433 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i430, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i433 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i433, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %206 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i435 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %206, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i436 = icmp eq ptr %call7.i.i435, null
  br i1 %tobool.not.i436, label %dib3000mc_write_word.exit429.dib3000mc_write_word.exit447_crit_edge, label %if.end.i445

dib3000mc_write_word.exit429.dib3000mc_write_word.exit447_crit_edge: ; preds = %dib3000mc_write_word.exit429
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit447

if.end.i445:                                      ; preds = %dib3000mc_write_word.exit429
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i437 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i430, i32 0, i32 3
  %207 = ptrtoint ptr %call7.i.i435 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %call7.i.i435, align 8
  %arrayidx6.i438 = getelementptr i8, ptr %call7.i.i435, i32 1
  %208 = ptrtoint ptr %arrayidx6.i438 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 95, ptr %arrayidx6.i438, align 1
  %arrayidx10.i439 = getelementptr i8, ptr %call7.i.i435, i32 2
  %209 = ptrtoint ptr %arrayidx10.i439 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %arrayidx10.i439, align 2
  %arrayidx12.i440 = getelementptr i8, ptr %call7.i.i435, i32 3
  %210 = ptrtoint ptr %arrayidx12.i440 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %arrayidx12.i440, align 1
  %211 = ptrtoint ptr %buf.i437 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call7.i.i435, ptr %buf.i437, align 4
  %i2c_adap.i441 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %212 = ptrtoint ptr %i2c_adap.i441 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %i2c_adap.i441, align 8
  %call14.i442 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %msg.i430, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i435) #7
  br label %dib3000mc_write_word.exit447

dib3000mc_write_word.exit447:                     ; preds = %if.end.i445, %dib3000mc_write_word.exit429.dib3000mc_write_word.exit447_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i430) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i448) #7
  %214 = getelementptr inbounds i8, ptr %msg.i448, i32 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 327679, ptr %214, align 4
  %216 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %i2c_addr.i, align 4
  %218 = lshr i8 %217, 1
  %conv1.i450 = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i448 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv1.i450, ptr %msg.i448, align 4
  %flags.i451 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i448, i32 0, i32 1
  %220 = ptrtoint ptr %flags.i451 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %flags.i451, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %221 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i453 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %221, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i454 = icmp eq ptr %call7.i.i453, null
  br i1 %tobool.not.i454, label %dib3000mc_write_word.exit447.dib3000mc_write_word.exit465_crit_edge, label %if.end.i463

dib3000mc_write_word.exit447.dib3000mc_write_word.exit465_crit_edge: ; preds = %dib3000mc_write_word.exit447
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit465

if.end.i463:                                      ; preds = %dib3000mc_write_word.exit447
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i455 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i448, i32 0, i32 3
  %222 = ptrtoint ptr %call7.i.i453 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %call7.i.i453, align 8
  %arrayidx6.i456 = getelementptr i8, ptr %call7.i.i453, i32 1
  %223 = ptrtoint ptr %arrayidx6.i456 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 96, ptr %arrayidx6.i456, align 1
  %arrayidx10.i457 = getelementptr i8, ptr %call7.i.i453, i32 2
  %224 = ptrtoint ptr %arrayidx10.i457 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %arrayidx10.i457, align 2
  %arrayidx12.i458 = getelementptr i8, ptr %call7.i.i453, i32 3
  %225 = ptrtoint ptr %arrayidx12.i458 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %arrayidx12.i458, align 1
  %226 = ptrtoint ptr %buf.i455 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call7.i.i453, ptr %buf.i455, align 4
  %i2c_adap.i459 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %227 = ptrtoint ptr %i2c_adap.i459 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %i2c_adap.i459, align 8
  %call14.i460 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %msg.i448, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i453) #7
  br label %dib3000mc_write_word.exit465

dib3000mc_write_word.exit465:                     ; preds = %if.end.i463, %dib3000mc_write_word.exit447.dib3000mc_write_word.exit465_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i448) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i466) #7
  %229 = getelementptr inbounds i8, ptr %msg.i466, i32 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 327679, ptr %229, align 4
  %231 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %i2c_addr.i, align 4
  %233 = lshr i8 %232, 1
  %conv1.i468 = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i466 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv1.i468, ptr %msg.i466, align 4
  %flags.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i469 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i469, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %236 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i471 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %236, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i472 = icmp eq ptr %call7.i.i471, null
  br i1 %tobool.not.i472, label %dib3000mc_write_word.exit465.dib3000mc_write_word.exit483_crit_edge, label %if.end.i481

dib3000mc_write_word.exit465.dib3000mc_write_word.exit483_crit_edge: ; preds = %dib3000mc_write_word.exit465
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit483

if.end.i481:                                      ; preds = %dib3000mc_write_word.exit465
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i473 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 3
  %237 = ptrtoint ptr %call7.i.i471 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %call7.i.i471, align 8
  %arrayidx6.i474 = getelementptr i8, ptr %call7.i.i471, i32 1
  %238 = ptrtoint ptr %arrayidx6.i474 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 97, ptr %arrayidx6.i474, align 1
  %arrayidx10.i475 = getelementptr i8, ptr %call7.i.i471, i32 2
  %239 = ptrtoint ptr %arrayidx10.i475 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %arrayidx10.i475, align 2
  %arrayidx12.i476 = getelementptr i8, ptr %call7.i.i471, i32 3
  %240 = ptrtoint ptr %arrayidx12.i476 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %arrayidx12.i476, align 1
  %241 = ptrtoint ptr %buf.i473 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call7.i.i471, ptr %buf.i473, align 4
  %i2c_adap.i477 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %242 = ptrtoint ptr %i2c_adap.i477 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i2c_adap.i477, align 8
  %call14.i478 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %msg.i466, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i471) #7
  br label %dib3000mc_write_word.exit483

dib3000mc_write_word.exit483:                     ; preds = %if.end.i481, %dib3000mc_write_word.exit465.dib3000mc_write_word.exit483_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i466) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i484) #7
  %244 = getelementptr inbounds i8, ptr %msg.i484, i32 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 327679, ptr %244, align 4
  %246 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %i2c_addr.i, align 4
  %248 = lshr i8 %247, 1
  %conv1.i486 = zext i8 %248 to i16
  %249 = ptrtoint ptr %msg.i484 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv1.i486, ptr %msg.i484, align 4
  %flags.i487 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i484, i32 0, i32 1
  %250 = ptrtoint ptr %flags.i487 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %flags.i487, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %251 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i489 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %251, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i490 = icmp eq ptr %call7.i.i489, null
  br i1 %tobool.not.i490, label %dib3000mc_write_word.exit483.dib3000mc_write_word.exit501_crit_edge, label %if.end.i499

dib3000mc_write_word.exit483.dib3000mc_write_word.exit501_crit_edge: ; preds = %dib3000mc_write_word.exit483
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit501

if.end.i499:                                      ; preds = %dib3000mc_write_word.exit483
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i484, i32 0, i32 3
  %252 = ptrtoint ptr %call7.i.i489 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %call7.i.i489, align 8
  %arrayidx6.i492 = getelementptr i8, ptr %call7.i.i489, i32 1
  %253 = ptrtoint ptr %arrayidx6.i492 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 98, ptr %arrayidx6.i492, align 1
  %arrayidx10.i493 = getelementptr i8, ptr %call7.i.i489, i32 2
  %254 = ptrtoint ptr %arrayidx10.i493 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx10.i493, align 2
  %arrayidx12.i494 = getelementptr i8, ptr %call7.i.i489, i32 3
  %255 = ptrtoint ptr %arrayidx12.i494 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %arrayidx12.i494, align 1
  %256 = ptrtoint ptr %buf.i491 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call7.i.i489, ptr %buf.i491, align 4
  %i2c_adap.i495 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %257 = ptrtoint ptr %i2c_adap.i495 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %i2c_adap.i495, align 8
  %call14.i496 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %msg.i484, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i489) #7
  br label %dib3000mc_write_word.exit501

dib3000mc_write_word.exit501:                     ; preds = %if.end.i499, %dib3000mc_write_word.exit483.dib3000mc_write_word.exit501_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i484) #7
  %259 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %transmission_mode, align 4
  %conv20 = trunc i32 %260 to i16
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %state, i8 noundef zeroext 0, i16 noundef signext %conv20)
  %261 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cond = icmp eq i32 %262, 0
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 8
  %263 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %guard_interval, align 4
  %extract.t645 = select i1 %cond, i8 0, i8 -128
  %265 = zext i32 %264 to i64
  call void @__sanitizer_cov_trace_switch(i64 %265, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %264, label %sw.bb41 [
    i32 0, label %dib3000mc_write_word.exit501.sw.epilog45_crit_edge
    i32 1, label %sw.bb32
    i32 3, label %sw.bb36
  ]

dib3000mc_write_word.exit501.sw.epilog45_crit_edge: ; preds = %dib3000mc_write_word.exit501
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog45

sw.bb32:                                          ; preds = %dib3000mc_write_word.exit501
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t644 = or i8 %extract.t645, 32
  br label %sw.epilog45

sw.bb36:                                          ; preds = %dib3000mc_write_word.exit501
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t643 = or i8 %extract.t645, 96
  br label %sw.epilog45

sw.bb41:                                          ; preds = %dib3000mc_write_word.exit501
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t642 = or i8 %extract.t645, 64
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.bb41, %sw.bb36, %sw.bb32, %dib3000mc_write_word.exit501.sw.epilog45_crit_edge
  %value.1.off0 = phi i8 [ %extract.t642, %sw.bb41 ], [ %extract.t643, %sw.bb36 ], [ %extract.t644, %sw.bb32 ], [ %extract.t645, %dib3000mc_write_word.exit501.sw.epilog45_crit_edge ]
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 1
  %266 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %modulation, align 4
  %268 = zext i32 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %267, label %sw.bb55 [
    i32 0, label %sw.epilog45.sw.epilog59_crit_edge
    i32 1, label %sw.bb50
  ]

sw.epilog45.sw.epilog59_crit_edge:                ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog59

sw.bb50:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t620 = or i8 %value.1.off0, 8
  br label %sw.epilog59

sw.bb55:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t = or i8 %value.1.off0, 16
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.bb55, %sw.bb50, %sw.epilog45.sw.epilog59_crit_edge
  %value.2.off0 = phi i8 [ %extract.t, %sw.bb55 ], [ %extract.t620, %sw.bb50 ], [ %value.1.off0, %sw.epilog45.sw.epilog59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i502) #7
  %269 = getelementptr inbounds i8, ptr %msg.i502, i32 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 327679, ptr %269, align 4
  %271 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %i2c_addr.i, align 4
  %273 = lshr i8 %272, 1
  %conv1.i504 = zext i8 %273 to i16
  %274 = ptrtoint ptr %msg.i502 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %conv1.i504, ptr %msg.i502, align 4
  %flags.i505 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i502, i32 0, i32 1
  %275 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %flags.i505, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %276 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i507 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %276, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i508 = icmp eq ptr %call7.i.i507, null
  br i1 %tobool.not.i508, label %sw.epilog59.dib3000mc_write_word.exit519_crit_edge, label %if.end.i517

sw.epilog59.dib3000mc_write_word.exit519_crit_edge: ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit519

if.end.i517:                                      ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i509 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i502, i32 0, i32 3
  %277 = ptrtoint ptr %call7.i.i507 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %call7.i.i507, align 8
  %arrayidx6.i510 = getelementptr i8, ptr %call7.i.i507, i32 1
  %278 = ptrtoint ptr %arrayidx6.i510 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 0, ptr %arrayidx6.i510, align 1
  %arrayidx10.i511 = getelementptr i8, ptr %call7.i.i507, i32 2
  %279 = ptrtoint ptr %arrayidx10.i511 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %arrayidx10.i511, align 2
  %conv11.i = or i8 %value.2.off0, 1
  %arrayidx12.i512 = getelementptr i8, ptr %call7.i.i507, i32 3
  %280 = ptrtoint ptr %arrayidx12.i512 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv11.i, ptr %arrayidx12.i512, align 1
  %281 = ptrtoint ptr %buf.i509 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call7.i.i507, ptr %buf.i509, align 4
  %i2c_adap.i513 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %282 = ptrtoint ptr %i2c_adap.i513 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %i2c_adap.i513, align 8
  %call14.i514 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %msg.i502, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i507) #7
  br label %dib3000mc_write_word.exit519

dib3000mc_write_word.exit519:                     ; preds = %if.end.i517, %sw.epilog59.dib3000mc_write_word.exit519_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i502) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i520) #7
  %284 = getelementptr inbounds i8, ptr %msg.i520, i32 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 327679, ptr %284, align 4
  %286 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %i2c_addr.i, align 4
  %288 = lshr i8 %287, 1
  %conv1.i522 = zext i8 %288 to i16
  %289 = ptrtoint ptr %msg.i520 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv1.i522, ptr %msg.i520, align 4
  %flags.i523 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i520, i32 0, i32 1
  %290 = ptrtoint ptr %flags.i523 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 0, ptr %flags.i523, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %291 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i525 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %291, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i526 = icmp eq ptr %call7.i.i525, null
  br i1 %tobool.not.i526, label %dib3000mc_write_word.exit519.dib3000mc_write_word.exit539_crit_edge, label %if.end.i537

dib3000mc_write_word.exit519.dib3000mc_write_word.exit539_crit_edge: ; preds = %dib3000mc_write_word.exit519
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit539

if.end.i537:                                      ; preds = %dib3000mc_write_word.exit519
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i527 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i520, i32 0, i32 3
  %292 = ptrtoint ptr %call7.i.i525 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %call7.i.i525, align 8
  %arrayidx6.i528 = getelementptr i8, ptr %call7.i.i525, i32 1
  %293 = ptrtoint ptr %arrayidx6.i528 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 5, ptr %arrayidx6.i528, align 1
  %arrayidx10.i530 = getelementptr i8, ptr %call7.i.i525, i32 2
  %294 = ptrtoint ptr %arrayidx10.i530 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 1, ptr %arrayidx10.i530, align 2
  %seq.tr = trunc i16 %seq to i8
  %conv11.i531 = shl i8 %seq.tr, 4
  %arrayidx12.i532 = getelementptr i8, ptr %call7.i.i525, i32 3
  %295 = ptrtoint ptr %arrayidx12.i532 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv11.i531, ptr %arrayidx12.i532, align 1
  %296 = ptrtoint ptr %buf.i527 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call7.i.i525, ptr %buf.i527, align 4
  %i2c_adap.i533 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %297 = ptrtoint ptr %i2c_adap.i533 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %i2c_adap.i533, align 8
  %call14.i534 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %msg.i520, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i525) #7
  br label %dib3000mc_write_word.exit539

dib3000mc_write_word.exit539:                     ; preds = %if.end.i537, %dib3000mc_write_word.exit519.dib3000mc_write_word.exit539_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i520) #7
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 9
  %299 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %300)
  %cmp = icmp eq i32 %300, 1
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 11
  %301 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %code_rate_HP, align 4
  %switch.tableidx = add i32 %302, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %303 = icmp ult i32 %switch.tableidx, 6
  br i1 %303, label %switch.lookup, label %dib3000mc_write_word.exit539.sw.epilog99_crit_edge

dib3000mc_write_word.exit539.sw.epilog99_crit_edge: ; preds = %dib3000mc_write_word.exit539
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99

switch.lookup:                                    ; preds = %dib3000mc_write_word.exit539
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.dib3000mc_set_channel_cfg, i32 0, i32 %switch.tableidx
  %304 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %304)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog99

sw.epilog99:                                      ; preds = %switch.lookup, %dib3000mc_write_word.exit539.sw.epilog99_crit_edge
  %.sink654 = phi i8 [ %switch.load, %switch.lookup ], [ 2, %dib3000mc_write_word.exit539.sw.epilog99_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i540) #7
  %305 = getelementptr inbounds i8, ptr %msg.i540, i32 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 327679, ptr %305, align 4
  %307 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %i2c_addr.i, align 4
  %309 = lshr i8 %308, 1
  %conv1.i542 = zext i8 %309 to i16
  %310 = ptrtoint ptr %msg.i540 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %conv1.i542, ptr %msg.i540, align 4
  %flags.i543 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540, i32 0, i32 1
  %311 = ptrtoint ptr %flags.i543 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 0, ptr %flags.i543, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %312 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i545 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %312, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i546 = icmp eq ptr %call7.i.i545, null
  br i1 %tobool.not.i546, label %sw.epilog99.dib3000mc_write_word.exit559_crit_edge, label %if.end.i557

sw.epilog99.dib3000mc_write_word.exit559_crit_edge: ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit559

if.end.i557:                                      ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  %313 = select i1 %cmp, i8 17, i8 1
  %extract.t627 = or i8 %313, %.sink654
  %buf.i547 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540, i32 0, i32 3
  %314 = ptrtoint ptr %call7.i.i545 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 0, ptr %call7.i.i545, align 8
  %arrayidx6.i548 = getelementptr i8, ptr %call7.i.i545, i32 1
  %315 = ptrtoint ptr %arrayidx6.i548 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 -75, ptr %arrayidx6.i548, align 1
  %arrayidx10.i550 = getelementptr i8, ptr %call7.i.i545, i32 2
  %316 = ptrtoint ptr %arrayidx10.i550 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %arrayidx10.i550, align 2
  %arrayidx12.i552 = getelementptr i8, ptr %call7.i.i545, i32 3
  %317 = ptrtoint ptr %arrayidx12.i552 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %extract.t627, ptr %arrayidx12.i552, align 1
  %318 = ptrtoint ptr %buf.i547 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %call7.i.i545, ptr %buf.i547, align 4
  %i2c_adap.i553 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %319 = ptrtoint ptr %i2c_adap.i553 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %i2c_adap.i553, align 8
  %call14.i554 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %msg.i540, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i545) #7
  br label %dib3000mc_write_word.exit559

dib3000mc_write_word.exit559:                     ; preds = %if.end.i557, %sw.epilog99.dib3000mc_write_word.exit559_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i540) #7
  %321 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %322)
  %cond142 = icmp eq i32 %322, 1
  %.213 = select i1 %cond142, i16 256, i16 64
  %323 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %guard_interval, align 4
  %325 = zext i32 %324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %325, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %324, label %dib3000mc_write_word.exit559.sw.epilog123_crit_edge [
    i32 1, label %sw.bb107
    i32 2, label %sw.bb110
    i32 3, label %sw.bb114
  ]

dib3000mc_write_word.exit559.sw.epilog123_crit_edge: ; preds = %dib3000mc_write_word.exit559
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog123

sw.bb107:                                         ; preds = %dib3000mc_write_word.exit559
  call void @__sanitizer_cov_trace_pc() #9
  %326 = shl nuw nsw i16 %.213, 1
  br label %sw.epilog123

sw.bb110:                                         ; preds = %dib3000mc_write_word.exit559
  call void @__sanitizer_cov_trace_pc() #9
  %327 = shl nuw nsw i16 %.213, 2
  br label %sw.epilog123

sw.bb114:                                         ; preds = %dib3000mc_write_word.exit559
  call void @__sanitizer_cov_trace_pc() #9
  %328 = shl nuw nsw i16 %.213, 3
  br label %sw.epilog123

sw.epilog123:                                     ; preds = %sw.bb114, %sw.bb110, %sw.bb107, %dib3000mc_write_word.exit559.sw.epilog123_crit_edge
  %value.6 = phi i16 [ %328, %sw.bb114 ], [ %327, %sw.bb110 ], [ %326, %sw.bb107 ], [ %.213, %dib3000mc_write_word.exit559.sw.epilog123_crit_edge ]
  %call127 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 180)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i560) #7
  %329 = getelementptr inbounds i8, ptr %msg.i560, i32 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 327679, ptr %329, align 4
  %331 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %i2c_addr.i, align 4
  %333 = lshr i8 %332, 1
  %conv1.i562 = zext i8 %333 to i16
  %334 = ptrtoint ptr %msg.i560 to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %conv1.i562, ptr %msg.i560, align 4
  %flags.i563 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i560, i32 0, i32 1
  %335 = ptrtoint ptr %flags.i563 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 0, ptr %flags.i563, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %336 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i565 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %336, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i566 = icmp eq ptr %call7.i.i565, null
  br i1 %tobool.not.i566, label %sw.epilog123.dib3000mc_write_word.exit579_crit_edge, label %if.end.i577

sw.epilog123.dib3000mc_write_word.exit579_crit_edge: ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit579

if.end.i577:                                      ; preds = %sw.epilog123
  call void @__sanitizer_cov_trace_pc() #9
  %shl125 = shl nuw i16 %value.6, 4
  %337 = and i16 %call127, 15
  %or131212 = or i16 %337, %shl125
  %buf.i567 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i560, i32 0, i32 3
  %338 = ptrtoint ptr %call7.i.i565 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %call7.i.i565, align 8
  %arrayidx6.i568 = getelementptr i8, ptr %call7.i.i565, i32 1
  %339 = ptrtoint ptr %arrayidx6.i568 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 -76, ptr %arrayidx6.i568, align 1
  %340 = lshr i16 %value.6, 4
  %conv9.i569 = trunc i16 %340 to i8
  %arrayidx10.i570 = getelementptr i8, ptr %call7.i.i565, i32 2
  %341 = ptrtoint ptr %arrayidx10.i570 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %conv9.i569, ptr %arrayidx10.i570, align 2
  %conv11.i571 = trunc i16 %or131212 to i8
  %arrayidx12.i572 = getelementptr i8, ptr %call7.i.i565, i32 3
  %342 = ptrtoint ptr %arrayidx12.i572 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv11.i571, ptr %arrayidx12.i572, align 1
  %343 = ptrtoint ptr %buf.i567 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call7.i.i565, ptr %buf.i567, align 4
  %i2c_adap.i573 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %344 = ptrtoint ptr %i2c_adap.i573 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %i2c_adap.i573, align 8
  %call14.i574 = call i32 @i2c_transfer(ptr noundef %345, ptr noundef nonnull %msg.i560, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i565) #7
  br label %dib3000mc_write_word.exit579

dib3000mc_write_word.exit579:                     ; preds = %if.end.i577, %sw.epilog123.dib3000mc_write_word.exit579_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i560) #7
  %call134 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %state, i16 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i580) #7
  %346 = getelementptr inbounds i8, ptr %msg.i580, i32 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 327679, ptr %346, align 4
  %348 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %i2c_addr.i, align 4
  %350 = lshr i8 %349, 1
  %conv1.i582 = zext i8 %350 to i16
  %351 = ptrtoint ptr %msg.i580 to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %conv1.i582, ptr %msg.i580, align 4
  %flags.i583 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i580, i32 0, i32 1
  %352 = ptrtoint ptr %flags.i583 to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 0, ptr %flags.i583, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %353 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i585 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %353, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i586 = icmp eq ptr %call7.i.i585, null
  br i1 %tobool.not.i586, label %dib3000mc_write_word.exit579.dib3000mc_write_word.exit599_crit_edge, label %if.end.i597

dib3000mc_write_word.exit579.dib3000mc_write_word.exit599_crit_edge: ; preds = %dib3000mc_write_word.exit579
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit599

if.end.i597:                                      ; preds = %dib3000mc_write_word.exit579
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i587 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i580, i32 0, i32 3
  %354 = ptrtoint ptr %call7.i.i585 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %call7.i.i585, align 8
  %arrayidx6.i588 = getelementptr i8, ptr %call7.i.i585, i32 1
  %355 = ptrtoint ptr %arrayidx6.i588 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 0, ptr %arrayidx6.i588, align 1
  %356 = lshr i16 %call134, 8
  %357 = trunc i16 %356 to i8
  %conv9.i589 = or i8 %357, 2
  %arrayidx10.i590 = getelementptr i8, ptr %call7.i.i585, i32 2
  %358 = ptrtoint ptr %arrayidx10.i590 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv9.i589, ptr %arrayidx10.i590, align 2
  %conv11.i591 = trunc i16 %call134 to i8
  %arrayidx12.i592 = getelementptr i8, ptr %call7.i.i585, i32 3
  %359 = ptrtoint ptr %arrayidx12.i592 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %conv11.i591, ptr %arrayidx12.i592, align 1
  %360 = ptrtoint ptr %buf.i587 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call7.i.i585, ptr %buf.i587, align 4
  %i2c_adap.i593 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %361 = ptrtoint ptr %i2c_adap.i593 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %i2c_adap.i593, align 8
  %call14.i594 = call i32 @i2c_transfer(ptr noundef %362, ptr noundef nonnull %msg.i580, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i585) #7
  br label %dib3000mc_write_word.exit599

dib3000mc_write_word.exit599:                     ; preds = %if.end.i597, %dib3000mc_write_word.exit579.dib3000mc_write_word.exit599_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i580) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i600) #7
  %363 = getelementptr inbounds i8, ptr %msg.i600, i32 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 327679, ptr %363, align 4
  %365 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %i2c_addr.i, align 4
  %367 = lshr i8 %366, 1
  %conv1.i602 = zext i8 %367 to i16
  %368 = ptrtoint ptr %msg.i600 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv1.i602, ptr %msg.i600, align 4
  %flags.i603 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i600, i32 0, i32 1
  %369 = ptrtoint ptr %flags.i603 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 0, ptr %flags.i603, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %370 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i605 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %370, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i606 = icmp eq ptr %call7.i.i605, null
  br i1 %tobool.not.i606, label %dib3000mc_write_word.exit599.dib3000mc_write_word.exit619_crit_edge, label %if.end.i617

dib3000mc_write_word.exit599.dib3000mc_write_word.exit619_crit_edge: ; preds = %dib3000mc_write_word.exit599
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit619

if.end.i617:                                      ; preds = %dib3000mc_write_word.exit599
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i607 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i600, i32 0, i32 3
  %371 = ptrtoint ptr %call7.i.i605 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %call7.i.i605, align 8
  %arrayidx6.i608 = getelementptr i8, ptr %call7.i.i605, i32 1
  %372 = ptrtoint ptr %arrayidx6.i608 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %arrayidx6.i608, align 1
  %373 = lshr i16 %call134, 8
  %conv9.i609 = trunc i16 %373 to i8
  %arrayidx10.i610 = getelementptr i8, ptr %call7.i.i605, i32 2
  %374 = ptrtoint ptr %arrayidx10.i610 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv9.i609, ptr %arrayidx10.i610, align 2
  %conv11.i611 = trunc i16 %call134 to i8
  %arrayidx12.i612 = getelementptr i8, ptr %call7.i.i605, i32 3
  %375 = ptrtoint ptr %arrayidx12.i612 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv11.i611, ptr %arrayidx12.i612, align 1
  %376 = ptrtoint ptr %buf.i607 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %call7.i.i605, ptr %buf.i607, align 4
  %i2c_adap.i613 = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  %377 = ptrtoint ptr %i2c_adap.i613 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %i2c_adap.i613, align 8
  %call14.i614 = call i32 @i2c_transfer(ptr noundef %378, ptr noundef nonnull %msg.i600, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i605) #7
  br label %dib3000mc_write_word.exit619

dib3000mc_write_word.exit619:                     ; preds = %if.end.i617, %dib3000mc_write_word.exit599.dib3000mc_write_word.exit619_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i600) #7
  call void @msleep(i32 noundef 30) #7
  %cfg = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 1
  %379 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cfg, align 8
  %impulse_noise_mode = getelementptr inbounds %struct.dib3000mc_config, ptr %380, i32 0, i32 2
  %381 = ptrtoint ptr %impulse_noise_mode to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %impulse_noise_mode, align 1
  %383 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %transmission_mode, align 4
  %conv141 = trunc i32 %384 to i16
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %state, i8 noundef zeroext %382, i16 noundef signext %conv141)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_adp_cfg(ptr nocapture noundef readonly %state, i16 noundef signext %qam) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %qam)
  %0 = icmp ult i16 %qam, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i16 %qam to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 -134156048, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.cast23 = zext i16 %qam to i32
  %switch.shiftamt24 = shl nuw nsw i32 %switch.cast23, 3
  %switch.downshift25 = lshr i32 -1543461837, %switch.shiftamt24
  %switch.masked26 = trunc i32 %switch.downshift25 to i8
  %switch.cast27 = zext i16 %qam to i32
  %switch.shiftamt28 = shl nuw nsw i32 %switch.cast27, 3
  %switch.downshift29 = lshr i32 3, %switch.shiftamt28
  %switch.masked30 = trunc i32 %switch.downshift29 to i8
  %switch.cast31 = zext i16 %qam to i32
  %switch.shiftamt32 = shl nuw nsw i32 %switch.cast31, 3
  %switch.downshift33 = lshr i32 -268378194, %switch.shiftamt32
  %switch.masked34 = trunc i32 %switch.downshift33 to i8
  %switch.cast35 = zext i16 %qam to i32
  %switch.shiftamt36 = shl nuw nsw i32 %switch.cast35, 3
  %switch.downshift37 = lshr i32 2130739071, %switch.shiftamt36
  %switch.masked38 = trunc i32 %switch.downshift37 to i8
  %switch.cast39 = zext i16 %qam to i32
  %switch.shiftamt40 = shl nuw nsw i32 %switch.cast39, 3
  %switch.downshift41 = lshr i32 1207975322, %switch.shiftamt40
  %switch.masked42 = trunc i32 %switch.downshift41 to i8
  %switch.cast43 = zext i16 %qam to i32
  %switch.shiftamt44 = shl nuw nsw i32 %switch.cast43, 3
  %switch.downshift45 = lshr i32 16777737, %switch.shiftamt44
  %switch.masked46 = trunc i32 %switch.downshift45 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cfg.sroa.15.0.off0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked, %switch.lookup ]
  %cfg.sroa.11.0.off0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked26, %switch.lookup ]
  %cfg.sroa.11.0.off8 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked30, %switch.lookup ]
  %cfg.sroa.7.0.off0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked34, %switch.lookup ]
  %cfg.sroa.7.0.off8 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked38, %switch.lookup ]
  %cfg.sroa.0.0.off0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked42, %switch.lookup ]
  %cfg.sroa.0.0.off8 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.masked46, %switch.lookup ]
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %i2c_addr.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.dib3000mc_state, ptr %state, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 327679, ptr %1, align 4
  %3 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i2c_addr.i, align 4
  %5 = lshr i8 %4, 1
  %conv1.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv1.i, ptr %msg.i, align 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.dib3000mc_write_word.exit_crit_edge, label %if.end.i

sw.epilog.dib3000mc_write_word.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %arrayidx6.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i, i32 2
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cfg.sroa.0.0.off8, ptr %arrayidx10.i, align 2
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 3
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cfg.sroa.0.0.off0, ptr %arrayidx12.i, align 1
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %14 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %dib3000mc_write_word.exit

dib3000mc_write_word.exit:                        ; preds = %if.end.i, %sw.epilog.dib3000mc_write_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 327679, ptr %1, align 4
  %17 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr.i, align 4
  %19 = lshr i8 %18, 1
  %conv1.i.1 = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv1.i.1, ptr %msg.i, align 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.i.1, label %dib3000mc_write_word.exit.dib3000mc_write_word.exit.1_crit_edge, label %if.end.i.1

dib3000mc_write_word.exit.dib3000mc_write_word.exit.1_crit_edge: ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.1

if.end.i.1:                                       ; preds = %dib3000mc_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call7.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %call7.i.i.1, align 8
  %arrayidx6.i.1 = getelementptr i8, ptr %call7.i.i.1, i32 1
  %24 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -126, ptr %arrayidx6.i.1, align 1
  %arrayidx10.i.1 = getelementptr i8, ptr %call7.i.i.1, i32 2
  %25 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cfg.sroa.7.0.off8, ptr %arrayidx10.i.1, align 2
  %arrayidx12.i.1 = getelementptr i8, ptr %call7.i.i.1, i32 3
  %26 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cfg.sroa.7.0.off0, ptr %arrayidx12.i.1, align 1
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.1, ptr %buf.i, align 4
  %28 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i.1 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.1) #7
  br label %dib3000mc_write_word.exit.1

dib3000mc_write_word.exit.1:                      ; preds = %if.end.i.1, %dib3000mc_write_word.exit.dib3000mc_write_word.exit.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 327679, ptr %1, align 4
  %31 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i2c_addr.i, align 4
  %33 = lshr i8 %32, 1
  %conv1.i.2 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv1.i.2, ptr %msg.i, align 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool.not.i.2, label %dib3000mc_write_word.exit.1.dib3000mc_write_word.exit.2_crit_edge, label %if.end.i.2

dib3000mc_write_word.exit.1.dib3000mc_write_word.exit.2_crit_edge: ; preds = %dib3000mc_write_word.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.2

if.end.i.2:                                       ; preds = %dib3000mc_write_word.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call7.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %call7.i.i.2, align 8
  %arrayidx6.i.2 = getelementptr i8, ptr %call7.i.i.2, i32 1
  %38 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -125, ptr %arrayidx6.i.2, align 1
  %arrayidx10.i.2 = getelementptr i8, ptr %call7.i.i.2, i32 2
  %39 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %cfg.sroa.11.0.off8, ptr %arrayidx10.i.2, align 2
  %arrayidx12.i.2 = getelementptr i8, ptr %call7.i.i.2, i32 3
  %40 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %cfg.sroa.11.0.off0, ptr %arrayidx12.i.2, align 1
  %41 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.2, ptr %buf.i, align 4
  %42 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i.2 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.2) #7
  br label %dib3000mc_write_word.exit.2

dib3000mc_write_word.exit.2:                      ; preds = %if.end.i.2, %dib3000mc_write_word.exit.1.dib3000mc_write_word.exit.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 327679, ptr %1, align 4
  %45 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i2c_addr.i, align 4
  %47 = lshr i8 %46, 1
  %conv1.i.3 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv1.i.3, ptr %msg.i, align 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.3 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not.i.3 = icmp eq ptr %call7.i.i.3, null
  br i1 %tobool.not.i.3, label %dib3000mc_write_word.exit.2.dib3000mc_write_word.exit.3_crit_edge, label %if.end.i.3

dib3000mc_write_word.exit.2.dib3000mc_write_word.exit.3_crit_edge: ; preds = %dib3000mc_write_word.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mc_write_word.exit.3

if.end.i.3:                                       ; preds = %dib3000mc_write_word.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call7.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %call7.i.i.3, align 8
  %arrayidx6.i.3 = getelementptr i8, ptr %call7.i.i.3, i32 1
  %52 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -124, ptr %arrayidx6.i.3, align 1
  %arrayidx10.i.3 = getelementptr i8, ptr %call7.i.i.3, i32 2
  %53 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %cfg.sroa.7.0.off8, ptr %arrayidx10.i.3, align 2
  %arrayidx12.i.3 = getelementptr i8, ptr %call7.i.i.3, i32 3
  %54 = ptrtoint ptr %arrayidx12.i.3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %cfg.sroa.15.0.off0, ptr %arrayidx12.i.3, align 1
  %55 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.3, ptr %buf.i, align 4
  %56 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_adap.i, align 8
  %call14.i.3 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.3) #7
  br label %dib3000mc_write_word.exit.3

dib3000mc_write_word.exit.3:                      ; preds = %if.end.i.3, %dib3000mc_write_word.exit.2.dib3000mc_write_word.exit.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 23, i32 1}
!5 = !{ptr @__param_buggy_sfn_workaround, !6, !"__param_buggy_sfn_workaround", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_buggy_sfn_workaroundtype292, !6, !"__UNIQUE_ID_buggy_sfn_workaroundtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_buggy_sfn_workaround293, !9, !"__UNIQUE_ID_buggy_sfn_workaround293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 27, i32 1}
!10 = !{ptr @__ksymtab_dib3000mc_get_tuner_i2c_master, !11, !"__ksymtab_dib3000mc_get_tuner_i2c_master", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 668, i32 1}
!12 = !{ptr @__ksymtab_dib3000mc_pid_control, !13, !"__ksymtab_dib3000mc_pid_control", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 838, i32 1}
!14 = !{ptr @__ksymtab_dib3000mc_pid_parse, !15, !"__ksymtab_dib3000mc_pid_parse", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 847, i32 1}
!16 = !{ptr @__ksymtab_dib3000mc_set_config, !17, !"__ksymtab_dib3000mc_set_config", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 854, i32 1}
!18 = !{ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, !19, !"DIB3000MC_I2C_ADDRESS", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 862, i32 12}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 879, i32 5}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dib3000mc_i2c_enumeration._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @dib3000mc_i2c_enumeration._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_dib3000mc_i2c_enumeration, !27, !"__ksymtab_dib3000mc_i2c_enumeration", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 905, i32 1}
!28 = !{ptr @__ksymtab_dib3000mc_attach, !29, !"__ksymtab_dib3000mc_attach", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 938, i32 1}
!30 = !{ptr @__UNIQUE_ID_author294, !31, !"__UNIQUE_ID_author294", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 973, i32 1}
!32 = !{ptr @__UNIQUE_ID_description295, !33, !"__UNIQUE_ID_description295", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 974, i32 1}
!34 = !{ptr @__UNIQUE_ID_file296, !35, !"__UNIQUE_ID_file296", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 975, i32 1}
!36 = !{ptr @__UNIQUE_ID_license297, !35, !"__UNIQUE_ID_license297", i1 false, i1 false}
!37 = !{ptr @debug, !38, !"debug", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 21, i32 12}
!39 = !{ptr @buggy_sfn_workaround, !40, !"buggy_sfn_workaround", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 25, i32 12}
!41 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!42 = !{ptr @__param_str_buggy_sfn_workaround, !6, !"__param_str_buggy_sfn_workaround", i1 false, i1 false}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 75, i32 3}
!45 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dib3000mc_read_word._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dib3000mc_read_word._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 112, i32 3}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dib3000mc_identify._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dib3000mc_identify._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 118, i32 3}
!55 = !{ptr @dib3000mc_identify._entry.7, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dib3000mc_identify._entry_ptr.9, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 123, i32 2}
!59 = !{ptr @dib3000mc_identify._entry.10, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dib3000mc_identify._entry_ptr.12, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 193, i32 2}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dib3000mc_set_output_mode._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @dib3000mc_set_output_mode._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 228, i32 4}
!68 = !{ptr @dib3000mc_set_output_mode._entry.15, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dib3000mc_set_output_mode._entry_ptr.17, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dib3000mc_ops, !71, !"dib3000mc_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 940, i32 38}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 154, i32 2}
!74 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dib3000mc_set_timing._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dib3000mc_set_timing._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @impulse_noise_val, !78, !"impulse_noise_val", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 297, i32 12}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 756, i32 3}
!81 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dib3000mc_set_frontend._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @dib3000mc_set_frontend._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/dib3000mc.c", i32 638, i32 3}
!86 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dib3000mc_tune._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @dib3000mc_tune._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
