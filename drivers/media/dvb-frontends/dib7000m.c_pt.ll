; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dib7000m.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib7000m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dib7000m_get_i2c_master\22, \22a\22\09"
module asm "\09.weak\09__crc_dib7000m_get_i2c_master\09\09\09\09"
module asm "\09.long\09__crc_dib7000m_get_i2c_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_get_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib7000m_pid_filter_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_dib7000m_pid_filter_ctrl\09\09\09\09"
module asm "\09.long\09__crc_dib7000m_pid_filter_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_pid_filter_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib7000m_pid_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_dib7000m_pid_filter\09\09\09\09"
module asm "\09.long\09__crc_dib7000m_pid_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_pid_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib7000m_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dib7000m_attach\09\09\09\09"
module asm "\09.long\09__crc_dib7000m_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_attach:\09\09\09\09\09"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.dib7000m_state = type { %struct.dvb_frontend, %struct.dib7000m_config, i8, ptr, %struct.dibx000_i2c_master, i8, i16, i8, i32, ptr, i32, i32, i32, i8, i16, i16, i8, [2 x %struct.i2c_msg], [4 x i8], [2 x i8], %struct.mutex }
%struct.dib7000m_config = type { i8, i8, i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr }
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
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.91 }
%struct.anon.91 = type { i16, i16, i16, i16 }

@__param_str_debug = internal constant [15 x i8] c"dib7000m.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"dib7000m.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [51 x i8] c"dib7000m.parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib7000m_get_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_get_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_get_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_get_i2c_master to i32), ptr @__kstrtab_dib7000m_get_i2c_master, ptr @__kstrtabns_dib7000m_get_i2c_master }, section "___ksymtab+dib7000m_get_i2c_master", align 4
@dib7000m_pid_filter_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib7000m: %s: PID filter enabled %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dib7000m_pid_filter_ctrl\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/dib7000m.c\00", [57 x i8] zeroinitializer }, align 32
@dib7000m_pid_filter_ctrl._entry_ptr = internal global ptr @dib7000m_pid_filter_ctrl._entry, section ".printk_index", align 4
@__kstrtab_dib7000m_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_pid_filter_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_pid_filter_ctrl to i32), ptr @__kstrtab_dib7000m_pid_filter_ctrl, ptr @__kstrtabns_dib7000m_pid_filter_ctrl }, section "___ksymtab+dib7000m_pid_filter_ctrl", align 4
@dib7000m_pid_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017dib7000m: %s: PID filter: index %x, PID %d, OnOff %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib7000m_pid_filter\00", [44 x i8] zeroinitializer }, align 32
@dib7000m_pid_filter._entry_ptr = internal global ptr @dib7000m_pid_filter._entry, section ".printk_index", align 4
@__kstrtab_dib7000m_pid_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_pid_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_pid_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_pid_filter to i32), ptr @__kstrtab_dib7000m_pid_filter, ptr @__kstrtabns_dib7000m_pid_filter }, section "___ksymtab+dib7000m_pid_filter", align 4
@dib7000m_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 7000MA/MB/PA/PB/MC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib7000m_release, ptr null, ptr @dib7000m_wakeup, ptr @dib7000m_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib7000m_set_frontend, ptr @dib7000m_fe_get_tune_settings, ptr @dib7000m_get_frontend, ptr @dib7000m_read_status, ptr @dib7000m_read_ber, ptr @dib7000m_read_signal_strength, ptr @dib7000m_read_snr, ptr @dib7000m_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@dib7000m_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&st->i2c_buffer_lock\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_dib7000m_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_attach to i32), ptr @__kstrtab_dib7000m_attach, ptr @__kstrtabns_dib7000m_attach }, section "___ksymtab+dib7000m_attach", align 4
@__UNIQUE_ID_author292 = internal constant [64 x i8] c"dib7000m.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [80 x i8] c"dib7000m.description=Driver for the DiBcom 7000MA/MB/PA/PB/MC COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"dib7000m.file=drivers/media/dvb-frontends/dib7000m\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"dib7000m.license=GPL\00", section ".modinfo", align 1
@dib7000m_read_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib7000m: %s: could not acquire lock\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dib7000m_read_word\00", [45 x i8] zeroinitializer }, align 32
@dib7000m_read_word._entry_ptr = internal global ptr @dib7000m_read_word._entry, section ".printk_index", align 4
@dib7000m_read_word._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib7000m: %s: i2c read error on %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dib7000m_read_word._entry_ptr.10 = internal global ptr @dib7000m_read_word._entry.8, section ".printk_index", align 4
@dib7000m_write_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib7000m_write_word\00", [44 x i8] zeroinitializer }, align 32
@dib7000m_write_word._entry_ptr = internal global ptr @dib7000m_write_word._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dib7000m_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib7000m: %s: wrong Vendor ID (0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dib7000m_identify\00", [46 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr = internal global ptr @dib7000m_identify._entry, section ".printk_index", align 4
@dib7000m_identify._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib7000m: %s: wrong Device ID (0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.16 = internal global ptr @dib7000m_identify._entry.14, section ".printk_index", align 4
@dib7000m_identify._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017dib7000m: %s: this driver does not work with DiB7000PC\0A\00", [38 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.19 = internal global ptr @dib7000m_identify._entry.17, section ".printk_index", align 4
@dib7000m_identify._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017dib7000m: %s: found DiB7000MA/PA/MB/PB\0A\00", [54 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.22 = internal global ptr @dib7000m_identify._entry.20, section ".printk_index", align 4
@dib7000m_identify._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib7000m: %s: found DiB7000HC\0A\00", [63 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.25 = internal global ptr @dib7000m_identify._entry.23, section ".printk_index", align 4
@dib7000m_identify._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib7000m: %s: found DiB7000MC\0A\00", [63 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.28 = internal global ptr @dib7000m_identify._entry.26, section ".printk_index", align 4
@dib7000m_identify._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.2, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dib7000m: %s: found DiB9000\0A\00", [33 x i8] zeroinitializer }, align 32
@dib7000m_identify._entry_ptr.31 = internal global ptr @dib7000m_identify._entry.29, section ".printk_index", align 4
@dib7000m_demod_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dib7000m: %s: GPIO reset was not successful.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib7000m_demod_reset\00", [43 x i8] zeroinitializer }, align 32
@dib7000m_demod_reset._entry_ptr = internal global ptr @dib7000m_demod_reset._entry, section ".printk_index", align 4
@dib7000m_demod_reset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dib7000m: %s: OUTPUT_MODE could not be reset.\0A\00", [47 x i8] zeroinitializer }, align 32
@dib7000m_demod_reset._entry_ptr.36 = internal global ptr @dib7000m_demod_reset._entry.34, section ".printk_index", align 4
@dib7000m_defaults_common = internal constant { [68 x i16], [56 x i8] } { [68 x i16] [i16 3, i16 2, i16 4, i16 4096, i16 2068, i16 12, i16 6, i16 27, i16 30528, i16 91, i16 -29312, i16 457, i16 -15488, i16 0, i16 128, i16 0, i16 144, i16 1, i16 -11072, i16 1, i16 26, i16 26240, i16 1, i16 170, i16 1040, i16 8, i16 173, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 182, i16 8192, i16 2, i16 195, i16 3277, i16 0, i16 1, i16 205, i16 8207, i16 5, i16 214, i16 573, i16 164, i16 164, i16 32752, i16 15564, i16 1, i16 226, i16 0, i16 1, i16 255, i16 2048, i16 1, i16 263, i16 1, i16 1, i16 281, i16 16, i16 1, i16 294, i16 98, i16 0], [56 x i8] zeroinitializer }, align 32
@dib7000m_defaults = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 11, i16 76, i16 7250, i16 7238, i16 7264, i16 7309, i16 7338, i16 7382, i16 7427, i16 7456, i16 7500, i16 7544, i16 7574, i16 1, i16 912, i16 11402, i16 1, i16 1817, i16 1, i16 0], [56 x i8] zeroinitializer }, align 32
@dib7000m_set_output_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017dib7000m: %s: setting output mode for demod %p to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dib7000m_set_output_mode\00", [39 x i8] zeroinitializer }, align 32
@dib7000m_set_output_mode._entry_ptr = internal global ptr @dib7000m_set_output_mode._entry, section ".printk_index", align 4
@dib7000m_set_output_mode._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dib7000m: %s: Unhandled output_mode passed to be set for demod %p\0A\00", [59 x i8] zeroinitializer }, align 32
@dib7000m_set_output_mode._entry_ptr.41 = internal global ptr @dib7000m_set_output_mode._entry.39, section ".printk_index", align 4
@dib7000m_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib7000m: %s: using default timf\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib7000m_set_bandwidth\00", [41 x i8] zeroinitializer }, align 32
@dib7000m_set_bandwidth._entry_ptr = internal global ptr @dib7000m_set_bandwidth._entry, section ".printk_index", align 4
@dib7000m_set_bandwidth._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib7000m: %s: using updated timf\0A\00", [60 x i8] zeroinitializer }, align 32
@dib7000m_set_bandwidth._entry_ptr.46 = internal global ptr @dib7000m_set_bandwidth._entry.44, section ".printk_index", align 4
@dib7000m_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017dib7000m: %s: could not start Slow ADC\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib7000m_wakeup\00", [16 x i8] zeroinitializer }, align 32
@dib7000m_wakeup._entry_ptr = internal global ptr @dib7000m_wakeup._entry, section ".printk_index", align 4
@dib7000m_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib7000m: %s: autosearch returns: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib7000m_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@dib7000m_set_frontend._entry_ptr = internal global ptr @dib7000m_set_frontend._entry, section ".printk_index", align 4
@dib7000m_agc_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dib7000m: %s: SPLIT %p: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib7000m_agc_startup\00", [43 x i8] zeroinitializer }, align 32
@dib7000m_agc_startup._entry_ptr = internal global ptr @dib7000m_agc_startup._entry, section ".printk_index", align 4
@dib7000m_set_agc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017dib7000m: %s: no valid AGC configuration found for band 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib7000m_set_agc_config\00", [40 x i8] zeroinitializer }, align 32
@dib7000m_set_agc_config._entry_ptr = internal global ptr @dib7000m_set_agc_config._entry, section ".printk_index", align 4
@dib7000m_set_agc_config._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017dib7000m: %s: WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dib7000m_set_agc_config._entry_ptr.57 = internal global ptr @dib7000m_set_agc_config._entry.55, section ".printk_index", align 4
@dib7000m_agc_soft_split._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib7000m: %s: AGC split_offset: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib7000m_agc_soft_split\00", [40 x i8] zeroinitializer }, align 32
@dib7000m_agc_soft_split._entry_ptr = internal global ptr @dib7000m_agc_soft_split._entry, section ".printk_index", align 4
@dib7000m_set_diversity_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017dib7000m: %s: diversity combination deactivated - forced by COFDM parameters\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib7000m_set_diversity_in\00", [38 x i8] zeroinitializer }, align 32
@dib7000m_set_diversity_in._entry_ptr = internal global ptr @dib7000m_set_diversity_in._entry, section ".printk_index", align 4
@dib7000m_autosearch_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dib7000m: %s: autosearch failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib7000m_autosearch_irq\00", [40 x i8] zeroinitializer }, align 32
@dib7000m_autosearch_irq._entry_ptr = internal global ptr @dib7000m_autosearch_irq._entry, section ".printk_index", align 4
@dib7000m_autosearch_irq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib7000m: %s: autosearch succeeded\0A\00", [58 x i8] zeroinitializer }, align 32
@dib7000m_autosearch_irq._entry_ptr.66 = internal global ptr @dib7000m_autosearch_irq._entry.64, section ".printk_index", align 4
@dib7000m_update_timf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017dib7000m: %s: updated timf_frequency: %d (default: %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib7000m_update_timf\00", [43 x i8] zeroinitializer }, align 32
@dib7000m_update_timf._entry_ptr = internal global ptr @dib7000m_update_timf._entry, section ".printk_index", align 4
@switch.table.dib7000m_get_frontend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.dib7000m_get_frontend.69 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.dib7000m_set_channel = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 4, i16 6, i16 2, i16 10, i16 2, i16 14], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 16384, i64 16385, i64 16386, i64 16387]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 20, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1337, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1345, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"dib7000m_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1439, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1417, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 81, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 99, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 112, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1128, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1137, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1143, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1148, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1149, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1150, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1151, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 587, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 590, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"dib7000m_defaults_common\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 462, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"dib7000m_defaults\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 536, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 161, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 188, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 327, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 330, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1109, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1249, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 811, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 694, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 710, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 657, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 347, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1020, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1025, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [42 x i8] c"../drivers/media/dvb-frontends/dib7000m.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 749, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [35 x i8] c"switch.table.dib7000m_get_frontend\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [38 x i8] c"switch.table.dib7000m_get_frontend.69\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [34 x i8] c"switch.table.dib7000m_set_channel\00", align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_dib7000m_attach, ptr @__ksymtab_dib7000m_get_i2c_master, ptr @__ksymtab_dib7000m_pid_filter, ptr @__ksymtab_dib7000m_pid_filter_ctrl, ptr @__param_debug, ptr @dib7000m_agc_soft_split._entry, ptr @dib7000m_agc_soft_split._entry_ptr, ptr @dib7000m_agc_startup._entry, ptr @dib7000m_agc_startup._entry_ptr, ptr @dib7000m_autosearch_irq._entry, ptr @dib7000m_autosearch_irq._entry.64, ptr @dib7000m_autosearch_irq._entry_ptr, ptr @dib7000m_autosearch_irq._entry_ptr.66, ptr @dib7000m_demod_reset._entry, ptr @dib7000m_demod_reset._entry.34, ptr @dib7000m_demod_reset._entry_ptr, ptr @dib7000m_demod_reset._entry_ptr.36, ptr @dib7000m_identify._entry, ptr @dib7000m_identify._entry.14, ptr @dib7000m_identify._entry.17, ptr @dib7000m_identify._entry.20, ptr @dib7000m_identify._entry.23, ptr @dib7000m_identify._entry.26, ptr @dib7000m_identify._entry.29, ptr @dib7000m_identify._entry_ptr, ptr @dib7000m_identify._entry_ptr.16, ptr @dib7000m_identify._entry_ptr.19, ptr @dib7000m_identify._entry_ptr.22, ptr @dib7000m_identify._entry_ptr.25, ptr @dib7000m_identify._entry_ptr.28, ptr @dib7000m_identify._entry_ptr.31, ptr @dib7000m_pid_filter._entry, ptr @dib7000m_pid_filter._entry_ptr, ptr @dib7000m_pid_filter_ctrl._entry, ptr @dib7000m_pid_filter_ctrl._entry_ptr, ptr @dib7000m_read_word._entry, ptr @dib7000m_read_word._entry.8, ptr @dib7000m_read_word._entry_ptr, ptr @dib7000m_read_word._entry_ptr.10, ptr @dib7000m_set_agc_config._entry, ptr @dib7000m_set_agc_config._entry.55, ptr @dib7000m_set_agc_config._entry_ptr, ptr @dib7000m_set_agc_config._entry_ptr.57, ptr @dib7000m_set_bandwidth._entry, ptr @dib7000m_set_bandwidth._entry.44, ptr @dib7000m_set_bandwidth._entry_ptr, ptr @dib7000m_set_bandwidth._entry_ptr.46, ptr @dib7000m_set_diversity_in._entry, ptr @dib7000m_set_diversity_in._entry_ptr, ptr @dib7000m_set_frontend._entry, ptr @dib7000m_set_frontend._entry_ptr, ptr @dib7000m_set_output_mode._entry, ptr @dib7000m_set_output_mode._entry.39, ptr @dib7000m_set_output_mode._entry_ptr, ptr @dib7000m_set_output_mode._entry_ptr.41, ptr @dib7000m_update_timf._entry, ptr @dib7000m_update_timf._entry_ptr, ptr @dib7000m_wakeup._entry, ptr @dib7000m_wakeup._entry_ptr, ptr @dib7000m_write_word._entry, ptr @dib7000m_write_word._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dib7000m_ops, ptr @dib7000m_attach.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @dib7000m_defaults_common, ptr @dib7000m_defaults, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @switch.table.dib7000m_get_frontend, ptr @switch.table.dib7000m_get_frontend.69, ptr @switch.table.dib7000m_set_channel], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_pid_filter_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_pid_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_read_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_read_word._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_write_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_identify._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_demod_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_demod_reset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_defaults_common to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_defaults to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_output_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_output_mode._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_bandwidth._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_agc_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_agc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_agc_config._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_agc_soft_split._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_set_diversity_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_autosearch_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_autosearch_irq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7000m_update_timf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib7000m_get_frontend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib7000m_get_frontend.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dib7000m_set_channel to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib7000m_get_i2c_master(ptr nocapture noundef readonly %demod, i32 noundef %intf, i32 noundef %gating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_master = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 4
  %call = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %i2c_master, i32 noundef %intf, i32 noundef %gating) #6
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib7000m_pid_filter_ctrl(ptr nocapture noundef readonly %fe, i8 noundef zeroext %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %reg_offs = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_offs, align 8
  %conv = zext i8 %3 to i16
  %add = add nuw nsw i16 %conv, 294
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext %add)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4 = zext i8 %onoff to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv4) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %5 = and i16 %call, -17
  %conv4.tr = zext i8 %onoff to i16
  %6 = shl nuw nsw i16 %conv4.tr, 4
  %7 = and i16 %6, 16
  %conv7 = or i16 %5, %7
  %8 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_offs, align 8
  %conv14 = zext i8 %9 to i16
  %add15 = add nuw nsw i16 %conv14, 294
  %call17 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %1, i16 noundef zeroext %add15, i16 noundef zeroext %conv7)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib7000m_read_word(ptr noundef %state, i16 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %2 = trunc i16 %1 to i8
  %conv7 = or i8 %2, -128
  %i2c_write_buffer = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %3 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv7, ptr %i2c_write_buffer, align 4
  %conv9 = trunc i16 %reg to i8
  %arrayidx11 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %arrayidx11, align 1
  %msg = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %5 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %i2c_addr = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_addr, align 8
  %9 = lshr i8 %8, 1
  %conv14 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv14, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i2c_write_buffer, ptr %buf, align 4
  %len = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len, align 4
  %arrayidx30 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv14, ptr %arrayidx30, align 4
  %flags34 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 1, i32 1
  %15 = ptrtoint ptr %flags34 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags34, align 2
  %i2c_read_buffer = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 19
  %buf38 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 1, i32 3
  %16 = ptrtoint ptr %buf38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i2c_read_buffer, ptr %buf38, align 4
  %len41 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 1, i32 2
  %17 = ptrtoint ptr %len41 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len41, align 4
  %i2c_adap = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %18 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_adap, align 4
  %call44 = tail call i32 @i2c_transfer(ptr noundef %19, ptr noundef %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 2
  br i1 %cmp45.not, label %if.end6.if.end60_crit_edge, label %do.body48

if.end6.if.end60_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body48:                                        ; preds = %if.end6
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not = icmp eq i32 %20, 0
  br i1 %tobool49.not, label %do.body48.if.end60_crit_edge, label %do.end53

do.body48.if.end60_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end53, %do.body48.if.end60_crit_edge, %if.end6.if.end60_crit_edge
  %21 = ptrtoint ptr %i2c_read_buffer to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_read_buffer, align 8
  %conv63 = zext i8 %22 to i16
  %shl = shl nuw i16 %conv63, 8
  %arrayidx65 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %24 to i16
  %or67 = or i16 %shl, %conv66
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %or67, %if.end60 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = lshr i16 %reg, 8
  %conv7 = trunc i16 %1 to i8
  %i2c_write_buffer = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %2 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv7, ptr %i2c_write_buffer, align 4
  %conv10 = trunc i16 %reg to i8
  %arrayidx12 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv10, ptr %arrayidx12, align 1
  %4 = lshr i16 %val, 8
  %conv16 = trunc i16 %4 to i8
  %arrayidx18 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv16, ptr %arrayidx18, align 2
  %conv21 = trunc i16 %val to i8
  %arrayidx23 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %arrayidx23, align 1
  %msg = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %7 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %i2c_addr = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr, align 8
  %11 = lshr i8 %10, 1
  %conv27 = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv27, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_write_buffer, ptr %buf, align 4
  %len = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %len, align 4
  %i2c_adap = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %16 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_adap, align 4
  %call39 = tail call i32 @i2c_transfer(ptr noundef %17, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  %cond = select i1 %cmp40.not, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end6 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib7000m_pid_filter(ptr nocapture noundef readonly %fe, i8 noundef zeroext %id, i16 noundef zeroext %pid, i8 noundef zeroext %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %id to i32
  %conv2 = zext i16 %pid to i32
  %conv3 = zext i8 %onoff to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %reg_offs = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %onoff)
  %tobool11.not = icmp eq i8 %onoff, 0
  %or = or i16 %pid, 8192
  %spec.select = select i1 %tobool11.not, i16 0, i16 %or
  %conv6 = zext i8 %4 to i16
  %conv7 = zext i8 %id to i16
  %add = add nuw nsw i16 %conv7, 300
  %add8 = add nuw nsw i16 %add, %conv6
  %call14 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %1, i16 noundef zeroext %add8, i16 noundef zeroext %spec.select)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib7000m_attach(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7216) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg1 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %cfg1, ptr %cfg, i32 40)
  %i2c_adap2 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c_adap, ptr %i2c_adap2, align 4
  %i2c_addr3 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %i2c_addr, ptr %i2c_addr3, align 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @dib7000m_ops, i32 544)
  %i2c_buffer_lock = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %i2c_buffer_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @dib7000m_attach.__key) #6
  %bw = getelementptr inbounds %struct.dib7000m_config, ptr %cfg, i32 0, i32 8
  %6 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bw, align 4
  %timf = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %timf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timf, align 4
  %timf_default = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %timf_default to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timf_default, align 4
  %call.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 896) #6
  %conv.i = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 435, i16 %call.i)
  %cmp.not.i = icmp eq i16 %call.i, 435
  br i1 %cmp.not.i, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i.error_crit_edge, label %do.end.i

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #9
  br label %error

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 897) #6
  %revision.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %revision.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call9.i, ptr %revision.i, align 8
  %13 = and i16 %call9.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %switch.i = icmp eq i16 %13, 16384
  br i1 %switch.i, label %if.end41.i, label %do.body29.i

do.body29.i:                                      ; preds = %if.end8.i
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool30.not.i = icmp eq i32 %14, 0
  br i1 %tobool30.not.i, label %do.body29.i.error_crit_edge, label %do.end34.i

do.body29.i.error_crit_edge:                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 435) #9
  br label %error

if.end41.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call9.i)
  %cmp44.i = icmp eq i16 %call9.i, 16384
  br i1 %cmp44.i, label %land.lhs.true46.i, label %if.end41.i.if.end63.i_crit_edge

if.end41.i.if.end63.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

land.lhs.true46.i:                                ; preds = %if.end41.i
  %call47.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 769) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call47.i)
  %cmp49.i = icmp eq i16 %call47.i, 16384
  br i1 %cmp49.i, label %do.body52.i, label %if.end63thread-pre-split.i

do.body52.i:                                      ; preds = %land.lhs.true46.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool53.not.i = icmp eq i32 %15, 0
  br i1 %tobool53.not.i, label %do.body52.i.error_crit_edge, label %do.end57.i

do.body52.i.error_crit_edge:                      ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end57.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #9
  br label %error

if.end63thread-pre-split.i:                       ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %.pr.i = load i16, ptr %revision.i, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end63thread-pre-split.i, %if.end41.i.if.end63.i_crit_edge
  %17 = phi i16 [ %.pr.i, %if.end63thread-pre-split.i ], [ %call9.i, %if.end41.i.if.end63.i_crit_edge ]
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %if.end63.i.if.end9_crit_edge [
    i16 16384, label %do.body66.i
    i16 16385, label %sw.bb77.i
    i16 16386, label %sw.bb89.i
    i16 16387, label %sw.bb102.i
  ]

if.end63.i.if.end9_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body66.i:                                      ; preds = %if.end63.i
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool67.not.i = icmp eq i32 %19, 0
  br i1 %tobool67.not.i, label %do.body66.i.if.end9_crit_edge, label %do.body66.i.if.end9.sink.split_crit_edge

do.body66.i.if.end9.sink.split_crit_edge:         ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split

do.body66.i.if.end9_crit_edge:                    ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

sw.bb77.i:                                        ; preds = %if.end63.i
  %reg_offs.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %reg_offs.i, align 8
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool79.not.i = icmp eq i32 %21, 0
  br i1 %tobool79.not.i, label %sw.bb77.i.if.end9_crit_edge, label %sw.bb77.i.if.end9.sink.split_crit_edge

sw.bb77.i.if.end9.sink.split_crit_edge:           ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split

sw.bb77.i.if.end9_crit_edge:                      ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

sw.bb89.i:                                        ; preds = %if.end63.i
  %reg_offs90.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %reg_offs90.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %reg_offs90.i, align 8
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool92.not.i = icmp eq i32 %23, 0
  br i1 %tobool92.not.i, label %sw.bb89.i.if.end9_crit_edge, label %sw.bb89.i.if.end9.sink.split_crit_edge

sw.bb89.i.if.end9.sink.split_crit_edge:           ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split

sw.bb89.i.if.end9_crit_edge:                      ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

sw.bb102.i:                                       ; preds = %if.end63.i
  %reg_offs103.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %reg_offs103.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %reg_offs103.i, align 8
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool105.not.i = icmp eq i32 %25, 0
  br i1 %tobool105.not.i, label %sw.bb102.i.if.end9_crit_edge, label %sw.bb102.i.if.end9.sink.split_crit_edge

sw.bb102.i.if.end9.sink.split_crit_edge:          ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split

sw.bb102.i.if.end9_crit_edge:                     ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9.sink.split:                               ; preds = %sw.bb102.i.if.end9.sink.split_crit_edge, %sw.bb89.i.if.end9.sink.split_crit_edge, %sw.bb77.i.if.end9.sink.split_crit_edge, %do.body66.i.if.end9.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.21, %do.body66.i.if.end9.sink.split_crit_edge ], [ @.str.24, %sw.bb77.i.if.end9.sink.split_crit_edge ], [ @.str.27, %sw.bb89.i.if.end9.sink.split_crit_edge ], [ @.str.30, %sw.bb102.i.if.end9.sink.split_crit_edge ]
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink, ptr noundef nonnull @.str.13) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %sw.bb102.i.if.end9_crit_edge, %sw.bb89.i.if.end9_crit_edge, %sw.bb77.i.if.end9_crit_edge, %do.body66.i.if.end9_crit_edge, %if.end63.i.if.end9_crit_edge
  %26 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp10 = icmp eq i16 %27, 16384
  %. = select i1 %cmp10, i16 2, i16 12
  %i2c_master16 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap2, align 4
  %30 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i2c_addr3, align 8
  %call19 = tail call i32 @dibx000_init_i2c_master(ptr noundef %i2c_master16, i16 noundef zeroext %., ptr noundef %29, i8 noundef zeroext %31) #6
  %mobile_mode.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %mobile_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mobile_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i16 214, i16 0
  %34 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %35)
  %cmp25.i.i = icmp eq i16 %35, 16387
  %offset.0.i.i = zext i1 %cmp25.i.i to i16
  %call.i561.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i561.i)
  %cmp.i562.i = icmp slt i32 %call.i561.i, 0
  br i1 %cmp.i562.i, label %do.body.i564.i, label %if.end6.i582.i

do.body.i564.i:                                   ; preds = %if.end9
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i563.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i563.i, label %do.body.i564.i.dib7000m_write_word.exit584.i_crit_edge, label %do.end.i566.i

do.body.i564.i.dib7000m_write_word.exit584.i_crit_edge: ; preds = %do.body.i564.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit584.i

do.end.i566.i:                                    ; preds = %do.body.i564.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i565.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit584.i

if.end6.i582.i:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i567.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %i2c_write_buffer.i567.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %i2c_write_buffer.i567.i, align 4
  %conv10.i568.i = select i1 %cmp25.i.i, i8 -120, i8 -121
  %arrayidx12.i569.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %arrayidx12.i569.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv10.i568.i, ptr %arrayidx12.i569.i, align 1
  %arrayidx18.i570.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %39 = ptrtoint ptr %arrayidx18.i570.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx18.i570.i, align 2
  %arrayidx23.i571.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %40 = ptrtoint ptr %arrayidx23.i571.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx23.i571.i, align 1
  %msg.i572.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %41 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 262144, ptr %41, align 8
  %43 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %i2c_addr3, align 8
  %45 = lshr i8 %44, 1
  %conv27.i574.i = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i572.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv27.i574.i, ptr %msg.i572.i, align 4
  %flags.i575.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i575.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i575.i, align 2
  %buf.i576.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i576.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %i2c_write_buffer.i567.i, ptr %buf.i576.i, align 4
  %49 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_adap2, align 4
  %call39.i579.i = tail call i32 @i2c_transfer(ptr noundef %50, ptr noundef %msg.i572.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit584.i

dib7000m_write_word.exit584.i:                    ; preds = %if.end6.i582.i, %do.end.i566.i, %do.body.i564.i.dib7000m_write_word.exit584.i_crit_edge
  %conv33.i.i = or i16 %offset.0.i.i, 904
  %call34.i.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv33.i.i, i16 noundef zeroext %spec.select.i.i) #6
  %call.i536.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i536.i)
  %cmp.i537.i = icmp slt i32 %call.i536.i, 0
  br i1 %cmp.i537.i, label %do.body.i539.i, label %if.end6.i557.i

do.body.i539.i:                                   ; preds = %dib7000m_write_word.exit584.i
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i538.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i538.i, label %do.body.i539.i.dib7000m_write_word.exit559.i_crit_edge, label %do.end.i541.i

do.body.i539.i.dib7000m_write_word.exit559.i_crit_edge: ; preds = %do.body.i539.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit559.i

do.end.i541.i:                                    ; preds = %do.body.i539.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i540.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit559.i

if.end6.i557.i:                                   ; preds = %dib7000m_write_word.exit584.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i542.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %52 = ptrtoint ptr %i2c_write_buffer.i542.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %i2c_write_buffer.i542.i, align 4
  %conv10.i543.i = select i1 %cmp25.i.i, i8 -118, i8 -119
  %arrayidx12.i544.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %arrayidx12.i544.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv10.i543.i, ptr %arrayidx12.i544.i, align 1
  %arrayidx18.i545.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %54 = ptrtoint ptr %arrayidx18.i545.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx18.i545.i, align 2
  %arrayidx23.i546.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %55 = ptrtoint ptr %arrayidx23.i546.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx23.i546.i, align 1
  %msg.i547.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %56 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 262144, ptr %56, align 8
  %58 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_addr3, align 8
  %60 = lshr i8 %59, 1
  %conv27.i549.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i547.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv27.i549.i, ptr %msg.i547.i, align 4
  %flags.i550.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i550.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i550.i, align 2
  %buf.i551.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i551.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %i2c_write_buffer.i542.i, ptr %buf.i551.i, align 4
  %64 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_adap2, align 4
  %call39.i554.i = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %msg.i547.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit559.i

dib7000m_write_word.exit559.i:                    ; preds = %if.end6.i557.i, %do.end.i541.i, %do.body.i539.i.dib7000m_write_word.exit559.i_crit_edge
  %call.i510.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i510.i)
  %cmp.i511.i = icmp slt i32 %call.i510.i, 0
  br i1 %cmp.i511.i, label %do.body.i513.i, label %if.end6.i532.i

do.body.i513.i:                                   ; preds = %dib7000m_write_word.exit559.i
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i512.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i512.i, label %do.body.i513.i.dib7000m_write_word.exit534.i_crit_edge, label %do.end.i515.i

do.body.i513.i.dib7000m_write_word.exit534.i_crit_edge: ; preds = %do.body.i513.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit534.i

do.end.i515.i:                                    ; preds = %do.body.i513.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i514.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit534.i

if.end6.i532.i:                                   ; preds = %dib7000m_write_word.exit559.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i517.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %67 = ptrtoint ptr %i2c_write_buffer.i517.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %i2c_write_buffer.i517.i, align 4
  %68 = zext i1 %cmp25.i.i to i8
  %conv10.i518.i = or i8 %68, -118
  %arrayidx12.i519.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %arrayidx12.i519.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv10.i518.i, ptr %arrayidx12.i519.i, align 1
  %arrayidx18.i520.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %70 = ptrtoint ptr %arrayidx18.i520.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx18.i520.i, align 2
  %arrayidx23.i521.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %71 = ptrtoint ptr %arrayidx23.i521.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx23.i521.i, align 1
  %msg.i522.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %72 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 262144, ptr %72, align 8
  %74 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_addr3, align 8
  %76 = lshr i8 %75, 1
  %conv27.i524.i = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i522.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv27.i524.i, ptr %msg.i522.i, align 4
  %flags.i525.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i525.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i525.i, align 2
  %buf.i526.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %79 = ptrtoint ptr %buf.i526.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %i2c_write_buffer.i517.i, ptr %buf.i526.i, align 4
  %80 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c_adap2, align 4
  %call39.i529.i = tail call i32 @i2c_transfer(ptr noundef %81, ptr noundef %msg.i522.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit534.i

dib7000m_write_word.exit534.i:                    ; preds = %if.end6.i532.i, %do.end.i515.i, %do.body.i513.i.dib7000m_write_word.exit534.i_crit_edge
  %call.i43 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %call7.i.i, i32 noundef 4) #6
  %call.i1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end6.i.i

do.body.i.i:                                      ; preds = %dib7000m_write_word.exit534.i
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i2.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i2.i, label %do.body.i.i.dib7000m_write_word.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.dib7000m_write_word.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i

if.end6.i.i:                                      ; preds = %dib7000m_write_word.exit534.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %83 = ptrtoint ptr %i2c_write_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %i2c_write_buffer.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -126, ptr %arrayidx12.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %85 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %arrayidx18.i.i, align 2
  %arrayidx23.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %86 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %arrayidx23.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %87 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 262144, ptr %87, align 8
  %89 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %i2c_addr3, align 8
  %91 = lshr i8 %90, 1
  %conv27.i.i = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv27.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %94 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %i2c_write_buffer.i.i, ptr %buf.i.i, align 4
  %95 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i = tail call i32 @i2c_transfer(ptr noundef %96, ptr noundef %msg.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i

dib7000m_write_word.exit.i:                       ; preds = %if.end6.i.i, %do.end.i.i, %do.body.i.i.dib7000m_write_word.exit.i_crit_edge
  %call.i4.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i5.i, label %do.body.i7.i, label %if.end6.i24.i

do.body.i7.i:                                     ; preds = %dib7000m_write_word.exit.i
  %97 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i6.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i6.i, label %do.body.i7.i.dib7000m_write_word.exit26.i_crit_edge, label %do.end.i9.i

do.body.i7.i.dib7000m_write_word.exit26.i_crit_edge: ; preds = %do.body.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26.i

do.end.i9.i:                                      ; preds = %do.body.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26.i

if.end6.i24.i:                                    ; preds = %dib7000m_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i10.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %98 = ptrtoint ptr %i2c_write_buffer.i10.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 3, ptr %i2c_write_buffer.i10.i, align 4
  %arrayidx12.i11.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %99 = ptrtoint ptr %arrayidx12.i11.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -125, ptr %arrayidx12.i11.i, align 1
  %arrayidx18.i12.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %100 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -1, ptr %arrayidx18.i12.i, align 2
  %arrayidx23.i13.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %101 = ptrtoint ptr %arrayidx23.i13.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %arrayidx23.i13.i, align 1
  %msg.i14.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %102 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 262144, ptr %102, align 8
  %104 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_addr3, align 8
  %106 = lshr i8 %105, 1
  %conv27.i16.i = zext i8 %106 to i16
  %107 = ptrtoint ptr %msg.i14.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv27.i16.i, ptr %msg.i14.i, align 4
  %flags.i17.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i17.i, align 2
  %buf.i18.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %109 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %i2c_write_buffer.i10.i, ptr %buf.i18.i, align 4
  %110 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_adap2, align 4
  %call39.i21.i = tail call i32 @i2c_transfer(ptr noundef %111, ptr noundef %msg.i14.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit26.i

dib7000m_write_word.exit26.i:                     ; preds = %if.end6.i24.i, %do.end.i9.i, %do.body.i7.i.dib7000m_write_word.exit26.i_crit_edge
  %call.i28.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %do.body.i31.i, label %if.end6.i48.i

do.body.i31.i:                                    ; preds = %dib7000m_write_word.exit26.i
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i30.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i30.i, label %do.body.i31.i.dib7000m_write_word.exit50.i_crit_edge, label %do.end.i33.i

do.body.i31.i.dib7000m_write_word.exit50.i_crit_edge: ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit50.i

do.end.i33.i:                                     ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit50.i

if.end6.i48.i:                                    ; preds = %dib7000m_write_word.exit26.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i34.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %113 = ptrtoint ptr %i2c_write_buffer.i34.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 3, ptr %i2c_write_buffer.i34.i, align 4
  %arrayidx12.i35.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %114 = ptrtoint ptr %arrayidx12.i35.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -124, ptr %arrayidx12.i35.i, align 1
  %arrayidx18.i36.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %115 = ptrtoint ptr %arrayidx18.i36.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %arrayidx18.i36.i, align 2
  %arrayidx23.i37.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %116 = ptrtoint ptr %arrayidx23.i37.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 15, ptr %arrayidx23.i37.i, align 1
  %msg.i38.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %117 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 262144, ptr %117, align 8
  %119 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %i2c_addr3, align 8
  %121 = lshr i8 %120, 1
  %conv27.i40.i = zext i8 %121 to i16
  %122 = ptrtoint ptr %msg.i38.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv27.i40.i, ptr %msg.i38.i, align 4
  %flags.i41.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i41.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i41.i, align 2
  %buf.i42.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %124 = ptrtoint ptr %buf.i42.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %i2c_write_buffer.i34.i, ptr %buf.i42.i, align 4
  %125 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c_adap2, align 4
  %call39.i45.i = tail call i32 @i2c_transfer(ptr noundef %126, ptr noundef %msg.i38.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit50.i

dib7000m_write_word.exit50.i:                     ; preds = %if.end6.i48.i, %do.end.i33.i, %do.body.i31.i.dib7000m_write_word.exit50.i_crit_edge
  %call.i52.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %cmp.i53.i = icmp slt i32 %call.i52.i, 0
  br i1 %cmp.i53.i, label %do.body.i55.i, label %if.end6.i72.i

do.body.i55.i:                                    ; preds = %dib7000m_write_word.exit50.i
  %127 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i54.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i54.i, label %do.body.i55.i.dib7000m_write_word.exit74.i_crit_edge, label %do.end.i57.i

do.body.i55.i.dib7000m_write_word.exit74.i_crit_edge: ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit74.i

do.end.i57.i:                                     ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit74.i

if.end6.i72.i:                                    ; preds = %dib7000m_write_word.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i58.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %128 = ptrtoint ptr %i2c_write_buffer.i58.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %i2c_write_buffer.i58.i, align 4
  %arrayidx12.i59.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %129 = ptrtoint ptr %arrayidx12.i59.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -123, ptr %arrayidx12.i59.i, align 1
  %arrayidx18.i60.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %130 = ptrtoint ptr %arrayidx18.i60.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %arrayidx18.i60.i, align 2
  %arrayidx23.i61.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %131 = ptrtoint ptr %arrayidx23.i61.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -4, ptr %arrayidx23.i61.i, align 1
  %msg.i62.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %132 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 262144, ptr %132, align 8
  %134 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i2c_addr3, align 8
  %136 = lshr i8 %135, 1
  %conv27.i64.i = zext i8 %136 to i16
  %137 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv27.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i65.i, align 2
  %buf.i66.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %139 = ptrtoint ptr %buf.i66.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %i2c_write_buffer.i58.i, ptr %buf.i66.i, align 4
  %140 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i2c_adap2, align 4
  %call39.i69.i = tail call i32 @i2c_transfer(ptr noundef %141, ptr noundef %msg.i62.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit74.i

dib7000m_write_word.exit74.i:                     ; preds = %if.end6.i72.i, %do.end.i57.i, %do.body.i55.i.dib7000m_write_word.exit74.i_crit_edge
  %call.i76.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp.i77.i = icmp slt i32 %call.i76.i, 0
  br i1 %cmp.i77.i, label %do.body.i79.i, label %if.end6.i96.i

do.body.i79.i:                                    ; preds = %dib7000m_write_word.exit74.i
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i78.i = icmp eq i32 %142, 0
  br i1 %tobool.not.i78.i, label %do.body.i79.i.dib7000m_write_word.exit98.i_crit_edge, label %do.end.i81.i

do.body.i79.i.dib7000m_write_word.exit98.i_crit_edge: ; preds = %do.body.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit98.i

do.end.i81.i:                                     ; preds = %do.body.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit98.i

if.end6.i96.i:                                    ; preds = %dib7000m_write_word.exit74.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i82.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %143 = ptrtoint ptr %i2c_write_buffer.i82.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 3, ptr %i2c_write_buffer.i82.i, align 4
  %arrayidx12.i83.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %144 = ptrtoint ptr %arrayidx12.i83.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -126, ptr %arrayidx12.i83.i, align 1
  %arrayidx18.i84.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %145 = ptrtoint ptr %arrayidx18.i84.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %arrayidx18.i84.i, align 2
  %arrayidx23.i85.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %146 = ptrtoint ptr %arrayidx23.i85.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx23.i85.i, align 1
  %msg.i86.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %147 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 262144, ptr %147, align 8
  %149 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %i2c_addr3, align 8
  %151 = lshr i8 %150, 1
  %conv27.i88.i = zext i8 %151 to i16
  %152 = ptrtoint ptr %msg.i86.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv27.i88.i, ptr %msg.i86.i, align 4
  %flags.i89.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i89.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i89.i, align 2
  %buf.i90.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %154 = ptrtoint ptr %buf.i90.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %i2c_write_buffer.i82.i, ptr %buf.i90.i, align 4
  %155 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c_adap2, align 4
  %call39.i93.i = tail call i32 @i2c_transfer(ptr noundef %156, ptr noundef %msg.i86.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit98.i

dib7000m_write_word.exit98.i:                     ; preds = %if.end6.i96.i, %do.end.i81.i, %do.body.i79.i.dib7000m_write_word.exit98.i_crit_edge
  %call.i100.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %cmp.i101.i = icmp slt i32 %call.i100.i, 0
  br i1 %cmp.i101.i, label %do.body.i103.i, label %if.end6.i120.i

do.body.i103.i:                                   ; preds = %dib7000m_write_word.exit98.i
  %157 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i102.i = icmp eq i32 %157, 0
  br i1 %tobool.not.i102.i, label %do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge, label %do.end.i105.i

do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge: ; preds = %do.body.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit122.i

do.end.i105.i:                                    ; preds = %do.body.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit122.i

if.end6.i120.i:                                   ; preds = %dib7000m_write_word.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i106.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %158 = ptrtoint ptr %i2c_write_buffer.i106.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %i2c_write_buffer.i106.i, align 4
  %arrayidx12.i107.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %159 = ptrtoint ptr %arrayidx12.i107.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -125, ptr %arrayidx12.i107.i, align 1
  %arrayidx18.i108.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %160 = ptrtoint ptr %arrayidx18.i108.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %arrayidx18.i108.i, align 2
  %arrayidx23.i109.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %161 = ptrtoint ptr %arrayidx23.i109.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %arrayidx23.i109.i, align 1
  %msg.i110.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %162 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 262144, ptr %162, align 8
  %164 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %i2c_addr3, align 8
  %166 = lshr i8 %165, 1
  %conv27.i112.i = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv27.i112.i, ptr %msg.i110.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i113.i, align 2
  %buf.i114.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %169 = ptrtoint ptr %buf.i114.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %i2c_write_buffer.i106.i, ptr %buf.i114.i, align 4
  %170 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c_adap2, align 4
  %call39.i117.i = tail call i32 @i2c_transfer(ptr noundef %171, ptr noundef %msg.i110.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit122.i

dib7000m_write_word.exit122.i:                    ; preds = %if.end6.i120.i, %do.end.i105.i, %do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge
  %call.i124.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %cmp.i125.i = icmp slt i32 %call.i124.i, 0
  br i1 %cmp.i125.i, label %do.body.i127.i, label %if.end6.i144.i

do.body.i127.i:                                   ; preds = %dib7000m_write_word.exit122.i
  %172 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i126.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i126.i, label %do.body.i127.i.dib7000m_write_word.exit146.i_crit_edge, label %do.end.i129.i

do.body.i127.i.dib7000m_write_word.exit146.i_crit_edge: ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit146.i

do.end.i129.i:                                    ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i128.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit146.i

if.end6.i144.i:                                   ; preds = %dib7000m_write_word.exit122.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i130.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %173 = ptrtoint ptr %i2c_write_buffer.i130.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 3, ptr %i2c_write_buffer.i130.i, align 4
  %arrayidx12.i131.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %174 = ptrtoint ptr %arrayidx12.i131.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -124, ptr %arrayidx12.i131.i, align 1
  %arrayidx18.i132.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %175 = ptrtoint ptr %arrayidx18.i132.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %arrayidx18.i132.i, align 2
  %arrayidx23.i133.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %176 = ptrtoint ptr %arrayidx23.i133.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %arrayidx23.i133.i, align 1
  %msg.i134.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %177 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 262144, ptr %177, align 8
  %179 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %i2c_addr3, align 8
  %181 = lshr i8 %180, 1
  %conv27.i136.i = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i134.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv27.i136.i, ptr %msg.i134.i, align 4
  %flags.i137.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i137.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i137.i, align 2
  %buf.i138.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %184 = ptrtoint ptr %buf.i138.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %i2c_write_buffer.i130.i, ptr %buf.i138.i, align 4
  %185 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i2c_adap2, align 4
  %call39.i141.i = tail call i32 @i2c_transfer(ptr noundef %186, ptr noundef %msg.i134.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit146.i

dib7000m_write_word.exit146.i:                    ; preds = %if.end6.i144.i, %do.end.i129.i, %do.body.i127.i.dib7000m_write_word.exit146.i_crit_edge
  %call.i148.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148.i)
  %cmp.i149.i = icmp slt i32 %call.i148.i, 0
  br i1 %cmp.i149.i, label %do.body.i151.i, label %if.end6.i168.i

do.body.i151.i:                                   ; preds = %dib7000m_write_word.exit146.i
  %187 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.not.i150.i = icmp eq i32 %187, 0
  br i1 %tobool.not.i150.i, label %do.body.i151.i.dib7000m_write_word.exit170.i_crit_edge, label %do.end.i153.i

do.body.i151.i.dib7000m_write_word.exit170.i_crit_edge: ; preds = %do.body.i151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit170.i

do.end.i153.i:                                    ; preds = %do.body.i151.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit170.i

if.end6.i168.i:                                   ; preds = %dib7000m_write_word.exit146.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i154.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %188 = ptrtoint ptr %i2c_write_buffer.i154.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 3, ptr %i2c_write_buffer.i154.i, align 4
  %arrayidx12.i155.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %189 = ptrtoint ptr %arrayidx12.i155.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -123, ptr %arrayidx12.i155.i, align 1
  %arrayidx18.i156.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %190 = ptrtoint ptr %arrayidx18.i156.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %arrayidx18.i156.i, align 2
  %arrayidx23.i157.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %191 = ptrtoint ptr %arrayidx23.i157.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx23.i157.i, align 1
  %msg.i158.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %192 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 262144, ptr %192, align 8
  %194 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %i2c_addr3, align 8
  %196 = lshr i8 %195, 1
  %conv27.i160.i = zext i8 %196 to i16
  %197 = ptrtoint ptr %msg.i158.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv27.i160.i, ptr %msg.i158.i, align 4
  %flags.i161.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %198 = ptrtoint ptr %flags.i161.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %flags.i161.i, align 2
  %buf.i162.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %199 = ptrtoint ptr %buf.i162.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %i2c_write_buffer.i154.i, ptr %buf.i162.i, align 4
  %200 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i2c_adap2, align 4
  %call39.i165.i = tail call i32 @i2c_transfer(ptr noundef %201, ptr noundef %msg.i158.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit170.i

dib7000m_write_word.exit170.i:                    ; preds = %if.end6.i168.i, %do.end.i153.i, %do.body.i151.i.dib7000m_write_word.exit170.i_crit_edge
  %202 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %203)
  %cmp.i = icmp eq i16 %203, 16384
  %bw1.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 8
  %204 = ptrtoint ptr %bw1.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bw1.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %dib7000m_write_word.exit170.i
  %pll_bypass.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 6
  %206 = ptrtoint ptr %pll_bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %pll_bypass.i.i, align 4
  %conv.i.i = zext i8 %207 to i16
  %shl.i.i = shl i16 %conv.i.i, 15
  %modulo.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 11
  %208 = ptrtoint ptr %modulo.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %modulo.i.i, align 1
  %conv2.i.i = zext i8 %209 to i16
  %shl3.i.i = shl nuw nsw i16 %conv2.i.i, 7
  %or.i.i = or i16 %shl3.i.i, %shl.i.i
  %ADClkSrc.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 10
  %210 = ptrtoint ptr %ADClkSrc.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ADClkSrc.i.i, align 4
  %conv4.i.i = zext i8 %211 to i16
  %shl5.i.i = shl nuw nsw i16 %conv4.i.i, 6
  %or6.i.i = or i16 %or.i.i, %shl5.i.i
  %IO_CLK_en_core.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 9
  %212 = ptrtoint ptr %IO_CLK_en_core.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %IO_CLK_en_core.i.i, align 1
  %conv7.i.i = zext i8 %213 to i16
  %shl8.i.i = shl nuw nsw i16 %conv7.i.i, 5
  %or9.i.i = or i16 %or6.i.i, %shl8.i.i
  %bypclk_div.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 8
  %214 = ptrtoint ptr %bypclk_div.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %bypclk_div.i.i, align 2
  %conv10.i.i = zext i8 %215 to i16
  %shl11.i.i = shl nuw nsw i16 %conv10.i.i, 2
  %or12.i.i = or i16 %or9.i.i, %shl11.i.i
  %enable_refdiv.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 7
  %216 = ptrtoint ptr %enable_refdiv.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %enable_refdiv.i.i, align 1
  %conv13.i.i = zext i8 %217 to i16
  %shl14.i.i = shl nuw nsw i16 %conv13.i.i, 1
  %or15.i.i = or i16 %or12.i.i, %shl14.i.i
  %pll_ratio.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 3
  %218 = ptrtoint ptr %pll_ratio.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %pll_ratio.i.i, align 1
  %220 = lshr i8 %219, 3
  %221 = and i8 %220, 24
  %shl19.i.i = zext i8 %221 to i32
  %pll_range.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 4
  %222 = ptrtoint ptr %pll_range.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %pll_range.i.i, align 2
  %conv20.i.i = zext i8 %223 to i32
  %shl21.i.i = shl nuw nsw i32 %conv20.i.i, 1
  %or22.i.i = or i32 %shl21.i.i, %shl19.i.i
  %pll_reset.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 5
  %224 = ptrtoint ptr %pll_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %pll_reset.i.i, align 1
  %conv23.i.i = zext i8 %225 to i32
  %or24.i.i = or i32 %or22.i.i, %conv23.i.i
  %quartz_direct.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 13
  %226 = ptrtoint ptr %quartz_direct.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %quartz_direct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i171.i = icmp eq i8 %227, 0
  br i1 %tobool.not.i171.i, label %if.then.i.i, label %if.else39.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %228 = trunc i32 %or24.i.i to i16
  %conv29.i.i = or i16 %228, 32
  %input_clk_is_div_2.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 14
  %229 = ptrtoint ptr %input_clk_is_div_2.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %input_clk_is_div_2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool31.not.i.i = icmp eq i8 %230, 0
  %extract.t128.i.i = trunc i16 %or15.i.i to i8
  %231 = lshr i16 %or15.i.i, 8
  %232 = trunc i16 %231 to i8
  br i1 %tobool31.not.i.i, label %if.else.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t131.i.i = or i8 %232, 32
  %extract.t135.i.i = trunc i16 %conv29.i.i to i8
  %extract139144.i.i = lshr i8 %223, 7
  br label %if.end52.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t133.i.i = or i8 %232, 16
  %extract.t136.i.i = trunc i16 %conv29.i.i to i8
  %extract141145.i.i = lshr i8 %223, 7
  br label %if.end52.i.i

if.else39.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.tr.i.i = zext i8 %219 to i16
  %233 = shl i16 %conv18.tr.i.i, 9
  %234 = and i16 %233, 32256
  %conv46.i.i = or i16 %234, %or15.i.i
  %pll_prediv.i.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 2
  %235 = ptrtoint ptr %pll_prediv.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %pll_prediv.i.i, align 4
  %conv47.i.i = zext i8 %236 to i32
  %shl48.i.i = shl nuw nsw i32 %conv47.i.i, 5
  %or50.i.i = or i32 %shl48.i.i, %or24.i.i
  %extract.t.i.i = trunc i16 %or15.i.i to i8
  %extract.i.i = lshr i16 %conv46.i.i, 8
  %extract.t129.i.i = trunc i16 %extract.i.i to i8
  %extract.t134.i.i = trunc i32 %or50.i.i to i8
  %extract137143.i.i = lshr i32 %or50.i.i, 8
  %extract.t138.i.i = trunc i32 %extract137143.i.i to i8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.else39.i.i, %if.else.i.i, %if.then32.i.i
  %reg_907.0.off0.i.i = phi i8 [ %extract.t.i.i, %if.else39.i.i ], [ %extract.t128.i.i, %if.then32.i.i ], [ %extract.t128.i.i, %if.else.i.i ]
  %reg_907.0.off8.i.i = phi i8 [ %extract.t129.i.i, %if.else39.i.i ], [ %extract.t131.i.i, %if.then32.i.i ], [ %extract.t133.i.i, %if.else.i.i ]
  %reg_910.0.off0.i.i = phi i8 [ %extract.t134.i.i, %if.else39.i.i ], [ %extract.t135.i.i, %if.then32.i.i ], [ %extract.t136.i.i, %if.else.i.i ]
  %reg_910.0.off8.i.i = phi i8 [ %extract.t138.i.i, %if.else39.i.i ], [ %extract139144.i.i, %if.then32.i.i ], [ %extract141145.i.i, %if.else.i.i ]
  %call.i.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end6.i.i.i

do.body.i.i.i:                                    ; preds = %if.end52.i.i
  %237 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not.i.i.i = icmp eq i32 %237, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %238 = ptrtoint ptr %i2c_write_buffer.i.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 3, ptr %i2c_write_buffer.i.i.i, align 4
  %arrayidx12.i.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %239 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 -114, ptr %arrayidx12.i.i.i, align 1
  %arrayidx18.i.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %240 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %reg_910.0.off8.i.i, ptr %arrayidx18.i.i.i, align 2
  %arrayidx23.i.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %241 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %reg_910.0.off0.i.i, ptr %arrayidx23.i.i.i, align 1
  %msg.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %242 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 262144, ptr %242, align 8
  %244 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %i2c_addr3, align 8
  %246 = lshr i8 %245, 1
  %conv27.i.i.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv27.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %249 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %i2c_write_buffer.i.i.i, ptr %buf.i.i.i, align 4
  %250 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i.i = tail call i32 @i2c_transfer(ptr noundef %251, ptr noundef %msg.i.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i.i

dib7000m_write_word.exit.i.i:                     ; preds = %if.end6.i.i.i, %do.end.i.i.i, %do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge
  %call.i78.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i.i)
  %cmp.i79.i.i = icmp slt i32 %call.i78.i.i, 0
  br i1 %cmp.i79.i.i, label %do.body.i81.i.i, label %if.end6.i100.i.i

do.body.i81.i.i:                                  ; preds = %dib7000m_write_word.exit.i.i
  %252 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i80.i.i = icmp eq i32 %252, 0
  br i1 %tobool.not.i80.i.i, label %do.body.i81.i.i.dib7000m_write_word.exit102.i.i_crit_edge, label %do.end.i83.i.i

do.body.i81.i.i.dib7000m_write_word.exit102.i.i_crit_edge: ; preds = %do.body.i81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit102.i.i

do.end.i83.i.i:                                   ; preds = %do.body.i81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i82.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit102.i.i

if.end6.i100.i.i:                                 ; preds = %dib7000m_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i84.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %253 = ptrtoint ptr %i2c_write_buffer.i84.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 3, ptr %i2c_write_buffer.i84.i.i, align 4
  %arrayidx12.i85.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %254 = ptrtoint ptr %arrayidx12.i85.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 -117, ptr %arrayidx12.i85.i.i, align 1
  %arrayidx18.i87.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %255 = ptrtoint ptr %arrayidx18.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %reg_907.0.off8.i.i, ptr %arrayidx18.i87.i.i, align 2
  %arrayidx23.i89.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %256 = ptrtoint ptr %arrayidx23.i89.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %reg_907.0.off0.i.i, ptr %arrayidx23.i89.i.i, align 1
  %msg.i90.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %257 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 262144, ptr %257, align 8
  %259 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %i2c_addr3, align 8
  %261 = lshr i8 %260, 1
  %conv27.i92.i.i = zext i8 %261 to i16
  %262 = ptrtoint ptr %msg.i90.i.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv27.i92.i.i, ptr %msg.i90.i.i, align 4
  %flags.i93.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %263 = ptrtoint ptr %flags.i93.i.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %flags.i93.i.i, align 2
  %buf.i94.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %264 = ptrtoint ptr %buf.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %i2c_write_buffer.i84.i.i, ptr %buf.i94.i.i, align 4
  %265 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %i2c_adap2, align 4
  %call39.i97.i.i = tail call i32 @i2c_transfer(ptr noundef %266, ptr noundef %msg.i90.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit102.i.i

dib7000m_write_word.exit102.i.i:                  ; preds = %if.end6.i100.i.i, %do.end.i83.i.i, %do.body.i81.i.i.dib7000m_write_word.exit102.i.i_crit_edge
  %call.i104.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %cmp.i105.i.i = icmp slt i32 %call.i104.i.i, 0
  br i1 %cmp.i105.i.i, label %do.body.i107.i.i, label %if.end6.i124.i.i

do.body.i107.i.i:                                 ; preds = %dib7000m_write_word.exit102.i.i
  %267 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool.not.i106.i.i = icmp eq i32 %267, 0
  br i1 %tobool.not.i106.i.i, label %do.body.i107.i.i.if.end.i_crit_edge, label %do.end.i109.i.i

do.body.i107.i.i.if.end.i_crit_edge:              ; preds = %do.body.i107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i109.i.i:                                  ; preds = %do.body.i107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i108.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end.i

if.end6.i124.i.i:                                 ; preds = %dib7000m_write_word.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i110.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %268 = ptrtoint ptr %i2c_write_buffer.i110.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 3, ptr %i2c_write_buffer.i110.i.i, align 4
  %arrayidx12.i111.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %269 = ptrtoint ptr %arrayidx12.i111.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -116, ptr %arrayidx12.i111.i.i, align 1
  %arrayidx18.i112.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %270 = ptrtoint ptr %arrayidx18.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %arrayidx18.i112.i.i, align 2
  %arrayidx23.i113.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %271 = ptrtoint ptr %arrayidx23.i113.i.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 6, ptr %arrayidx23.i113.i.i, align 1
  %msg.i114.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %272 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 262144, ptr %272, align 8
  %274 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %i2c_addr3, align 8
  %276 = lshr i8 %275, 1
  %conv27.i116.i.i = zext i8 %276 to i16
  %277 = ptrtoint ptr %msg.i114.i.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %conv27.i116.i.i, ptr %msg.i114.i.i, align 4
  %flags.i117.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %278 = ptrtoint ptr %flags.i117.i.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 0, ptr %flags.i117.i.i, align 2
  %buf.i118.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %279 = ptrtoint ptr %buf.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %i2c_write_buffer.i110.i.i, ptr %buf.i118.i.i, align 4
  %280 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %i2c_adap2, align 4
  %call39.i121.i.i = tail call i32 @i2c_transfer(ptr noundef %281, ptr noundef %msg.i114.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end.i

if.else.i:                                        ; preds = %dib7000m_write_word.exit170.i
  %pll_prediv.i173.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 2
  %282 = ptrtoint ptr %pll_prediv.i173.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %pll_prediv.i173.i, align 4
  %pll_ratio.i174.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 3
  %284 = ptrtoint ptr %pll_ratio.i174.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %pll_ratio.i174.i, align 1
  %call.i.i176.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176.i)
  %cmp.i.i177.i = icmp slt i32 %call.i.i176.i, 0
  br i1 %cmp.i.i177.i, label %do.body.i.i179.i, label %if.end6.i.i193.i

do.body.i.i179.i:                                 ; preds = %if.else.i
  %286 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool.not.i.i178.i = icmp eq i32 %286, 0
  br i1 %tobool.not.i.i178.i, label %do.body.i.i179.i.dib7000m_write_word.exit.i199.i_crit_edge, label %do.end.i.i181.i

do.body.i.i179.i.dib7000m_write_word.exit.i199.i_crit_edge: ; preds = %do.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i199.i

do.end.i.i181.i:                                  ; preds = %do.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i199.i

if.end6.i.i193.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i182.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %287 = ptrtoint ptr %i2c_write_buffer.i.i182.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 3, ptr %i2c_write_buffer.i.i182.i, align 4
  %arrayidx12.i.i183.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %288 = ptrtoint ptr %arrayidx12.i.i183.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 -117, ptr %arrayidx12.i.i183.i, align 1
  %arrayidx18.i.i184.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %289 = ptrtoint ptr %arrayidx18.i.i184.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %283, ptr %arrayidx18.i.i184.i, align 2
  %arrayidx23.i.i185.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %290 = ptrtoint ptr %arrayidx23.i.i185.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %285, ptr %arrayidx23.i.i185.i, align 1
  %msg.i.i186.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %291 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 262144, ptr %291, align 8
  %293 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %i2c_addr3, align 8
  %295 = lshr i8 %294, 1
  %conv27.i.i188.i = zext i8 %295 to i16
  %296 = ptrtoint ptr %msg.i.i186.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv27.i.i188.i, ptr %msg.i.i186.i, align 4
  %flags.i.i189.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i.i189.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i.i189.i, align 2
  %buf.i.i190.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %298 = ptrtoint ptr %buf.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %i2c_write_buffer.i.i182.i, ptr %buf.i.i190.i, align 4
  %299 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i192.i = tail call i32 @i2c_transfer(ptr noundef %300, ptr noundef %msg.i.i186.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i199.i

dib7000m_write_word.exit.i199.i:                  ; preds = %if.end6.i.i193.i, %do.end.i.i181.i, %do.body.i.i179.i.dib7000m_write_word.exit.i199.i_crit_edge
  %IO_CLK_en_core.i194.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 9
  %301 = ptrtoint ptr %IO_CLK_en_core.i194.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %IO_CLK_en_core.i194.i, align 1
  %conv5.i.i = zext i8 %302 to i16
  %shl6.i.i = shl i16 %conv5.i.i, 10
  %bypclk_div.i195.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 8
  %303 = ptrtoint ptr %bypclk_div.i195.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %bypclk_div.i195.i, align 2
  %conv8.i.i = zext i8 %304 to i16
  %shl9.i.i = shl nuw nsw i16 %conv8.i.i, 5
  %enable_refdiv.i196.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 7
  %305 = ptrtoint ptr %enable_refdiv.i196.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %enable_refdiv.i196.i, align 1
  %conv11.i.i = zext i8 %306 to i16
  %shl12.i.i = shl nuw nsw i16 %conv11.i.i, 4
  %pll_range.i197.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 4
  %307 = ptrtoint ptr %pll_range.i197.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %pll_range.i197.i, align 2
  %conv15.i.i = zext i8 %308 to i16
  %shl16.i.i = shl nuw nsw i16 %conv15.i.i, 1
  %pll_reset.i198.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 5
  %309 = ptrtoint ptr %pll_reset.i198.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %pll_reset.i198.i, align 1
  %conv18.i.i = zext i8 %310 to i16
  %or7.i.i = or i16 %shl6.i.i, %shl9.i.i
  %or10.i.i = or i16 %or7.i.i, %shl12.i.i
  %or14.i.i = or i16 %or10.i.i, %shl16.i.i
  %or17.i.i = or i16 %or14.i.i, %conv18.i.i
  %or20.i.i = or i16 %or17.i.i, 12296
  %call.i55.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %cmp.i56.i.i = icmp slt i32 %call.i55.i.i, 0
  br i1 %cmp.i56.i.i, label %do.body.i58.i.i, label %if.end6.i76.i.i

do.body.i58.i.i:                                  ; preds = %dib7000m_write_word.exit.i199.i
  %311 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool.not.i57.i.i = icmp eq i32 %311, 0
  br i1 %tobool.not.i57.i.i, label %do.body.i58.i.i.dib7000m_write_word.exit78.i.i_crit_edge, label %do.end.i60.i.i

do.body.i58.i.i.dib7000m_write_word.exit78.i.i_crit_edge: ; preds = %do.body.i58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit78.i.i

do.end.i60.i.i:                                   ; preds = %do.body.i58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i59.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit78.i.i

if.end6.i76.i.i:                                  ; preds = %dib7000m_write_word.exit.i199.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i61.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %312 = ptrtoint ptr %i2c_write_buffer.i61.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 3, ptr %i2c_write_buffer.i61.i.i, align 4
  %arrayidx12.i62.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %313 = ptrtoint ptr %arrayidx12.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 -116, ptr %arrayidx12.i62.i.i, align 1
  %314 = lshr i16 %or20.i.i, 8
  %conv16.i.i.i = trunc i16 %314 to i8
  %arrayidx18.i63.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %315 = ptrtoint ptr %arrayidx18.i63.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv16.i.i.i, ptr %arrayidx18.i63.i.i, align 2
  %conv21.i64.i.i = trunc i16 %or20.i.i to i8
  %arrayidx23.i65.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %316 = ptrtoint ptr %arrayidx23.i65.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv21.i64.i.i, ptr %arrayidx23.i65.i.i, align 1
  %msg.i66.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %317 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 262144, ptr %317, align 8
  %319 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %i2c_addr3, align 8
  %321 = lshr i8 %320, 1
  %conv27.i68.i.i = zext i8 %321 to i16
  %322 = ptrtoint ptr %msg.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv27.i68.i.i, ptr %msg.i66.i.i, align 4
  %flags.i69.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %323 = ptrtoint ptr %flags.i69.i.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 0, ptr %flags.i69.i.i, align 2
  %buf.i70.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %324 = ptrtoint ptr %buf.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %i2c_write_buffer.i61.i.i, ptr %buf.i70.i.i, align 4
  %325 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %i2c_adap2, align 4
  %call39.i73.i.i = tail call i32 @i2c_transfer(ptr noundef %326, ptr noundef %msg.i66.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit78.i.i

dib7000m_write_word.exit78.i.i:                   ; preds = %if.end6.i76.i.i, %do.end.i60.i.i, %do.body.i58.i.i.dib7000m_write_word.exit78.i.i_crit_edge
  %pll_bypass.i200.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 6
  %327 = ptrtoint ptr %pll_bypass.i200.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %pll_bypass.i200.i, align 4
  %call.i80.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i.i)
  %cmp.i81.i.i = icmp slt i32 %call.i80.i.i, 0
  br i1 %cmp.i81.i.i, label %do.body.i83.i.i, label %if.end6.i102.i.i

do.body.i83.i.i:                                  ; preds = %dib7000m_write_word.exit78.i.i
  %329 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool.not.i82.i.i = icmp eq i32 %329, 0
  br i1 %tobool.not.i82.i.i, label %do.body.i83.i.i.dib7000m_write_word.exit104.i.i_crit_edge, label %do.end.i85.i.i

do.body.i83.i.i.dib7000m_write_word.exit104.i.i_crit_edge: ; preds = %do.body.i83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit104.i.i

do.end.i85.i.i:                                   ; preds = %do.body.i83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i84.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit104.i.i

if.end6.i102.i.i:                                 ; preds = %dib7000m_write_word.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.i.i = zext i8 %328 to i16
  %shl25.i.i = shl nuw nsw i16 %conv24.i.i, 3
  %330 = and i16 %or20.i.i, -9
  %or26.i.i = or i16 %shl25.i.i, %330
  %i2c_write_buffer.i86.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %331 = ptrtoint ptr %i2c_write_buffer.i86.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 3, ptr %i2c_write_buffer.i86.i.i, align 4
  %arrayidx12.i87.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %332 = ptrtoint ptr %arrayidx12.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -116, ptr %arrayidx12.i87.i.i, align 1
  %333 = lshr i16 %or26.i.i, 8
  %conv16.i88.i.i = trunc i16 %333 to i8
  %arrayidx18.i89.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %334 = ptrtoint ptr %arrayidx18.i89.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %conv16.i88.i.i, ptr %arrayidx18.i89.i.i, align 2
  %conv21.i90.i.i = trunc i16 %or26.i.i to i8
  %arrayidx23.i91.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %335 = ptrtoint ptr %arrayidx23.i91.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %conv21.i90.i.i, ptr %arrayidx23.i91.i.i, align 1
  %msg.i92.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %336 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 262144, ptr %336, align 8
  %338 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %i2c_addr3, align 8
  %340 = lshr i8 %339, 1
  %conv27.i94.i.i = zext i8 %340 to i16
  %341 = ptrtoint ptr %msg.i92.i.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %conv27.i94.i.i, ptr %msg.i92.i.i, align 4
  %flags.i95.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %342 = ptrtoint ptr %flags.i95.i.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 0, ptr %flags.i95.i.i, align 2
  %buf.i96.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %343 = ptrtoint ptr %buf.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %i2c_write_buffer.i86.i.i, ptr %buf.i96.i.i, align 4
  %344 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %i2c_adap2, align 4
  %call39.i99.i.i = tail call i32 @i2c_transfer(ptr noundef %345, ptr noundef %msg.i92.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit104.i.i

dib7000m_write_word.exit104.i.i:                  ; preds = %if.end6.i102.i.i, %do.end.i85.i.i, %do.body.i83.i.i.dib7000m_write_word.exit104.i.i_crit_edge
  %modulo.i201.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 11
  %346 = ptrtoint ptr %modulo.i201.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %modulo.i201.i, align 1
  %ADClkSrc.i202.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 10
  %348 = ptrtoint ptr %ADClkSrc.i202.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %ADClkSrc.i202.i, align 4
  %call.i106.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i.i)
  %cmp.i107.i.i = icmp slt i32 %call.i106.i.i, 0
  br i1 %cmp.i107.i.i, label %do.body.i109.i.i, label %if.end6.i128.i.i

do.body.i109.i.i:                                 ; preds = %dib7000m_write_word.exit104.i.i
  %350 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i108.i.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i108.i.i, label %do.body.i109.i.i.if.end.i_crit_edge, label %do.end.i111.i.i

do.body.i109.i.i.if.end.i_crit_edge:              ; preds = %do.body.i109.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i111.i.i:                                  ; preds = %do.body.i109.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i110.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end.i

if.end6.i128.i.i:                                 ; preds = %dib7000m_write_word.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i203.i = zext i8 %347 to i16
  %shl30.i.i = shl nuw i16 %conv29.i203.i, 8
  %conv32.i.i = zext i8 %349 to i16
  %shl33.i.i = shl nuw nsw i16 %conv32.i.i, 7
  %or31.i.i = or i16 %shl33.i.i, %shl30.i.i
  %i2c_write_buffer.i112.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %351 = ptrtoint ptr %i2c_write_buffer.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 3, ptr %i2c_write_buffer.i112.i.i, align 4
  %arrayidx12.i113.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %352 = ptrtoint ptr %arrayidx12.i113.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 -114, ptr %arrayidx12.i113.i.i, align 1
  %or34.i.i = lshr i16 %or31.i.i, 8
  %353 = trunc i16 %or34.i.i to i8
  %conv16.i114.i.i = or i8 %353, 24
  %arrayidx18.i115.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %354 = ptrtoint ptr %arrayidx18.i115.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv16.i114.i.i, ptr %arrayidx18.i115.i.i, align 2
  %conv21.i116.i.i = trunc i16 %shl33.i.i to i8
  %arrayidx23.i117.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %355 = ptrtoint ptr %arrayidx23.i117.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %conv21.i116.i.i, ptr %arrayidx23.i117.i.i, align 1
  %msg.i118.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %356 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 262144, ptr %356, align 8
  %358 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %i2c_addr3, align 8
  %360 = lshr i8 %359, 1
  %conv27.i120.i.i = zext i8 %360 to i16
  %361 = ptrtoint ptr %msg.i118.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %conv27.i120.i.i, ptr %msg.i118.i.i, align 4
  %flags.i121.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %362 = ptrtoint ptr %flags.i121.i.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 0, ptr %flags.i121.i.i, align 2
  %buf.i122.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %363 = ptrtoint ptr %buf.i122.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %i2c_write_buffer.i112.i.i, ptr %buf.i122.i.i, align 4
  %364 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %i2c_adap2, align 4
  %call39.i125.i.i = tail call i32 @i2c_transfer(ptr noundef %365, ptr noundef %msg.i118.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i128.i.i, %do.end.i111.i.i, %do.body.i109.i.i.if.end.i_crit_edge, %if.end6.i124.i.i, %do.end.i109.i.i, %do.body.i107.i.i.if.end.i_crit_edge
  %366 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %205, align 4
  %call.i.i51 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i.i52, label %do.body.i.i54, label %if.end6.i.i70

do.body.i.i54:                                    ; preds = %if.end.i
  %368 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool.not.i.i53 = icmp eq i32 %368, 0
  br i1 %tobool.not.i.i53, label %do.body.i.i54.dib7000m_write_word.exit.i71_crit_edge, label %do.end.i.i56

do.body.i.i54.dib7000m_write_word.exit.i71_crit_edge: ; preds = %do.body.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i71

do.end.i.i56:                                     ; preds = %do.body.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i71

if.end6.i.i70:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %367, 1000
  %shr.i = lshr i32 %mul.i, 16
  %i2c_write_buffer.i.i57 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %369 = ptrtoint ptr %i2c_write_buffer.i.i57 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 0, ptr %i2c_write_buffer.i.i57, align 4
  %arrayidx12.i.i58 = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %370 = ptrtoint ptr %arrayidx12.i.i58 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 18, ptr %arrayidx12.i.i58, align 1
  %371 = lshr i32 %mul.i, 24
  %conv16.i.i59 = trunc i32 %371 to i8
  %arrayidx18.i.i60 = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %372 = ptrtoint ptr %arrayidx18.i.i60 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv16.i.i59, ptr %arrayidx18.i.i60, align 2
  %conv21.i.i61 = trunc i32 %shr.i to i8
  %arrayidx23.i.i62 = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %373 = ptrtoint ptr %arrayidx23.i.i62 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %conv21.i.i61, ptr %arrayidx23.i.i62, align 1
  %msg.i.i63 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %374 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 262144, ptr %374, align 8
  %376 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %i2c_addr3, align 8
  %378 = lshr i8 %377, 1
  %conv27.i.i65 = zext i8 %378 to i16
  %379 = ptrtoint ptr %msg.i.i63 to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %conv27.i.i65, ptr %msg.i.i63, align 4
  %flags.i.i66 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %380 = ptrtoint ptr %flags.i.i66 to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 0, ptr %flags.i.i66, align 2
  %buf.i.i67 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %381 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %i2c_write_buffer.i.i57, ptr %buf.i.i67, align 4
  %382 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i69 = tail call i32 @i2c_transfer(ptr noundef %383, ptr noundef %msg.i.i63, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i71

dib7000m_write_word.exit.i71:                     ; preds = %if.end6.i.i70, %do.end.i.i56, %do.body.i.i54.dib7000m_write_word.exit.i71_crit_edge
  %384 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %205, align 4
  %call.i24.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp.i25.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp.i25.i, label %do.body.i27.i, label %if.end6.i46.i

do.body.i27.i:                                    ; preds = %dib7000m_write_word.exit.i71
  %386 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool.not.i26.i = icmp eq i32 %386, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.dib7000m_write_word.exit48.i_crit_edge, label %do.end.i29.i

do.body.i27.i.dib7000m_write_word.exit48.i_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit48.i

do.end.i29.i:                                     ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit48.i

if.end6.i46.i:                                    ; preds = %dib7000m_write_word.exit.i71
  call void @__sanitizer_cov_trace_pc() #8
  %387 = trunc i32 %385 to i16
  %conv4.i = mul i16 %387, 1000
  %i2c_write_buffer.i30.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %388 = ptrtoint ptr %i2c_write_buffer.i30.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %i2c_write_buffer.i30.i, align 4
  %arrayidx12.i31.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %389 = ptrtoint ptr %arrayidx12.i31.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 19, ptr %arrayidx12.i31.i, align 1
  %390 = lshr i16 %conv4.i, 8
  %conv16.i32.i = trunc i16 %390 to i8
  %arrayidx18.i33.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %391 = ptrtoint ptr %arrayidx18.i33.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %conv16.i32.i, ptr %arrayidx18.i33.i, align 2
  %conv21.i34.i = trunc i16 %conv4.i to i8
  %arrayidx23.i35.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %392 = ptrtoint ptr %arrayidx23.i35.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv21.i34.i, ptr %arrayidx23.i35.i, align 1
  %msg.i36.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %393 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 262144, ptr %393, align 8
  %395 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %i2c_addr3, align 8
  %397 = lshr i8 %396, 1
  %conv27.i38.i = zext i8 %397 to i16
  %398 = ptrtoint ptr %msg.i36.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %conv27.i38.i, ptr %msg.i36.i, align 4
  %flags.i39.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %399 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 0, ptr %flags.i39.i, align 2
  %buf.i40.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %400 = ptrtoint ptr %buf.i40.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %i2c_write_buffer.i30.i, ptr %buf.i40.i, align 4
  %401 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %i2c_adap2, align 4
  %call39.i43.i = tail call i32 @i2c_transfer(ptr noundef %402, ptr noundef %msg.i36.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit48.i

dib7000m_write_word.exit48.i:                     ; preds = %if.end6.i46.i, %do.end.i29.i, %do.body.i27.i.dib7000m_write_word.exit48.i_crit_edge
  %ifreq.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 13
  %403 = ptrtoint ptr %ifreq.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %ifreq.i, align 4
  %call.i50.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp.i51.i = icmp slt i32 %call.i50.i, 0
  br i1 %cmp.i51.i, label %do.body.i53.i, label %if.end6.i72.i80

do.body.i53.i:                                    ; preds = %dib7000m_write_word.exit48.i
  %405 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %tobool.not.i52.i = icmp eq i32 %405, 0
  br i1 %tobool.not.i52.i, label %do.body.i53.i.dib7000m_write_word.exit74.i83_crit_edge, label %do.end.i55.i

do.body.i53.i.dib7000m_write_word.exit74.i83_crit_edge: ; preds = %do.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit74.i83

do.end.i55.i:                                     ; preds = %do.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit74.i83

if.end6.i72.i80:                                  ; preds = %dib7000m_write_word.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr6.i = lshr i32 %404, 16
  %i2c_write_buffer.i56.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %406 = ptrtoint ptr %i2c_write_buffer.i56.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %i2c_write_buffer.i56.i, align 4
  %arrayidx12.i57.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %407 = ptrtoint ptr %arrayidx12.i57.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 21, ptr %arrayidx12.i57.i, align 1
  %408 = lshr i32 %404, 24
  %conv16.i58.i = trunc i32 %408 to i8
  %arrayidx18.i59.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %409 = ptrtoint ptr %arrayidx18.i59.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %conv16.i58.i, ptr %arrayidx18.i59.i, align 2
  %conv21.i60.i = trunc i32 %shr6.i to i8
  %arrayidx23.i61.i72 = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %410 = ptrtoint ptr %arrayidx23.i61.i72 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %conv21.i60.i, ptr %arrayidx23.i61.i72, align 1
  %msg.i62.i73 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %411 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 262144, ptr %411, align 8
  %413 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %i2c_addr3, align 8
  %415 = lshr i8 %414, 1
  %conv27.i64.i75 = zext i8 %415 to i16
  %416 = ptrtoint ptr %msg.i62.i73 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %conv27.i64.i75, ptr %msg.i62.i73, align 4
  %flags.i65.i76 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %417 = ptrtoint ptr %flags.i65.i76 to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 0, ptr %flags.i65.i76, align 2
  %buf.i66.i77 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %418 = ptrtoint ptr %buf.i66.i77 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %i2c_write_buffer.i56.i, ptr %buf.i66.i77, align 4
  %419 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %i2c_adap2, align 4
  %call39.i69.i79 = tail call i32 @i2c_transfer(ptr noundef %420, ptr noundef %msg.i62.i73, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit74.i83

dib7000m_write_word.exit74.i83:                   ; preds = %if.end6.i72.i80, %do.end.i55.i, %do.body.i53.i.dib7000m_write_word.exit74.i83_crit_edge
  %421 = ptrtoint ptr %ifreq.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %ifreq.i, align 4
  %call.i76.i81 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i81)
  %cmp.i77.i82 = icmp slt i32 %call.i76.i81, 0
  br i1 %cmp.i77.i82, label %do.body.i79.i85, label %if.end6.i98.i

do.body.i79.i85:                                  ; preds = %dib7000m_write_word.exit74.i83
  %423 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %tobool.not.i78.i84 = icmp eq i32 %423, 0
  br i1 %tobool.not.i78.i84, label %do.body.i79.i85.dib7000m_write_word.exit100.i_crit_edge, label %do.end.i81.i87

do.body.i79.i85.dib7000m_write_word.exit100.i_crit_edge: ; preds = %do.body.i79.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit100.i

do.end.i81.i87:                                   ; preds = %do.body.i79.i85
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i80.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit100.i

if.end6.i98.i:                                    ; preds = %dib7000m_write_word.exit74.i83
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i82.i88 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %424 = ptrtoint ptr %i2c_write_buffer.i82.i88 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %i2c_write_buffer.i82.i88, align 4
  %arrayidx12.i83.i89 = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %425 = ptrtoint ptr %arrayidx12.i83.i89 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 22, ptr %arrayidx12.i83.i89, align 1
  %426 = lshr i32 %422, 8
  %conv16.i84.i = trunc i32 %426 to i8
  %arrayidx18.i85.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %427 = ptrtoint ptr %arrayidx18.i85.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %conv16.i84.i, ptr %arrayidx18.i85.i, align 2
  %conv21.i86.i = trunc i32 %422 to i8
  %arrayidx23.i87.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %428 = ptrtoint ptr %arrayidx23.i87.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %conv21.i86.i, ptr %arrayidx23.i87.i, align 1
  %msg.i88.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %429 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 262144, ptr %429, align 8
  %431 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %i2c_addr3, align 8
  %433 = lshr i8 %432, 1
  %conv27.i90.i = zext i8 %433 to i16
  %434 = ptrtoint ptr %msg.i88.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 %conv27.i90.i, ptr %msg.i88.i, align 4
  %flags.i91.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %435 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_store2_noabort(i32 %435)
  store i16 0, ptr %flags.i91.i, align 2
  %buf.i92.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %436 = ptrtoint ptr %buf.i92.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %i2c_write_buffer.i82.i88, ptr %buf.i92.i, align 4
  %437 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %i2c_adap2, align 4
  %call39.i95.i = tail call i32 @i2c_transfer(ptr noundef %438, ptr noundef %msg.i88.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit100.i

dib7000m_write_word.exit100.i:                    ; preds = %if.end6.i98.i, %do.end.i81.i87, %do.body.i79.i85.dib7000m_write_word.exit100.i_crit_edge
  %sad_cfg.i = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %205, i32 0, i32 12
  %439 = ptrtoint ptr %sad_cfg.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %sad_cfg.i, align 2
  %call.i102.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %cmp.i103.i = icmp slt i32 %call.i102.i, 0
  br i1 %cmp.i103.i, label %do.body.i105.i, label %if.end6.i124.i

do.body.i105.i:                                   ; preds = %dib7000m_write_word.exit100.i
  %441 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool.not.i104.i = icmp eq i32 %441, 0
  br i1 %tobool.not.i104.i, label %do.body.i105.i.dib7000m_reset_pll_common.exit_crit_edge, label %do.end.i107.i

do.body.i105.i.dib7000m_reset_pll_common.exit_crit_edge: ; preds = %do.body.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_reset_pll_common.exit

do.end.i107.i:                                    ; preds = %do.body.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_reset_pll_common.exit

if.end6.i124.i:                                   ; preds = %dib7000m_write_word.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i108.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %442 = ptrtoint ptr %i2c_write_buffer.i108.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 3, ptr %i2c_write_buffer.i108.i, align 4
  %arrayidx12.i109.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %443 = ptrtoint ptr %arrayidx12.i109.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 -96, ptr %arrayidx12.i109.i, align 1
  %444 = lshr i16 %440, 8
  %conv16.i110.i = trunc i16 %444 to i8
  %arrayidx18.i111.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %445 = ptrtoint ptr %arrayidx18.i111.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %conv16.i110.i, ptr %arrayidx18.i111.i, align 2
  %conv21.i112.i = trunc i16 %440 to i8
  %arrayidx23.i113.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %446 = ptrtoint ptr %arrayidx23.i113.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %conv21.i112.i, ptr %arrayidx23.i113.i, align 1
  %msg.i114.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %447 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 262144, ptr %447, align 8
  %449 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %i2c_addr3, align 8
  %451 = lshr i8 %450, 1
  %conv27.i116.i = zext i8 %451 to i16
  %452 = ptrtoint ptr %msg.i114.i to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 %conv27.i116.i, ptr %msg.i114.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %453 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 0, ptr %flags.i117.i, align 2
  %buf.i118.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %454 = ptrtoint ptr %buf.i118.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %i2c_write_buffer.i108.i, ptr %buf.i118.i, align 4
  %455 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %i2c_adap2, align 4
  %call39.i121.i = tail call i32 @i2c_transfer(ptr noundef %456, ptr noundef %msg.i114.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_reset_pll_common.exit

dib7000m_reset_pll_common.exit:                   ; preds = %if.end6.i124.i, %do.end.i107.i, %do.body.i105.i.dib7000m_reset_pll_common.exit_crit_edge
  %gpio_dir.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 9
  %457 = ptrtoint ptr %gpio_dir.i.i to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %gpio_dir.i.i, align 8
  %call.i.i205.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205.i)
  %cmp.i.i206.i = icmp slt i32 %call.i.i205.i, 0
  br i1 %cmp.i.i206.i, label %do.body.i.i208.i, label %if.end6.i.i223.i

do.body.i.i208.i:                                 ; preds = %dib7000m_reset_pll_common.exit
  %459 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %459)
  %tobool.not.i.i207.i = icmp eq i32 %459, 0
  br i1 %tobool.not.i.i207.i, label %do.body.i.i208.i.dib7000m_write_word.exit.i224.i_crit_edge, label %do.end.i.i210.i

do.body.i.i208.i.dib7000m_write_word.exit.i224.i_crit_edge: ; preds = %do.body.i.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i224.i

do.end.i.i210.i:                                  ; preds = %do.body.i.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i224.i

if.end6.i.i223.i:                                 ; preds = %dib7000m_reset_pll_common.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i211.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %460 = ptrtoint ptr %i2c_write_buffer.i.i211.i to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 3, ptr %i2c_write_buffer.i.i211.i, align 4
  %arrayidx12.i.i212.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %461 = ptrtoint ptr %arrayidx12.i.i212.i to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 5, ptr %arrayidx12.i.i212.i, align 1
  %462 = lshr i16 %458, 8
  %conv16.i.i213.i = trunc i16 %462 to i8
  %arrayidx18.i.i214.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %463 = ptrtoint ptr %arrayidx18.i.i214.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %conv16.i.i213.i, ptr %arrayidx18.i.i214.i, align 2
  %conv21.i.i.i = trunc i16 %458 to i8
  %arrayidx23.i.i215.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %464 = ptrtoint ptr %arrayidx23.i.i215.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %conv21.i.i.i, ptr %arrayidx23.i.i215.i, align 1
  %msg.i.i216.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %465 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 262144, ptr %465, align 8
  %467 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %i2c_addr3, align 8
  %469 = lshr i8 %468, 1
  %conv27.i.i218.i = zext i8 %469 to i16
  %470 = ptrtoint ptr %msg.i.i216.i to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 %conv27.i.i218.i, ptr %msg.i.i216.i, align 4
  %flags.i.i219.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %471 = ptrtoint ptr %flags.i.i219.i to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 0, ptr %flags.i.i219.i, align 2
  %buf.i.i220.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %472 = ptrtoint ptr %buf.i.i220.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %i2c_write_buffer.i.i211.i, ptr %buf.i.i220.i, align 4
  %473 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i222.i = tail call i32 @i2c_transfer(ptr noundef %474, ptr noundef %msg.i.i216.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i224.i

dib7000m_write_word.exit.i224.i:                  ; preds = %if.end6.i.i223.i, %do.end.i.i210.i, %do.body.i.i208.i.dib7000m_write_word.exit.i224.i_crit_edge
  %gpio_val.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 10
  %475 = ptrtoint ptr %gpio_val.i.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %gpio_val.i.i, align 2
  %call.i2.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %cmp.i3.i.i = icmp slt i32 %call.i2.i.i, 0
  br i1 %cmp.i3.i.i, label %do.body.i5.i.i, label %if.end6.i24.i.i

do.body.i5.i.i:                                   ; preds = %dib7000m_write_word.exit.i224.i
  %477 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool.not.i4.i.i = icmp eq i32 %477, 0
  br i1 %tobool.not.i4.i.i, label %do.body.i5.i.i.dib7000m_write_word.exit26.i.i_crit_edge, label %do.end.i7.i.i

do.body.i5.i.i.dib7000m_write_word.exit26.i.i_crit_edge: ; preds = %do.body.i5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26.i.i

do.end.i7.i.i:                                    ; preds = %do.body.i5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26.i.i

if.end6.i24.i.i:                                  ; preds = %dib7000m_write_word.exit.i224.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i8.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %478 = ptrtoint ptr %i2c_write_buffer.i8.i.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 3, ptr %i2c_write_buffer.i8.i.i, align 4
  %arrayidx12.i9.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %479 = ptrtoint ptr %arrayidx12.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 6, ptr %arrayidx12.i9.i.i, align 1
  %480 = lshr i16 %476, 8
  %conv16.i10.i.i = trunc i16 %480 to i8
  %arrayidx18.i11.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %481 = ptrtoint ptr %arrayidx18.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %conv16.i10.i.i, ptr %arrayidx18.i11.i.i, align 2
  %conv21.i12.i.i = trunc i16 %476 to i8
  %arrayidx23.i13.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %482 = ptrtoint ptr %arrayidx23.i13.i.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %conv21.i12.i.i, ptr %arrayidx23.i13.i.i, align 1
  %msg.i14.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %483 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 262144, ptr %483, align 8
  %485 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %i2c_addr3, align 8
  %487 = lshr i8 %486, 1
  %conv27.i16.i.i = zext i8 %487 to i16
  %488 = ptrtoint ptr %msg.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %conv27.i16.i.i, ptr %msg.i14.i.i, align 4
  %flags.i17.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %489 = ptrtoint ptr %flags.i17.i.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 0, ptr %flags.i17.i.i, align 2
  %buf.i18.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %490 = ptrtoint ptr %buf.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr %i2c_write_buffer.i8.i.i, ptr %buf.i18.i.i, align 4
  %491 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %i2c_adap2, align 4
  %call39.i21.i.i = tail call i32 @i2c_transfer(ptr noundef %492, ptr noundef %msg.i14.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit26.i.i

dib7000m_write_word.exit26.i.i:                   ; preds = %if.end6.i24.i.i, %do.end.i7.i.i, %do.body.i5.i.i.dib7000m_write_word.exit26.i.i_crit_edge
  %gpio_pwm_pos.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 11
  %493 = ptrtoint ptr %gpio_pwm_pos.i.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %gpio_pwm_pos.i.i, align 4
  %call.i28.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i.i)
  %cmp.i29.i.i = icmp slt i32 %call.i28.i.i, 0
  br i1 %cmp.i29.i.i, label %do.body.i31.i.i, label %if.end6.i50.i.i

do.body.i31.i.i:                                  ; preds = %dib7000m_write_word.exit26.i.i
  %495 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %495)
  %tobool.not.i30.i.i = icmp eq i32 %495, 0
  br i1 %tobool.not.i30.i.i, label %do.body.i31.i.i.dib7000m_write_word.exit52.i.i_crit_edge, label %do.end.i33.i.i

do.body.i31.i.i.dib7000m_write_word.exit52.i.i_crit_edge: ; preds = %do.body.i31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit52.i.i

do.end.i33.i.i:                                   ; preds = %do.body.i31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit52.i.i

if.end6.i50.i.i:                                  ; preds = %dib7000m_write_word.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i34.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %496 = ptrtoint ptr %i2c_write_buffer.i34.i.i to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 3, ptr %i2c_write_buffer.i34.i.i, align 4
  %arrayidx12.i35.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %497 = ptrtoint ptr %arrayidx12.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 7, ptr %arrayidx12.i35.i.i, align 1
  %498 = lshr i16 %494, 8
  %conv16.i36.i.i = trunc i16 %498 to i8
  %arrayidx18.i37.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %499 = ptrtoint ptr %arrayidx18.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %conv16.i36.i.i, ptr %arrayidx18.i37.i.i, align 2
  %conv21.i38.i.i = trunc i16 %494 to i8
  %arrayidx23.i39.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %500 = ptrtoint ptr %arrayidx23.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %conv21.i38.i.i, ptr %arrayidx23.i39.i.i, align 1
  %msg.i40.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %501 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 262144, ptr %501, align 8
  %503 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %i2c_addr3, align 8
  %505 = lshr i8 %504, 1
  %conv27.i42.i.i = zext i8 %505 to i16
  %506 = ptrtoint ptr %msg.i40.i.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %conv27.i42.i.i, ptr %msg.i40.i.i, align 4
  %flags.i43.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %507 = ptrtoint ptr %flags.i43.i.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 0, ptr %flags.i43.i.i, align 2
  %buf.i44.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %508 = ptrtoint ptr %buf.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %i2c_write_buffer.i34.i.i, ptr %buf.i44.i.i, align 4
  %509 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %i2c_adap2, align 4
  %call39.i47.i.i = tail call i32 @i2c_transfer(ptr noundef %510, ptr noundef %msg.i40.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit52.i.i

dib7000m_write_word.exit52.i.i:                   ; preds = %if.end6.i50.i.i, %do.end.i33.i.i, %do.body.i31.i.i.dib7000m_write_word.exit52.i.i_crit_edge
  %pwm_freq_div.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 12
  %511 = ptrtoint ptr %pwm_freq_div.i.i to i32
  call void @__asan_load2_noabort(i32 %511)
  %512 = load i16, ptr %pwm_freq_div.i.i, align 2
  %call.i54.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i)
  %cmp.i55.i.i = icmp slt i32 %call.i54.i.i, 0
  br i1 %cmp.i55.i.i, label %do.body.i57.i.i, label %if.end6.i76.i235.i

do.body.i57.i.i:                                  ; preds = %dib7000m_write_word.exit52.i.i
  %513 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %513)
  %tobool.not.i56.i.i = icmp eq i32 %513, 0
  br i1 %tobool.not.i56.i.i, label %do.body.i57.i.i.dib7000m_reset_gpio.exit.i_crit_edge, label %do.end.i59.i.i

do.body.i57.i.i.dib7000m_reset_gpio.exit.i_crit_edge: ; preds = %do.body.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_reset_gpio.exit.i

do.end.i59.i.i:                                   ; preds = %do.body.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_reset_gpio.exit.i

if.end6.i76.i235.i:                               ; preds = %dib7000m_write_word.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i60.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %514 = ptrtoint ptr %i2c_write_buffer.i60.i.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 3, ptr %i2c_write_buffer.i60.i.i, align 4
  %arrayidx12.i61.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %515 = ptrtoint ptr %arrayidx12.i61.i.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 12, ptr %arrayidx12.i61.i.i, align 1
  %516 = lshr i16 %512, 8
  %conv16.i62.i.i = trunc i16 %516 to i8
  %arrayidx18.i63.i225.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %517 = ptrtoint ptr %arrayidx18.i63.i225.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %conv16.i62.i.i, ptr %arrayidx18.i63.i225.i, align 2
  %conv21.i64.i226.i = trunc i16 %512 to i8
  %arrayidx23.i65.i227.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %518 = ptrtoint ptr %arrayidx23.i65.i227.i to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %conv21.i64.i226.i, ptr %arrayidx23.i65.i227.i, align 1
  %msg.i66.i228.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %519 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 262144, ptr %519, align 8
  %521 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %i2c_addr3, align 8
  %523 = lshr i8 %522, 1
  %conv27.i68.i230.i = zext i8 %523 to i16
  %524 = ptrtoint ptr %msg.i66.i228.i to i32
  call void @__asan_store2_noabort(i32 %524)
  store i16 %conv27.i68.i230.i, ptr %msg.i66.i228.i, align 4
  %flags.i69.i231.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %525 = ptrtoint ptr %flags.i69.i231.i to i32
  call void @__asan_store2_noabort(i32 %525)
  store i16 0, ptr %flags.i69.i231.i, align 2
  %buf.i70.i232.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %526 = ptrtoint ptr %buf.i70.i232.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store ptr %i2c_write_buffer.i60.i.i, ptr %buf.i70.i232.i, align 4
  %527 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %i2c_adap2, align 4
  %call39.i73.i234.i = tail call i32 @i2c_transfer(ptr noundef %528, ptr noundef %msg.i66.i228.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_reset_gpio.exit.i

dib7000m_reset_gpio.exit.i:                       ; preds = %if.end6.i76.i235.i, %do.end.i59.i.i, %do.body.i57.i.i.dib7000m_reset_gpio.exit.i_crit_edge
  %call20.i = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.not.i, label %dib7000m_reset_gpio.exit.i.if.end33.i_crit_edge, label %do.body24.i

dib7000m_reset_gpio.exit.i.if.end33.i_crit_edge:  ; preds = %dib7000m_reset_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

do.body24.i:                                      ; preds = %dib7000m_reset_gpio.exit.i
  %529 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %529)
  %tobool25.not.i = icmp eq i32 %529, 0
  br i1 %tobool25.not.i, label %do.body24.i.if.end33.i_crit_edge, label %do.end28.i

do.body24.i.if.end33.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

do.end28.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end28.i, %do.body24.i.if.end33.i_crit_edge, %dib7000m_reset_gpio.exit.i.if.end33.i_crit_edge
  %call34.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1794) #6
  %call.i238.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238.i)
  %cmp.i239.i = icmp slt i32 %call.i238.i, 0
  br i1 %cmp.i239.i, label %do.body.i241.i, label %if.end6.i258.i

do.body.i241.i:                                   ; preds = %if.end33.i
  %530 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %tobool.not.i240.i = icmp eq i32 %530, 0
  br i1 %tobool.not.i240.i, label %do.body.i241.i.dib7000m_write_word.exit260.i_crit_edge, label %do.end.i243.i

do.body.i241.i.dib7000m_write_word.exit260.i_crit_edge: ; preds = %do.body.i241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit260.i

do.end.i243.i:                                    ; preds = %do.body.i241.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i242.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit260.i

if.end6.i258.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i244.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %531 = ptrtoint ptr %i2c_write_buffer.i244.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 7, ptr %i2c_write_buffer.i244.i, align 4
  %arrayidx12.i245.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %532 = ptrtoint ptr %arrayidx12.i245.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 2, ptr %arrayidx12.i245.i, align 1
  %533 = lshr i16 %call34.i, 8
  %conv16.i.i = trunc i16 %533 to i8
  %arrayidx18.i246.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %534 = ptrtoint ptr %arrayidx18.i246.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %conv16.i.i, ptr %arrayidx18.i246.i, align 2
  %535 = trunc i16 %call34.i to i8
  %conv21.i.i = and i8 %535, -3
  %arrayidx23.i247.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %536 = ptrtoint ptr %arrayidx23.i247.i to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %conv21.i.i, ptr %arrayidx23.i247.i, align 1
  %msg.i248.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %537 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 262144, ptr %537, align 8
  %539 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %i2c_addr3, align 8
  %541 = lshr i8 %540, 1
  %conv27.i250.i = zext i8 %541 to i16
  %542 = ptrtoint ptr %msg.i248.i to i32
  call void @__asan_store2_noabort(i32 %542)
  store i16 %conv27.i250.i, ptr %msg.i248.i, align 4
  %flags.i251.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %543 = ptrtoint ptr %flags.i251.i to i32
  call void @__asan_store2_noabort(i32 %543)
  store i16 0, ptr %flags.i251.i, align 2
  %buf.i252.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %544 = ptrtoint ptr %buf.i252.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store ptr %i2c_write_buffer.i244.i, ptr %buf.i252.i, align 4
  %545 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %i2c_adap2, align 4
  %call39.i255.i = tail call i32 @i2c_transfer(ptr noundef %546, ptr noundef %msg.i248.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit260.i

dib7000m_write_word.exit260.i:                    ; preds = %if.end6.i258.i, %do.end.i243.i, %do.body.i241.i.dib7000m_write_word.exit260.i_crit_edge
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef nonnull %call7.i.i, i32 noundef 8000) #6
  %call39.i = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  %call.i.i262.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262.i)
  %cmp.i.i263.i = icmp slt i32 %call.i.i262.i, 0
  br i1 %cmp.i.i263.i, label %do.body.i.i265.i, label %if.end6.i.i279.i

do.body.i.i265.i:                                 ; preds = %dib7000m_write_word.exit260.i
  %547 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %547)
  %tobool.not.i.i264.i = icmp eq i32 %547, 0
  br i1 %tobool.not.i.i264.i, label %do.body.i.i265.i.dib7000m_write_word.exit.i282.i_crit_edge, label %do.end.i.i267.i

do.body.i.i265.i.dib7000m_write_word.exit.i282.i_crit_edge: ; preds = %do.body.i.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i282.i

do.end.i.i267.i:                                  ; preds = %do.body.i.i265.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i266.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i282.i

if.end6.i.i279.i:                                 ; preds = %dib7000m_write_word.exit260.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i268.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %548 = ptrtoint ptr %i2c_write_buffer.i.i268.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 3, ptr %i2c_write_buffer.i.i268.i, align 4
  %arrayidx12.i.i269.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %549 = ptrtoint ptr %arrayidx12.i.i269.i to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 -95, ptr %arrayidx12.i.i269.i, align 1
  %arrayidx18.i.i270.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %550 = ptrtoint ptr %arrayidx18.i.i270.i to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 0, ptr %arrayidx18.i.i270.i, align 2
  %arrayidx23.i.i271.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %551 = ptrtoint ptr %arrayidx23.i.i271.i to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 0, ptr %arrayidx23.i.i271.i, align 1
  %msg.i.i272.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %552 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 262144, ptr %552, align 8
  %554 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %i2c_addr3, align 8
  %556 = lshr i8 %555, 1
  %conv27.i.i274.i = zext i8 %556 to i16
  %557 = ptrtoint ptr %msg.i.i272.i to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 %conv27.i.i274.i, ptr %msg.i.i272.i, align 4
  %flags.i.i275.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %558 = ptrtoint ptr %flags.i.i275.i to i32
  call void @__asan_store2_noabort(i32 %558)
  store i16 0, ptr %flags.i.i275.i, align 2
  %buf.i.i276.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %559 = ptrtoint ptr %buf.i.i276.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr %i2c_write_buffer.i.i268.i, ptr %buf.i.i276.i, align 4
  %560 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %i2c_adap2, align 4
  %call39.i.i278.i = tail call i32 @i2c_transfer(ptr noundef %561, ptr noundef %msg.i.i272.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit.i282.i

dib7000m_write_word.exit.i282.i:                  ; preds = %if.end6.i.i279.i, %do.end.i.i267.i, %do.body.i.i265.i.dib7000m_write_word.exit.i282.i_crit_edge
  %call.i2.i280.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i280.i)
  %cmp.i3.i281.i = icmp slt i32 %call.i2.i280.i, 0
  br i1 %cmp.i3.i281.i, label %do.body.i5.i284.i, label %if.end6.i22.i.i

do.body.i5.i284.i:                                ; preds = %dib7000m_write_word.exit.i282.i
  %562 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %562)
  %tobool.not.i4.i283.i = icmp eq i32 %562, 0
  br i1 %tobool.not.i4.i283.i, label %do.body.i5.i284.i.dib7000m_write_word.exit24.i.i_crit_edge, label %do.end.i7.i286.i

do.body.i5.i284.i.dib7000m_write_word.exit24.i.i_crit_edge: ; preds = %do.body.i5.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit24.i.i

do.end.i7.i286.i:                                 ; preds = %do.body.i5.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i6.i285.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit24.i.i

if.end6.i22.i.i:                                  ; preds = %dib7000m_write_word.exit.i282.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i8.i287.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %563 = ptrtoint ptr %i2c_write_buffer.i8.i287.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 3, ptr %i2c_write_buffer.i8.i287.i, align 4
  %arrayidx12.i9.i288.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %564 = ptrtoint ptr %arrayidx12.i9.i288.i to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 -94, ptr %arrayidx12.i9.i288.i, align 1
  %arrayidx18.i10.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %565 = ptrtoint ptr %arrayidx18.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 3, ptr %arrayidx18.i10.i.i, align 2
  %arrayidx23.i11.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %566 = ptrtoint ptr %arrayidx23.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 8, ptr %arrayidx23.i11.i.i, align 1
  %msg.i12.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %567 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %568 = ptrtoint ptr %567 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 262144, ptr %567, align 8
  %569 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %i2c_addr3, align 8
  %571 = lshr i8 %570, 1
  %conv27.i14.i.i = zext i8 %571 to i16
  %572 = ptrtoint ptr %msg.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %conv27.i14.i.i, ptr %msg.i12.i.i, align 4
  %flags.i15.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %573 = ptrtoint ptr %flags.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 0, ptr %flags.i15.i.i, align 2
  %buf.i16.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %574 = ptrtoint ptr %buf.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %i2c_write_buffer.i8.i287.i, ptr %buf.i16.i.i, align 4
  %575 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %i2c_adap2, align 4
  %call39.i19.i.i = tail call i32 @i2c_transfer(ptr noundef %576, ptr noundef %msg.i12.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit24.i.i

dib7000m_write_word.exit24.i.i:                   ; preds = %if.end6.i22.i.i, %do.end.i7.i286.i, %do.body.i5.i284.i.dib7000m_write_word.exit24.i.i_crit_edge
  %call.i26.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %cmp.i27.i.i = icmp slt i32 %call.i26.i.i, 0
  br i1 %cmp.i27.i.i, label %do.body.i29.i.i, label %if.end6.i46.i.i

do.body.i29.i.i:                                  ; preds = %dib7000m_write_word.exit24.i.i
  %577 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %577)
  %tobool.not.i28.i.i = icmp eq i32 %577, 0
  br i1 %tobool.not.i28.i.i, label %do.body.i29.i.i.dib7000m_write_word.exit48.i.i_crit_edge, label %do.end.i31.i.i

do.body.i29.i.i.dib7000m_write_word.exit48.i.i_crit_edge: ; preds = %do.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit48.i.i

do.end.i31.i.i:                                   ; preds = %do.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit48.i.i

if.end6.i46.i.i:                                  ; preds = %dib7000m_write_word.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i32.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %578 = ptrtoint ptr %i2c_write_buffer.i32.i.i to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 3, ptr %i2c_write_buffer.i32.i.i, align 4
  %arrayidx12.i33.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %579 = ptrtoint ptr %arrayidx12.i33.i.i to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 -95, ptr %arrayidx12.i33.i.i, align 1
  %arrayidx18.i34.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %580 = ptrtoint ptr %arrayidx18.i34.i.i to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 0, ptr %arrayidx18.i34.i.i, align 2
  %arrayidx23.i35.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %581 = ptrtoint ptr %arrayidx23.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 1, ptr %arrayidx23.i35.i.i, align 1
  %msg.i36.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %582 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %583 = ptrtoint ptr %582 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 262144, ptr %582, align 8
  %584 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %i2c_addr3, align 8
  %586 = lshr i8 %585, 1
  %conv27.i38.i.i = zext i8 %586 to i16
  %587 = ptrtoint ptr %msg.i36.i.i to i32
  call void @__asan_store2_noabort(i32 %587)
  store i16 %conv27.i38.i.i, ptr %msg.i36.i.i, align 4
  %flags.i39.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %588 = ptrtoint ptr %flags.i39.i.i to i32
  call void @__asan_store2_noabort(i32 %588)
  store i16 0, ptr %flags.i39.i.i, align 2
  %buf.i40.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %589 = ptrtoint ptr %buf.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store ptr %i2c_write_buffer.i32.i.i, ptr %buf.i40.i.i, align 4
  %590 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %i2c_adap2, align 4
  %call39.i43.i.i = tail call i32 @i2c_transfer(ptr noundef %591, ptr noundef %msg.i36.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit48.i.i

dib7000m_write_word.exit48.i.i:                   ; preds = %if.end6.i46.i.i, %do.end.i31.i.i, %do.body.i29.i.i.dib7000m_write_word.exit48.i.i_crit_edge
  %call.i50.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i.i)
  %cmp.i51.i.i = icmp slt i32 %call.i50.i.i, 0
  br i1 %cmp.i51.i.i, label %do.body.i53.i.i, label %if.end6.i70.i.i

do.body.i53.i.i:                                  ; preds = %dib7000m_write_word.exit48.i.i
  %592 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %592)
  %tobool.not.i52.i.i = icmp eq i32 %592, 0
  br i1 %tobool.not.i52.i.i, label %do.body.i53.i.i.dib7000m_sad_calib.exit.i_crit_edge, label %do.end.i55.i.i

do.body.i53.i.i.dib7000m_sad_calib.exit.i_crit_edge: ; preds = %do.body.i53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_sad_calib.exit.i

do.end.i55.i.i:                                   ; preds = %do.body.i53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i54.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_sad_calib.exit.i

if.end6.i70.i.i:                                  ; preds = %dib7000m_write_word.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i56.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %593 = ptrtoint ptr %i2c_write_buffer.i56.i.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 3, ptr %i2c_write_buffer.i56.i.i, align 4
  %arrayidx12.i57.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %594 = ptrtoint ptr %arrayidx12.i57.i.i to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 -95, ptr %arrayidx12.i57.i.i, align 1
  %arrayidx18.i58.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %595 = ptrtoint ptr %arrayidx18.i58.i.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %arrayidx18.i58.i.i, align 2
  %arrayidx23.i59.i.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %596 = ptrtoint ptr %arrayidx23.i59.i.i to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 0, ptr %arrayidx23.i59.i.i, align 1
  %msg.i60.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %597 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %598 = ptrtoint ptr %597 to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 262144, ptr %597, align 8
  %599 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %i2c_addr3, align 8
  %601 = lshr i8 %600, 1
  %conv27.i62.i.i = zext i8 %601 to i16
  %602 = ptrtoint ptr %msg.i60.i.i to i32
  call void @__asan_store2_noabort(i32 %602)
  store i16 %conv27.i62.i.i, ptr %msg.i60.i.i, align 4
  %flags.i63.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %603 = ptrtoint ptr %flags.i63.i.i to i32
  call void @__asan_store2_noabort(i32 %603)
  store i16 0, ptr %flags.i63.i.i, align 2
  %buf.i64.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %604 = ptrtoint ptr %buf.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %i2c_write_buffer.i56.i.i, ptr %buf.i64.i.i, align 4
  %605 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %i2c_adap2, align 4
  %call39.i67.i.i = tail call i32 @i2c_transfer(ptr noundef %606, ptr noundef %msg.i60.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_sad_calib.exit.i

dib7000m_sad_calib.exit.i:                        ; preds = %if.end6.i70.i.i, %do.end.i55.i.i, %do.body.i53.i.i.dib7000m_sad_calib.exit.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %call41.i = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %call7.i.i, i32 noundef 1) #6
  %607 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %cfg1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %608)
  %tobool42.not.i = icmp eq i8 %608, 0
  br i1 %tobool42.not.i, label %dib7000m_sad_calib.exit.i.if.end45.i_crit_edge, label %if.then43.i

dib7000m_sad_calib.exit.i.if.end45.i_crit_edge:   ; preds = %dib7000m_sad_calib.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then43.i:                                      ; preds = %dib7000m_sad_calib.exit.i
  %call.i290.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290.i)
  %cmp.i291.i = icmp slt i32 %call.i290.i, 0
  br i1 %cmp.i291.i, label %do.body.i293.i, label %if.end6.i310.i

do.body.i293.i:                                   ; preds = %if.then43.i
  %609 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %tobool.not.i292.i = icmp eq i32 %609, 0
  br i1 %tobool.not.i292.i, label %do.body.i293.i.if.end45.i_crit_edge, label %do.end.i295.i

do.body.i293.i.if.end45.i_crit_edge:              ; preds = %do.body.i293.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end.i295.i:                                    ; preds = %do.body.i293.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i294.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end45.i

if.end6.i310.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i296.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %610 = ptrtoint ptr %i2c_write_buffer.i296.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 7, ptr %i2c_write_buffer.i296.i, align 4
  %arrayidx12.i297.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %611 = ptrtoint ptr %arrayidx12.i297.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 4, ptr %arrayidx12.i297.i, align 1
  %arrayidx18.i298.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %612 = ptrtoint ptr %arrayidx18.i298.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 0, ptr %arrayidx18.i298.i, align 2
  %arrayidx23.i299.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %613 = ptrtoint ptr %arrayidx23.i299.i to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 0, ptr %arrayidx23.i299.i, align 1
  %msg.i300.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %614 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %615 = ptrtoint ptr %614 to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 262144, ptr %614, align 8
  %616 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %i2c_addr3, align 8
  %618 = lshr i8 %617, 1
  %conv27.i302.i = zext i8 %618 to i16
  %619 = ptrtoint ptr %msg.i300.i to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %conv27.i302.i, ptr %msg.i300.i, align 4
  %flags.i303.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %620 = ptrtoint ptr %flags.i303.i to i32
  call void @__asan_store2_noabort(i32 %620)
  store i16 0, ptr %flags.i303.i, align 2
  %buf.i304.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %621 = ptrtoint ptr %buf.i304.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr %i2c_write_buffer.i296.i, ptr %buf.i304.i, align 4
  %622 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %i2c_adap2, align 4
  %call39.i307.i = tail call i32 @i2c_transfer(ptr noundef %623, ptr noundef %msg.i300.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end6.i310.i, %do.end.i295.i, %do.body.i293.i.if.end45.i_crit_edge, %dib7000m_sad_calib.exit.i.if.end45.i_crit_edge
  %624 = ptrtoint ptr %mobile_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %mobile_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %625)
  %tobool47.not.i = icmp eq i8 %625, 0
  %reg_offs53.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 5
  %626 = ptrtoint ptr %reg_offs53.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %reg_offs53.i, align 8
  %call.i340.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340.i)
  %cmp.i341.i = icmp slt i32 %call.i340.i, 0
  br i1 %tobool47.not.i, label %if.else52.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  br i1 %cmp.i341.i, label %do.body.i317.i, label %if.end6.i336.i

do.body.i317.i:                                   ; preds = %if.then48.i
  %628 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %628)
  %tobool.not.i316.i = icmp eq i32 %628, 0
  br i1 %tobool.not.i316.i, label %do.body.i317.i.if.end58.i_crit_edge, label %do.end.i319.i

do.body.i317.i.if.end58.i_crit_edge:              ; preds = %do.body.i317.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

do.end.i319.i:                                    ; preds = %do.body.i317.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i318.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end58.i

if.end6.i336.i:                                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv49.i = zext i8 %627 to i16
  %add.i = add nuw nsw i16 %conv49.i, 261
  %629 = lshr i16 %add.i, 8
  %conv7.i320.i = trunc i16 %629 to i8
  %i2c_write_buffer.i321.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %630 = ptrtoint ptr %i2c_write_buffer.i321.i to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 %conv7.i320.i, ptr %i2c_write_buffer.i321.i, align 4
  %conv10.i322.i = trunc i16 %add.i to i8
  %arrayidx12.i323.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %631 = ptrtoint ptr %arrayidx12.i323.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %conv10.i322.i, ptr %arrayidx12.i323.i, align 1
  %arrayidx18.i324.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %632 = ptrtoint ptr %arrayidx18.i324.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 0, ptr %arrayidx18.i324.i, align 2
  %arrayidx23.i325.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %633 = ptrtoint ptr %arrayidx23.i325.i to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 2, ptr %arrayidx23.i325.i, align 1
  %msg.i326.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %634 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %635 = ptrtoint ptr %634 to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 262144, ptr %634, align 8
  %636 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %i2c_addr3, align 8
  %638 = lshr i8 %637, 1
  %conv27.i328.i = zext i8 %638 to i16
  %639 = ptrtoint ptr %msg.i326.i to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 %conv27.i328.i, ptr %msg.i326.i, align 4
  %flags.i329.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %640 = ptrtoint ptr %flags.i329.i to i32
  call void @__asan_store2_noabort(i32 %640)
  store i16 0, ptr %flags.i329.i, align 2
  %buf.i330.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %641 = ptrtoint ptr %buf.i330.i to i32
  call void @__asan_store4_noabort(i32 %641)
  store ptr %i2c_write_buffer.i321.i, ptr %buf.i330.i, align 4
  %642 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %i2c_adap2, align 4
  %call39.i333.i = tail call i32 @i2c_transfer(ptr noundef %643, ptr noundef %msg.i326.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end58.i

if.else52.i:                                      ; preds = %if.end45.i
  br i1 %cmp.i341.i, label %do.body.i343.i, label %if.end6.i362.i

do.body.i343.i:                                   ; preds = %if.else52.i
  %644 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %644)
  %tobool.not.i342.i = icmp eq i32 %644, 0
  br i1 %tobool.not.i342.i, label %do.body.i343.i.if.end58.i_crit_edge, label %do.end.i345.i

do.body.i343.i.if.end58.i_crit_edge:              ; preds = %do.body.i343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

do.end.i345.i:                                    ; preds = %do.body.i343.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i344.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end58.i

if.end6.i362.i:                                   ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv54.i = zext i8 %627 to i16
  %add55.i = add nuw nsw i16 %conv54.i, 224
  %645 = lshr i16 %add55.i, 8
  %conv7.i346.i = trunc i16 %645 to i8
  %i2c_write_buffer.i347.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %646 = ptrtoint ptr %i2c_write_buffer.i347.i to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 %conv7.i346.i, ptr %i2c_write_buffer.i347.i, align 4
  %conv10.i348.i = trunc i16 %add55.i to i8
  %arrayidx12.i349.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %647 = ptrtoint ptr %arrayidx12.i349.i to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 %conv10.i348.i, ptr %arrayidx12.i349.i, align 1
  %arrayidx18.i350.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %648 = ptrtoint ptr %arrayidx18.i350.i to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 0, ptr %arrayidx18.i350.i, align 2
  %arrayidx23.i351.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %649 = ptrtoint ptr %arrayidx23.i351.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 1, ptr %arrayidx23.i351.i, align 1
  %msg.i352.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %650 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %651 = ptrtoint ptr %650 to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 262144, ptr %650, align 8
  %652 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %i2c_addr3, align 8
  %654 = lshr i8 %653, 1
  %conv27.i354.i = zext i8 %654 to i16
  %655 = ptrtoint ptr %msg.i352.i to i32
  call void @__asan_store2_noabort(i32 %655)
  store i16 %conv27.i354.i, ptr %msg.i352.i, align 4
  %flags.i355.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %656 = ptrtoint ptr %flags.i355.i to i32
  call void @__asan_store2_noabort(i32 %656)
  store i16 0, ptr %flags.i355.i, align 2
  %buf.i356.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %657 = ptrtoint ptr %buf.i356.i to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr %i2c_write_buffer.i347.i, ptr %buf.i356.i, align 4
  %658 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %i2c_adap2, align 4
  %call39.i359.i = tail call i32 @i2c_transfer(ptr noundef %659, ptr noundef %msg.i352.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end6.i362.i, %do.end.i345.i, %do.body.i343.i.if.end58.i_crit_edge, %if.end6.i336.i, %do.end.i319.i, %do.body.i317.i.if.end58.i_crit_edge
  %tuner_is_baseband.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %660 = ptrtoint ptr %tuner_is_baseband.i to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %tuner_is_baseband.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %661)
  %tobool60.not.i = icmp eq i8 %661, 0
  %call.i390.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390.i)
  %cmp.i391.i = icmp slt i32 %call.i390.i, 0
  br i1 %tobool60.not.i, label %if.else63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end58.i
  br i1 %cmp.i391.i, label %do.body.i369.i, label %if.end6.i386.i

do.body.i369.i:                                   ; preds = %if.then61.i
  %662 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool.not.i368.i = icmp eq i32 %662, 0
  br i1 %tobool.not.i368.i, label %do.body.i369.i.if.end65.i_crit_edge, label %do.end.i371.i

do.body.i369.i.if.end65.i_crit_edge:              ; preds = %do.body.i369.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

do.end.i371.i:                                    ; preds = %do.body.i369.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i370.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end65.i

if.end6.i386.i:                                   ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i372.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %663 = ptrtoint ptr %i2c_write_buffer.i372.i to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 0, ptr %i2c_write_buffer.i372.i, align 4
  %arrayidx12.i373.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %664 = ptrtoint ptr %arrayidx12.i373.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 36, ptr %arrayidx12.i373.i, align 1
  %arrayidx18.i374.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %665 = ptrtoint ptr %arrayidx18.i374.i to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 7, ptr %arrayidx18.i374.i, align 2
  %arrayidx23.i375.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %666 = ptrtoint ptr %arrayidx23.i375.i to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 85, ptr %arrayidx23.i375.i, align 1
  %msg.i376.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %667 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %668 = ptrtoint ptr %667 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 262144, ptr %667, align 8
  %669 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %i2c_addr3, align 8
  %671 = lshr i8 %670, 1
  %conv27.i378.i = zext i8 %671 to i16
  %672 = ptrtoint ptr %msg.i376.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 %conv27.i378.i, ptr %msg.i376.i, align 4
  %flags.i379.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %673 = ptrtoint ptr %flags.i379.i to i32
  call void @__asan_store2_noabort(i32 %673)
  store i16 0, ptr %flags.i379.i, align 2
  %buf.i380.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %674 = ptrtoint ptr %buf.i380.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr %i2c_write_buffer.i372.i, ptr %buf.i380.i, align 4
  %675 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %i2c_adap2, align 4
  %call39.i383.i = tail call i32 @i2c_transfer(ptr noundef %676, ptr noundef %msg.i376.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end65.i

if.else63.i:                                      ; preds = %if.end58.i
  br i1 %cmp.i391.i, label %do.body.i393.i, label %if.end6.i410.i

do.body.i393.i:                                   ; preds = %if.else63.i
  %677 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %677)
  %tobool.not.i392.i = icmp eq i32 %677, 0
  br i1 %tobool.not.i392.i, label %do.body.i393.i.if.end65.i_crit_edge, label %do.end.i395.i

do.body.i393.i.if.end65.i_crit_edge:              ; preds = %do.body.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

do.end.i395.i:                                    ; preds = %do.body.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i394.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end65.i

if.end6.i410.i:                                   ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i396.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %678 = ptrtoint ptr %i2c_write_buffer.i396.i to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 0, ptr %i2c_write_buffer.i396.i, align 4
  %arrayidx12.i397.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %679 = ptrtoint ptr %arrayidx12.i397.i to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 36, ptr %arrayidx12.i397.i, align 1
  %arrayidx18.i398.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %680 = ptrtoint ptr %arrayidx18.i398.i to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 31, ptr %arrayidx18.i398.i, align 2
  %arrayidx23.i399.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %681 = ptrtoint ptr %arrayidx23.i399.i to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 85, ptr %arrayidx23.i399.i, align 1
  %msg.i400.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %682 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %683 = ptrtoint ptr %682 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 262144, ptr %682, align 8
  %684 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %i2c_addr3, align 8
  %686 = lshr i8 %685, 1
  %conv27.i402.i = zext i8 %686 to i16
  %687 = ptrtoint ptr %msg.i400.i to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 %conv27.i402.i, ptr %msg.i400.i, align 4
  %flags.i403.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %688 = ptrtoint ptr %flags.i403.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 0, ptr %flags.i403.i, align 2
  %buf.i404.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %689 = ptrtoint ptr %buf.i404.i to i32
  call void @__asan_store4_noabort(i32 %689)
  store ptr %i2c_write_buffer.i396.i, ptr %buf.i404.i, align 4
  %690 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %i2c_adap2, align 4
  %call39.i407.i = tail call i32 @i2c_transfer(ptr noundef %691, ptr noundef %msg.i400.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end6.i410.i, %do.end.i395.i, %do.body.i393.i.if.end65.i_crit_edge, %if.end6.i386.i, %do.end.i371.i, %do.body.i369.i.if.end65.i_crit_edge
  %692 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %692)
  %693 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %693)
  %cmp68.i = icmp eq i16 %693, 16384
  %call.i414.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i414.i)
  %cmp.i415.i = icmp slt i32 %call.i414.i, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.else72.i

if.then70.i:                                      ; preds = %if.end65.i
  br i1 %cmp.i415.i, label %do.body.i417.i, label %if.end6.i434.i

do.body.i417.i:                                   ; preds = %if.then70.i
  %694 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %694)
  %tobool.not.i416.i = icmp eq i32 %694, 0
  br i1 %tobool.not.i416.i, label %do.body.i417.i.while.body.i.i.preheader_crit_edge, label %do.end.i419.i

do.body.i417.i.while.body.i.i.preheader_crit_edge: ; preds = %do.body.i417.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.preheader

do.end.i419.i:                                    ; preds = %do.body.i417.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i418.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %while.body.i.i.preheader

if.end6.i434.i:                                   ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i420.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %695 = ptrtoint ptr %i2c_write_buffer.i420.i to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 3, ptr %i2c_write_buffer.i420.i, align 4
  %arrayidx12.i421.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %696 = ptrtoint ptr %arrayidx12.i421.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 -115, ptr %arrayidx12.i421.i, align 1
  %arrayidx18.i422.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %697 = ptrtoint ptr %arrayidx18.i422.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 12, ptr %arrayidx18.i422.i, align 2
  %arrayidx23.i423.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %698 = ptrtoint ptr %arrayidx23.i423.i to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 64, ptr %arrayidx23.i423.i, align 1
  %msg.i424.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %699 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 262144, ptr %699, align 8
  %701 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %i2c_addr3, align 8
  %703 = lshr i8 %702, 1
  %conv27.i426.i = zext i8 %703 to i16
  %704 = ptrtoint ptr %msg.i424.i to i32
  call void @__asan_store2_noabort(i32 %704)
  store i16 %conv27.i426.i, ptr %msg.i424.i, align 4
  %flags.i427.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %705 = ptrtoint ptr %flags.i427.i to i32
  call void @__asan_store2_noabort(i32 %705)
  store i16 0, ptr %flags.i427.i, align 2
  %buf.i428.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %706 = ptrtoint ptr %buf.i428.i to i32
  call void @__asan_store4_noabort(i32 %706)
  store ptr %i2c_write_buffer.i420.i, ptr %buf.i428.i, align 4
  %707 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %i2c_adap2, align 4
  %call39.i431.i = tail call i32 @i2c_transfer(ptr noundef %708, ptr noundef %msg.i424.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %while.body.i.i.preheader

if.else72.i:                                      ; preds = %if.end65.i
  br i1 %cmp.i415.i, label %do.body.i441.i, label %if.end6.i458.i

do.body.i441.i:                                   ; preds = %if.else72.i
  %709 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %709)
  %tobool.not.i440.i = icmp eq i32 %709, 0
  br i1 %tobool.not.i440.i, label %do.body.i441.i.while.body.i.i.preheader_crit_edge, label %do.end.i443.i

do.body.i441.i.while.body.i.i.preheader_crit_edge: ; preds = %do.body.i441.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.preheader

do.end.i443.i:                                    ; preds = %do.body.i441.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i442.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %while.body.i.i.preheader

if.end6.i458.i:                                   ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i444.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %710 = ptrtoint ptr %i2c_write_buffer.i444.i to i32
  call void @__asan_store1_noabort(i32 %710)
  store i8 3, ptr %i2c_write_buffer.i444.i, align 4
  %arrayidx12.i445.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %711 = ptrtoint ptr %arrayidx12.i445.i to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 -115, ptr %arrayidx12.i445.i, align 1
  %arrayidx18.i446.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %712 = ptrtoint ptr %arrayidx18.i446.i to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 0, ptr %arrayidx18.i446.i, align 2
  %arrayidx23.i447.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %713 = ptrtoint ptr %arrayidx23.i447.i to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 49, ptr %arrayidx23.i447.i, align 1
  %msg.i448.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %714 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %715 = ptrtoint ptr %714 to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 262144, ptr %714, align 8
  %716 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %i2c_addr3, align 8
  %718 = lshr i8 %717, 1
  %conv27.i450.i = zext i8 %718 to i16
  %719 = ptrtoint ptr %msg.i448.i to i32
  call void @__asan_store2_noabort(i32 %719)
  store i16 %conv27.i450.i, ptr %msg.i448.i, align 4
  %flags.i451.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %720 = ptrtoint ptr %flags.i451.i to i32
  call void @__asan_store2_noabort(i32 %720)
  store i16 0, ptr %flags.i451.i, align 2
  %buf.i452.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %721 = ptrtoint ptr %buf.i452.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr %i2c_write_buffer.i444.i, ptr %buf.i452.i, align 4
  %722 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %i2c_adap2, align 4
  %call39.i455.i = tail call i32 @i2c_transfer(ptr noundef %723, ptr noundef %msg.i448.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.end6.i458.i, %do.end.i443.i, %do.body.i441.i.while.body.i.i.preheader_crit_edge, %if.end6.i434.i, %do.end.i419.i, %do.body.i417.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.cond.loopexit.i.i:                          ; preds = %do.body.i464.i
  %724 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_load2_noabort(i32 %724)
  %l.0.i.i = load i16, ptr %incdec.ptr9.i.i, align 2
  %tobool.not.i461.i = icmp eq i16 %l.0.i.i, 0
  br i1 %tobool.not.i461.i, label %while.cond.loopexit.i.i.while.body.i483.i_crit_edge, label %while.cond.loopexit.i.i.while.body.i.i_crit_edge

while.cond.loopexit.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.cond.loopexit.i.i.while.body.i483.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  br label %while.body.i483.i

while.body.i.i:                                   ; preds = %while.cond.loopexit.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %l.026.i.i = phi i16 [ %l.0.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ 3, %while.body.i.i.preheader ]
  %l.0.in25.i.i = phi ptr [ %incdec.ptr9.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ @dib7000m_defaults_common, %while.body.i.i.preheader ]
  %n.0.i.i = getelementptr i16, ptr %l.0.in25.i.i, i32 1
  %incdec.ptr1.i.i = getelementptr i16, ptr %l.0.in25.i.i, i32 2
  %725 = ptrtoint ptr %n.0.i.i to i32
  call void @__asan_load2_noabort(i32 %725)
  %726 = load i16, ptr %n.0.i.i, align 2
  %727 = ptrtoint ptr %reg_offs53.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %reg_offs53.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %728)
  %tobool2.not.i.i = icmp ne i8 %728, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 111, i16 %726)
  %cmp.i462.i = icmp ugt i16 %726, 111
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 %cmp.i462.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 332, i16 %726)
  %cmp7.i.i = icmp ult i16 %726, 332
  %or.cond22.i.i = select i1 %or.cond.i.i, i1 %cmp7.i.i, i1 false
  %inc.i.i = zext i1 %or.cond22.i.i to i16
  %r.0.i.i = add i16 %726, %inc.i.i
  br label %do.body.i464.i

do.body.i464.i:                                   ; preds = %do.body.i464.i.do.body.i464.i_crit_edge, %while.body.i.i
  %l.1.i.i = phi i16 [ %l.026.i.i, %while.body.i.i ], [ %dec.i.i, %do.body.i464.i.do.body.i464.i_crit_edge ]
  %r.1.i.i = phi i16 [ %r.0.i.i, %while.body.i.i ], [ %inc10.i.i, %do.body.i464.i.do.body.i464.i_crit_edge ]
  %n.1.i.i = phi ptr [ %incdec.ptr1.i.i, %while.body.i.i ], [ %incdec.ptr9.i.i, %do.body.i464.i.do.body.i464.i_crit_edge ]
  %incdec.ptr9.i.i = getelementptr i16, ptr %n.1.i.i, i32 1
  %729 = ptrtoint ptr %n.1.i.i to i32
  call void @__asan_load2_noabort(i32 %729)
  %730 = load i16, ptr %n.1.i.i, align 2
  %call.i463.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %call7.i.i, i16 noundef zeroext %r.1.i.i, i16 noundef zeroext %730) #6
  %inc10.i.i = add i16 %r.1.i.i, 1
  %dec.i.i = add i16 %l.1.i.i, -1
  %tobool11.not.i.i = icmp eq i16 %dec.i.i, 0
  br i1 %tobool11.not.i.i, label %while.cond.loopexit.i.i, label %do.body.i464.i.do.body.i464.i_crit_edge

do.body.i464.i.do.body.i464.i_crit_edge:          ; preds = %do.body.i464.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i464.i

while.cond.loopexit.i471.i:                       ; preds = %do.body.i492.i
  %731 = ptrtoint ptr %incdec.ptr9.i487.i to i32
  call void @__asan_load2_noabort(i32 %731)
  %l.0.i469.i = load i16, ptr %incdec.ptr9.i487.i, align 2
  %tobool.not.i470.i = icmp eq i16 %l.0.i469.i, 0
  br i1 %tobool.not.i470.i, label %dib7000m_write_tab.exit493.i, label %while.cond.loopexit.i471.i.while.body.i483.i_crit_edge

while.cond.loopexit.i471.i.while.body.i483.i_crit_edge: ; preds = %while.cond.loopexit.i471.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i483.i

while.body.i483.i:                                ; preds = %while.cond.loopexit.i471.i.while.body.i483.i_crit_edge, %while.cond.loopexit.i.i.while.body.i483.i_crit_edge
  %l.026.i472.i = phi i16 [ %l.0.i469.i, %while.cond.loopexit.i471.i.while.body.i483.i_crit_edge ], [ 11, %while.cond.loopexit.i.i.while.body.i483.i_crit_edge ]
  %l.0.in25.i473.i = phi ptr [ %incdec.ptr9.i487.i, %while.cond.loopexit.i471.i.while.body.i483.i_crit_edge ], [ @dib7000m_defaults, %while.cond.loopexit.i.i.while.body.i483.i_crit_edge ]
  %n.0.i474.i = getelementptr i16, ptr %l.0.in25.i473.i, i32 1
  %incdec.ptr1.i475.i = getelementptr i16, ptr %l.0.in25.i473.i, i32 2
  %732 = ptrtoint ptr %n.0.i474.i to i32
  call void @__asan_load2_noabort(i32 %732)
  %733 = load i16, ptr %n.0.i474.i, align 2
  %734 = ptrtoint ptr %reg_offs53.i to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %reg_offs53.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %735)
  %tobool2.not.i476.i = icmp ne i8 %735, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 111, i16 %733)
  %cmp.i477.i = icmp ugt i16 %733, 111
  %or.cond.i478.i = select i1 %tobool2.not.i476.i, i1 %cmp.i477.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 332, i16 %733)
  %cmp7.i479.i = icmp ult i16 %733, 332
  %or.cond22.i480.i = select i1 %or.cond.i478.i, i1 %cmp7.i479.i, i1 false
  %inc.i481.i = zext i1 %or.cond22.i480.i to i16
  %r.0.i482.i = add i16 %733, %inc.i481.i
  br label %do.body.i492.i

do.body.i492.i:                                   ; preds = %do.body.i492.i.do.body.i492.i_crit_edge, %while.body.i483.i
  %l.1.i484.i = phi i16 [ %l.026.i472.i, %while.body.i483.i ], [ %dec.i490.i, %do.body.i492.i.do.body.i492.i_crit_edge ]
  %r.1.i485.i = phi i16 [ %r.0.i482.i, %while.body.i483.i ], [ %inc10.i489.i, %do.body.i492.i.do.body.i492.i_crit_edge ]
  %n.1.i486.i = phi ptr [ %incdec.ptr1.i475.i, %while.body.i483.i ], [ %incdec.ptr9.i487.i, %do.body.i492.i.do.body.i492.i_crit_edge ]
  %incdec.ptr9.i487.i = getelementptr i16, ptr %n.1.i486.i, i32 1
  %736 = ptrtoint ptr %n.1.i486.i to i32
  call void @__asan_load2_noabort(i32 %736)
  %737 = load i16, ptr %n.1.i486.i, align 2
  %call.i488.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %call7.i.i, i16 noundef zeroext %r.1.i485.i, i16 noundef zeroext %737) #6
  %inc10.i489.i = add i16 %r.1.i485.i, 1
  %dec.i490.i = add i16 %l.1.i484.i, -1
  %tobool11.not.i491.i = icmp eq i16 %dec.i490.i, 0
  br i1 %tobool11.not.i491.i, label %while.cond.loopexit.i471.i, label %do.body.i492.i.do.body.i492.i_crit_edge

do.body.i492.i.do.body.i492.i_crit_edge:          ; preds = %do.body.i492.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i492.i

dib7000m_write_tab.exit493.i:                     ; preds = %while.cond.loopexit.i471.i
  %738 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %738)
  %739 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %739)
  %cmp25.i499.i = icmp eq i16 %739, 16387
  %offset.0.i500.i = zext i1 %cmp25.i499.i to i16
  %call.i610.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i610.i)
  %cmp.i611.i = icmp slt i32 %call.i610.i, 0
  br i1 %cmp.i611.i, label %do.body.i613.i, label %if.end6.i631.i

do.body.i613.i:                                   ; preds = %dib7000m_write_tab.exit493.i
  %740 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %740)
  %tobool.not.i612.i = icmp eq i32 %740, 0
  br i1 %tobool.not.i612.i, label %do.body.i613.i.dib7000m_write_word.exit633.i_crit_edge, label %do.end.i615.i

do.body.i613.i.dib7000m_write_word.exit633.i_crit_edge: ; preds = %do.body.i613.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit633.i

do.end.i615.i:                                    ; preds = %do.body.i613.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i614.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit633.i

if.end6.i631.i:                                   ; preds = %dib7000m_write_tab.exit493.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i616.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %741 = ptrtoint ptr %i2c_write_buffer.i616.i to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 3, ptr %i2c_write_buffer.i616.i, align 4
  %conv10.i617.i = select i1 %cmp25.i499.i, i8 -120, i8 -121
  %arrayidx12.i618.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %742 = ptrtoint ptr %arrayidx12.i618.i to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 %conv10.i617.i, ptr %arrayidx12.i618.i, align 1
  %arrayidx18.i619.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %743 = ptrtoint ptr %arrayidx18.i619.i to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 -1, ptr %arrayidx18.i619.i, align 2
  %arrayidx23.i620.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %744 = ptrtoint ptr %arrayidx23.i620.i to i32
  call void @__asan_store1_noabort(i32 %744)
  store i8 -1, ptr %arrayidx23.i620.i, align 1
  %msg.i621.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %745 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %746 = ptrtoint ptr %745 to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 262144, ptr %745, align 8
  %747 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %i2c_addr3, align 8
  %749 = lshr i8 %748, 1
  %conv27.i623.i = zext i8 %749 to i16
  %750 = ptrtoint ptr %msg.i621.i to i32
  call void @__asan_store2_noabort(i32 %750)
  store i16 %conv27.i623.i, ptr %msg.i621.i, align 4
  %flags.i624.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %751 = ptrtoint ptr %flags.i624.i to i32
  call void @__asan_store2_noabort(i32 %751)
  store i16 0, ptr %flags.i624.i, align 2
  %buf.i625.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %752 = ptrtoint ptr %buf.i625.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store ptr %i2c_write_buffer.i616.i, ptr %buf.i625.i, align 4
  %753 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %i2c_adap2, align 4
  %call39.i628.i = tail call i32 @i2c_transfer(ptr noundef %754, ptr noundef %msg.i621.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit633.i

dib7000m_write_word.exit633.i:                    ; preds = %if.end6.i631.i, %do.end.i615.i, %do.body.i613.i.dib7000m_write_word.exit633.i_crit_edge
  %call.i44 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %do.body.i47, label %if.end6.i

do.body.i47:                                      ; preds = %dib7000m_write_word.exit633.i
  %755 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %755)
  %tobool.not.i46 = icmp eq i32 %755, 0
  br i1 %tobool.not.i46, label %do.body.i47.dib7000m_write_word.exit_crit_edge, label %do.end.i48

do.body.i47.dib7000m_write_word.exit_crit_edge:   ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i48:                                       ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %dib7000m_write_word.exit633.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %756 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %756)
  store i8 3, ptr %i2c_write_buffer.i, align 4
  %757 = zext i1 %cmp25.i499.i to i8
  %conv10.i = or i8 %757, -120
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %758 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %759 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 -1, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %760 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 -1, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %761 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 262144, ptr %761, align 8
  %763 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %i2c_addr3, align 8
  %765 = lshr i8 %764, 1
  %conv27.i = zext i8 %765 to i16
  %766 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %766)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %767 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %768 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %769 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %i2c_adap2, align 4
  %call39.i49 = tail call i32 @i2c_transfer(ptr noundef %770, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i48, %do.body.i47.dib7000m_write_word.exit_crit_edge
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i586.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i586.i, label %do.body.i588.i, label %if.end6.i606.i

do.body.i588.i:                                   ; preds = %dib7000m_write_word.exit
  %771 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %771)
  %tobool.not.i587.i = icmp eq i32 %771, 0
  br i1 %tobool.not.i587.i, label %do.body.i588.i.dib7000m_demod_reset.exit_crit_edge, label %do.end.i590.i

do.body.i588.i.dib7000m_demod_reset.exit_crit_edge: ; preds = %do.body.i588.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_demod_reset.exit

do.end.i590.i:                                    ; preds = %do.body.i588.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i589.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_demod_reset.exit

if.end6.i606.i:                                   ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i591.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18
  %772 = ptrtoint ptr %i2c_write_buffer.i591.i to i32
  call void @__asan_store1_noabort(i32 %772)
  store i8 3, ptr %i2c_write_buffer.i591.i, align 4
  %conv10.i592.i = select i1 %cmp25.i499.i, i8 -118, i8 -119
  %arrayidx12.i593.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 1
  %773 = ptrtoint ptr %arrayidx12.i593.i to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 %conv10.i592.i, ptr %arrayidx12.i593.i, align 1
  %arrayidx18.i594.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 2
  %774 = ptrtoint ptr %arrayidx18.i594.i to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 -1, ptr %arrayidx18.i594.i, align 2
  %arrayidx23.i595.i = getelementptr %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 18, i32 3
  %775 = ptrtoint ptr %arrayidx23.i595.i to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 27, ptr %arrayidx23.i595.i, align 1
  %msg.i596.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17
  %776 = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %777 = ptrtoint ptr %776 to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 262144, ptr %776, align 8
  %778 = ptrtoint ptr %i2c_addr3 to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %i2c_addr3, align 8
  %780 = lshr i8 %779, 1
  %conv27.i598.i = zext i8 %780 to i16
  %781 = ptrtoint ptr %msg.i596.i to i32
  call void @__asan_store2_noabort(i32 %781)
  store i16 %conv27.i598.i, ptr %msg.i596.i, align 4
  %flags.i599.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %782 = ptrtoint ptr %flags.i599.i to i32
  call void @__asan_store2_noabort(i32 %782)
  store i16 0, ptr %flags.i599.i, align 2
  %buf.i600.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %783 = ptrtoint ptr %buf.i600.i to i32
  call void @__asan_store4_noabort(i32 %783)
  store ptr %i2c_write_buffer.i591.i, ptr %buf.i600.i, align 4
  %784 = ptrtoint ptr %i2c_adap2 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %i2c_adap2, align 4
  %call39.i603.i = tail call i32 @i2c_transfer(ptr noundef %785, ptr noundef %msg.i596.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %dib7000m_demod_reset.exit

dib7000m_demod_reset.exit:                        ; preds = %if.end6.i606.i, %do.end.i590.i, %do.body.i588.i.dib7000m_demod_reset.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %739)
  %cmp.not.i498.i = icmp ne i16 %739, 16384
  %786 = zext i1 %cmp.not.i498.i to i16
  %reg_906.1.i.i = shl nuw nsw i16 16383, %786
  %conv41.i507.i = or i16 %offset.0.i500.i, 906
  %call42.i508.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %call7.i.i, i16 noundef zeroext %conv41.i507.i, i16 noundef zeroext %reg_906.1.i.i) #6
  %787 = ptrtoint ptr %bw1.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %bw1.i.i, align 4
  %789 = ptrtoint ptr %788 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %788, align 4
  %internal_clk.i = getelementptr inbounds %struct.dib7000m_state, ptr %call7.i.i, i32 0, i32 12
  %791 = ptrtoint ptr %internal_clk.i to i32
  call void @__asan_store4_noabort(i32 %791)
  store i32 %790, ptr %internal_clk.i, align 8
  br label %cleanup

error:                                            ; preds = %do.end57.i, %do.body52.i.error_crit_edge, %do.end34.i, %do.body29.i.error_crit_edge, %do.end.i, %do.body.i.error_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %dib7000m_demod_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %call7.i.i, %dib7000m_demod_reset.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib7000m_set_adc_state(ptr noundef %state, i32 noundef %no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %state, i16 noundef zeroext 913)
  %call1 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %state, i16 noundef zeroext 914)
  %extract.t = trunc i16 %call to i8
  %extract = lshr i16 %call, 8
  %extract.t230 = trunc i16 %extract to i8
  %extract.t241 = trunc i16 %call1 to i8
  %extract247 = lshr i16 %call1, 8
  %extract.t248 = trunc i16 %extract247 to i8
  %0 = zext i32 %no to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %no, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb11
    i32 3, label %sw.bb30
    i32 4, label %sw.bb37
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = or i16 %call1, 3
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %sw.bb
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %3 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -110, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %5 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %extract.t248, ptr %arrayidx18.i, align 2
  %conv21.i = trunc i16 %1 to i8
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %7 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262144, ptr %7, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr.i, align 8
  %11 = lshr i8 %10, 1
  %conv27.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %16, ptr noundef %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i)
  %cmp40.not.i = icmp eq i32 %call39.i, 1
  %cond.i = select i1 %cmp40.not.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end6.i ], [ -22, %do.end.i ], [ -22, %do.body.i.dib7000m_write_word.exit_crit_edge ]
  %17 = trunc i16 %1 to i8
  %extract.t246 = and i8 %17, -3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t245 = or i8 %extract.t241, 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %revision = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 15
  %18 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %revision, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp = icmp eq i16 %19, 16384
  br i1 %cmp, label %if.then, label %sw.bb11.if.end_crit_edge

sw.bb11.if.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb11
  %i2c_buffer_lock.i73 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i74 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i73, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %do.body.i77, label %if.end6.i94

do.body.i77:                                      ; preds = %if.then
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i76 = icmp eq i32 %20, 0
  br i1 %tobool.not.i76, label %do.body.i77.dib7000m_write_word.exit96_crit_edge, label %do.end.i79

do.body.i77.dib7000m_write_word.exit96_crit_edge: ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit96

do.end.i79:                                       ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit96

if.end6.i94:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i80 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %21 = ptrtoint ptr %i2c_write_buffer.i80 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %i2c_write_buffer.i80, align 4
  %arrayidx12.i81 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %arrayidx12.i81 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -111, ptr %arrayidx12.i81, align 1
  %arrayidx18.i82 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %23 = ptrtoint ptr %arrayidx18.i82 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx18.i82, align 2
  %arrayidx23.i83 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %24 = ptrtoint ptr %arrayidx23.i83 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx23.i83, align 1
  %msg.i84 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %25 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 262144, ptr %25, align 4
  %i2c_addr.i85 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %27 = ptrtoint ptr %i2c_addr.i85 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i2c_addr.i85, align 8
  %29 = lshr i8 %28, 1
  %conv27.i86 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv27.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i87, align 2
  %buf.i88 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %i2c_write_buffer.i80, ptr %buf.i88, align 4
  %i2c_adap.i90 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %33 = ptrtoint ptr %i2c_adap.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_adap.i90, align 4
  %call39.i91 = tail call i32 @i2c_transfer(ptr noundef %34, ptr noundef %msg.i84, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i73) #6
  br label %dib7000m_write_word.exit96

dib7000m_write_word.exit96:                       ; preds = %if.end6.i94, %do.end.i79, %do.body.i77.dib7000m_write_word.exit96_crit_edge
  %35 = and i16 %call1, 3
  %call.i98 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i73, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp.i99, label %do.body.i101, label %if.end6.i120

do.body.i101:                                     ; preds = %dib7000m_write_word.exit96
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i100 = icmp eq i32 %36, 0
  br i1 %tobool.not.i100, label %do.body.i101.dib7000m_write_word.exit122_crit_edge, label %do.end.i103

do.body.i101.dib7000m_write_word.exit122_crit_edge: ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit122

do.end.i103:                                      ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit122

if.end6.i120:                                     ; preds = %dib7000m_write_word.exit96
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i104 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %37 = ptrtoint ptr %i2c_write_buffer.i104 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %i2c_write_buffer.i104, align 4
  %arrayidx12.i105 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %arrayidx12.i105 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -110, ptr %arrayidx12.i105, align 1
  %arrayidx18.i107 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %39 = ptrtoint ptr %arrayidx18.i107 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx18.i107, align 2
  %conv21.i108 = trunc i16 %35 to i8
  %arrayidx23.i109 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %40 = ptrtoint ptr %arrayidx23.i109 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv21.i108, ptr %arrayidx23.i109, align 1
  %msg.i110 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %41 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 262144, ptr %41, align 4
  %i2c_addr.i111 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %43 = ptrtoint ptr %i2c_addr.i111 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %i2c_addr.i111, align 8
  %45 = lshr i8 %44, 1
  %conv27.i112 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i110 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv27.i112, ptr %msg.i110, align 4
  %flags.i113 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i113 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i113, align 2
  %buf.i114 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %i2c_write_buffer.i104, ptr %buf.i114, align 4
  %i2c_adap.i116 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %49 = ptrtoint ptr %i2c_adap.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_adap.i116, align 4
  %call39.i117 = tail call i32 @i2c_transfer(ptr noundef %50, ptr noundef %msg.i110, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i73) #6
  br label %dib7000m_write_word.exit122

dib7000m_write_word.exit122:                      ; preds = %if.end6.i120, %do.end.i103, %do.body.i101.dib7000m_write_word.exit122_crit_edge
  %call.i124 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i73, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %do.body.i127, label %if.end6.i144

do.body.i127:                                     ; preds = %dib7000m_write_word.exit122
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i126 = icmp eq i32 %51, 0
  br i1 %tobool.not.i126, label %do.body.i127.dib7000m_write_word.exit146_crit_edge, label %do.end.i129

do.body.i127.dib7000m_write_word.exit146_crit_edge: ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit146

do.end.i129:                                      ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit146

if.end6.i144:                                     ; preds = %dib7000m_write_word.exit122
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i130 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %52 = ptrtoint ptr %i2c_write_buffer.i130 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %i2c_write_buffer.i130, align 4
  %arrayidx12.i131 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %arrayidx12.i131 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -111, ptr %arrayidx12.i131, align 1
  %arrayidx18.i132 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %54 = ptrtoint ptr %arrayidx18.i132 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -128, ptr %arrayidx18.i132, align 2
  %arrayidx23.i133 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %55 = ptrtoint ptr %arrayidx23.i133 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx23.i133, align 1
  %msg.i134 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %56 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 262144, ptr %56, align 4
  %i2c_addr.i135 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %58 = ptrtoint ptr %i2c_addr.i135 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_addr.i135, align 8
  %60 = lshr i8 %59, 1
  %conv27.i136 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i134 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv27.i136, ptr %msg.i134, align 4
  %flags.i137 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i137 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i137, align 2
  %buf.i138 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i138 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %i2c_write_buffer.i130, ptr %buf.i138, align 4
  %i2c_adap.i140 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %64 = ptrtoint ptr %i2c_adap.i140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_adap.i140, align 4
  %call39.i141 = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %msg.i134, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i73) #6
  br label %dib7000m_write_word.exit146

dib7000m_write_word.exit146:                      ; preds = %if.end6.i144, %do.end.i129, %do.body.i127.dib7000m_write_word.exit146_crit_edge
  %call.i148 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i73, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.i149 = icmp slt i32 %call.i148, 0
  br i1 %cmp.i149, label %do.body.i151, label %if.end6.i170

do.body.i151:                                     ; preds = %dib7000m_write_word.exit146
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i150 = icmp eq i32 %66, 0
  br i1 %tobool.not.i150, label %do.body.i151.if.end_crit_edge, label %do.end.i153

do.body.i151.if.end_crit_edge:                    ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i153:                                      ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end

if.end6.i170:                                     ; preds = %dib7000m_write_word.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i154 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %67 = ptrtoint ptr %i2c_write_buffer.i154 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %i2c_write_buffer.i154, align 4
  %arrayidx12.i155 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %arrayidx12.i155 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -110, ptr %arrayidx12.i155, align 1
  %arrayidx18.i157 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %69 = ptrtoint ptr %arrayidx18.i157 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx18.i157, align 2
  %conv21.i158 = trunc i16 %35 to i8
  %arrayidx23.i159 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %70 = ptrtoint ptr %arrayidx23.i159 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv21.i158, ptr %arrayidx23.i159, align 1
  %msg.i160 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %71 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 262144, ptr %71, align 4
  %i2c_addr.i161 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %73 = ptrtoint ptr %i2c_addr.i161 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %i2c_addr.i161, align 8
  %75 = lshr i8 %74, 1
  %conv27.i162 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i160 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv27.i162, ptr %msg.i160, align 4
  %flags.i163 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i163 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i163, align 2
  %buf.i164 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i164 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %i2c_write_buffer.i154, ptr %buf.i164, align 4
  %i2c_adap.i166 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %79 = ptrtoint ptr %i2c_adap.i166 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c_adap.i166, align 4
  %call39.i167 = tail call i32 @i2c_transfer(ptr noundef %80, ptr noundef %msg.i160, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i73) #6
  br label %if.end

if.end:                                           ; preds = %if.end6.i170, %do.end.i153, %do.body.i151.if.end_crit_edge, %sw.bb11.if.end_crit_edge
  %extract.t236 = and i8 %extract.t230, 15
  %extract.t244 = and i8 %extract.t241, 3
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t234 = or i8 %extract.t230, 112
  %extract.t243 = or i8 %extract.t241, 60
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t232 = and i8 %extract.t230, 127
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb30, %if.end, %sw.bb7, %dib7000m_write_word.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb37 ], [ 0, %sw.bb30 ], [ 0, %if.end ], [ 0, %sw.bb7 ], [ %retval.0.i, %dib7000m_write_word.exit ]
  %reg_913.0.off8 = phi i8 [ %extract.t230, %entry.sw.epilog_crit_edge ], [ %extract.t232, %sw.bb37 ], [ %extract.t234, %sw.bb30 ], [ %extract.t236, %if.end ], [ %extract.t230, %sw.bb7 ], [ %extract.t230, %dib7000m_write_word.exit ]
  %reg_914.0.off0 = phi i8 [ %extract.t241, %entry.sw.epilog_crit_edge ], [ %extract.t241, %sw.bb37 ], [ %extract.t243, %sw.bb30 ], [ %extract.t244, %if.end ], [ %extract.t245, %sw.bb7 ], [ %extract.t246, %dib7000m_write_word.exit ]
  %reg_914.0.off8 = phi i8 [ %extract.t248, %entry.sw.epilog_crit_edge ], [ %extract.t248, %sw.bb37 ], [ %extract.t248, %sw.bb30 ], [ 0, %if.end ], [ %extract.t248, %sw.bb7 ], [ %extract.t248, %dib7000m_write_word.exit ]
  %i2c_buffer_lock.i173 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i174 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i173, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp.i175 = icmp slt i32 %call.i174, 0
  br i1 %cmp.i175, label %do.body.i177, label %if.end6.i196

do.body.i177:                                     ; preds = %sw.epilog
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i176 = icmp eq i32 %81, 0
  br i1 %tobool.not.i176, label %do.body.i177.dib7000m_write_word.exit198_crit_edge, label %do.end.i179

do.body.i177.dib7000m_write_word.exit198_crit_edge: ; preds = %do.body.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit198

do.end.i179:                                      ; preds = %do.body.i177
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit198

if.end6.i196:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i180 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %82 = ptrtoint ptr %i2c_write_buffer.i180 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %i2c_write_buffer.i180, align 4
  %arrayidx12.i181 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %83 = ptrtoint ptr %arrayidx12.i181 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -111, ptr %arrayidx12.i181, align 1
  %arrayidx18.i183 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %84 = ptrtoint ptr %arrayidx18.i183 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %reg_913.0.off8, ptr %arrayidx18.i183, align 2
  %arrayidx23.i185 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %85 = ptrtoint ptr %arrayidx23.i185 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %extract.t, ptr %arrayidx23.i185, align 1
  %msg.i186 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %86 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 262144, ptr %86, align 4
  %i2c_addr.i187 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %88 = ptrtoint ptr %i2c_addr.i187 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %i2c_addr.i187, align 8
  %90 = lshr i8 %89, 1
  %conv27.i188 = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i186 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv27.i188, ptr %msg.i186, align 4
  %flags.i189 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i189, align 2
  %buf.i190 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %93 = ptrtoint ptr %buf.i190 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %i2c_write_buffer.i180, ptr %buf.i190, align 4
  %i2c_adap.i192 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %94 = ptrtoint ptr %i2c_adap.i192 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_adap.i192, align 4
  %call39.i193 = tail call i32 @i2c_transfer(ptr noundef %95, ptr noundef %msg.i186, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i193)
  %cmp40.not.i194 = icmp eq i32 %call39.i193, 1
  %cond.i195 = select i1 %cmp40.not.i194, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i173) #6
  br label %dib7000m_write_word.exit198

dib7000m_write_word.exit198:                      ; preds = %if.end6.i196, %do.end.i179, %do.body.i177.dib7000m_write_word.exit198_crit_edge
  %retval.0.i197 = phi i32 [ %cond.i195, %if.end6.i196 ], [ -22, %do.end.i179 ], [ -22, %do.body.i177.dib7000m_write_word.exit198_crit_edge ]
  %call.i200 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i173, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %cmp.i201 = icmp slt i32 %call.i200, 0
  br i1 %cmp.i201, label %do.body.i203, label %if.end6.i222

do.body.i203:                                     ; preds = %dib7000m_write_word.exit198
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i202 = icmp eq i32 %96, 0
  br i1 %tobool.not.i202, label %do.body.i203.dib7000m_write_word.exit224_crit_edge, label %do.end.i205

do.body.i203.dib7000m_write_word.exit224_crit_edge: ; preds = %do.body.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit224

do.end.i205:                                      ; preds = %do.body.i203
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit224

if.end6.i222:                                     ; preds = %dib7000m_write_word.exit198
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i206 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %97 = ptrtoint ptr %i2c_write_buffer.i206 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %i2c_write_buffer.i206, align 4
  %arrayidx12.i207 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %arrayidx12.i207 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -110, ptr %arrayidx12.i207, align 1
  %arrayidx18.i209 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %99 = ptrtoint ptr %arrayidx18.i209 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %reg_914.0.off8, ptr %arrayidx18.i209, align 2
  %arrayidx23.i211 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %100 = ptrtoint ptr %arrayidx23.i211 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %reg_914.0.off0, ptr %arrayidx23.i211, align 1
  %msg.i212 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %101 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 262144, ptr %101, align 4
  %i2c_addr.i213 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %103 = ptrtoint ptr %i2c_addr.i213 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %i2c_addr.i213, align 8
  %105 = lshr i8 %104, 1
  %conv27.i214 = zext i8 %105 to i16
  %106 = ptrtoint ptr %msg.i212 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv27.i214, ptr %msg.i212, align 4
  %flags.i215 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i215 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags.i215, align 2
  %buf.i216 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %108 = ptrtoint ptr %buf.i216 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %i2c_write_buffer.i206, ptr %buf.i216, align 4
  %i2c_adap.i218 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %109 = ptrtoint ptr %i2c_adap.i218 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i2c_adap.i218, align 4
  %call39.i219 = tail call i32 @i2c_transfer(ptr noundef %110, ptr noundef %msg.i212, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i219)
  %cmp40.not.i220 = icmp eq i32 %call39.i219, 1
  %cond.i221 = select i1 %cmp40.not.i220, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i173) #6
  br label %dib7000m_write_word.exit224

dib7000m_write_word.exit224:                      ; preds = %if.end6.i222, %do.end.i205, %do.body.i203.dib7000m_write_word.exit224_crit_edge
  %retval.0.i223 = phi i32 [ %cond.i221, %if.end6.i222 ], [ -22, %do.end.i205 ], [ -22, %do.body.i203.dib7000m_write_word.exit224_crit_edge ]
  %or46 = or i32 %retval.0.i197, %ret.0
  %or48 = or i32 %or46, %retval.0.i223
  ret i32 %or48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib7000m_set_output_mode(ptr noundef %state, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_offs = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_offs, align 8
  %conv = zext i8 %1 to i16
  %add = add nuw nsw i16 %conv, 294
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %state, i16 noundef zeroext %add)
  %2 = and i16 %call, 16
  %3 = or i16 %2, 2
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %state, i32 noundef %mode) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %mode, label %do.body22 [
    i32 1, label %do.end7.sw.epilog_crit_edge
    i32 2, label %sw.bb8
    i32 0, label %sw.bb21
    i32 4, label %sw.bb10
    i32 5, label %sw.bb17
  ]

do.end7.sw.epilog_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %hostbus_diversity = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %hostbus_diversity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hostbus_diversity, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  %extract.t151 = select i1 %tobool11.not, i8 12, i8 0
  %extract.t152 = select i1 %tobool11.not, i8 0, i8 5
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = or i16 %2, 6
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body22:                                        ; preds = %do.end7
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %do.body22.sw.epilog_crit_edge, label %do.end27

do.body22.sw.epilog_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef %state) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %do.body22.sw.epilog_crit_edge, %sw.bb21, %sw.bb17, %sw.bb10, %sw.bb8, %do.end7.sw.epilog_crit_edge
  %fifo_threshold.0 = phi i16 [ 1792, %do.end27 ], [ 1792, %do.body22.sw.epilog_crit_edge ], [ 1792, %sw.bb21 ], [ 512, %sw.bb17 ], [ 1792, %sw.bb8 ], [ 1792, %do.end7.sw.epilog_crit_edge ], [ 1792, %sw.bb10 ]
  %smo_mode.0 = phi i16 [ %3, %do.end27 ], [ %3, %do.body22.sw.epilog_crit_edge ], [ %3, %sw.bb21 ], [ %8, %sw.bb17 ], [ %3, %sw.bb8 ], [ %3, %do.end7.sw.epilog_crit_edge ], [ %3, %sw.bb10 ]
  %sram.0.off8 = phi i8 [ 0, %do.end27 ], [ 0, %do.body22.sw.epilog_crit_edge ], [ 0, %sw.bb21 ], [ 0, %sw.bb17 ], [ 0, %sw.bb8 ], [ 0, %do.end7.sw.epilog_crit_edge ], [ %extract.t151, %sw.bb10 ]
  %outreg.0.off0 = phi i8 [ 0, %do.end27 ], [ 0, %do.body22.sw.epilog_crit_edge ], [ 0, %sw.bb21 ], [ 64, %sw.bb17 ], [ 64, %sw.bb8 ], [ 0, %do.end7.sw.epilog_crit_edge ], [ 0, %sw.bb10 ]
  %outreg.0.off8 = phi i8 [ 0, %do.end27 ], [ 0, %do.body22.sw.epilog_crit_edge ], [ 0, %sw.bb21 ], [ 5, %sw.bb17 ], [ 4, %sw.bb8 ], [ 4, %do.end7.sw.epilog_crit_edge ], [ %extract.t152, %sw.bb10 ]
  %output_mpeg2_in_188_bytes = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %output_mpeg2_in_188_bytes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %output_mpeg2_in_188_bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool35.not = icmp eq i8 %11, 0
  %12 = or i16 %smo_mode.0, 32
  %spec.select = select i1 %tobool35.not, i16 %smo_mode.0, i16 %12
  %13 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_offs, align 8
  %conv42 = zext i8 %14 to i16
  %add43 = add nuw nsw i16 %conv42, 294
  %call45 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add43, i16 noundef zeroext %spec.select)
  %15 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_offs, align 8
  %conv48 = zext i8 %16 to i16
  %add49 = add nuw nsw i16 %conv48, 295
  %call51 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add49, i16 noundef zeroext %fifo_threshold.0)
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %sw.epilog
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %18 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %outreg.0.off8, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %outreg.0.off0, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %22 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262144, ptr %22, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %24 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i2c_addr.i, align 8
  %26 = lshr i8 %25, 1
  %conv27.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %30 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i)
  %cmp40.not.i = icmp eq i32 %call39.i, 1
  %cond.i = select i1 %cmp40.not.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end6.i ], [ -22, %do.end.i ], [ -22, %do.body.i.dib7000m_write_word.exit_crit_edge ]
  %call.i100 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i101 = icmp slt i32 %call.i100, 0
  br i1 %cmp.i101, label %do.body.i103, label %if.end6.i122

do.body.i103:                                     ; preds = %dib7000m_write_word.exit
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i102 = icmp eq i32 %32, 0
  br i1 %tobool.not.i102, label %do.body.i103.dib7000m_write_word.exit124_crit_edge, label %do.end.i105

do.body.i103.dib7000m_write_word.exit124_crit_edge: ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit124

do.end.i105:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit124

if.end6.i122:                                     ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i106 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %33 = ptrtoint ptr %i2c_write_buffer.i106 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %i2c_write_buffer.i106, align 4
  %arrayidx12.i107 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %arrayidx12.i107 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 13, ptr %arrayidx12.i107, align 1
  %arrayidx18.i109 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %35 = ptrtoint ptr %arrayidx18.i109 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sram.0.off8, ptr %arrayidx18.i109, align 2
  %arrayidx23.i111 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %36 = ptrtoint ptr %arrayidx23.i111 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %arrayidx23.i111, align 1
  %msg.i112 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %37 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 262144, ptr %37, align 4
  %i2c_addr.i113 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %39 = ptrtoint ptr %i2c_addr.i113 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i2c_addr.i113, align 8
  %41 = lshr i8 %40, 1
  %conv27.i114 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i112 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv27.i114, ptr %msg.i112, align 4
  %flags.i115 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i115, align 2
  %buf.i116 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %i2c_write_buffer.i106, ptr %buf.i116, align 4
  %i2c_adap.i118 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %45 = ptrtoint ptr %i2c_adap.i118 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_adap.i118, align 4
  %call39.i119 = tail call i32 @i2c_transfer(ptr noundef %46, ptr noundef %msg.i112, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i119)
  %cmp40.not.i120 = icmp eq i32 %call39.i119, 1
  %cond.i121 = select i1 %cmp40.not.i120, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit124

dib7000m_write_word.exit124:                      ; preds = %if.end6.i122, %do.end.i105, %do.body.i103.dib7000m_write_word.exit124_crit_edge
  %retval.0.i123 = phi i32 [ %cond.i121, %if.end6.i122 ], [ -22, %do.end.i105 ], [ -22, %do.body.i103.dib7000m_write_word.exit124_crit_edge ]
  %revision = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 15
  %47 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %revision, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %48)
  %cmp = icmp eq i16 %48, 16387
  br i1 %cmp, label %if.then59, label %dib7000m_write_word.exit124.if.end72_crit_edge

dib7000m_write_word.exit124.if.end72_crit_edge:   ; preds = %dib7000m_write_word.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then59:                                        ; preds = %dib7000m_write_word.exit124
  %call60 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %state, i16 noundef zeroext 909)
  %call.i126 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp.i127 = icmp slt i32 %call.i126, 0
  br i1 %cmp.i127, label %do.body.i129, label %if.end6.i148

do.body.i129:                                     ; preds = %if.then59
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i128 = icmp eq i32 %49, 0
  br i1 %tobool.not.i128, label %do.body.i129.if.end72_crit_edge, label %do.end.i131

do.body.i129.if.end72_crit_edge:                  ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end.i131:                                      ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end72

if.end6.i148:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp64 = icmp eq i32 %mode, 4
  %50 = and i16 %call60, 253
  %masksel = select i1 %cmp64, i16 2, i16 0
  %spec.select98 = or i16 %50, %masksel
  %i2c_write_buffer.i132 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %51 = ptrtoint ptr %i2c_write_buffer.i132 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %i2c_write_buffer.i132, align 4
  %arrayidx12.i133 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %arrayidx12.i133 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -115, ptr %arrayidx12.i133, align 1
  %53 = lshr i16 %call60, 8
  %conv16.i134 = trunc i16 %53 to i8
  %arrayidx18.i135 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %54 = ptrtoint ptr %arrayidx18.i135 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv16.i134, ptr %arrayidx18.i135, align 2
  %conv21.i136 = trunc i16 %spec.select98 to i8
  %arrayidx23.i137 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %55 = ptrtoint ptr %arrayidx23.i137 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv21.i136, ptr %arrayidx23.i137, align 1
  %msg.i138 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %56 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 262144, ptr %56, align 4
  %i2c_addr.i139 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %58 = ptrtoint ptr %i2c_addr.i139 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_addr.i139, align 8
  %60 = lshr i8 %59, 1
  %conv27.i140 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i138 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv27.i140, ptr %msg.i138, align 4
  %flags.i141 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i141 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i141, align 2
  %buf.i142 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i142 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %i2c_write_buffer.i132, ptr %buf.i142, align 4
  %i2c_adap.i144 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %64 = ptrtoint ptr %i2c_adap.i144 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_adap.i144, align 4
  %call39.i145 = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %msg.i138, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end6.i148, %do.end.i131, %do.body.i129.if.end72_crit_edge, %dib7000m_write_word.exit124.if.end72_crit_edge
  %or52 = or i32 %call51, %call45
  %or54 = or i32 %or52, %retval.0.i
  %or56 = or i32 %or54, %retval.0.i123
  ret i32 %or56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib7000m_set_bandwidth(ptr noundef %state, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw)
  %tobool.not = icmp eq i32 %bw, 0
  %spec.store.select = select i1 %tobool.not, i32 8000, i32 %bw
  %current_bandwidth = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 8
  %0 = ptrtoint ptr %current_bandwidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.store.select, ptr %current_bandwidth, align 8
  %timf1 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 10
  %1 = ptrtoint ptr %timf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timf1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  br i1 %tobool3.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %timf_default = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 11
  br label %if.end21

do.body9:                                         ; preds = %entry
  br i1 %tobool3.not, label %do.body9.if.end21_crit_edge, label %do.end14

do.body9.if.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end14, %do.body9.if.end21_crit_edge, %do.end8
  %timf.0.in = phi ptr [ %timf_default, %do.end8 ], [ %timf1, %do.end14 ], [ %timf1, %do.body9.if.end21_crit_edge ]
  %4 = ptrtoint ptr %timf.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %timf.0 = load i32, ptr %timf.0.in, align 4
  %div = udiv i32 %spec.store.select, 50
  %mul = mul i32 %timf.0, %div
  %div22 = udiv i32 %mul, 160
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end21
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %div22, 16
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %6 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 23, ptr %arrayidx12.i, align 1
  %8 = lshr i32 %div22, 24
  %conv16.i = trunc i32 %8 to i8
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %9 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv16.i, ptr %arrayidx18.i, align 2
  %conv21.i = trunc i32 %shr to i8
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %11 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262144, ptr %11, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_addr.i, align 8
  %15 = lshr i8 %14, 1
  %conv27.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %20, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %call.i2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.i3 = icmp slt i32 %call.i2, 0
  br i1 %cmp.i3, label %do.body.i5, label %if.end6.i24

do.body.i5:                                       ; preds = %dib7000m_write_word.exit
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i4 = icmp eq i32 %21, 0
  br i1 %tobool.not.i4, label %do.body.i5.dib7000m_write_word.exit26_crit_edge, label %do.end.i7

do.body.i5.dib7000m_write_word.exit26_crit_edge:  ; preds = %do.body.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26

do.end.i7:                                        ; preds = %do.body.i5
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26

if.end6.i24:                                      ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i8 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %22 = ptrtoint ptr %i2c_write_buffer.i8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %i2c_write_buffer.i8, align 4
  %arrayidx12.i9 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %arrayidx12.i9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 24, ptr %arrayidx12.i9, align 1
  %24 = lshr i32 %div22, 8
  %conv16.i10 = trunc i32 %24 to i8
  %arrayidx18.i11 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %25 = ptrtoint ptr %arrayidx18.i11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv16.i10, ptr %arrayidx18.i11, align 2
  %conv21.i12 = trunc i32 %div22 to i8
  %arrayidx23.i13 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %26 = ptrtoint ptr %arrayidx23.i13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv21.i12, ptr %arrayidx23.i13, align 1
  %msg.i14 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %27 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262144, ptr %27, align 4
  %i2c_addr.i15 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %29 = ptrtoint ptr %i2c_addr.i15 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_addr.i15, align 8
  %31 = lshr i8 %30, 1
  %conv27.i16 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv27.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i17, align 2
  %buf.i18 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %i2c_write_buffer.i8, ptr %buf.i18, align 4
  %i2c_adap.i20 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %35 = ptrtoint ptr %i2c_adap.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_adap.i20, align 4
  %call39.i21 = tail call i32 @i2c_transfer(ptr noundef %36, ptr noundef %msg.i14, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit26

dib7000m_write_word.exit26:                       ; preds = %if.end6.i24, %do.end.i7, %do.body.i5.dib7000m_write_word.exit26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib7000m_release(ptr nocapture noundef readonly %demod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_master = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 4
  tail call void @dibx000_exit_i2c_master(ptr noundef %i2c_master) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_wakeup(ptr nocapture noundef readonly %demod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %mobile_mode.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %mobile_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mobile_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i16 214, i16 0
  %revision.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %5)
  %cmp25.i = icmp eq i16 %5, 16387
  %offset.0.i = zext i1 %cmp25.i to i16
  %i2c_buffer_lock.i35 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 20
  %call.i36 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i35, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i37 = icmp slt i32 %call.i36, 0
  br i1 %cmp.i37, label %do.body.i39, label %if.end6.i57

do.body.i39:                                      ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i38 = icmp eq i32 %6, 0
  br i1 %tobool.not.i38, label %do.body.i39.dib7000m_write_word.exit59_crit_edge, label %do.end.i41

do.body.i39.dib7000m_write_word.exit59_crit_edge: ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit59

do.end.i41:                                       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit59

if.end6.i57:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i42 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %i2c_write_buffer.i42 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %i2c_write_buffer.i42, align 4
  %conv10.i43 = select i1 %cmp25.i, i8 -120, i8 -121
  %arrayidx12.i44 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %arrayidx12.i44 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10.i43, ptr %arrayidx12.i44, align 1
  %arrayidx18.i45 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 2
  %9 = ptrtoint ptr %arrayidx18.i45 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx18.i45, align 2
  %arrayidx23.i46 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %arrayidx23.i46 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx23.i46, align 1
  %msg.i47 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17
  %11 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262144, ptr %11, align 4
  %i2c_addr.i48 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %i2c_addr.i48 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_addr.i48, align 8
  %15 = lshr i8 %14, 1
  %conv27.i49 = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i47 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv27.i49, ptr %msg.i47, align 4
  %flags.i50 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i50, align 2
  %buf.i51 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c_write_buffer.i42, ptr %buf.i51, align 4
  %i2c_adap.i53 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_adap.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i53, align 4
  %call39.i54 = tail call i32 @i2c_transfer(ptr noundef %20, ptr noundef %msg.i47, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i35) #6
  br label %dib7000m_write_word.exit59

dib7000m_write_word.exit59:                       ; preds = %if.end6.i57, %do.end.i41, %do.body.i39.dib7000m_write_word.exit59_crit_edge
  %conv33.i = or i16 %offset.0.i, 904
  %call34.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %1, i16 noundef zeroext %conv33.i, i16 noundef zeroext %spec.select.i) #6
  %call.i11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i35, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp.i12, label %do.body.i14, label %if.end6.i32

do.body.i14:                                      ; preds = %dib7000m_write_word.exit59
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i13 = icmp eq i32 %21, 0
  br i1 %tobool.not.i13, label %do.body.i14.dib7000m_write_word.exit34_crit_edge, label %do.end.i16

do.body.i14.dib7000m_write_word.exit34_crit_edge: ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit34

do.end.i16:                                       ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit34

if.end6.i32:                                      ; preds = %dib7000m_write_word.exit59
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i17 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %i2c_write_buffer.i17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %i2c_write_buffer.i17, align 4
  %conv10.i18 = select i1 %cmp25.i, i8 -118, i8 -119
  %arrayidx12.i19 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %arrayidx12.i19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i18, ptr %arrayidx12.i19, align 1
  %arrayidx18.i20 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %arrayidx18.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx18.i20, align 2
  %arrayidx23.i21 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 3
  %25 = ptrtoint ptr %arrayidx23.i21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx23.i21, align 1
  %msg.i22 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17
  %26 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262144, ptr %26, align 4
  %i2c_addr.i23 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %i2c_addr.i23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_addr.i23, align 8
  %30 = lshr i8 %29, 1
  %conv27.i24 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv27.i24, ptr %msg.i22, align 4
  %flags.i25 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i25, align 2
  %buf.i26 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %i2c_write_buffer.i17, ptr %buf.i26, align 4
  %i2c_adap.i28 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %i2c_adap.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_adap.i28, align 4
  %call39.i29 = tail call i32 @i2c_transfer(ptr noundef %35, ptr noundef %msg.i22, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i35) #6
  br label %dib7000m_write_word.exit34

dib7000m_write_word.exit34:                       ; preds = %if.end6.i32, %do.end.i16, %do.body.i14.dib7000m_write_word.exit34_crit_edge
  %call.i8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i35, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.i = icmp slt i32 %call.i8, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %dib7000m_write_word.exit34
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i9 = icmp eq i32 %36, 0
  br i1 %tobool.not.i9, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %dib7000m_write_word.exit34
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %i2c_write_buffer.i, align 4
  %38 = zext i1 %cmp25.i to i8
  %conv10.i = or i8 %38, -118
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 2
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 3
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17
  %42 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 262144, ptr %42, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_addr.i, align 8
  %46 = lshr i8 %45, 1
  %conv27.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %51, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i35) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %call = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %dib7000m_write_word.exit.if.end6_crit_edge, label %do.body

dib7000m_write_word.exit.if.end6_crit_edge:       ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %dib7000m_write_word.exit
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %do.end

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge, %dib7000m_write_word.exit.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_sleep(ptr nocapture noundef readonly %demod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %demod, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %1, i32 noundef 0)
  %revision.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %3)
  %cmp25.i = icmp eq i16 %3, 16387
  %offset.0.i = zext i1 %cmp25.i to i16
  %i2c_buffer_lock.i8 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 20
  %call.i9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.i10 = icmp slt i32 %call.i9, 0
  br i1 %cmp.i10, label %do.body.i12, label %if.end6.i30

do.body.i12:                                      ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i11 = icmp eq i32 %4, 0
  br i1 %tobool.not.i11, label %do.body.i12.dib7000m_write_word.exit32_crit_edge, label %do.end.i14

do.body.i12.dib7000m_write_word.exit32_crit_edge: ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit32

do.end.i14:                                       ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit32

if.end6.i30:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i15 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %i2c_write_buffer.i15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %i2c_write_buffer.i15, align 4
  %conv10.i16 = select i1 %cmp25.i, i8 -120, i8 -121
  %arrayidx12.i17 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %arrayidx12.i17 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10.i16, ptr %arrayidx12.i17, align 1
  %arrayidx18.i18 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 2
  %7 = ptrtoint ptr %arrayidx18.i18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx18.i18, align 2
  %arrayidx23.i19 = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %arrayidx23.i19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx23.i19, align 1
  %msg.i20 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17
  %9 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262144, ptr %9, align 4
  %i2c_addr.i21 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_addr.i21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_addr.i21, align 8
  %13 = lshr i8 %12, 1
  %conv27.i22 = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv27.i22, ptr %msg.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i23, align 2
  %buf.i24 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i2c_write_buffer.i15, ptr %buf.i24, align 4
  %i2c_adap.i26 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %i2c_adap.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap.i26, align 4
  %call39.i27 = tail call i32 @i2c_transfer(ptr noundef %18, ptr noundef %msg.i20, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i8) #6
  br label %dib7000m_write_word.exit32

dib7000m_write_word.exit32:                       ; preds = %if.end6.i30, %do.end.i14, %do.body.i12.dib7000m_write_word.exit32_crit_edge
  %conv33.i = or i16 %offset.0.i, 904
  %call34.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %1, i16 noundef zeroext %conv33.i, i16 noundef zeroext -1) #6
  %call.i6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.i = icmp slt i32 %call.i6, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %dib7000m_write_word.exit32
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i7 = icmp eq i32 %19, 0
  br i1 %tobool.not.i7, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %dib7000m_write_word.exit32
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %i2c_write_buffer.i, align 4
  %conv10.i = select i1 %cmp25.i, i8 -118, i8 -119
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 2
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %1, i32 0, i32 18, i32 3
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 27, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17
  %24 = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262144, ptr %24, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_addr.i, align 8
  %28 = lshr i8 %27, 1
  %conv27.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 17, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i8) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp.not.i = icmp ne i16 %3, 16384
  %34 = zext i1 %cmp.not.i to i16
  %reg_906.1.i = shl nuw nsw i16 16383, %34
  %conv41.i = or i16 %offset.0.i, 906
  %call42.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %1, i16 noundef zeroext %conv41.i, i16 noundef zeroext %reg_906.1.i) #6
  %call1 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %1, i32 noundef 1)
  %call2 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %1, i32 noundef 3)
  %or = or i32 %call2, %call1
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %schan.i = alloca %struct.dtv_frontend_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %1, i32 noundef 0)
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %div = udiv i32 %3, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %1, i32 noundef %div)
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %4 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %fe) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %agc_state = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %agc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %agc_state, align 2
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end
  %7 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %demodulator_priv, align 4
  %call.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 72) #6
  %agc_state1.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %agc_state1.i, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %10, label %do.body.do.end.critedge_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb38.i
    i8 2, label %sw.bb51.i
    i8 3, label %sw.bb57.i
    i8 4, label %sw.bb80.i
    i8 5, label %sw.bb87.i
  ]

do.body.do.end.critedge_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.critedge

sw.bb.i:                                          ; preds = %do.body
  %revision.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 15
  %12 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %revision.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp.not.i.i = icmp ne i16 %13, 16384
  %14 = zext i1 %cmp.not.i.i to i16
  %reg_906.1.i.i = shl nuw nsw i16 16382, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %13)
  %cmp25.i.i = icmp eq i16 %13, 16387
  %offset.0.i.i = zext i1 %cmp25.i.i to i16
  %i2c_buffer_lock.i366.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 20
  %call.i367.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367.i)
  %cmp.i368.i = icmp slt i32 %call.i367.i, 0
  br i1 %cmp.i368.i, label %do.body.i370.i, label %if.end6.i388.i

do.body.i370.i:                                   ; preds = %sw.bb.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i369.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i369.i, label %do.body.i370.i.dib7000m_write_word.exit390.i_crit_edge, label %do.end.i372.i

do.body.i370.i.dib7000m_write_word.exit390.i_crit_edge: ; preds = %do.body.i370.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit390.i

do.end.i372.i:                                    ; preds = %do.body.i370.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i371.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit390.i

if.end6.i388.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i373.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %16 = ptrtoint ptr %i2c_write_buffer.i373.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %i2c_write_buffer.i373.i, align 4
  %conv10.i374.i = select i1 %cmp25.i.i, i8 -120, i8 -121
  %arrayidx12.i375.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %arrayidx12.i375.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i374.i, ptr %arrayidx12.i375.i, align 1
  %arrayidx18.i376.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %arrayidx18.i376.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 51, ptr %arrayidx18.i376.i, align 2
  %arrayidx23.i377.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %arrayidx23.i377.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx23.i377.i, align 1
  %msg.i378.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %20 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262144, ptr %20, align 4
  %i2c_addr.i379.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %i2c_addr.i379.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_addr.i379.i, align 8
  %24 = lshr i8 %23, 1
  %conv27.i380.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i378.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv27.i380.i, ptr %msg.i378.i, align 4
  %flags.i381.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i381.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i381.i, align 2
  %buf.i382.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i382.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %i2c_write_buffer.i373.i, ptr %buf.i382.i, align 4
  %i2c_adap.i384.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %28 = ptrtoint ptr %i2c_adap.i384.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap.i384.i, align 4
  %call39.i385.i = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %msg.i378.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit390.i

dib7000m_write_word.exit390.i:                    ; preds = %if.end6.i388.i, %do.end.i372.i, %do.body.i370.i.dib7000m_write_word.exit390.i_crit_edge
  %call.i364 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %cmp.i365 = icmp slt i32 %call.i364, 0
  br i1 %cmp.i365, label %do.body.i367, label %if.end6.i384

do.body.i367:                                     ; preds = %dib7000m_write_word.exit390.i
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i366 = icmp eq i32 %30, 0
  br i1 %tobool.not.i366, label %do.body.i367.dib7000m_write_word.exit386_crit_edge, label %do.end.i369

do.body.i367.dib7000m_write_word.exit386_crit_edge: ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit386

do.end.i369:                                      ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit386

if.end6.i384:                                     ; preds = %dib7000m_write_word.exit390.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i370 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %31 = ptrtoint ptr %i2c_write_buffer.i370 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %i2c_write_buffer.i370, align 4
  %32 = zext i1 %cmp25.i.i to i8
  %conv10.i = or i8 %32, -120
  %arrayidx12.i371 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %arrayidx12.i371 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv10.i, ptr %arrayidx12.i371, align 1
  %arrayidx18.i372 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %34 = ptrtoint ptr %arrayidx18.i372 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx18.i372, align 2
  %arrayidx23.i373 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %35 = ptrtoint ptr %arrayidx23.i373 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %arrayidx23.i373, align 1
  %msg.i374 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %36 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262144, ptr %36, align 4
  %i2c_addr.i375 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %38 = ptrtoint ptr %i2c_addr.i375 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_addr.i375, align 8
  %40 = lshr i8 %39, 1
  %conv27.i376 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i374 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv27.i376, ptr %msg.i374, align 4
  %flags.i377 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i377 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i377, align 2
  %buf.i378 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i378 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %i2c_write_buffer.i370, ptr %buf.i378, align 4
  %i2c_adap.i380 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %44 = ptrtoint ptr %i2c_adap.i380 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_adap.i380, align 4
  %call39.i381 = tail call i32 @i2c_transfer(ptr noundef %45, ptr noundef %msg.i374, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit386

dib7000m_write_word.exit386:                      ; preds = %if.end6.i384, %do.end.i369, %do.body.i367.dib7000m_write_word.exit386_crit_edge
  %call.i343.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343.i)
  %cmp.i344.i = icmp slt i32 %call.i343.i, 0
  br i1 %cmp.i344.i, label %do.body.i346.i, label %if.end6.i363.i

do.body.i346.i:                                   ; preds = %dib7000m_write_word.exit386
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i345.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i345.i, label %do.body.i346.i.dib7000m_write_word.exit365.i_crit_edge, label %do.end.i348.i

do.body.i346.i.dib7000m_write_word.exit365.i_crit_edge: ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit365.i

do.end.i348.i:                                    ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i347.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit365.i

if.end6.i363.i:                                   ; preds = %dib7000m_write_word.exit386
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i349.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %47 = ptrtoint ptr %i2c_write_buffer.i349.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %i2c_write_buffer.i349.i, align 4
  %conv10.i.i = select i1 %cmp25.i.i, i8 -118, i8 -119
  %arrayidx12.i350.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %arrayidx12.i350.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv10.i.i, ptr %arrayidx12.i350.i, align 1
  %arrayidx18.i351.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %arrayidx18.i351.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %arrayidx18.i351.i, align 2
  %arrayidx23.i352.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %50 = ptrtoint ptr %arrayidx23.i352.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 11, ptr %arrayidx23.i352.i, align 1
  %msg.i353.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 262144, ptr %51, align 4
  %i2c_addr.i354.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %53 = ptrtoint ptr %i2c_addr.i354.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i2c_addr.i354.i, align 8
  %55 = lshr i8 %54, 1
  %conv27.i355.i = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i353.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv27.i355.i, ptr %msg.i353.i, align 4
  %flags.i356.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i356.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i356.i, align 2
  %buf.i357.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i357.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %i2c_write_buffer.i349.i, ptr %buf.i357.i, align 4
  %i2c_adap.i359.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %59 = ptrtoint ptr %i2c_adap.i359.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_adap.i359.i, align 4
  %call39.i360.i = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %msg.i353.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit365.i

dib7000m_write_word.exit365.i:                    ; preds = %if.end6.i363.i, %do.end.i348.i, %do.body.i346.i.dib7000m_write_word.exit365.i_crit_edge
  %conv41.i.i = or i16 %offset.0.i.i, 906
  %call42.i.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %8, i16 noundef zeroext %conv41.i.i, i16 noundef zeroext %reg_906.1.i.i) #6
  %call3.i = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %8, i32 noundef 2) #6
  %61 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170001000, i32 %62)
  %cmp.i = icmp ult i32 %62, 170001000
  br i1 %cmp.i, label %dib7000m_write_word.exit365.i.cond.end32.i_crit_edge, label %cond.false10.i

dib7000m_write_word.exit365.i.cond.end32.i_crit_edge: ; preds = %dib7000m_write_word.exit365.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end32.i

cond.false10.i:                                   ; preds = %dib7000m_write_word.exit365.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250001000, i32 %62)
  %cmp13.i = icmp ult i32 %62, 250001000
  br i1 %cmp13.i, label %cond.false10.i.cond.end32.i_crit_edge, label %cond.false16.i

cond.false10.i.cond.end32.i_crit_edge:            ; preds = %cond.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end32.i

cond.false16.i:                                   ; preds = %cond.false10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 863001000, i32 %62)
  %cmp19.i = icmp ult i32 %62, 863001000
  br i1 %cmp19.i, label %cond.false16.i.cond.end32.i_crit_edge, label %cond.false22.i

cond.false16.i.cond.end32.i_crit_edge:            ; preds = %cond.false16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end32.i

cond.false22.i:                                   ; preds = %cond.false16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001000, i32 %62)
  %cmp25.i = icmp ult i32 %62, 2000001000
  %phi.cast.i = select i1 %cmp25.i, i8 1, i8 8
  br label %cond.end32.i

cond.end32.i:                                     ; preds = %cond.false22.i, %cond.false16.i.cond.end32.i_crit_edge, %cond.false10.i.cond.end32.i_crit_edge, %dib7000m_write_word.exit365.i.cond.end32.i_crit_edge
  %cond33.i = phi i8 [ 32, %dib7000m_write_word.exit365.i.cond.end32.i_crit_edge ], [ 4, %cond.false10.i.cond.end32.i_crit_edge ], [ %phi.cast.i, %cond.false22.i ], [ 2, %cond.false16.i.cond.end32.i_crit_edge ]
  %current_band.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 7
  %63 = ptrtoint ptr %current_band.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %current_band.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %cond33.i)
  %cmp.i.i = icmp eq i8 %64, %cond33.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.end32.i.if.end.i.i_crit_edge

cond.end32.i.if.end.i.i_crit_edge:                ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.end32.i
  %current_agc.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 9
  %65 = ptrtoint ptr %current_agc.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %current_agc.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %66, null
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.end32.i.if.end.i.i_crit_edge
  %67 = ptrtoint ptr %current_band.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %cond33.i, ptr %current_band.i.i, align 4
  %agc_config_count.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 1, i32 6
  %68 = ptrtoint ptr %agc_config_count.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %agc_config_count.i.i, align 4
  %conv6.i.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp7694.not.i.i = icmp eq i8 %69, 0
  br i1 %cmp7694.not.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %agc10.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 1, i32 7
  %70 = ptrtoint ptr %agc10.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %agc10.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0695.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i, align 2
  %and222.i.i = and i8 %73, %cond33.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and222.i.i)
  %tobool.not.i145.i = icmp eq i8 %and222.i.i, 0
  br i1 %tobool.not.i145.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0695.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv6.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %cmp18.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %cmp18.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %if.end28.i.i

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge, %if.end.i.i.do.body.i.i_crit_edge
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool21.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool21.not.i.i, label %do.body.i.i.do.end.critedge_crit_edge, label %do.end.i.i

do.body.i.i.do.end.critedge_crit_edge:            ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.critedge

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i420 = zext i8 %cond33.i to i32
  %call.i146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %conv1.i.i420) #9
  br label %do.end.critedge

if.end28.i.i:                                     ; preds = %for.end.i.i
  %current_agc29.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 9
  %75 = ptrtoint ptr %current_agc29.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx.i.i, ptr %current_agc29.i.i, align 4
  %setup.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 1
  %76 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %setup.i.i, align 2
  %call.i.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end6.i.i.i

do.body.i.i.i:                                    ; preds = %if.end28.i.i
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %79 = ptrtoint ptr %i2c_write_buffer.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %i2c_write_buffer.i.i.i, align 4
  %arrayidx12.i.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 72, ptr %arrayidx12.i.i.i, align 1
  %81 = lshr i16 %77, 8
  %conv16.i.i.i = trunc i16 %81 to i8
  %arrayidx18.i.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %82 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv16.i.i.i, ptr %arrayidx18.i.i.i, align 2
  %conv21.i.i.i = trunc i16 %77 to i8
  %arrayidx23.i.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %83 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv21.i.i.i, ptr %arrayidx23.i.i.i, align 1
  %msg.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %84 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 262144, ptr %84, align 4
  %i2c_addr.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %86 = ptrtoint ptr %i2c_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i2c_addr.i.i.i, align 8
  %88 = lshr i8 %87, 1
  %conv27.i.i.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv27.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %i2c_write_buffer.i.i.i, ptr %buf.i.i.i, align 4
  %i2c_adap.i.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %92 = ptrtoint ptr %i2c_adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adap.i.i.i, align 4
  %call39.i.i.i = tail call i32 @i2c_transfer(ptr noundef %93, ptr noundef %msg.i.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit.i.i

dib7000m_write_word.exit.i.i:                     ; preds = %if.end6.i.i.i, %do.end.i.i.i, %do.body.i.i.i.dib7000m_write_word.exit.i.i_crit_edge
  %inv_gain.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 2
  %94 = ptrtoint ptr %inv_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %inv_gain.i.i, align 2
  %call.i224.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i.i)
  %cmp.i225.i.i = icmp slt i32 %call.i224.i.i, 0
  br i1 %cmp.i225.i.i, label %do.body.i227.i.i, label %if.end6.i246.i.i

do.body.i227.i.i:                                 ; preds = %dib7000m_write_word.exit.i.i
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i226.i.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i226.i.i, label %do.body.i227.i.i.dib7000m_write_word.exit248.i.i_crit_edge, label %do.end.i229.i.i

do.body.i227.i.i.dib7000m_write_word.exit248.i.i_crit_edge: ; preds = %do.body.i227.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit248.i.i

do.end.i229.i.i:                                  ; preds = %do.body.i227.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i228.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit248.i.i

if.end6.i246.i.i:                                 ; preds = %dib7000m_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i230.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %97 = ptrtoint ptr %i2c_write_buffer.i230.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %i2c_write_buffer.i230.i.i, align 4
  %arrayidx12.i231.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %arrayidx12.i231.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 73, ptr %arrayidx12.i231.i.i, align 1
  %99 = lshr i16 %95, 8
  %conv16.i232.i.i = trunc i16 %99 to i8
  %arrayidx18.i233.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %100 = ptrtoint ptr %arrayidx18.i233.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv16.i232.i.i, ptr %arrayidx18.i233.i.i, align 2
  %conv21.i234.i.i = trunc i16 %95 to i8
  %arrayidx23.i235.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %101 = ptrtoint ptr %arrayidx23.i235.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv21.i234.i.i, ptr %arrayidx23.i235.i.i, align 1
  %msg.i236.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %102 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 262144, ptr %102, align 4
  %i2c_addr.i237.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %104 = ptrtoint ptr %i2c_addr.i237.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_addr.i237.i.i, align 8
  %106 = lshr i8 %105, 1
  %conv27.i238.i.i = zext i8 %106 to i16
  %107 = ptrtoint ptr %msg.i236.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv27.i238.i.i, ptr %msg.i236.i.i, align 4
  %flags.i239.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i239.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i239.i.i, align 2
  %buf.i240.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %109 = ptrtoint ptr %buf.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %i2c_write_buffer.i230.i.i, ptr %buf.i240.i.i, align 4
  %i2c_adap.i242.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %110 = ptrtoint ptr %i2c_adap.i242.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_adap.i242.i.i, align 4
  %call39.i243.i.i = tail call i32 @i2c_transfer(ptr noundef %111, ptr noundef %msg.i236.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit248.i.i

dib7000m_write_word.exit248.i.i:                  ; preds = %if.end6.i246.i.i, %do.end.i229.i.i, %do.body.i227.i.i.dib7000m_write_word.exit248.i.i_crit_edge
  %time_stabiliz.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 3
  %112 = ptrtoint ptr %time_stabiliz.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %time_stabiliz.i.i, align 2
  %call.i250.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250.i.i)
  %cmp.i251.i.i = icmp slt i32 %call.i250.i.i, 0
  br i1 %cmp.i251.i.i, label %do.body.i253.i.i, label %if.end6.i272.i.i

do.body.i253.i.i:                                 ; preds = %dib7000m_write_word.exit248.i.i
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i252.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i252.i.i, label %do.body.i253.i.i.dib7000m_write_word.exit274.i.i_crit_edge, label %do.end.i255.i.i

do.body.i253.i.i.dib7000m_write_word.exit274.i.i_crit_edge: ; preds = %do.body.i253.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit274.i.i

do.end.i255.i.i:                                  ; preds = %do.body.i253.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i254.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit274.i.i

if.end6.i272.i.i:                                 ; preds = %dib7000m_write_word.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i256.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %115 = ptrtoint ptr %i2c_write_buffer.i256.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %i2c_write_buffer.i256.i.i, align 4
  %arrayidx12.i257.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %116 = ptrtoint ptr %arrayidx12.i257.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 74, ptr %arrayidx12.i257.i.i, align 1
  %117 = lshr i16 %113, 8
  %conv16.i258.i.i = trunc i16 %117 to i8
  %arrayidx18.i259.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %118 = ptrtoint ptr %arrayidx18.i259.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv16.i258.i.i, ptr %arrayidx18.i259.i.i, align 2
  %conv21.i260.i.i = trunc i16 %113 to i8
  %arrayidx23.i261.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %119 = ptrtoint ptr %arrayidx23.i261.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv21.i260.i.i, ptr %arrayidx23.i261.i.i, align 1
  %msg.i262.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %120 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 262144, ptr %120, align 4
  %i2c_addr.i263.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %122 = ptrtoint ptr %i2c_addr.i263.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %i2c_addr.i263.i.i, align 8
  %124 = lshr i8 %123, 1
  %conv27.i264.i.i = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i262.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv27.i264.i.i, ptr %msg.i262.i.i, align 4
  %flags.i265.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i265.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i265.i.i, align 2
  %buf.i266.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %127 = ptrtoint ptr %buf.i266.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %i2c_write_buffer.i256.i.i, ptr %buf.i266.i.i, align 4
  %i2c_adap.i268.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %128 = ptrtoint ptr %i2c_adap.i268.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_adap.i268.i.i, align 4
  %call39.i269.i.i = tail call i32 @i2c_transfer(ptr noundef %129, ptr noundef %msg.i262.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit274.i.i

dib7000m_write_word.exit274.i.i:                  ; preds = %if.end6.i272.i.i, %do.end.i255.i.i, %do.body.i253.i.i.dib7000m_write_word.exit274.i.i_crit_edge
  %alpha_level.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 4
  %130 = ptrtoint ptr %alpha_level.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %alpha_level.i.i, align 2
  %thlock.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 5
  %132 = ptrtoint ptr %thlock.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %thlock.i.i, align 2
  %call.i276.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i.i)
  %cmp.i277.i.i = icmp slt i32 %call.i276.i.i, 0
  br i1 %cmp.i277.i.i, label %do.body.i279.i.i, label %if.end6.i298.i.i

do.body.i279.i.i:                                 ; preds = %dib7000m_write_word.exit274.i.i
  %134 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i278.i.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i278.i.i, label %do.body.i279.i.i.dib7000m_write_word.exit300.i.i_crit_edge, label %do.end.i281.i.i

do.body.i279.i.i.dib7000m_write_word.exit300.i.i_crit_edge: ; preds = %do.body.i279.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit300.i.i

do.end.i281.i.i:                                  ; preds = %do.body.i279.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i280.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit300.i.i

if.end6.i298.i.i:                                 ; preds = %dib7000m_write_word.exit274.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv33.i147.i = zext i8 %131 to i16
  %shl.i.i = shl i16 %conv33.i147.i, 12
  %or.i.i = or i16 %shl.i.i, %133
  %i2c_write_buffer.i282.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %135 = ptrtoint ptr %i2c_write_buffer.i282.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %i2c_write_buffer.i282.i.i, align 4
  %arrayidx12.i283.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %136 = ptrtoint ptr %arrayidx12.i283.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 97, ptr %arrayidx12.i283.i.i, align 1
  %137 = lshr i16 %or.i.i, 8
  %conv16.i284.i.i = trunc i16 %137 to i8
  %arrayidx18.i285.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %138 = ptrtoint ptr %arrayidx18.i285.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv16.i284.i.i, ptr %arrayidx18.i285.i.i, align 2
  %conv21.i286.i.i = trunc i16 %133 to i8
  %arrayidx23.i287.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %139 = ptrtoint ptr %arrayidx23.i287.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv21.i286.i.i, ptr %arrayidx23.i287.i.i, align 1
  %msg.i288.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %140 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 262144, ptr %140, align 4
  %i2c_addr.i289.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %142 = ptrtoint ptr %i2c_addr.i289.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %i2c_addr.i289.i.i, align 8
  %144 = lshr i8 %143, 1
  %conv27.i290.i.i = zext i8 %144 to i16
  %145 = ptrtoint ptr %msg.i288.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv27.i290.i.i, ptr %msg.i288.i.i, align 4
  %flags.i291.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %146 = ptrtoint ptr %flags.i291.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i291.i.i, align 2
  %buf.i292.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %147 = ptrtoint ptr %buf.i292.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %i2c_write_buffer.i282.i.i, ptr %buf.i292.i.i, align 4
  %i2c_adap.i294.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %148 = ptrtoint ptr %i2c_adap.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c_adap.i294.i.i, align 4
  %call39.i295.i.i = tail call i32 @i2c_transfer(ptr noundef %149, ptr noundef %msg.i288.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit300.i.i

dib7000m_write_word.exit300.i.i:                  ; preds = %if.end6.i298.i.i, %do.end.i281.i.i, %do.body.i279.i.i.dib7000m_write_word.exit300.i.i_crit_edge
  %alpha_mant.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 23
  %150 = ptrtoint ptr %alpha_mant.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %alpha_mant.i.i, align 1
  %alpha_exp.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 24
  %152 = ptrtoint ptr %alpha_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %alpha_exp.i.i, align 2
  %call.i302.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302.i.i)
  %cmp.i303.i.i = icmp slt i32 %call.i302.i.i, 0
  br i1 %cmp.i303.i.i, label %do.body.i305.i.i, label %if.end6.i324.i.i

do.body.i305.i.i:                                 ; preds = %dib7000m_write_word.exit300.i.i
  %154 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i304.i.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i304.i.i, label %do.body.i305.i.i.dib7000m_write_word.exit326.i.i_crit_edge, label %do.end.i307.i.i

do.body.i305.i.i.dib7000m_write_word.exit326.i.i_crit_edge: ; preds = %do.body.i305.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit326.i.i

do.end.i307.i.i:                                  ; preds = %do.body.i305.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i306.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit326.i.i

if.end6.i324.i.i:                                 ; preds = %dib7000m_write_word.exit300.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl38.i.i = shl i8 %151, 5
  %or40.i.i = or i8 %shl38.i.i, %153
  %i2c_write_buffer.i308.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %155 = ptrtoint ptr %i2c_write_buffer.i308.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %i2c_write_buffer.i308.i.i, align 4
  %arrayidx12.i309.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %156 = ptrtoint ptr %arrayidx12.i309.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 98, ptr %arrayidx12.i309.i.i, align 1
  %157 = lshr i8 %151, 3
  %arrayidx18.i311.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %158 = ptrtoint ptr %arrayidx18.i311.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx18.i311.i.i, align 2
  %arrayidx23.i313.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %159 = ptrtoint ptr %arrayidx23.i313.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %or40.i.i, ptr %arrayidx23.i313.i.i, align 1
  %msg.i314.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %160 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 262144, ptr %160, align 4
  %i2c_addr.i315.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %162 = ptrtoint ptr %i2c_addr.i315.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %i2c_addr.i315.i.i, align 8
  %164 = lshr i8 %163, 1
  %conv27.i316.i.i = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i314.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv27.i316.i.i, ptr %msg.i314.i.i, align 4
  %flags.i317.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i317.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i317.i.i, align 2
  %buf.i318.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %167 = ptrtoint ptr %buf.i318.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %i2c_write_buffer.i308.i.i, ptr %buf.i318.i.i, align 4
  %i2c_adap.i320.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %168 = ptrtoint ptr %i2c_adap.i320.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i2c_adap.i320.i.i, align 4
  %call39.i321.i.i = tail call i32 @i2c_transfer(ptr noundef %169, ptr noundef %msg.i314.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit326.i.i

dib7000m_write_word.exit326.i.i:                  ; preds = %if.end6.i324.i.i, %do.end.i307.i.i, %do.body.i305.i.i.dib7000m_write_word.exit326.i.i_crit_edge
  %beta_mant.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 25
  %170 = ptrtoint ptr %beta_mant.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %beta_mant.i.i, align 1
  %beta_exp.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 26
  %172 = ptrtoint ptr %beta_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %beta_exp.i.i, align 2
  %call.i328.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328.i.i)
  %cmp.i329.i.i = icmp slt i32 %call.i328.i.i, 0
  br i1 %cmp.i329.i.i, label %do.body.i331.i.i, label %if.end6.i350.i.i

do.body.i331.i.i:                                 ; preds = %dib7000m_write_word.exit326.i.i
  %174 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i330.i.i = icmp eq i32 %174, 0
  br i1 %tobool.not.i330.i.i, label %do.body.i331.i.i.do.end70.i.i_crit_edge, label %do.end.i333.i.i

do.body.i331.i.i.do.end70.i.i_crit_edge:          ; preds = %do.body.i331.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

do.end.i333.i.i:                                  ; preds = %do.body.i331.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i332.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit352.i.i

if.end6.i350.i.i:                                 ; preds = %dib7000m_write_word.exit326.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl44.i.i = shl i8 %171, 6
  %or46.i.i = or i8 %shl44.i.i, %173
  %i2c_write_buffer.i334.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %175 = ptrtoint ptr %i2c_write_buffer.i334.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %i2c_write_buffer.i334.i.i, align 4
  %arrayidx12.i335.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %176 = ptrtoint ptr %arrayidx12.i335.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 99, ptr %arrayidx12.i335.i.i, align 1
  %177 = lshr i8 %171, 2
  %arrayidx18.i337.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %178 = ptrtoint ptr %arrayidx18.i337.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx18.i337.i.i, align 2
  %arrayidx23.i339.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %179 = ptrtoint ptr %arrayidx23.i339.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %or46.i.i, ptr %arrayidx23.i339.i.i, align 1
  %msg.i340.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %180 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 262144, ptr %180, align 4
  %i2c_addr.i341.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %182 = ptrtoint ptr %i2c_addr.i341.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %i2c_addr.i341.i.i, align 8
  %184 = lshr i8 %183, 1
  %conv27.i342.i.i = zext i8 %184 to i16
  %185 = ptrtoint ptr %msg.i340.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv27.i342.i.i, ptr %msg.i340.i.i, align 4
  %flags.i343.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %186 = ptrtoint ptr %flags.i343.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %flags.i343.i.i, align 2
  %buf.i344.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %187 = ptrtoint ptr %buf.i344.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %i2c_write_buffer.i334.i.i, ptr %buf.i344.i.i, align 4
  %i2c_adap.i346.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %188 = ptrtoint ptr %i2c_adap.i346.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i2c_adap.i346.i.i, align 4
  %call39.i347.i.i = tail call i32 @i2c_transfer(ptr noundef %189, ptr noundef %msg.i340.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit352.i.i

dib7000m_write_word.exit352.i.i:                  ; preds = %if.end6.i350.i.i, %do.end.i333.i.i
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool50.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool50.not.i.i, label %dib7000m_write_word.exit352.i.i.do.end70.i.i_crit_edge, label %do.end54.i.i

dib7000m_write_word.exit352.i.i.do.end70.i.i_crit_edge: ; preds = %dib7000m_write_word.exit352.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

do.end54.i.i:                                     ; preds = %dib7000m_write_word.exit352.i.i
  %wbd_ref.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 6
  %190 = ptrtoint ptr %wbd_ref.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %wbd_ref.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %cmp57.not.i.i = icmp eq i16 %191, 0
  br i1 %cmp57.not.i.i, label %cond.false.i.i, label %do.end54.i.i.cond.end.i.i_crit_edge

do.end54.i.i.cond.end.i.i_crit_edge:              ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %wbd_ref61.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 7
  %192 = ptrtoint ptr %wbd_ref61.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %wbd_ref61.i.i, align 2
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %do.end54.i.i.cond.end.i.i_crit_edge
  %cond.in.i.i = phi i16 [ %193, %cond.false.i.i ], [ %191, %do.end54.i.i.cond.end.i.i_crit_edge ]
  %cond.i.i = zext i16 %cond.in.i.i to i32
  %wbd_sel.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 8
  %194 = ptrtoint ptr %wbd_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %wbd_sel.i.i, align 2
  %conv63.i.i = zext i8 %195 to i32
  %perform_agc_softsplit.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 27
  %196 = ptrtoint ptr %perform_agc_softsplit.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %perform_agc_softsplit.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool64.not.i.i = icmp eq i8 %197, 0
  %lnot.ext.i.i = zext i1 %tobool64.not.i.i to i32
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %cond.i.i, i32 noundef %conv63.i.i, i32 noundef %lnot.ext.i.i, i32 noundef %conv63.i.i) #9
  br label %do.end70.i.i

do.end70.i.i:                                     ; preds = %cond.end.i.i, %dib7000m_write_word.exit352.i.i.do.end70.i.i_crit_edge, %do.body.i331.i.i.do.end70.i.i_crit_edge
  %wbd_ref71.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 6
  %198 = ptrtoint ptr %wbd_ref71.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %wbd_ref71.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %cmp73.not.i.i = icmp eq i16 %199, 0
  br i1 %cmp73.not.i.i, label %if.else.i.i, label %if.then75.i.i

if.then75.i.i:                                    ; preds = %do.end70.i.i
  %call.i354.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354.i.i)
  %cmp.i355.i.i = icmp slt i32 %call.i354.i.i, 0
  br i1 %cmp.i355.i.i, label %do.body.i357.i.i, label %if.end6.i376.i.i

do.body.i357.i.i:                                 ; preds = %if.then75.i.i
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i356.i.i = icmp eq i32 %200, 0
  br i1 %tobool.not.i356.i.i, label %do.body.i357.i.i.if.end80.i.i_crit_edge, label %do.end.i359.i.i

do.body.i357.i.i.if.end80.i.i_crit_edge:          ; preds = %do.body.i357.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i.i

do.end.i359.i.i:                                  ; preds = %do.body.i357.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i358.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end80.i.i

if.end6.i376.i.i:                                 ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i360.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %201 = ptrtoint ptr %i2c_write_buffer.i360.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %i2c_write_buffer.i360.i.i, align 4
  %arrayidx12.i361.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %202 = ptrtoint ptr %arrayidx12.i361.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 102, ptr %arrayidx12.i361.i.i, align 1
  %203 = lshr i16 %199, 8
  %conv16.i362.i.i = trunc i16 %203 to i8
  %arrayidx18.i363.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %204 = ptrtoint ptr %arrayidx18.i363.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv16.i362.i.i, ptr %arrayidx18.i363.i.i, align 2
  %conv21.i364.i.i = trunc i16 %199 to i8
  %arrayidx23.i365.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %205 = ptrtoint ptr %arrayidx23.i365.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv21.i364.i.i, ptr %arrayidx23.i365.i.i, align 1
  %msg.i366.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %206 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 262144, ptr %206, align 4
  %i2c_addr.i367.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %208 = ptrtoint ptr %i2c_addr.i367.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %i2c_addr.i367.i.i, align 8
  %210 = lshr i8 %209, 1
  %conv27.i368.i.i = zext i8 %210 to i16
  %211 = ptrtoint ptr %msg.i366.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv27.i368.i.i, ptr %msg.i366.i.i, align 4
  %flags.i369.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %212 = ptrtoint ptr %flags.i369.i.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %flags.i369.i.i, align 2
  %buf.i370.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %213 = ptrtoint ptr %buf.i370.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %i2c_write_buffer.i360.i.i, ptr %buf.i370.i.i, align 4
  %i2c_adap.i372.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %214 = ptrtoint ptr %i2c_adap.i372.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i2c_adap.i372.i.i, align 4
  %call39.i373.i.i = tail call i32 @i2c_transfer(ptr noundef %215, ptr noundef %msg.i366.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %if.end80.i.i

if.else.i.i:                                      ; preds = %do.end70.i.i
  %wbd_ref78.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 7
  %216 = ptrtoint ptr %wbd_ref78.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %wbd_ref78.i.i, align 2
  %call.i380.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380.i.i)
  %cmp.i381.i.i = icmp slt i32 %call.i380.i.i, 0
  br i1 %cmp.i381.i.i, label %do.body.i383.i.i, label %if.end6.i402.i.i

do.body.i383.i.i:                                 ; preds = %if.else.i.i
  %218 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i382.i.i = icmp eq i32 %218, 0
  br i1 %tobool.not.i382.i.i, label %do.body.i383.i.i.if.end80.i.i_crit_edge, label %do.end.i385.i.i

do.body.i383.i.i.if.end80.i.i_crit_edge:          ; preds = %do.body.i383.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i.i

do.end.i385.i.i:                                  ; preds = %do.body.i383.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i384.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end80.i.i

if.end6.i402.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i386.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %219 = ptrtoint ptr %i2c_write_buffer.i386.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %i2c_write_buffer.i386.i.i, align 4
  %arrayidx12.i387.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %220 = ptrtoint ptr %arrayidx12.i387.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 102, ptr %arrayidx12.i387.i.i, align 1
  %221 = lshr i16 %217, 8
  %conv16.i388.i.i = trunc i16 %221 to i8
  %arrayidx18.i389.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %222 = ptrtoint ptr %arrayidx18.i389.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv16.i388.i.i, ptr %arrayidx18.i389.i.i, align 2
  %conv21.i390.i.i = trunc i16 %217 to i8
  %arrayidx23.i391.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %223 = ptrtoint ptr %arrayidx23.i391.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv21.i390.i.i, ptr %arrayidx23.i391.i.i, align 1
  %msg.i392.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %224 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 262144, ptr %224, align 4
  %i2c_addr.i393.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %226 = ptrtoint ptr %i2c_addr.i393.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %i2c_addr.i393.i.i, align 8
  %228 = lshr i8 %227, 1
  %conv27.i394.i.i = zext i8 %228 to i16
  %229 = ptrtoint ptr %msg.i392.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv27.i394.i.i, ptr %msg.i392.i.i, align 4
  %flags.i395.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %230 = ptrtoint ptr %flags.i395.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %flags.i395.i.i, align 2
  %buf.i396.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %231 = ptrtoint ptr %buf.i396.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %i2c_write_buffer.i386.i.i, ptr %buf.i396.i.i, align 4
  %i2c_adap.i398.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %232 = ptrtoint ptr %i2c_adap.i398.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %i2c_adap.i398.i.i, align 4
  %call39.i399.i.i = tail call i32 @i2c_transfer(ptr noundef %233, ptr noundef %msg.i392.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.end6.i402.i.i, %do.end.i385.i.i, %do.body.i383.i.i.if.end80.i.i_crit_edge, %if.end6.i376.i.i, %do.end.i359.i.i, %do.body.i357.i.i.if.end80.i.i_crit_edge
  %wbd_alpha.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 9
  %234 = ptrtoint ptr %wbd_alpha.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %wbd_alpha.i.i, align 1
  %perform_agc_softsplit83.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 27
  %236 = ptrtoint ptr %perform_agc_softsplit83.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %perform_agc_softsplit83.i.i, align 1
  %call.i406.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i406.i.i)
  %cmp.i407.i.i = icmp slt i32 %call.i406.i.i, 0
  br i1 %cmp.i407.i.i, label %do.body.i409.i.i, label %if.end6.i428.i.i

do.body.i409.i.i:                                 ; preds = %if.end80.i.i
  %238 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.i408.i.i = icmp eq i32 %238, 0
  br i1 %tobool.not.i408.i.i, label %do.body.i409.i.i.dib7000m_write_word.exit430.i.i_crit_edge, label %do.end.i411.i.i

do.body.i409.i.i.dib7000m_write_word.exit430.i.i_crit_edge: ; preds = %do.body.i409.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit430.i.i

do.end.i411.i.i:                                  ; preds = %do.body.i409.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i410.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit430.i.i

if.end6.i428.i.i:                                 ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv81.i.i = zext i8 %235 to i16
  %shl82.i.i = shl i16 %conv81.i.i, 9
  %conv84.i.i = zext i8 %237 to i16
  %shl85.i.i = shl nuw i16 %conv84.i.i, 8
  %or86.i.i = or i16 %shl85.i.i, %shl82.i.i
  %i2c_write_buffer.i412.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %239 = ptrtoint ptr %i2c_write_buffer.i412.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %i2c_write_buffer.i412.i.i, align 4
  %arrayidx12.i413.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %240 = ptrtoint ptr %arrayidx12.i413.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 103, ptr %arrayidx12.i413.i.i, align 1
  %241 = lshr exact i16 %or86.i.i, 8
  %conv16.i414.i.i = trunc i16 %241 to i8
  %arrayidx18.i415.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %242 = ptrtoint ptr %arrayidx18.i415.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv16.i414.i.i, ptr %arrayidx18.i415.i.i, align 2
  %arrayidx23.i417.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %243 = ptrtoint ptr %arrayidx23.i417.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %arrayidx23.i417.i.i, align 1
  %msg.i418.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %244 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 262144, ptr %244, align 4
  %i2c_addr.i419.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %246 = ptrtoint ptr %i2c_addr.i419.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %i2c_addr.i419.i.i, align 8
  %248 = lshr i8 %247, 1
  %conv27.i420.i.i = zext i8 %248 to i16
  %249 = ptrtoint ptr %msg.i418.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv27.i420.i.i, ptr %msg.i418.i.i, align 4
  %flags.i421.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %250 = ptrtoint ptr %flags.i421.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %flags.i421.i.i, align 2
  %buf.i422.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %251 = ptrtoint ptr %buf.i422.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %i2c_write_buffer.i412.i.i, ptr %buf.i422.i.i, align 4
  %i2c_adap.i424.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %252 = ptrtoint ptr %i2c_adap.i424.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i2c_adap.i424.i.i, align 4
  %call39.i425.i.i = tail call i32 @i2c_transfer(ptr noundef %253, ptr noundef %msg.i418.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit430.i.i

dib7000m_write_word.exit430.i.i:                  ; preds = %if.end6.i428.i.i, %do.end.i411.i.i, %do.body.i409.i.i.dib7000m_write_word.exit430.i.i_crit_edge
  %agc1_max.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 10
  %254 = ptrtoint ptr %agc1_max.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %agc1_max.i.i, align 2
  %call.i432.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i432.i.i)
  %cmp.i433.i.i = icmp slt i32 %call.i432.i.i, 0
  br i1 %cmp.i433.i.i, label %do.body.i435.i.i, label %if.end6.i454.i.i

do.body.i435.i.i:                                 ; preds = %dib7000m_write_word.exit430.i.i
  %256 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.not.i434.i.i = icmp eq i32 %256, 0
  br i1 %tobool.not.i434.i.i, label %do.body.i435.i.i.dib7000m_write_word.exit456.i.i_crit_edge, label %do.end.i437.i.i

do.body.i435.i.i.dib7000m_write_word.exit456.i.i_crit_edge: ; preds = %do.body.i435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit456.i.i

do.end.i437.i.i:                                  ; preds = %do.body.i435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i436.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit456.i.i

if.end6.i454.i.i:                                 ; preds = %dib7000m_write_word.exit430.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i438.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %257 = ptrtoint ptr %i2c_write_buffer.i438.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %i2c_write_buffer.i438.i.i, align 4
  %arrayidx12.i439.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %258 = ptrtoint ptr %arrayidx12.i439.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 104, ptr %arrayidx12.i439.i.i, align 1
  %259 = lshr i16 %255, 8
  %conv16.i440.i.i = trunc i16 %259 to i8
  %arrayidx18.i441.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %260 = ptrtoint ptr %arrayidx18.i441.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv16.i440.i.i, ptr %arrayidx18.i441.i.i, align 2
  %conv21.i442.i.i = trunc i16 %255 to i8
  %arrayidx23.i443.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %261 = ptrtoint ptr %arrayidx23.i443.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv21.i442.i.i, ptr %arrayidx23.i443.i.i, align 1
  %msg.i444.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %262 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 262144, ptr %262, align 4
  %i2c_addr.i445.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %264 = ptrtoint ptr %i2c_addr.i445.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %i2c_addr.i445.i.i, align 8
  %266 = lshr i8 %265, 1
  %conv27.i446.i.i = zext i8 %266 to i16
  %267 = ptrtoint ptr %msg.i444.i.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv27.i446.i.i, ptr %msg.i444.i.i, align 4
  %flags.i447.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %268 = ptrtoint ptr %flags.i447.i.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %flags.i447.i.i, align 2
  %buf.i448.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %269 = ptrtoint ptr %buf.i448.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %i2c_write_buffer.i438.i.i, ptr %buf.i448.i.i, align 4
  %i2c_adap.i450.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %270 = ptrtoint ptr %i2c_adap.i450.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %i2c_adap.i450.i.i, align 4
  %call39.i451.i.i = tail call i32 @i2c_transfer(ptr noundef %271, ptr noundef %msg.i444.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit456.i.i

dib7000m_write_word.exit456.i.i:                  ; preds = %if.end6.i454.i.i, %do.end.i437.i.i, %do.body.i435.i.i.dib7000m_write_word.exit456.i.i_crit_edge
  %agc1_min.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 11
  %272 = ptrtoint ptr %agc1_min.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %agc1_min.i.i, align 2
  %call.i458.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i458.i.i)
  %cmp.i459.i.i = icmp slt i32 %call.i458.i.i, 0
  br i1 %cmp.i459.i.i, label %do.body.i461.i.i, label %if.end6.i480.i.i

do.body.i461.i.i:                                 ; preds = %dib7000m_write_word.exit456.i.i
  %274 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool.not.i460.i.i = icmp eq i32 %274, 0
  br i1 %tobool.not.i460.i.i, label %do.body.i461.i.i.dib7000m_write_word.exit482.i.i_crit_edge, label %do.end.i463.i.i

do.body.i461.i.i.dib7000m_write_word.exit482.i.i_crit_edge: ; preds = %do.body.i461.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit482.i.i

do.end.i463.i.i:                                  ; preds = %do.body.i461.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i462.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit482.i.i

if.end6.i480.i.i:                                 ; preds = %dib7000m_write_word.exit456.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i464.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %275 = ptrtoint ptr %i2c_write_buffer.i464.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 0, ptr %i2c_write_buffer.i464.i.i, align 4
  %arrayidx12.i465.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %276 = ptrtoint ptr %arrayidx12.i465.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 105, ptr %arrayidx12.i465.i.i, align 1
  %277 = lshr i16 %273, 8
  %conv16.i466.i.i = trunc i16 %277 to i8
  %arrayidx18.i467.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %278 = ptrtoint ptr %arrayidx18.i467.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv16.i466.i.i, ptr %arrayidx18.i467.i.i, align 2
  %conv21.i468.i.i = trunc i16 %273 to i8
  %arrayidx23.i469.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %279 = ptrtoint ptr %arrayidx23.i469.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv21.i468.i.i, ptr %arrayidx23.i469.i.i, align 1
  %msg.i470.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %280 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 262144, ptr %280, align 4
  %i2c_addr.i471.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %282 = ptrtoint ptr %i2c_addr.i471.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %i2c_addr.i471.i.i, align 8
  %284 = lshr i8 %283, 1
  %conv27.i472.i.i = zext i8 %284 to i16
  %285 = ptrtoint ptr %msg.i470.i.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv27.i472.i.i, ptr %msg.i470.i.i, align 4
  %flags.i473.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i473.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i473.i.i, align 2
  %buf.i474.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %287 = ptrtoint ptr %buf.i474.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %i2c_write_buffer.i464.i.i, ptr %buf.i474.i.i, align 4
  %i2c_adap.i476.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %288 = ptrtoint ptr %i2c_adap.i476.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %i2c_adap.i476.i.i, align 4
  %call39.i477.i.i = tail call i32 @i2c_transfer(ptr noundef %289, ptr noundef %msg.i470.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit482.i.i

dib7000m_write_word.exit482.i.i:                  ; preds = %if.end6.i480.i.i, %do.end.i463.i.i, %do.body.i461.i.i.dib7000m_write_word.exit482.i.i_crit_edge
  %agc2_max.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 12
  %290 = ptrtoint ptr %agc2_max.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %agc2_max.i.i, align 2
  %call.i484.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i484.i.i)
  %cmp.i485.i.i = icmp slt i32 %call.i484.i.i, 0
  br i1 %cmp.i485.i.i, label %do.body.i487.i.i, label %if.end6.i506.i.i

do.body.i487.i.i:                                 ; preds = %dib7000m_write_word.exit482.i.i
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool.not.i486.i.i = icmp eq i32 %292, 0
  br i1 %tobool.not.i486.i.i, label %do.body.i487.i.i.dib7000m_write_word.exit508.i.i_crit_edge, label %do.end.i489.i.i

do.body.i487.i.i.dib7000m_write_word.exit508.i.i_crit_edge: ; preds = %do.body.i487.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit508.i.i

do.end.i489.i.i:                                  ; preds = %do.body.i487.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i488.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit508.i.i

if.end6.i506.i.i:                                 ; preds = %dib7000m_write_word.exit482.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i490.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %293 = ptrtoint ptr %i2c_write_buffer.i490.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %i2c_write_buffer.i490.i.i, align 4
  %arrayidx12.i491.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %294 = ptrtoint ptr %arrayidx12.i491.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 106, ptr %arrayidx12.i491.i.i, align 1
  %295 = lshr i16 %291, 8
  %conv16.i492.i.i = trunc i16 %295 to i8
  %arrayidx18.i493.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %296 = ptrtoint ptr %arrayidx18.i493.i.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv16.i492.i.i, ptr %arrayidx18.i493.i.i, align 2
  %conv21.i494.i.i = trunc i16 %291 to i8
  %arrayidx23.i495.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %297 = ptrtoint ptr %arrayidx23.i495.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv21.i494.i.i, ptr %arrayidx23.i495.i.i, align 1
  %msg.i496.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %298 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 262144, ptr %298, align 4
  %i2c_addr.i497.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %300 = ptrtoint ptr %i2c_addr.i497.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %i2c_addr.i497.i.i, align 8
  %302 = lshr i8 %301, 1
  %conv27.i498.i.i = zext i8 %302 to i16
  %303 = ptrtoint ptr %msg.i496.i.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %conv27.i498.i.i, ptr %msg.i496.i.i, align 4
  %flags.i499.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %304 = ptrtoint ptr %flags.i499.i.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 0, ptr %flags.i499.i.i, align 2
  %buf.i500.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %305 = ptrtoint ptr %buf.i500.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %i2c_write_buffer.i490.i.i, ptr %buf.i500.i.i, align 4
  %i2c_adap.i502.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %306 = ptrtoint ptr %i2c_adap.i502.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %i2c_adap.i502.i.i, align 4
  %call39.i503.i.i = tail call i32 @i2c_transfer(ptr noundef %307, ptr noundef %msg.i496.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit508.i.i

dib7000m_write_word.exit508.i.i:                  ; preds = %if.end6.i506.i.i, %do.end.i489.i.i, %do.body.i487.i.i.dib7000m_write_word.exit508.i.i_crit_edge
  %agc2_min.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 13
  %308 = ptrtoint ptr %agc2_min.i.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %agc2_min.i.i, align 2
  %call.i510.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i510.i.i)
  %cmp.i511.i.i = icmp slt i32 %call.i510.i.i, 0
  br i1 %cmp.i511.i.i, label %do.body.i513.i.i, label %if.end6.i532.i.i

do.body.i513.i.i:                                 ; preds = %dib7000m_write_word.exit508.i.i
  %310 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.i512.i.i = icmp eq i32 %310, 0
  br i1 %tobool.not.i512.i.i, label %do.body.i513.i.i.dib7000m_write_word.exit534.i.i_crit_edge, label %do.end.i515.i.i

do.body.i513.i.i.dib7000m_write_word.exit534.i.i_crit_edge: ; preds = %do.body.i513.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit534.i.i

do.end.i515.i.i:                                  ; preds = %do.body.i513.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i514.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit534.i.i

if.end6.i532.i.i:                                 ; preds = %dib7000m_write_word.exit508.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i516.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %311 = ptrtoint ptr %i2c_write_buffer.i516.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %i2c_write_buffer.i516.i.i, align 4
  %arrayidx12.i517.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %312 = ptrtoint ptr %arrayidx12.i517.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 107, ptr %arrayidx12.i517.i.i, align 1
  %313 = lshr i16 %309, 8
  %conv16.i518.i.i = trunc i16 %313 to i8
  %arrayidx18.i519.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %314 = ptrtoint ptr %arrayidx18.i519.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %conv16.i518.i.i, ptr %arrayidx18.i519.i.i, align 2
  %conv21.i520.i.i = trunc i16 %309 to i8
  %arrayidx23.i521.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %315 = ptrtoint ptr %arrayidx23.i521.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv21.i520.i.i, ptr %arrayidx23.i521.i.i, align 1
  %msg.i522.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %316 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 262144, ptr %316, align 4
  %i2c_addr.i523.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %318 = ptrtoint ptr %i2c_addr.i523.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %i2c_addr.i523.i.i, align 8
  %320 = lshr i8 %319, 1
  %conv27.i524.i.i = zext i8 %320 to i16
  %321 = ptrtoint ptr %msg.i522.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv27.i524.i.i, ptr %msg.i522.i.i, align 4
  %flags.i525.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %322 = ptrtoint ptr %flags.i525.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 0, ptr %flags.i525.i.i, align 2
  %buf.i526.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %323 = ptrtoint ptr %buf.i526.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %i2c_write_buffer.i516.i.i, ptr %buf.i526.i.i, align 4
  %i2c_adap.i528.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %324 = ptrtoint ptr %i2c_adap.i528.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %i2c_adap.i528.i.i, align 4
  %call39.i529.i.i = tail call i32 @i2c_transfer(ptr noundef %325, ptr noundef %msg.i522.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit534.i.i

dib7000m_write_word.exit534.i.i:                  ; preds = %if.end6.i532.i.i, %do.end.i515.i.i, %do.body.i513.i.i.dib7000m_write_word.exit534.i.i_crit_edge
  %agc1_pt1.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 14
  %326 = ptrtoint ptr %agc1_pt1.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %agc1_pt1.i.i, align 2
  %agc1_pt2.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 15
  %328 = ptrtoint ptr %agc1_pt2.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %agc1_pt2.i.i, align 1
  %call.i536.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i536.i.i)
  %cmp.i537.i.i = icmp slt i32 %call.i536.i.i, 0
  br i1 %cmp.i537.i.i, label %do.body.i539.i.i, label %if.end6.i557.i.i

do.body.i539.i.i:                                 ; preds = %dib7000m_write_word.exit534.i.i
  %330 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool.not.i538.i.i = icmp eq i32 %330, 0
  br i1 %tobool.not.i538.i.i, label %do.body.i539.i.i.dib7000m_write_word.exit559.i.i_crit_edge, label %do.end.i541.i.i

do.body.i539.i.i.dib7000m_write_word.exit559.i.i_crit_edge: ; preds = %do.body.i539.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit559.i.i

do.end.i541.i.i:                                  ; preds = %do.body.i539.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i540.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit559.i.i

if.end6.i557.i.i:                                 ; preds = %dib7000m_write_word.exit534.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i542.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %331 = ptrtoint ptr %i2c_write_buffer.i542.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %i2c_write_buffer.i542.i.i, align 4
  %arrayidx12.i543.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %332 = ptrtoint ptr %arrayidx12.i543.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 108, ptr %arrayidx12.i543.i.i, align 1
  %arrayidx18.i544.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %333 = ptrtoint ptr %arrayidx18.i544.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %327, ptr %arrayidx18.i544.i.i, align 2
  %arrayidx23.i546.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %334 = ptrtoint ptr %arrayidx23.i546.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %329, ptr %arrayidx23.i546.i.i, align 1
  %msg.i547.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %335 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 262144, ptr %335, align 4
  %i2c_addr.i548.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %337 = ptrtoint ptr %i2c_addr.i548.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %i2c_addr.i548.i.i, align 8
  %339 = lshr i8 %338, 1
  %conv27.i549.i.i = zext i8 %339 to i16
  %340 = ptrtoint ptr %msg.i547.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %conv27.i549.i.i, ptr %msg.i547.i.i, align 4
  %flags.i550.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %341 = ptrtoint ptr %flags.i550.i.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 0, ptr %flags.i550.i.i, align 2
  %buf.i551.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %342 = ptrtoint ptr %buf.i551.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %i2c_write_buffer.i542.i.i, ptr %buf.i551.i.i, align 4
  %i2c_adap.i553.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %343 = ptrtoint ptr %i2c_adap.i553.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %i2c_adap.i553.i.i, align 4
  %call39.i554.i.i = tail call i32 @i2c_transfer(ptr noundef %344, ptr noundef %msg.i547.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit559.i.i

dib7000m_write_word.exit559.i.i:                  ; preds = %if.end6.i557.i.i, %do.end.i541.i.i, %do.body.i539.i.i.dib7000m_write_word.exit559.i.i_crit_edge
  %agc1_slope1.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 17
  %345 = ptrtoint ptr %agc1_slope1.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %agc1_slope1.i.i, align 1
  %agc1_slope2.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 18
  %347 = ptrtoint ptr %agc1_slope2.i.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %agc1_slope2.i.i, align 2
  %call.i561.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i561.i.i)
  %cmp.i562.i.i = icmp slt i32 %call.i561.i.i, 0
  br i1 %cmp.i562.i.i, label %do.body.i564.i.i, label %if.end6.i582.i.i

do.body.i564.i.i:                                 ; preds = %dib7000m_write_word.exit559.i.i
  %349 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool.not.i563.i.i = icmp eq i32 %349, 0
  br i1 %tobool.not.i563.i.i, label %do.body.i564.i.i.dib7000m_write_word.exit584.i.i_crit_edge, label %do.end.i566.i.i

do.body.i564.i.i.dib7000m_write_word.exit584.i.i_crit_edge: ; preds = %do.body.i564.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit584.i.i

do.end.i566.i.i:                                  ; preds = %do.body.i564.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i565.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit584.i.i

if.end6.i582.i.i:                                 ; preds = %dib7000m_write_word.exit559.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i567.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %350 = ptrtoint ptr %i2c_write_buffer.i567.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %i2c_write_buffer.i567.i.i, align 4
  %arrayidx12.i568.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %351 = ptrtoint ptr %arrayidx12.i568.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 109, ptr %arrayidx12.i568.i.i, align 1
  %arrayidx18.i569.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %352 = ptrtoint ptr %arrayidx18.i569.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %346, ptr %arrayidx18.i569.i.i, align 2
  %arrayidx23.i571.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %353 = ptrtoint ptr %arrayidx23.i571.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %348, ptr %arrayidx23.i571.i.i, align 1
  %msg.i572.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %354 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 262144, ptr %354, align 4
  %i2c_addr.i573.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %356 = ptrtoint ptr %i2c_addr.i573.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %i2c_addr.i573.i.i, align 8
  %358 = lshr i8 %357, 1
  %conv27.i574.i.i = zext i8 %358 to i16
  %359 = ptrtoint ptr %msg.i572.i.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %conv27.i574.i.i, ptr %msg.i572.i.i, align 4
  %flags.i575.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %360 = ptrtoint ptr %flags.i575.i.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 0, ptr %flags.i575.i.i, align 2
  %buf.i576.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %361 = ptrtoint ptr %buf.i576.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %i2c_write_buffer.i567.i.i, ptr %buf.i576.i.i, align 4
  %i2c_adap.i578.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %362 = ptrtoint ptr %i2c_adap.i578.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %i2c_adap.i578.i.i, align 4
  %call39.i579.i.i = tail call i32 @i2c_transfer(ptr noundef %363, ptr noundef %msg.i572.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit584.i.i

dib7000m_write_word.exit584.i.i:                  ; preds = %if.end6.i582.i.i, %do.end.i566.i.i, %do.body.i564.i.i.dib7000m_write_word.exit584.i.i_crit_edge
  %agc2_pt1.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 19
  %364 = ptrtoint ptr %agc2_pt1.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %agc2_pt1.i.i, align 1
  %agc2_pt2.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 20
  %366 = ptrtoint ptr %agc2_pt2.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %agc2_pt2.i.i, align 2
  %call.i586.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i586.i.i)
  %cmp.i587.i.i = icmp slt i32 %call.i586.i.i, 0
  br i1 %cmp.i587.i.i, label %do.body.i589.i.i, label %if.end6.i607.i.i

do.body.i589.i.i:                                 ; preds = %dib7000m_write_word.exit584.i.i
  %368 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool.not.i588.i.i = icmp eq i32 %368, 0
  br i1 %tobool.not.i588.i.i, label %do.body.i589.i.i.dib7000m_write_word.exit609.i.i_crit_edge, label %do.end.i591.i.i

do.body.i589.i.i.dib7000m_write_word.exit609.i.i_crit_edge: ; preds = %do.body.i589.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit609.i.i

do.end.i591.i.i:                                  ; preds = %do.body.i589.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i590.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit609.i.i

if.end6.i607.i.i:                                 ; preds = %dib7000m_write_word.exit584.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i592.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %369 = ptrtoint ptr %i2c_write_buffer.i592.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 0, ptr %i2c_write_buffer.i592.i.i, align 4
  %arrayidx12.i593.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %370 = ptrtoint ptr %arrayidx12.i593.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 110, ptr %arrayidx12.i593.i.i, align 1
  %arrayidx18.i594.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %371 = ptrtoint ptr %arrayidx18.i594.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %365, ptr %arrayidx18.i594.i.i, align 2
  %arrayidx23.i596.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %372 = ptrtoint ptr %arrayidx23.i596.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %367, ptr %arrayidx23.i596.i.i, align 1
  %msg.i597.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %373 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 262144, ptr %373, align 4
  %i2c_addr.i598.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %375 = ptrtoint ptr %i2c_addr.i598.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %i2c_addr.i598.i.i, align 8
  %377 = lshr i8 %376, 1
  %conv27.i599.i.i = zext i8 %377 to i16
  %378 = ptrtoint ptr %msg.i597.i.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %conv27.i599.i.i, ptr %msg.i597.i.i, align 4
  %flags.i600.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %379 = ptrtoint ptr %flags.i600.i.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 0, ptr %flags.i600.i.i, align 2
  %buf.i601.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %380 = ptrtoint ptr %buf.i601.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %i2c_write_buffer.i592.i.i, ptr %buf.i601.i.i, align 4
  %i2c_adap.i603.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %381 = ptrtoint ptr %i2c_adap.i603.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %i2c_adap.i603.i.i, align 4
  %call39.i604.i.i = tail call i32 @i2c_transfer(ptr noundef %382, ptr noundef %msg.i597.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit609.i.i

dib7000m_write_word.exit609.i.i:                  ; preds = %if.end6.i607.i.i, %do.end.i591.i.i, %do.body.i589.i.i.dib7000m_write_word.exit609.i.i_crit_edge
  %agc2_slope1.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 21
  %383 = ptrtoint ptr %agc2_slope1.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %agc2_slope1.i.i, align 1
  %agc2_slope2.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 22
  %385 = ptrtoint ptr %agc2_slope2.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %agc2_slope2.i.i, align 2
  %call.i611.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i611.i.i)
  %cmp.i612.i.i = icmp slt i32 %call.i611.i.i, 0
  br i1 %cmp.i612.i.i, label %do.body.i614.i.i, label %if.end6.i632.i.i

do.body.i614.i.i:                                 ; preds = %dib7000m_write_word.exit609.i.i
  %387 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool.not.i613.i.i = icmp eq i32 %387, 0
  br i1 %tobool.not.i613.i.i, label %do.body.i614.i.i.dib7000m_write_word.exit634.i.i_crit_edge, label %do.end.i616.i.i

do.body.i614.i.i.dib7000m_write_word.exit634.i.i_crit_edge: ; preds = %do.body.i614.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit634.i.i

do.end.i616.i.i:                                  ; preds = %do.body.i614.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i615.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit634.i.i

if.end6.i632.i.i:                                 ; preds = %dib7000m_write_word.exit609.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i617.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %388 = ptrtoint ptr %i2c_write_buffer.i617.i.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %i2c_write_buffer.i617.i.i, align 4
  %arrayidx12.i618.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %389 = ptrtoint ptr %arrayidx12.i618.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 111, ptr %arrayidx12.i618.i.i, align 1
  %arrayidx18.i619.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %390 = ptrtoint ptr %arrayidx18.i619.i.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %384, ptr %arrayidx18.i619.i.i, align 2
  %arrayidx23.i621.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %391 = ptrtoint ptr %arrayidx23.i621.i.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %386, ptr %arrayidx23.i621.i.i, align 1
  %msg.i622.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %392 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 262144, ptr %392, align 4
  %i2c_addr.i623.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %394 = ptrtoint ptr %i2c_addr.i623.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %i2c_addr.i623.i.i, align 8
  %396 = lshr i8 %395, 1
  %conv27.i624.i.i = zext i8 %396 to i16
  %397 = ptrtoint ptr %msg.i622.i.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %conv27.i624.i.i, ptr %msg.i622.i.i, align 4
  %flags.i625.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %398 = ptrtoint ptr %flags.i625.i.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 0, ptr %flags.i625.i.i, align 2
  %buf.i626.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %399 = ptrtoint ptr %buf.i626.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %i2c_write_buffer.i617.i.i, ptr %buf.i626.i.i, align 4
  %i2c_adap.i628.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %400 = ptrtoint ptr %i2c_adap.i628.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %i2c_adap.i628.i.i, align 4
  %call39.i629.i.i = tail call i32 @i2c_transfer(ptr noundef %401, ptr noundef %msg.i622.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit634.i.i

dib7000m_write_word.exit634.i.i:                  ; preds = %if.end6.i632.i.i, %do.end.i616.i.i, %do.body.i614.i.i.dib7000m_write_word.exit634.i.i_crit_edge
  %402 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %revision.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %403)
  %cmp118.i.i = icmp ugt i16 %403, 16384
  br i1 %cmp118.i.i, label %if.then120.i.i, label %for.body139.preheader.i.i

for.body139.preheader.i.i:                        ; preds = %dib7000m_write_word.exit634.i.i
  %call.i340 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %cmp.i341 = icmp slt i32 %call.i340, 0
  br i1 %cmp.i341, label %do.body.i343, label %if.end6.i360

do.body.i343:                                     ; preds = %for.body139.preheader.i.i
  %404 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i342 = icmp eq i32 %404, 0
  br i1 %tobool.not.i342, label %do.body.i343.dib7000m_write_word.exit362_crit_edge, label %do.end.i345

do.body.i343.dib7000m_write_word.exit362_crit_edge: ; preds = %do.body.i343
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit362

do.end.i345:                                      ; preds = %do.body.i343
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit362

if.end6.i360:                                     ; preds = %for.body139.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i346 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %405 = ptrtoint ptr %i2c_write_buffer.i346 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %i2c_write_buffer.i346, align 4
  %arrayidx12.i347 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %406 = ptrtoint ptr %arrayidx12.i347 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 88, ptr %arrayidx12.i347, align 1
  %arrayidx18.i348 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %407 = ptrtoint ptr %arrayidx18.i348 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 2, ptr %arrayidx18.i348, align 2
  %arrayidx23.i349 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %408 = ptrtoint ptr %arrayidx23.i349 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 -92, ptr %arrayidx23.i349, align 1
  %msg.i350 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %409 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 262144, ptr %409, align 4
  %i2c_addr.i351 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %411 = ptrtoint ptr %i2c_addr.i351 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %i2c_addr.i351, align 8
  %413 = lshr i8 %412, 1
  %conv27.i352 = zext i8 %413 to i16
  %414 = ptrtoint ptr %msg.i350 to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 %conv27.i352, ptr %msg.i350, align 4
  %flags.i353 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %415 = ptrtoint ptr %flags.i353 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 0, ptr %flags.i353, align 2
  %buf.i354 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %416 = ptrtoint ptr %buf.i354 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %i2c_write_buffer.i346, ptr %buf.i354, align 4
  %i2c_adap.i356 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %417 = ptrtoint ptr %i2c_adap.i356 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %i2c_adap.i356, align 4
  %call39.i357 = tail call i32 @i2c_transfer(ptr noundef %418, ptr noundef %msg.i350, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit362

dib7000m_write_word.exit362:                      ; preds = %if.end6.i360, %do.end.i345, %do.body.i343.dib7000m_write_word.exit362_crit_edge
  %call.i316 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %cmp.i317 = icmp slt i32 %call.i316, 0
  br i1 %cmp.i317, label %do.body.i319, label %if.end6.i336

do.body.i319:                                     ; preds = %dib7000m_write_word.exit362
  %419 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool.not.i318 = icmp eq i32 %419, 0
  br i1 %tobool.not.i318, label %do.body.i319.dib7000m_write_word.exit338_crit_edge, label %do.end.i321

do.body.i319.dib7000m_write_word.exit338_crit_edge: ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit338

do.end.i321:                                      ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit338

if.end6.i336:                                     ; preds = %dib7000m_write_word.exit362
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i322 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %420 = ptrtoint ptr %i2c_write_buffer.i322 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %i2c_write_buffer.i322, align 4
  %arrayidx12.i323 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %421 = ptrtoint ptr %arrayidx12.i323 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 89, ptr %arrayidx12.i323, align 1
  %arrayidx18.i324 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %422 = ptrtoint ptr %arrayidx18.i324 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 2, ptr %arrayidx18.i324, align 2
  %arrayidx23.i325 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %423 = ptrtoint ptr %arrayidx23.i325 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 -72, ptr %arrayidx23.i325, align 1
  %msg.i326 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %424 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 262144, ptr %424, align 4
  %i2c_addr.i327 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %426 = ptrtoint ptr %i2c_addr.i327 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %i2c_addr.i327, align 8
  %428 = lshr i8 %427, 1
  %conv27.i328 = zext i8 %428 to i16
  %429 = ptrtoint ptr %msg.i326 to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %conv27.i328, ptr %msg.i326, align 4
  %flags.i329 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %430 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 0, ptr %flags.i329, align 2
  %buf.i330 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %431 = ptrtoint ptr %buf.i330 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %i2c_write_buffer.i322, ptr %buf.i330, align 4
  %i2c_adap.i332 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %432 = ptrtoint ptr %i2c_adap.i332 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %i2c_adap.i332, align 4
  %call39.i333 = tail call i32 @i2c_transfer(ptr noundef %433, ptr noundef %msg.i326, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit338

dib7000m_write_word.exit338:                      ; preds = %if.end6.i336, %do.end.i321, %do.body.i319.dib7000m_write_word.exit338_crit_edge
  %call.i292 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp.i293 = icmp slt i32 %call.i292, 0
  br i1 %cmp.i293, label %do.body.i295, label %if.end6.i312

do.body.i295:                                     ; preds = %dib7000m_write_word.exit338
  %434 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %tobool.not.i294 = icmp eq i32 %434, 0
  br i1 %tobool.not.i294, label %do.body.i295.dib7000m_write_word.exit314_crit_edge, label %do.end.i297

do.body.i295.dib7000m_write_word.exit314_crit_edge: ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit314

do.end.i297:                                      ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit314

if.end6.i312:                                     ; preds = %dib7000m_write_word.exit338
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i298 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %435 = ptrtoint ptr %i2c_write_buffer.i298 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 0, ptr %i2c_write_buffer.i298, align 4
  %arrayidx12.i299 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %436 = ptrtoint ptr %arrayidx12.i299 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 90, ptr %arrayidx12.i299, align 1
  %arrayidx18.i300 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %437 = ptrtoint ptr %arrayidx18.i300 to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 2, ptr %arrayidx18.i300, align 2
  %arrayidx23.i301 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %438 = ptrtoint ptr %arrayidx23.i301 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 -51, ptr %arrayidx23.i301, align 1
  %msg.i302 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %439 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 262144, ptr %439, align 4
  %i2c_addr.i303 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %441 = ptrtoint ptr %i2c_addr.i303 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %i2c_addr.i303, align 8
  %443 = lshr i8 %442, 1
  %conv27.i304 = zext i8 %443 to i16
  %444 = ptrtoint ptr %msg.i302 to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 %conv27.i304, ptr %msg.i302, align 4
  %flags.i305 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %445 = ptrtoint ptr %flags.i305 to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 0, ptr %flags.i305, align 2
  %buf.i306 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %446 = ptrtoint ptr %buf.i306 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %i2c_write_buffer.i298, ptr %buf.i306, align 4
  %i2c_adap.i308 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %447 = ptrtoint ptr %i2c_adap.i308 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %i2c_adap.i308, align 4
  %call39.i309 = tail call i32 @i2c_transfer(ptr noundef %448, ptr noundef %msg.i302, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit314

dib7000m_write_word.exit314:                      ; preds = %if.end6.i312, %do.end.i297, %do.body.i295.dib7000m_write_word.exit314_crit_edge
  %call.i268 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %cmp.i269 = icmp slt i32 %call.i268, 0
  br i1 %cmp.i269, label %do.body.i271, label %if.end6.i288

do.body.i271:                                     ; preds = %dib7000m_write_word.exit314
  %449 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %449)
  %tobool.not.i270 = icmp eq i32 %449, 0
  br i1 %tobool.not.i270, label %do.body.i271.dib7000m_write_word.exit290_crit_edge, label %do.end.i273

do.body.i271.dib7000m_write_word.exit290_crit_edge: ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit290

do.end.i273:                                      ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit290

if.end6.i288:                                     ; preds = %dib7000m_write_word.exit314
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i274 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %450 = ptrtoint ptr %i2c_write_buffer.i274 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %i2c_write_buffer.i274, align 4
  %arrayidx12.i275 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %451 = ptrtoint ptr %arrayidx12.i275 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 91, ptr %arrayidx12.i275, align 1
  %arrayidx18.i276 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %452 = ptrtoint ptr %arrayidx18.i276 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 2, ptr %arrayidx18.i276, align 2
  %arrayidx23.i277 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %453 = ptrtoint ptr %arrayidx23.i277 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 -31, ptr %arrayidx23.i277, align 1
  %msg.i278 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %454 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 262144, ptr %454, align 4
  %i2c_addr.i279 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %456 = ptrtoint ptr %i2c_addr.i279 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %i2c_addr.i279, align 8
  %458 = lshr i8 %457, 1
  %conv27.i280 = zext i8 %458 to i16
  %459 = ptrtoint ptr %msg.i278 to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %conv27.i280, ptr %msg.i278, align 4
  %flags.i281 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %460 = ptrtoint ptr %flags.i281 to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 0, ptr %flags.i281, align 2
  %buf.i282 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %461 = ptrtoint ptr %buf.i282 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %i2c_write_buffer.i274, ptr %buf.i282, align 4
  %i2c_adap.i284 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %462 = ptrtoint ptr %i2c_adap.i284 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %i2c_adap.i284, align 4
  %call39.i285 = tail call i32 @i2c_transfer(ptr noundef %463, ptr noundef %msg.i278, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit290

dib7000m_write_word.exit290:                      ; preds = %if.end6.i288, %do.end.i273, %do.body.i271.dib7000m_write_word.exit290_crit_edge
  %call.i244 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp.i245 = icmp slt i32 %call.i244, 0
  br i1 %cmp.i245, label %do.body.i247, label %if.end6.i264

do.body.i247:                                     ; preds = %dib7000m_write_word.exit290
  %464 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %464)
  %tobool.not.i246 = icmp eq i32 %464, 0
  br i1 %tobool.not.i246, label %do.body.i247.dib7000m_write_word.exit266_crit_edge, label %do.end.i249

do.body.i247.dib7000m_write_word.exit266_crit_edge: ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit266

do.end.i249:                                      ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit266

if.end6.i264:                                     ; preds = %dib7000m_write_word.exit290
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i250 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %465 = ptrtoint ptr %i2c_write_buffer.i250 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 0, ptr %i2c_write_buffer.i250, align 4
  %arrayidx12.i251 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %466 = ptrtoint ptr %arrayidx12.i251 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 92, ptr %arrayidx12.i251, align 1
  %arrayidx18.i252 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %467 = ptrtoint ptr %arrayidx18.i252 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 2, ptr %arrayidx18.i252, align 2
  %arrayidx23.i253 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %468 = ptrtoint ptr %arrayidx23.i253 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 -10, ptr %arrayidx23.i253, align 1
  %msg.i254 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %469 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 262144, ptr %469, align 4
  %i2c_addr.i255 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %471 = ptrtoint ptr %i2c_addr.i255 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %i2c_addr.i255, align 8
  %473 = lshr i8 %472, 1
  %conv27.i256 = zext i8 %473 to i16
  %474 = ptrtoint ptr %msg.i254 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 %conv27.i256, ptr %msg.i254, align 4
  %flags.i257 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %475 = ptrtoint ptr %flags.i257 to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 0, ptr %flags.i257, align 2
  %buf.i258 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %476 = ptrtoint ptr %buf.i258 to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %i2c_write_buffer.i250, ptr %buf.i258, align 4
  %i2c_adap.i260 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %477 = ptrtoint ptr %i2c_adap.i260 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %i2c_adap.i260, align 4
  %call39.i261 = tail call i32 @i2c_transfer(ptr noundef %478, ptr noundef %msg.i254, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit266

dib7000m_write_word.exit266:                      ; preds = %if.end6.i264, %do.end.i249, %do.body.i247.dib7000m_write_word.exit266_crit_edge
  %call.i220 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %cmp.i221 = icmp slt i32 %call.i220, 0
  br i1 %cmp.i221, label %do.body.i223, label %if.end6.i240

do.body.i223:                                     ; preds = %dib7000m_write_word.exit266
  %479 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %479)
  %tobool.not.i222 = icmp eq i32 %479, 0
  br i1 %tobool.not.i222, label %do.body.i223.dib7000m_write_word.exit242_crit_edge, label %do.end.i225

do.body.i223.dib7000m_write_word.exit242_crit_edge: ; preds = %do.body.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit242

do.end.i225:                                      ; preds = %do.body.i223
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit242

if.end6.i240:                                     ; preds = %dib7000m_write_word.exit266
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i226 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %480 = ptrtoint ptr %i2c_write_buffer.i226 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 0, ptr %i2c_write_buffer.i226, align 4
  %arrayidx12.i227 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %481 = ptrtoint ptr %arrayidx12.i227 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 93, ptr %arrayidx12.i227, align 1
  %arrayidx18.i228 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %482 = ptrtoint ptr %arrayidx18.i228 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 3, ptr %arrayidx18.i228, align 2
  %arrayidx23.i229 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %483 = ptrtoint ptr %arrayidx23.i229 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 10, ptr %arrayidx23.i229, align 1
  %msg.i230 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %484 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 262144, ptr %484, align 4
  %i2c_addr.i231 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %486 = ptrtoint ptr %i2c_addr.i231 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %i2c_addr.i231, align 8
  %488 = lshr i8 %487, 1
  %conv27.i232 = zext i8 %488 to i16
  %489 = ptrtoint ptr %msg.i230 to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 %conv27.i232, ptr %msg.i230, align 4
  %flags.i233 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %490 = ptrtoint ptr %flags.i233 to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 0, ptr %flags.i233, align 2
  %buf.i234 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %491 = ptrtoint ptr %buf.i234 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %i2c_write_buffer.i226, ptr %buf.i234, align 4
  %i2c_adap.i236 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %492 = ptrtoint ptr %i2c_adap.i236 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %i2c_adap.i236, align 4
  %call39.i237 = tail call i32 @i2c_transfer(ptr noundef %493, ptr noundef %msg.i230, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit242

dib7000m_write_word.exit242:                      ; preds = %if.end6.i240, %do.end.i225, %do.body.i223.dib7000m_write_word.exit242_crit_edge
  %call.i196 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %cmp.i197 = icmp slt i32 %call.i196, 0
  br i1 %cmp.i197, label %do.body.i199, label %if.end6.i216

do.body.i199:                                     ; preds = %dib7000m_write_word.exit242
  %494 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool.not.i198 = icmp eq i32 %494, 0
  br i1 %tobool.not.i198, label %do.body.i199.dib7000m_write_word.exit218_crit_edge, label %do.end.i201

do.body.i199.dib7000m_write_word.exit218_crit_edge: ; preds = %do.body.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit218

do.end.i201:                                      ; preds = %do.body.i199
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit218

if.end6.i216:                                     ; preds = %dib7000m_write_word.exit242
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i202 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %495 = ptrtoint ptr %i2c_write_buffer.i202 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 0, ptr %i2c_write_buffer.i202, align 4
  %arrayidx12.i203 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %496 = ptrtoint ptr %arrayidx12.i203 to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 94, ptr %arrayidx12.i203, align 1
  %arrayidx18.i204 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %497 = ptrtoint ptr %arrayidx18.i204 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 3, ptr %arrayidx18.i204, align 2
  %arrayidx23.i205 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %498 = ptrtoint ptr %arrayidx23.i205 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 31, ptr %arrayidx23.i205, align 1
  %msg.i206 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %499 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 262144, ptr %499, align 4
  %i2c_addr.i207 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %501 = ptrtoint ptr %i2c_addr.i207 to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %i2c_addr.i207, align 8
  %503 = lshr i8 %502, 1
  %conv27.i208 = zext i8 %503 to i16
  %504 = ptrtoint ptr %msg.i206 to i32
  call void @__asan_store2_noabort(i32 %504)
  store i16 %conv27.i208, ptr %msg.i206, align 4
  %flags.i209 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %505 = ptrtoint ptr %flags.i209 to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 0, ptr %flags.i209, align 2
  %buf.i210 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %506 = ptrtoint ptr %buf.i210 to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr %i2c_write_buffer.i202, ptr %buf.i210, align 4
  %i2c_adap.i212 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %507 = ptrtoint ptr %i2c_adap.i212 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %i2c_adap.i212, align 4
  %call39.i213 = tail call i32 @i2c_transfer(ptr noundef %508, ptr noundef %msg.i206, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit218

dib7000m_write_word.exit218:                      ; preds = %if.end6.i216, %do.end.i201, %do.body.i199.dib7000m_write_word.exit218_crit_edge
  %call.i172 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp.i173 = icmp slt i32 %call.i172, 0
  br i1 %cmp.i173, label %do.body.i175, label %if.end6.i192

do.body.i175:                                     ; preds = %dib7000m_write_word.exit218
  %509 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %509)
  %tobool.not.i174 = icmp eq i32 %509, 0
  br i1 %tobool.not.i174, label %do.body.i175.dib7000m_write_word.exit194_crit_edge, label %do.end.i177

do.body.i175.dib7000m_write_word.exit194_crit_edge: ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit194

do.end.i177:                                      ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit194

if.end6.i192:                                     ; preds = %dib7000m_write_word.exit218
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i178 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %510 = ptrtoint ptr %i2c_write_buffer.i178 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 0, ptr %i2c_write_buffer.i178, align 4
  %arrayidx12.i179 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %511 = ptrtoint ptr %arrayidx12.i179 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 95, ptr %arrayidx12.i179, align 1
  %arrayidx18.i180 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %512 = ptrtoint ptr %arrayidx18.i180 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 3, ptr %arrayidx18.i180, align 2
  %arrayidx23.i181 = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %513 = ptrtoint ptr %arrayidx23.i181 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 51, ptr %arrayidx23.i181, align 1
  %msg.i182 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %514 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 262144, ptr %514, align 4
  %i2c_addr.i183 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %516 = ptrtoint ptr %i2c_addr.i183 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %i2c_addr.i183, align 8
  %518 = lshr i8 %517, 1
  %conv27.i184 = zext i8 %518 to i16
  %519 = ptrtoint ptr %msg.i182 to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %conv27.i184, ptr %msg.i182, align 4
  %flags.i185 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %520 = ptrtoint ptr %flags.i185 to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 0, ptr %flags.i185, align 2
  %buf.i186 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %521 = ptrtoint ptr %buf.i186 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %i2c_write_buffer.i178, ptr %buf.i186, align 4
  %i2c_adap.i188 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %522 = ptrtoint ptr %i2c_adap.i188 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %i2c_adap.i188, align 4
  %call39.i189 = tail call i32 @i2c_transfer(ptr noundef %523, ptr noundef %msg.i182, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit194

dib7000m_write_word.exit194:                      ; preds = %if.end6.i192, %do.end.i177, %do.body.i175.dib7000m_write_word.exit194_crit_edge
  %call.i165 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %dib7000m_write_word.exit194
  %524 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %tobool.not.i167 = icmp eq i32 %524, 0
  br i1 %tobool.not.i167, label %do.body.i.if.end.i_crit_edge, label %do.end.i169

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i169:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end.i

if.end6.i:                                        ; preds = %dib7000m_write_word.exit194
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %525 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 0, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %526 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 96, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %527 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 3, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %528 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 72, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %529 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %530 = ptrtoint ptr %529 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 262144, ptr %529, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %531 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %i2c_addr.i, align 8
  %533 = lshr i8 %532, 1
  %conv27.i = zext i8 %533 to i16
  %534 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %534)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %535 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %535)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %536 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %537 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %538, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %if.end.i

if.then120.i.i:                                   ; preds = %dib7000m_write_word.exit634.i.i
  %agc1_pt3.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 16
  %539 = ptrtoint ptr %agc1_pt3.i.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %agc1_pt3.i.i, align 2
  %call.i636.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i636.i.i)
  %cmp.i637.i.i = icmp slt i32 %call.i636.i.i, 0
  br i1 %cmp.i637.i.i, label %do.body.i639.i.i, label %if.end6.i657.i.i

do.body.i639.i.i:                                 ; preds = %if.then120.i.i
  %541 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %tobool.not.i638.i.i = icmp eq i32 %541, 0
  br i1 %tobool.not.i638.i.i, label %do.body.i639.i.i.dib7000m_write_word.exit659.i.i_crit_edge, label %do.end.i641.i.i

do.body.i639.i.i.dib7000m_write_word.exit659.i.i_crit_edge: ; preds = %do.body.i639.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit659.i.i

do.end.i641.i.i:                                  ; preds = %do.body.i639.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i640.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit659.i.i

if.end6.i657.i.i:                                 ; preds = %if.then120.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i642.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %542 = ptrtoint ptr %i2c_write_buffer.i642.i.i to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 0, ptr %i2c_write_buffer.i642.i.i, align 4
  %arrayidx12.i643.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %543 = ptrtoint ptr %arrayidx12.i643.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 71, ptr %arrayidx12.i643.i.i, align 1
  %arrayidx18.i645.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %544 = ptrtoint ptr %arrayidx18.i645.i.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 0, ptr %arrayidx18.i645.i.i, align 2
  %arrayidx23.i646.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %545 = ptrtoint ptr %arrayidx23.i646.i.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %540, ptr %arrayidx23.i646.i.i, align 1
  %msg.i647.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %546 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 262144, ptr %546, align 4
  %i2c_addr.i648.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %548 = ptrtoint ptr %i2c_addr.i648.i.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %i2c_addr.i648.i.i, align 8
  %550 = lshr i8 %549, 1
  %conv27.i649.i.i = zext i8 %550 to i16
  %551 = ptrtoint ptr %msg.i647.i.i to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %conv27.i649.i.i, ptr %msg.i647.i.i, align 4
  %flags.i650.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %552 = ptrtoint ptr %flags.i650.i.i to i32
  call void @__asan_store2_noabort(i32 %552)
  store i16 0, ptr %flags.i650.i.i, align 2
  %buf.i651.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %553 = ptrtoint ptr %buf.i651.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %i2c_write_buffer.i642.i.i, ptr %buf.i651.i.i, align 4
  %i2c_adap.i653.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %554 = ptrtoint ptr %i2c_adap.i653.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %i2c_adap.i653.i.i, align 4
  %call39.i654.i.i = tail call i32 @i2c_transfer(ptr noundef %555, ptr noundef %msg.i647.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %dib7000m_write_word.exit659.i.i

dib7000m_write_word.exit659.i.i:                  ; preds = %if.end6.i657.i.i, %do.end.i641.i.i, %do.body.i639.i.i.dib7000m_write_word.exit659.i.i_crit_edge
  %call123.i.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 929) #6
  %wbd_inv.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 6
  %556 = ptrtoint ptr %wbd_inv.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %wbd_inv.i.i, align 2
  %wbd_sel129.i.i = getelementptr %struct.dibx000_agc_config, ptr %71, i32 %i.0695.i.i, i32 8
  %558 = ptrtoint ptr %wbd_sel129.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %wbd_sel129.i.i, align 2
  %call.i661.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i366.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i661.i.i)
  %cmp.i662.i.i = icmp slt i32 %call.i661.i.i, 0
  br i1 %cmp.i662.i.i, label %do.body.i664.i.i, label %if.end6.i683.i.i

do.body.i664.i.i:                                 ; preds = %dib7000m_write_word.exit659.i.i
  %560 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %tobool.not.i663.i.i = icmp eq i32 %560, 0
  br i1 %tobool.not.i663.i.i, label %do.body.i664.i.i.if.end.i_crit_edge, label %do.end.i666.i.i

do.body.i664.i.i.if.end.i_crit_edge:              ; preds = %do.body.i664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i666.i.i:                                  ; preds = %do.body.i664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i665.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end.i

if.end6.i683.i.i:                                 ; preds = %dib7000m_write_word.exit659.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv126.i.i = zext i8 %557 to i16
  %shl127.i.i = shl nuw nsw i16 %conv126.i.i, 4
  %561 = and i16 %call123.i.i, -29
  %or128.i.i = or i16 %shl127.i.i, %561
  %conv130.i.i = zext i8 %559 to i16
  %shl131.i.i = shl nuw nsw i16 %conv130.i.i, 2
  %or132.i.i = or i16 %or128.i.i, %shl131.i.i
  %i2c_write_buffer.i667.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %562 = ptrtoint ptr %i2c_write_buffer.i667.i.i to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 3, ptr %i2c_write_buffer.i667.i.i, align 4
  %arrayidx12.i668.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %563 = ptrtoint ptr %arrayidx12.i668.i.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 -95, ptr %arrayidx12.i668.i.i, align 1
  %564 = lshr i16 %or132.i.i, 8
  %conv16.i669.i.i = trunc i16 %564 to i8
  %arrayidx18.i670.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %565 = ptrtoint ptr %arrayidx18.i670.i.i to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 %conv16.i669.i.i, ptr %arrayidx18.i670.i.i, align 2
  %conv21.i671.i.i = trunc i16 %or132.i.i to i8
  %arrayidx23.i672.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %566 = ptrtoint ptr %arrayidx23.i672.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 %conv21.i671.i.i, ptr %arrayidx23.i672.i.i, align 1
  %msg.i673.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %567 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %568 = ptrtoint ptr %567 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 262144, ptr %567, align 4
  %i2c_addr.i674.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %569 = ptrtoint ptr %i2c_addr.i674.i.i to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %i2c_addr.i674.i.i, align 8
  %571 = lshr i8 %570, 1
  %conv27.i675.i.i = zext i8 %571 to i16
  %572 = ptrtoint ptr %msg.i673.i.i to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %conv27.i675.i.i, ptr %msg.i673.i.i, align 4
  %flags.i676.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %573 = ptrtoint ptr %flags.i676.i.i to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 0, ptr %flags.i676.i.i, align 2
  %buf.i677.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %574 = ptrtoint ptr %buf.i677.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %i2c_write_buffer.i667.i.i, ptr %buf.i677.i.i, align 4
  %i2c_adap.i679.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %575 = ptrtoint ptr %i2c_adap.i679.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %i2c_adap.i679.i.i, align 4
  %call39.i680.i.i = tail call i32 @i2c_transfer(ptr noundef %576, ptr noundef %msg.i673.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i366.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i683.i.i, %do.end.i666.i.i, %do.body.i664.i.i.if.end.i_crit_edge, %if.end6.i, %do.end.i169, %do.body.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge
  %577 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %agc_state1.i, align 1
  %inc.i = add i8 %578, 1
  store i8 %inc.i, ptr %agc_state1.i, align 1
  br label %if.then7

sw.bb38.i:                                        ; preds = %do.body
  %agc_control.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 1, i32 15
  %579 = ptrtoint ptr %agc_control.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %agc_control.i, align 4
  %tobool.not.i = icmp eq ptr %580, null
  br i1 %tobool.not.i, label %sw.bb38.i.if.end44.i_crit_edge, label %if.then39.i

sw.bb38.i.if.end44.i_crit_edge:                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then39.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i = tail call i32 %580(ptr noundef %8, i8 noundef zeroext 1) #6
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %sw.bb38.i.if.end44.i_crit_edge
  %i2c_buffer_lock.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 20
  %call.i149.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %cmp.i150.i = icmp slt i32 %call.i149.i, 0
  br i1 %cmp.i150.i, label %do.body.i152.i, label %if.end6.i.i

do.body.i152.i:                                   ; preds = %if.end44.i
  %581 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %581)
  %tobool.not.i151.i = icmp eq i32 %581, 0
  br i1 %tobool.not.i151.i, label %do.body.i152.i.dib7000m_write_word.exit.i_crit_edge, label %do.end.i153.i

do.body.i152.i.dib7000m_write_word.exit.i_crit_edge: ; preds = %do.body.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i

do.end.i153.i:                                    ; preds = %do.body.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i

if.end6.i.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %582 = ptrtoint ptr %i2c_write_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 0, ptr %i2c_write_buffer.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %583 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 75, ptr %arrayidx12.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %584 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 -128, ptr %arrayidx18.i.i, align 2
  %arrayidx23.i.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %585 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 0, ptr %arrayidx23.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %586 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %587 = ptrtoint ptr %586 to i32
  call void @__asan_store4_noabort(i32 %587)
  store i32 262144, ptr %586, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %588 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %i2c_addr.i.i, align 8
  %590 = lshr i8 %589, 1
  %conv27.i.i = zext i8 %590 to i16
  %591 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %591)
  store i16 %conv27.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %592 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %593 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %i2c_write_buffer.i.i, ptr %buf.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %594 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %i2c_adap.i.i, align 4
  %call39.i.i = tail call i32 @i2c_transfer(ptr noundef %595, ptr noundef %msg.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i) #6
  br label %dib7000m_write_word.exit.i

dib7000m_write_word.exit.i:                       ; preds = %if.end6.i.i, %do.end.i153.i, %do.body.i152.i.dib7000m_write_word.exit.i_crit_edge
  %current_agc.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 9
  %596 = ptrtoint ptr %current_agc.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %current_agc.i, align 4
  %perform_agc_softsplit.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %597, i32 0, i32 27
  %598 = ptrtoint ptr %perform_agc_softsplit.i to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %perform_agc_softsplit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %599)
  %tobool46.not.i = icmp eq i8 %599, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %dib7000m_write_word.exit.i.if.end50.i_crit_edge

dib7000m_write_word.exit.i.if.end50.i_crit_edge:  ; preds = %dib7000m_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then47.i:                                      ; preds = %dib7000m_write_word.exit.i
  %call.i157.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %cmp.i158.i = icmp slt i32 %call.i157.i, 0
  br i1 %cmp.i158.i, label %do.body.i160.i, label %if.end6.i177.i

do.body.i160.i:                                   ; preds = %if.then47.i
  %600 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %tobool.not.i159.i = icmp eq i32 %600, 0
  br i1 %tobool.not.i159.i, label %do.body.i160.i.dib7000m_write_word.exit179.i_crit_edge, label %do.end.i162.i

do.body.i160.i.dib7000m_write_word.exit179.i_crit_edge: ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit179.i

do.end.i162.i:                                    ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit179.i

if.end6.i177.i:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i163.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %601 = ptrtoint ptr %i2c_write_buffer.i163.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 0, ptr %i2c_write_buffer.i163.i, align 4
  %arrayidx12.i164.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %602 = ptrtoint ptr %arrayidx12.i164.i to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 103, ptr %arrayidx12.i164.i, align 1
  %arrayidx18.i165.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %603 = ptrtoint ptr %arrayidx18.i165.i to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 1, ptr %arrayidx18.i165.i, align 2
  %arrayidx23.i166.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %604 = ptrtoint ptr %arrayidx23.i166.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %arrayidx23.i166.i, align 1
  %msg.i167.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %605 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 262144, ptr %605, align 4
  %i2c_addr.i168.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %607 = ptrtoint ptr %i2c_addr.i168.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %i2c_addr.i168.i, align 8
  %609 = lshr i8 %608, 1
  %conv27.i169.i = zext i8 %609 to i16
  %610 = ptrtoint ptr %msg.i167.i to i32
  call void @__asan_store2_noabort(i32 %610)
  store i16 %conv27.i169.i, ptr %msg.i167.i, align 4
  %flags.i170.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %611 = ptrtoint ptr %flags.i170.i to i32
  call void @__asan_store2_noabort(i32 %611)
  store i16 0, ptr %flags.i170.i, align 2
  %buf.i171.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %612 = ptrtoint ptr %buf.i171.i to i32
  call void @__asan_store4_noabort(i32 %612)
  store ptr %i2c_write_buffer.i163.i, ptr %buf.i171.i, align 4
  %i2c_adap.i173.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %613 = ptrtoint ptr %i2c_adap.i173.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %i2c_adap.i173.i, align 4
  %call39.i174.i = tail call i32 @i2c_transfer(ptr noundef %614, ptr noundef %msg.i167.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i) #6
  br label %dib7000m_write_word.exit179.i

dib7000m_write_word.exit179.i:                    ; preds = %if.end6.i177.i, %do.end.i162.i, %do.body.i160.i.dib7000m_write_word.exit179.i_crit_edge
  %615 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %615)
  %616 = load i8, ptr %agc_state1.i, align 1
  %inc49.i = add i8 %616, 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %dib7000m_write_word.exit179.i, %dib7000m_write_word.exit.i.if.end50.i_crit_edge
  %storemerge.i = phi i8 [ %inc49.i, %dib7000m_write_word.exit179.i ], [ 4, %dib7000m_write_word.exit.i.if.end50.i_crit_edge ]
  %ret.0.i = phi i32 [ 5, %dib7000m_write_word.exit179.i ], [ 7, %dib7000m_write_word.exit.i.if.end50.i_crit_edge ]
  %617 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 %storemerge.i, ptr %agc_state1.i, align 1
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %8) #6
  br label %if.then7

sw.bb51.i:                                        ; preds = %do.body
  %i2c_buffer_lock.i180.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 20
  %call.i181.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i180.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %cmp.i182.i = icmp slt i32 %call.i181.i, 0
  br i1 %cmp.i182.i, label %do.body.i184.i, label %if.end6.i201.i

do.body.i184.i:                                   ; preds = %sw.bb51.i
  %618 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool.not.i183.i = icmp eq i32 %618, 0
  br i1 %tobool.not.i183.i, label %do.body.i184.i.dib7000m_write_word.exit203.i_crit_edge, label %do.end.i186.i

do.body.i184.i.dib7000m_write_word.exit203.i_crit_edge: ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit203.i

do.end.i186.i:                                    ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i185.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit203.i

if.end6.i201.i:                                   ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i187.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %619 = ptrtoint ptr %i2c_write_buffer.i187.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 0, ptr %i2c_write_buffer.i187.i, align 4
  %arrayidx12.i188.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %620 = ptrtoint ptr %arrayidx12.i188.i to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 72, ptr %arrayidx12.i188.i, align 1
  %621 = lshr i16 %call.i, 8
  %conv16.i.i = trunc i16 %621 to i8
  %arrayidx18.i189.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %622 = ptrtoint ptr %arrayidx18.i189.i to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 %conv16.i.i, ptr %arrayidx18.i189.i, align 2
  %623 = trunc i16 %call.i to i8
  %conv21.i.i = or i8 %623, 16
  %arrayidx23.i190.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %624 = ptrtoint ptr %arrayidx23.i190.i to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 %conv21.i.i, ptr %arrayidx23.i190.i, align 1
  %msg.i191.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %625 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_store4_noabort(i32 %626)
  store i32 262144, ptr %625, align 4
  %i2c_addr.i192.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %627 = ptrtoint ptr %i2c_addr.i192.i to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %i2c_addr.i192.i, align 8
  %629 = lshr i8 %628, 1
  %conv27.i193.i = zext i8 %629 to i16
  %630 = ptrtoint ptr %msg.i191.i to i32
  call void @__asan_store2_noabort(i32 %630)
  store i16 %conv27.i193.i, ptr %msg.i191.i, align 4
  %flags.i194.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %631 = ptrtoint ptr %flags.i194.i to i32
  call void @__asan_store2_noabort(i32 %631)
  store i16 0, ptr %flags.i194.i, align 2
  %buf.i195.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %632 = ptrtoint ptr %buf.i195.i to i32
  call void @__asan_store4_noabort(i32 %632)
  store ptr %i2c_write_buffer.i187.i, ptr %buf.i195.i, align 4
  %i2c_adap.i197.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %633 = ptrtoint ptr %i2c_adap.i197.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %i2c_adap.i197.i, align 4
  %call39.i198.i = tail call i32 @i2c_transfer(ptr noundef %634, ptr noundef %msg.i191.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i180.i) #6
  br label %dib7000m_write_word.exit203.i

dib7000m_write_word.exit203.i:                    ; preds = %if.end6.i201.i, %do.end.i186.i, %do.body.i184.i.dib7000m_write_word.exit203.i_crit_edge
  %call.i205.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i180.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205.i)
  %cmp.i206.i = icmp slt i32 %call.i205.i, 0
  br i1 %cmp.i206.i, label %do.body.i208.i, label %if.end6.i225.i

do.body.i208.i:                                   ; preds = %dib7000m_write_word.exit203.i
  %635 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %635)
  %tobool.not.i207.i = icmp eq i32 %635, 0
  br i1 %tobool.not.i207.i, label %do.body.i208.i.dib7000m_write_word.exit227.i_crit_edge, label %do.end.i210.i

do.body.i208.i.dib7000m_write_word.exit227.i_crit_edge: ; preds = %do.body.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit227.i

do.end.i210.i:                                    ; preds = %do.body.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit227.i

if.end6.i225.i:                                   ; preds = %dib7000m_write_word.exit203.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i211.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %636 = ptrtoint ptr %i2c_write_buffer.i211.i to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 0, ptr %i2c_write_buffer.i211.i, align 4
  %arrayidx12.i212.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %637 = ptrtoint ptr %arrayidx12.i212.i to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 103, ptr %arrayidx12.i212.i, align 1
  %arrayidx18.i213.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %638 = ptrtoint ptr %arrayidx18.i213.i to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 4, ptr %arrayidx18.i213.i, align 2
  %arrayidx23.i214.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %639 = ptrtoint ptr %arrayidx23.i214.i to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 0, ptr %arrayidx23.i214.i, align 1
  %msg.i215.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %640 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %641 = ptrtoint ptr %640 to i32
  call void @__asan_store4_noabort(i32 %641)
  store i32 262144, ptr %640, align 4
  %i2c_addr.i216.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %642 = ptrtoint ptr %i2c_addr.i216.i to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %i2c_addr.i216.i, align 8
  %644 = lshr i8 %643, 1
  %conv27.i217.i = zext i8 %644 to i16
  %645 = ptrtoint ptr %msg.i215.i to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %conv27.i217.i, ptr %msg.i215.i, align 4
  %flags.i218.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %646 = ptrtoint ptr %flags.i218.i to i32
  call void @__asan_store2_noabort(i32 %646)
  store i16 0, ptr %flags.i218.i, align 2
  %buf.i219.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %647 = ptrtoint ptr %buf.i219.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %i2c_write_buffer.i211.i, ptr %buf.i219.i, align 4
  %i2c_adap.i221.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %648 = ptrtoint ptr %i2c_adap.i221.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %i2c_adap.i221.i, align 4
  %call39.i222.i = tail call i32 @i2c_transfer(ptr noundef %649, ptr noundef %msg.i215.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i180.i) #6
  br label %dib7000m_write_word.exit227.i

dib7000m_write_word.exit227.i:                    ; preds = %if.end6.i225.i, %do.end.i210.i, %do.body.i208.i.dib7000m_write_word.exit227.i_crit_edge
  %650 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %agc_state1.i, align 1
  %inc56.i = add i8 %651, 1
  store i8 %inc56.i, ptr %agc_state1.i, align 1
  br label %if.then7

sw.bb57.i:                                        ; preds = %do.body
  %call58.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 392) #6
  %call60.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 390) #6
  %i2c_buffer_lock.i228.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 20
  %call.i229.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i228.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229.i)
  %cmp.i230.i = icmp slt i32 %call.i229.i, 0
  br i1 %cmp.i230.i, label %do.body.i232.i, label %if.end6.i251.i

do.body.i232.i:                                   ; preds = %sw.bb57.i
  %652 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %652)
  %tobool.not.i231.i = icmp eq i32 %652, 0
  br i1 %tobool.not.i231.i, label %do.body.i232.i.dib7000m_write_word.exit253.i_crit_edge, label %do.end.i234.i

do.body.i232.i.dib7000m_write_word.exit253.i_crit_edge: ; preds = %do.body.i232.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit253.i

do.end.i234.i:                                    ; preds = %do.body.i232.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i233.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit253.i

if.end6.i251.i:                                   ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i235.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %653 = ptrtoint ptr %i2c_write_buffer.i235.i to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 0, ptr %i2c_write_buffer.i235.i, align 4
  %arrayidx12.i236.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %654 = ptrtoint ptr %arrayidx12.i236.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 75, ptr %arrayidx12.i236.i, align 1
  %655 = lshr i16 %call60.i, 8
  %conv16.i237.i = trunc i16 %655 to i8
  %arrayidx18.i238.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %656 = ptrtoint ptr %arrayidx18.i238.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %conv16.i237.i, ptr %arrayidx18.i238.i, align 2
  %conv21.i239.i = trunc i16 %call60.i to i8
  %arrayidx23.i240.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %657 = ptrtoint ptr %arrayidx23.i240.i to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %conv21.i239.i, ptr %arrayidx23.i240.i, align 1
  %msg.i241.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %658 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %659 = ptrtoint ptr %658 to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 262144, ptr %658, align 4
  %i2c_addr.i242.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %660 = ptrtoint ptr %i2c_addr.i242.i to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %i2c_addr.i242.i, align 8
  %662 = lshr i8 %661, 1
  %conv27.i243.i = zext i8 %662 to i16
  %663 = ptrtoint ptr %msg.i241.i to i32
  call void @__asan_store2_noabort(i32 %663)
  store i16 %conv27.i243.i, ptr %msg.i241.i, align 4
  %flags.i244.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %664 = ptrtoint ptr %flags.i244.i to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 0, ptr %flags.i244.i, align 2
  %buf.i245.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %665 = ptrtoint ptr %buf.i245.i to i32
  call void @__asan_store4_noabort(i32 %665)
  store ptr %i2c_write_buffer.i235.i, ptr %buf.i245.i, align 4
  %i2c_adap.i247.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %666 = ptrtoint ptr %i2c_adap.i247.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %i2c_adap.i247.i, align 4
  %call39.i248.i = tail call i32 @i2c_transfer(ptr noundef %667, ptr noundef %msg.i241.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i228.i) #6
  br label %dib7000m_write_word.exit253.i

dib7000m_write_word.exit253.i:                    ; preds = %if.end6.i251.i, %do.end.i234.i, %do.body.i232.i.dib7000m_write_word.exit253.i_crit_edge
  %call.i255.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i228.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255.i)
  %cmp.i256.i = icmp slt i32 %call.i255.i, 0
  br i1 %cmp.i256.i, label %do.body.i258.i, label %if.end6.i277.i

do.body.i258.i:                                   ; preds = %dib7000m_write_word.exit253.i
  %668 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %668)
  %tobool.not.i257.i = icmp eq i32 %668, 0
  br i1 %tobool.not.i257.i, label %do.body.i258.i.dib7000m_write_word.exit279.i_crit_edge, label %do.end.i260.i

do.body.i258.i.dib7000m_write_word.exit279.i_crit_edge: ; preds = %do.body.i258.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit279.i

do.end.i260.i:                                    ; preds = %do.body.i258.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i259.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit279.i

if.end6.i277.i:                                   ; preds = %dib7000m_write_word.exit253.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i261.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %669 = ptrtoint ptr %i2c_write_buffer.i261.i to i32
  call void @__asan_store1_noabort(i32 %669)
  store i8 0, ptr %i2c_write_buffer.i261.i, align 4
  %arrayidx12.i262.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %670 = ptrtoint ptr %arrayidx12.i262.i to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 72, ptr %arrayidx12.i262.i, align 1
  %671 = lshr i16 %call.i, 8
  %conv16.i263.i = trunc i16 %671 to i8
  %arrayidx18.i264.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %672 = ptrtoint ptr %arrayidx18.i264.i to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %conv16.i263.i, ptr %arrayidx18.i264.i, align 2
  %673 = trunc i16 %call.i to i8
  %conv21.i265.i = and i8 %673, -17
  %arrayidx23.i266.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %674 = ptrtoint ptr %arrayidx23.i266.i to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 %conv21.i265.i, ptr %arrayidx23.i266.i, align 1
  %msg.i267.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %675 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %676 = ptrtoint ptr %675 to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 262144, ptr %675, align 4
  %i2c_addr.i268.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %677 = ptrtoint ptr %i2c_addr.i268.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %i2c_addr.i268.i, align 8
  %679 = lshr i8 %678, 1
  %conv27.i269.i = zext i8 %679 to i16
  %680 = ptrtoint ptr %msg.i267.i to i32
  call void @__asan_store2_noabort(i32 %680)
  store i16 %conv27.i269.i, ptr %msg.i267.i, align 4
  %flags.i270.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %681 = ptrtoint ptr %flags.i270.i to i32
  call void @__asan_store2_noabort(i32 %681)
  store i16 0, ptr %flags.i270.i, align 2
  %buf.i271.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %682 = ptrtoint ptr %buf.i271.i to i32
  call void @__asan_store4_noabort(i32 %682)
  store ptr %i2c_write_buffer.i261.i, ptr %buf.i271.i, align 4
  %i2c_adap.i273.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %683 = ptrtoint ptr %i2c_adap.i273.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %i2c_adap.i273.i, align 4
  %call39.i274.i = tail call i32 @i2c_transfer(ptr noundef %684, ptr noundef %msg.i267.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i228.i) #6
  br label %dib7000m_write_word.exit279.i

dib7000m_write_word.exit279.i:                    ; preds = %if.end6.i277.i, %do.end.i260.i, %do.body.i258.i.dib7000m_write_word.exit279.i_crit_edge
  %current_agc65.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 9
  %685 = ptrtoint ptr %current_agc65.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %current_agc65.i, align 4
  %wbd_alpha.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %686, i32 0, i32 9
  %687 = ptrtoint ptr %wbd_alpha.i to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %wbd_alpha.i, align 1
  %689 = and i16 %call58.i, 255
  %call.i281.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i228.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %cmp.i282.i = icmp slt i32 %call.i281.i, 0
  br i1 %cmp.i282.i, label %do.body.i284.i, label %if.end6.i303.i

do.body.i284.i:                                   ; preds = %dib7000m_write_word.exit279.i
  %690 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %690)
  %tobool.not.i283.i = icmp eq i32 %690, 0
  br i1 %tobool.not.i283.i, label %do.body.i284.i.dib7000m_write_word.exit305.i_crit_edge, label %do.end.i286.i

do.body.i284.i.dib7000m_write_word.exit305.i_crit_edge: ; preds = %do.body.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit305.i

do.end.i286.i:                                    ; preds = %do.body.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i285.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit305.i

if.end6.i303.i:                                   ; preds = %dib7000m_write_word.exit279.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i287.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %691 = ptrtoint ptr %i2c_write_buffer.i287.i to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 0, ptr %i2c_write_buffer.i287.i, align 4
  %arrayidx12.i288.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %692 = ptrtoint ptr %arrayidx12.i288.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 103, ptr %arrayidx12.i288.i, align 1
  %693 = shl i8 %688, 1
  %arrayidx18.i290.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %694 = ptrtoint ptr %arrayidx18.i290.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %693, ptr %arrayidx18.i290.i, align 2
  %conv21.i291.i = trunc i16 %call58.i to i8
  %arrayidx23.i292.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %695 = ptrtoint ptr %arrayidx23.i292.i to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %conv21.i291.i, ptr %arrayidx23.i292.i, align 1
  %msg.i293.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %696 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 262144, ptr %696, align 4
  %i2c_addr.i294.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %698 = ptrtoint ptr %i2c_addr.i294.i to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %i2c_addr.i294.i, align 8
  %700 = lshr i8 %699, 1
  %conv27.i295.i = zext i8 %700 to i16
  %701 = ptrtoint ptr %msg.i293.i to i32
  call void @__asan_store2_noabort(i32 %701)
  store i16 %conv27.i295.i, ptr %msg.i293.i, align 4
  %flags.i296.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %702 = ptrtoint ptr %flags.i296.i to i32
  call void @__asan_store2_noabort(i32 %702)
  store i16 0, ptr %flags.i296.i, align 2
  %buf.i297.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %703 = ptrtoint ptr %buf.i297.i to i32
  call void @__asan_store4_noabort(i32 %703)
  store ptr %i2c_write_buffer.i287.i, ptr %buf.i297.i, align 4
  %i2c_adap.i299.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %704 = ptrtoint ptr %i2c_adap.i299.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %i2c_adap.i299.i, align 4
  %call39.i300.i = tail call i32 @i2c_transfer(ptr noundef %705, ptr noundef %msg.i293.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i228.i) #6
  br label %dib7000m_write_word.exit305.i

dib7000m_write_word.exit305.i:                    ; preds = %if.end6.i303.i, %do.end.i286.i, %do.body.i284.i.dib7000m_write_word.exit305.i_crit_edge
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %8) #6
  %706 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %706)
  %tobool71.not.i = icmp eq i32 %706, 0
  br i1 %tobool71.not.i, label %dib7000m_write_word.exit305.i.do.end78.i_crit_edge, label %do.end.i

dib7000m_write_word.exit305.i.do.end78.i_crit_edge: ; preds = %dib7000m_write_word.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78.i

do.end.i:                                         ; preds = %dib7000m_write_word.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv67.i = zext i16 %689 to i32
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %fe, i32 noundef %conv67.i) #9
  br label %do.end78.i

do.end78.i:                                       ; preds = %do.end.i, %dib7000m_write_word.exit305.i.do.end78.i_crit_edge
  %707 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %agc_state1.i, align 1
  %inc79.i = add i8 %708, 1
  store i8 %inc79.i, ptr %agc_state1.i, align 1
  br label %if.then7

sw.bb80.i:                                        ; preds = %do.body
  %update_lna.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 1, i32 5
  %709 = ptrtoint ptr %update_lna.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %update_lna.i.i, align 8
  %tobool.not.i306.i = icmp eq ptr %710, null
  br i1 %tobool.not.i306.i, label %sw.bb80.i.if.else84.i_crit_edge, label %if.then.i.i

sw.bb80.i.if.else84.i_crit_edge:                  ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else84.i

if.then.i.i:                                      ; preds = %sw.bb80.i
  %call.i307.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 390) #6
  %711 = ptrtoint ptr %update_lna.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %update_lna.i.i, align 8
  %call3.i308.i = tail call i32 %712(ptr noundef %8, i16 noundef zeroext %call.i307.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i308.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i308.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.else84.i_crit_edge, label %dib7000m_update_lna.exit.i

if.then.i.i.if.else84.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else84.i

dib7000m_update_lna.exit.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %8) #6
  br label %if.then7

if.else84.i:                                      ; preds = %if.then.i.i.if.else84.i_crit_edge, %sw.bb80.i.if.else84.i_crit_edge
  %713 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %agc_state1.i, align 1
  %inc85.i = add i8 %714, 1
  store i8 %inc85.i, ptr %agc_state1.i, align 1
  br label %if.then7

sw.bb87.i:                                        ; preds = %do.body
  %current_agc.i310.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 9
  %715 = ptrtoint ptr %current_agc.i310.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %current_agc.i310.i, align 4
  %tobool.not.i311.i = icmp eq ptr %716, null
  br i1 %tobool.not.i311.i, label %sw.bb87.i.dib7000m_agc_soft_split.exit.i_crit_edge, label %lor.lhs.false.i.i

sw.bb87.i.dib7000m_agc_soft_split.exit.i_crit_edge: ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_agc_soft_split.exit.i

lor.lhs.false.i.i:                                ; preds = %sw.bb87.i
  %perform_agc_softsplit.i312.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %716, i32 0, i32 27
  %717 = ptrtoint ptr %perform_agc_softsplit.i312.i to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %perform_agc_softsplit.i312.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %718)
  %tobool2.not.i.i = icmp eq i8 %718, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.dib7000m_agc_soft_split.exit.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i.i.dib7000m_agc_soft_split.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_agc_soft_split.exit.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %max.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %716, i32 0, i32 28, i32 1
  %719 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %719)
  %720 = load i16, ptr %max.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %720)
  %cmp.i313.i = icmp eq i16 %720, 0
  br i1 %cmp.i313.i, label %lor.lhs.false3.i.i.dib7000m_agc_soft_split.exit.i_crit_edge, label %if.end.i316.i

lor.lhs.false3.i.i.dib7000m_agc_soft_split.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_agc_soft_split.exit.i

if.end.i316.i:                                    ; preds = %lor.lhs.false3.i.i
  %call.i314.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 390) #6
  %conv6.i315.i = zext i16 %call.i314.i to i32
  %721 = ptrtoint ptr %current_agc.i310.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %current_agc.i310.i, align 4
  %min_thres.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %722, i32 0, i32 28, i32 2
  %723 = ptrtoint ptr %min_thres.i.i to i32
  call void @__asan_load2_noabort(i32 %723)
  %724 = load i16, ptr %min_thres.i.i, align 2
  %conv9.i.i = zext i16 %724 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i314.i, i16 %724)
  %cmp10.i.i = icmp ugt i16 %call.i314.i, %724
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i317.i

if.then12.i.i:                                    ; preds = %if.end.i316.i
  call void @__sanitizer_cov_trace_pc() #8
  %split8.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %722, i32 0, i32 28
  %725 = ptrtoint ptr %split8.i.i to i32
  call void @__asan_load2_noabort(i32 %725)
  %726 = load i16, ptr %split8.i.i, align 2
  br label %do.body.i318.i

if.else.i317.i:                                   ; preds = %if.end.i316.i
  %max_thres.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %722, i32 0, i32 28, i32 3
  %727 = ptrtoint ptr %max_thres.i.i to i32
  call void @__asan_load2_noabort(i32 %727)
  %728 = load i16, ptr %max_thres.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i314.i, i16 %728)
  %cmp19.i.i = icmp ult i16 %call.i314.i, %728
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.else25.i.i

if.then21.i.i:                                    ; preds = %if.else.i317.i
  call void @__sanitizer_cov_trace_pc() #8
  %max24.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %722, i32 0, i32 28, i32 1
  %729 = ptrtoint ptr %max24.i.i to i32
  call void @__asan_load2_noabort(i32 %729)
  %730 = load i16, ptr %max24.i.i, align 2
  br label %do.body.i318.i

if.else25.i.i:                                    ; preds = %if.else.i317.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.i.i = zext i16 %728 to i32
  %max28.i.i = getelementptr inbounds %struct.dibx000_agc_config, ptr %722, i32 0, i32 28, i32 1
  %731 = ptrtoint ptr %max28.i.i to i32
  call void @__asan_load2_noabort(i32 %731)
  %732 = load i16, ptr %max28.i.i, align 2
  %conv29.i.i = zext i16 %732 to i32
  %sub.i.i = sub nsw i32 %conv6.i315.i, %conv9.i.i
  %mul.i.i = mul i32 %sub.i.i, %conv29.i.i
  %sub43.i.i = sub nsw i32 %conv18.i.i, %conv9.i.i
  %div.i.i = sdiv i32 %mul.i.i, %sub43.i.i
  %conv44.i.i = trunc i32 %div.i.i to i16
  br label %do.body.i318.i

do.body.i318.i:                                   ; preds = %if.else25.i.i, %if.then21.i.i, %if.then12.i.i
  %split_offset.0.i.i = phi i16 [ %726, %if.then12.i.i ], [ %730, %if.then21.i.i ], [ %conv44.i.i, %if.else25.i.i ]
  %733 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %733)
  %tobool47.not.i.i = icmp eq i32 %733, 0
  br i1 %tobool47.not.i.i, label %do.body.i318.i.do.end54.i323.i_crit_edge, label %do.end.i319.i

do.body.i318.i.do.end54.i323.i_crit_edge:         ; preds = %do.body.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i323.i

do.end.i319.i:                                    ; preds = %do.body.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv50.i.i = zext i16 %split_offset.0.i.i to i32
  %call51.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv50.i.i) #9
  br label %do.end54.i323.i

do.end54.i323.i:                                  ; preds = %do.end.i319.i, %do.body.i318.i.do.end54.i323.i_crit_edge
  %call55.i.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %8, i16 noundef zeroext 103) #6
  %i2c_buffer_lock.i.i320.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 20
  %call.i.i321.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i320.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i321.i)
  %cmp.i.i322.i = icmp slt i32 %call.i.i321.i, 0
  br i1 %cmp.i.i322.i, label %do.body.i.i325.i, label %if.end6.i.i341.i

do.body.i.i325.i:                                 ; preds = %do.end54.i323.i
  %734 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %734)
  %tobool.not.i.i324.i = icmp eq i32 %734, 0
  br i1 %tobool.not.i.i324.i, label %do.body.i.i325.i.dib7000m_agc_soft_split.exit.i_crit_edge, label %do.end.i.i327.i

do.body.i.i325.i.dib7000m_agc_soft_split.exit.i_crit_edge: ; preds = %do.body.i.i325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_agc_soft_split.exit.i

do.end.i.i327.i:                                  ; preds = %do.body.i.i325.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i326.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_agc_soft_split.exit.i

if.end6.i.i341.i:                                 ; preds = %do.end54.i323.i
  call void @__sanitizer_cov_trace_pc() #8
  %or1.i.i = or i16 %call55.i.i, %split_offset.0.i.i
  %i2c_write_buffer.i.i328.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 18
  %735 = ptrtoint ptr %i2c_write_buffer.i.i328.i to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 0, ptr %i2c_write_buffer.i.i328.i, align 4
  %arrayidx12.i.i329.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 1
  %736 = ptrtoint ptr %arrayidx12.i.i329.i to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 103, ptr %arrayidx12.i.i329.i, align 1
  %737 = lshr i16 %or1.i.i, 8
  %conv16.i.i330.i = trunc i16 %737 to i8
  %arrayidx18.i.i331.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 2
  %738 = ptrtoint ptr %arrayidx18.i.i331.i to i32
  call void @__asan_store1_noabort(i32 %738)
  store i8 %conv16.i.i330.i, ptr %arrayidx18.i.i331.i, align 2
  %conv21.i.i332.i = trunc i16 %split_offset.0.i.i to i8
  %arrayidx23.i.i333.i = getelementptr %struct.dib7000m_state, ptr %8, i32 0, i32 18, i32 3
  %739 = ptrtoint ptr %arrayidx23.i.i333.i to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 %conv21.i.i332.i, ptr %arrayidx23.i.i333.i, align 1
  %msg.i.i334.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17
  %740 = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  %741 = ptrtoint ptr %740 to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 262144, ptr %740, align 4
  %i2c_addr.i.i335.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 2
  %742 = ptrtoint ptr %i2c_addr.i.i335.i to i32
  call void @__asan_load1_noabort(i32 %742)
  %743 = load i8, ptr %i2c_addr.i.i335.i, align 8
  %744 = lshr i8 %743, 1
  %conv27.i.i336.i = zext i8 %744 to i16
  %745 = ptrtoint ptr %msg.i.i334.i to i32
  call void @__asan_store2_noabort(i32 %745)
  store i16 %conv27.i.i336.i, ptr %msg.i.i334.i, align 4
  %flags.i.i337.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 1
  %746 = ptrtoint ptr %flags.i.i337.i to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 0, ptr %flags.i.i337.i, align 2
  %buf.i.i338.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  %747 = ptrtoint ptr %buf.i.i338.i to i32
  call void @__asan_store4_noabort(i32 %747)
  store ptr %i2c_write_buffer.i.i328.i, ptr %buf.i.i338.i, align 4
  %i2c_adap.i.i339.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 3
  %748 = ptrtoint ptr %i2c_adap.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %i2c_adap.i.i339.i, align 4
  %call39.i.i340.i = tail call i32 @i2c_transfer(ptr noundef %749, ptr noundef %msg.i.i334.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i320.i) #6
  br label %dib7000m_agc_soft_split.exit.i

dib7000m_agc_soft_split.exit.i:                   ; preds = %if.end6.i.i341.i, %do.end.i.i327.i, %do.body.i.i325.i.dib7000m_agc_soft_split.exit.i_crit_edge, %lor.lhs.false3.i.i.dib7000m_agc_soft_split.exit.i_crit_edge, %lor.lhs.false.i.i.dib7000m_agc_soft_split.exit.i_crit_edge, %sw.bb87.i.dib7000m_agc_soft_split.exit.i_crit_edge
  %agc_control90.i = getelementptr inbounds %struct.dib7000m_state, ptr %8, i32 0, i32 1, i32 15
  %750 = ptrtoint ptr %agc_control90.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %agc_control90.i, align 4
  %tobool91.not.i = icmp eq ptr %751, null
  br i1 %tobool91.not.i, label %dib7000m_agc_soft_split.exit.i.if.end97.i_crit_edge, label %if.then92.i

dib7000m_agc_soft_split.exit.i.if.end97.i_crit_edge: ; preds = %dib7000m_agc_soft_split.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then92.i:                                      ; preds = %dib7000m_agc_soft_split.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call96.i = tail call i32 %751(ptr noundef %8, i8 noundef zeroext 0) #6
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then92.i, %dib7000m_agc_soft_split.exit.i.if.end97.i_crit_edge
  %752 = ptrtoint ptr %agc_state1.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %agc_state1.i, align 1
  %inc98.i = add i8 %753, 1
  store i8 %inc98.i, ptr %agc_state1.i, align 1
  br label %do.end.critedge

if.then7:                                         ; preds = %if.else84.i, %dib7000m_update_lna.exit.i, %do.end78.i, %dib7000m_write_word.exit227.i, %if.end50.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 5, %dib7000m_update_lna.exit.i ], [ 7, %if.end.i ], [ %ret.0.i, %if.end50.i ], [ 14, %dib7000m_write_word.exit227.i ], [ 5, %do.end78.i ], [ 7, %if.else84.i ]
  tail call void @msleep(i32 noundef %retval.0.i.ph) #6
  br label %do.body

do.end.critedge:                                  ; preds = %if.end97.i, %do.end.i.i, %do.body.i.i.do.end.critedge_crit_edge, %do.body.do.end.critedge_crit_edge
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %754 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %755)
  %cmp10 = icmp eq i32 %755, 2
  br i1 %cmp10, label %do.end.critedge.if.then16_crit_edge, label %lor.lhs.false

do.end.critedge.if.then16_crit_edge:              ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false:                                    ; preds = %do.end.critedge
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %756 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %757)
  %cmp11 = icmp eq i32 %757, 4
  br i1 %cmp11, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false12

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %758 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %759)
  %cmp13 = icmp eq i32 %759, 6
  br i1 %cmp13, label %lor.lhs.false12.if.then16_crit_edge, label %lor.lhs.false14

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %760 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %code_rate_HP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %761)
  %cmp15 = icmp eq i32 %761, 9
  br i1 %cmp15, label %lor.lhs.false14.if.then16_crit_edge, label %lor.lhs.false14.if.end41_crit_edge

lor.lhs.false14.if.end41_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

lor.lhs.false14.if.then16_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false14.if.then16_crit_edge, %lor.lhs.false12.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %do.end.critedge.if.then16_crit_edge
  %762 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %schan.i) #6
  %764 = call ptr @memcpy(ptr %schan.i, ptr %dtv_property_cache, i32 456)
  %modulation.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 1
  %765 = ptrtoint ptr %modulation.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 3, ptr %modulation.i, align 4
  %guard_interval.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 8
  %766 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 0, ptr %guard_interval.i, align 4
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 6
  %767 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 1, ptr %transmission_mode.i, align 4
  %code_rate_HP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 11
  %768 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 2, ptr %code_rate_HP.i, align 4
  %code_rate_LP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 12
  %769 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_store4_noabort(i32 %769)
  store i32 3, ptr %code_rate_LP.i, align 4
  %hierarchy.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 9
  %770 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 0, ptr %hierarchy.i, align 4
  call fastcc void @dib7000m_set_channel(ptr noundef %763, ptr noundef nonnull %schan.i, i8 noundef zeroext 7) #6
  %bandwidth_hz.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %schan.i, i32 0, i32 7
  %771 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %bandwidth_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999999, i32 %772)
  %cmp.i73 = icmp ugt i32 %772, 4999999
  %..i = select i1 %cmp.i73, i32 1, i32 6
  %internal_clk.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 12
  %773 = ptrtoint ptr %internal_clk.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %internal_clk.i, align 8
  %mul.i = mul i32 %774, 30
  %mul1.i = mul i32 %mul.i, %..i
  %i2c_buffer_lock.i.i74 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 20
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i75 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i75, label %do.body.i.i76, label %if.end6.i.i92

do.body.i.i76:                                    ; preds = %if.then16
  %775 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %775)
  %tobool.not.i.i = icmp eq i32 %775, 0
  br i1 %tobool.not.i.i, label %do.body.i.i76.dib7000m_write_word.exit.i93_crit_edge, label %do.end.i.i78

do.body.i.i76.dib7000m_write_word.exit.i93_crit_edge: ; preds = %do.body.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i93

do.end.i.i78:                                     ; preds = %do.body.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i93

if.end6.i.i92:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %mul1.i, 16
  %i2c_write_buffer.i.i79 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %776 = ptrtoint ptr %i2c_write_buffer.i.i79 to i32
  call void @__asan_store1_noabort(i32 %776)
  store i8 0, ptr %i2c_write_buffer.i.i79, align 4
  %arrayidx12.i.i80 = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %777 = ptrtoint ptr %arrayidx12.i.i80 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 6, ptr %arrayidx12.i.i80, align 1
  %778 = lshr i32 %mul1.i, 24
  %conv16.i.i81 = trunc i32 %778 to i8
  %arrayidx18.i.i82 = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %779 = ptrtoint ptr %arrayidx18.i.i82 to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 %conv16.i.i81, ptr %arrayidx18.i.i82, align 2
  %conv21.i.i83 = trunc i32 %shr.i to i8
  %arrayidx23.i.i84 = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %780 = ptrtoint ptr %arrayidx23.i.i84 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 %conv21.i.i83, ptr %arrayidx23.i.i84, align 1
  %msg.i.i85 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %781 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %782 = ptrtoint ptr %781 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 262144, ptr %781, align 4
  %i2c_addr.i.i86 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %783 = ptrtoint ptr %i2c_addr.i.i86 to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %i2c_addr.i.i86, align 8
  %785 = lshr i8 %784, 1
  %conv27.i.i87 = zext i8 %785 to i16
  %786 = ptrtoint ptr %msg.i.i85 to i32
  call void @__asan_store2_noabort(i32 %786)
  store i16 %conv27.i.i87, ptr %msg.i.i85, align 4
  %flags.i.i88 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %787 = ptrtoint ptr %flags.i.i88 to i32
  call void @__asan_store2_noabort(i32 %787)
  store i16 0, ptr %flags.i.i88, align 2
  %buf.i.i89 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %788 = ptrtoint ptr %buf.i.i89 to i32
  call void @__asan_store4_noabort(i32 %788)
  store ptr %i2c_write_buffer.i.i79, ptr %buf.i.i89, align 4
  %i2c_adap.i.i90 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %789 = ptrtoint ptr %i2c_adap.i.i90 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %i2c_adap.i.i90, align 4
  %call39.i.i91 = tail call i32 @i2c_transfer(ptr noundef %790, ptr noundef %msg.i.i85, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit.i93

dib7000m_write_word.exit.i93:                     ; preds = %if.end6.i.i92, %do.end.i.i78, %do.body.i.i76.dib7000m_write_word.exit.i93_crit_edge
  %call.i2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i3.i, label %do.body.i5.i, label %if.end6.i24.i

do.body.i5.i:                                     ; preds = %dib7000m_write_word.exit.i93
  %791 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %791)
  %tobool.not.i4.i = icmp eq i32 %791, 0
  br i1 %tobool.not.i4.i, label %do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge, label %do.end.i7.i

do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge: ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26.i

do.end.i7.i:                                      ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26.i

if.end6.i24.i:                                    ; preds = %dib7000m_write_word.exit.i93
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i8.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %792 = ptrtoint ptr %i2c_write_buffer.i8.i to i32
  call void @__asan_store1_noabort(i32 %792)
  store i8 0, ptr %i2c_write_buffer.i8.i, align 4
  %arrayidx12.i9.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %793 = ptrtoint ptr %arrayidx12.i9.i to i32
  call void @__asan_store1_noabort(i32 %793)
  store i8 7, ptr %arrayidx12.i9.i, align 1
  %794 = lshr i32 %mul1.i, 8
  %conv16.i10.i = trunc i32 %794 to i8
  %arrayidx18.i11.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %795 = ptrtoint ptr %arrayidx18.i11.i to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %conv16.i10.i, ptr %arrayidx18.i11.i, align 2
  %conv21.i12.i = trunc i32 %mul1.i to i8
  %arrayidx23.i13.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %796 = ptrtoint ptr %arrayidx23.i13.i to i32
  call void @__asan_store1_noabort(i32 %796)
  store i8 %conv21.i12.i, ptr %arrayidx23.i13.i, align 1
  %msg.i14.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %797 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %798 = ptrtoint ptr %797 to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 262144, ptr %797, align 4
  %i2c_addr.i15.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %799 = ptrtoint ptr %i2c_addr.i15.i to i32
  call void @__asan_load1_noabort(i32 %799)
  %800 = load i8, ptr %i2c_addr.i15.i, align 8
  %801 = lshr i8 %800, 1
  %conv27.i16.i = zext i8 %801 to i16
  %802 = ptrtoint ptr %msg.i14.i to i32
  call void @__asan_store2_noabort(i32 %802)
  store i16 %conv27.i16.i, ptr %msg.i14.i, align 4
  %flags.i17.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %803 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_store2_noabort(i32 %803)
  store i16 0, ptr %flags.i17.i, align 2
  %buf.i18.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %804 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store4_noabort(i32 %804)
  store ptr %i2c_write_buffer.i8.i, ptr %buf.i18.i, align 4
  %i2c_adap.i20.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %805 = ptrtoint ptr %i2c_adap.i20.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %i2c_adap.i20.i, align 4
  %call39.i21.i = tail call i32 @i2c_transfer(ptr noundef %806, ptr noundef %msg.i14.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit26.i

dib7000m_write_word.exit26.i:                     ; preds = %if.end6.i24.i, %do.end.i7.i, %do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge
  %807 = ptrtoint ptr %internal_clk.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %internal_clk.i, align 8
  %mul7.i = mul nuw nsw i32 %..i, 100
  %mul8.i = mul i32 %mul7.i, %808
  %call.i28.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %do.body.i31.i, label %if.end6.i50.i

do.body.i31.i:                                    ; preds = %dib7000m_write_word.exit26.i
  %809 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %809)
  %tobool.not.i30.i = icmp eq i32 %809, 0
  br i1 %tobool.not.i30.i, label %do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge, label %do.end.i33.i

do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge: ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit52.i

do.end.i33.i:                                     ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit52.i

if.end6.i50.i:                                    ; preds = %dib7000m_write_word.exit26.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr9.i = lshr i32 %mul8.i, 16
  %i2c_write_buffer.i34.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %810 = ptrtoint ptr %i2c_write_buffer.i34.i to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 0, ptr %i2c_write_buffer.i34.i, align 4
  %arrayidx12.i35.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %811 = ptrtoint ptr %arrayidx12.i35.i to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 8, ptr %arrayidx12.i35.i, align 1
  %812 = lshr i32 %mul8.i, 24
  %conv16.i36.i = trunc i32 %812 to i8
  %arrayidx18.i37.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %813 = ptrtoint ptr %arrayidx18.i37.i to i32
  call void @__asan_store1_noabort(i32 %813)
  store i8 %conv16.i36.i, ptr %arrayidx18.i37.i, align 2
  %conv21.i38.i = trunc i32 %shr9.i to i8
  %arrayidx23.i39.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %814 = ptrtoint ptr %arrayidx23.i39.i to i32
  call void @__asan_store1_noabort(i32 %814)
  store i8 %conv21.i38.i, ptr %arrayidx23.i39.i, align 1
  %msg.i40.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %815 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %816 = ptrtoint ptr %815 to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 262144, ptr %815, align 4
  %i2c_addr.i41.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %817 = ptrtoint ptr %i2c_addr.i41.i to i32
  call void @__asan_load1_noabort(i32 %817)
  %818 = load i8, ptr %i2c_addr.i41.i, align 8
  %819 = lshr i8 %818, 1
  %conv27.i42.i = zext i8 %819 to i16
  %820 = ptrtoint ptr %msg.i40.i to i32
  call void @__asan_store2_noabort(i32 %820)
  store i16 %conv27.i42.i, ptr %msg.i40.i, align 4
  %flags.i43.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %821 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_store2_noabort(i32 %821)
  store i16 0, ptr %flags.i43.i, align 2
  %buf.i44.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %822 = ptrtoint ptr %buf.i44.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store ptr %i2c_write_buffer.i34.i, ptr %buf.i44.i, align 4
  %i2c_adap.i46.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %823 = ptrtoint ptr %i2c_adap.i46.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %i2c_adap.i46.i, align 4
  %call39.i47.i = tail call i32 @i2c_transfer(ptr noundef %824, ptr noundef %msg.i40.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit52.i

dib7000m_write_word.exit52.i:                     ; preds = %if.end6.i50.i, %do.end.i33.i, %do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge
  %call.i54.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %do.body.i57.i, label %if.end6.i76.i

do.body.i57.i:                                    ; preds = %dib7000m_write_word.exit52.i
  %825 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %825)
  %tobool.not.i56.i = icmp eq i32 %825, 0
  br i1 %tobool.not.i56.i, label %do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge, label %do.end.i59.i

do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge: ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit78.i

do.end.i59.i:                                     ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit78.i

if.end6.i76.i:                                    ; preds = %dib7000m_write_word.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i60.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %826 = ptrtoint ptr %i2c_write_buffer.i60.i to i32
  call void @__asan_store1_noabort(i32 %826)
  store i8 0, ptr %i2c_write_buffer.i60.i, align 4
  %arrayidx12.i61.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %827 = ptrtoint ptr %arrayidx12.i61.i to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 9, ptr %arrayidx12.i61.i, align 1
  %828 = lshr i32 %mul8.i, 8
  %conv16.i62.i = trunc i32 %828 to i8
  %arrayidx18.i63.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %829 = ptrtoint ptr %arrayidx18.i63.i to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 %conv16.i62.i, ptr %arrayidx18.i63.i, align 2
  %conv21.i64.i = trunc i32 %mul8.i to i8
  %arrayidx23.i65.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %830 = ptrtoint ptr %arrayidx23.i65.i to i32
  call void @__asan_store1_noabort(i32 %830)
  store i8 %conv21.i64.i, ptr %arrayidx23.i65.i, align 1
  %msg.i66.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %831 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %832 = ptrtoint ptr %831 to i32
  call void @__asan_store4_noabort(i32 %832)
  store i32 262144, ptr %831, align 4
  %i2c_addr.i67.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %833 = ptrtoint ptr %i2c_addr.i67.i to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %i2c_addr.i67.i, align 8
  %835 = lshr i8 %834, 1
  %conv27.i68.i = zext i8 %835 to i16
  %836 = ptrtoint ptr %msg.i66.i to i32
  call void @__asan_store2_noabort(i32 %836)
  store i16 %conv27.i68.i, ptr %msg.i66.i, align 4
  %flags.i69.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %837 = ptrtoint ptr %flags.i69.i to i32
  call void @__asan_store2_noabort(i32 %837)
  store i16 0, ptr %flags.i69.i, align 2
  %buf.i70.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %838 = ptrtoint ptr %buf.i70.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store ptr %i2c_write_buffer.i60.i, ptr %buf.i70.i, align 4
  %i2c_adap.i72.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %839 = ptrtoint ptr %i2c_adap.i72.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %i2c_adap.i72.i, align 4
  %call39.i73.i = tail call i32 @i2c_transfer(ptr noundef %840, ptr noundef %msg.i66.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit78.i

dib7000m_write_word.exit78.i:                     ; preds = %if.end6.i76.i, %do.end.i59.i, %do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge
  %841 = ptrtoint ptr %internal_clk.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %internal_clk.i, align 8
  %mul19.i = mul nuw nsw i32 %..i, 500
  %mul20.i = mul i32 %mul19.i, %842
  %call.i80.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp.i81.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp.i81.i, label %do.body.i83.i, label %if.end6.i102.i

do.body.i83.i:                                    ; preds = %dib7000m_write_word.exit78.i
  %843 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %843)
  %tobool.not.i82.i = icmp eq i32 %843, 0
  br i1 %tobool.not.i82.i, label %do.body.i83.i.dib7000m_write_word.exit104.i_crit_edge, label %do.end.i85.i

do.body.i83.i.dib7000m_write_word.exit104.i_crit_edge: ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit104.i

do.end.i85.i:                                     ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit104.i

if.end6.i102.i:                                   ; preds = %dib7000m_write_word.exit78.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr21.i = lshr i32 %mul20.i, 16
  %i2c_write_buffer.i86.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %844 = ptrtoint ptr %i2c_write_buffer.i86.i to i32
  call void @__asan_store1_noabort(i32 %844)
  store i8 0, ptr %i2c_write_buffer.i86.i, align 4
  %arrayidx12.i87.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %845 = ptrtoint ptr %arrayidx12.i87.i to i32
  call void @__asan_store1_noabort(i32 %845)
  store i8 10, ptr %arrayidx12.i87.i, align 1
  %846 = lshr i32 %mul20.i, 24
  %conv16.i88.i = trunc i32 %846 to i8
  %arrayidx18.i89.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %847 = ptrtoint ptr %arrayidx18.i89.i to i32
  call void @__asan_store1_noabort(i32 %847)
  store i8 %conv16.i88.i, ptr %arrayidx18.i89.i, align 2
  %conv21.i90.i = trunc i32 %shr21.i to i8
  %arrayidx23.i91.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %848 = ptrtoint ptr %arrayidx23.i91.i to i32
  call void @__asan_store1_noabort(i32 %848)
  store i8 %conv21.i90.i, ptr %arrayidx23.i91.i, align 1
  %msg.i92.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %849 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 262144, ptr %849, align 4
  %i2c_addr.i93.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %851 = ptrtoint ptr %i2c_addr.i93.i to i32
  call void @__asan_load1_noabort(i32 %851)
  %852 = load i8, ptr %i2c_addr.i93.i, align 8
  %853 = lshr i8 %852, 1
  %conv27.i94.i = zext i8 %853 to i16
  %854 = ptrtoint ptr %msg.i92.i to i32
  call void @__asan_store2_noabort(i32 %854)
  store i16 %conv27.i94.i, ptr %msg.i92.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %855 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %855)
  store i16 0, ptr %flags.i95.i, align 2
  %buf.i96.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %856 = ptrtoint ptr %buf.i96.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store ptr %i2c_write_buffer.i86.i, ptr %buf.i96.i, align 4
  %i2c_adap.i98.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %857 = ptrtoint ptr %i2c_adap.i98.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %i2c_adap.i98.i, align 4
  %call39.i99.i = tail call i32 @i2c_transfer(ptr noundef %858, ptr noundef %msg.i92.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit104.i

dib7000m_write_word.exit104.i:                    ; preds = %if.end6.i102.i, %do.end.i85.i, %do.body.i83.i.dib7000m_write_word.exit104.i_crit_edge
  %call.i106.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i)
  %cmp.i107.i = icmp slt i32 %call.i106.i, 0
  br i1 %cmp.i107.i, label %do.body.i109.i, label %if.end6.i128.i

do.body.i109.i:                                   ; preds = %dib7000m_write_word.exit104.i
  %859 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %859)
  %tobool.not.i108.i = icmp eq i32 %859, 0
  br i1 %tobool.not.i108.i, label %do.body.i109.i.dib7000m_write_word.exit130.i_crit_edge, label %do.end.i111.i

do.body.i109.i.dib7000m_write_word.exit130.i_crit_edge: ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit130.i

do.end.i111.i:                                    ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit130.i

if.end6.i128.i:                                   ; preds = %dib7000m_write_word.exit104.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i112.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %860 = ptrtoint ptr %i2c_write_buffer.i112.i to i32
  call void @__asan_store1_noabort(i32 %860)
  store i8 0, ptr %i2c_write_buffer.i112.i, align 4
  %arrayidx12.i113.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %861 = ptrtoint ptr %arrayidx12.i113.i to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 11, ptr %arrayidx12.i113.i, align 1
  %862 = lshr i32 %mul20.i, 8
  %conv16.i114.i = trunc i32 %862 to i8
  %arrayidx18.i115.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %863 = ptrtoint ptr %arrayidx18.i115.i to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 %conv16.i114.i, ptr %arrayidx18.i115.i, align 2
  %conv21.i116.i = trunc i32 %mul20.i to i8
  %arrayidx23.i117.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %864 = ptrtoint ptr %arrayidx23.i117.i to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 %conv21.i116.i, ptr %arrayidx23.i117.i, align 1
  %msg.i118.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %865 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %866 = ptrtoint ptr %865 to i32
  call void @__asan_store4_noabort(i32 %866)
  store i32 262144, ptr %865, align 4
  %i2c_addr.i119.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %867 = ptrtoint ptr %i2c_addr.i119.i to i32
  call void @__asan_load1_noabort(i32 %867)
  %868 = load i8, ptr %i2c_addr.i119.i, align 8
  %869 = lshr i8 %868, 1
  %conv27.i120.i = zext i8 %869 to i16
  %870 = ptrtoint ptr %msg.i118.i to i32
  call void @__asan_store2_noabort(i32 %870)
  store i16 %conv27.i120.i, ptr %msg.i118.i, align 4
  %flags.i121.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %871 = ptrtoint ptr %flags.i121.i to i32
  call void @__asan_store2_noabort(i32 %871)
  store i16 0, ptr %flags.i121.i, align 2
  %buf.i122.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %872 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_store4_noabort(i32 %872)
  store ptr %i2c_write_buffer.i112.i, ptr %buf.i122.i, align 4
  %i2c_adap.i124.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %873 = ptrtoint ptr %i2c_adap.i124.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %i2c_adap.i124.i, align 4
  %call39.i125.i = tail call i32 @i2c_transfer(ptr noundef %874, ptr noundef %msg.i118.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit130.i

dib7000m_write_word.exit130.i:                    ; preds = %if.end6.i128.i, %do.end.i111.i, %do.body.i109.i.dib7000m_write_word.exit130.i_crit_edge
  %call30.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %763, i16 noundef zeroext 0) #6
  %call.i132.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %cmp.i133.i = icmp slt i32 %call.i132.i, 0
  br i1 %cmp.i133.i, label %do.body.i135.i, label %if.end6.i154.i

do.body.i135.i:                                   ; preds = %dib7000m_write_word.exit130.i
  %875 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %875)
  %tobool.not.i134.i = icmp eq i32 %875, 0
  br i1 %tobool.not.i134.i, label %do.body.i135.i.dib7000m_write_word.exit156.i_crit_edge, label %do.end.i137.i

do.body.i135.i.dib7000m_write_word.exit156.i_crit_edge: ; preds = %do.body.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit156.i

do.end.i137.i:                                    ; preds = %do.body.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit156.i

if.end6.i154.i:                                   ; preds = %dib7000m_write_word.exit130.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i138.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %876 = ptrtoint ptr %i2c_write_buffer.i138.i to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 0, ptr %i2c_write_buffer.i138.i, align 4
  %arrayidx12.i139.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %877 = ptrtoint ptr %arrayidx12.i139.i to i32
  call void @__asan_store1_noabort(i32 %877)
  store i8 0, ptr %arrayidx12.i139.i, align 1
  %878 = lshr i16 %call30.i, 8
  %879 = trunc i16 %878 to i8
  %conv16.i140.i = or i8 %879, 2
  %arrayidx18.i141.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %880 = ptrtoint ptr %arrayidx18.i141.i to i32
  call void @__asan_store1_noabort(i32 %880)
  store i8 %conv16.i140.i, ptr %arrayidx18.i141.i, align 2
  %conv21.i142.i = trunc i16 %call30.i to i8
  %arrayidx23.i143.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %881 = ptrtoint ptr %arrayidx23.i143.i to i32
  call void @__asan_store1_noabort(i32 %881)
  store i8 %conv21.i142.i, ptr %arrayidx23.i143.i, align 1
  %msg.i144.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %882 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %883 = ptrtoint ptr %882 to i32
  call void @__asan_store4_noabort(i32 %883)
  store i32 262144, ptr %882, align 4
  %i2c_addr.i145.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %884 = ptrtoint ptr %i2c_addr.i145.i to i32
  call void @__asan_load1_noabort(i32 %884)
  %885 = load i8, ptr %i2c_addr.i145.i, align 8
  %886 = lshr i8 %885, 1
  %conv27.i146.i = zext i8 %886 to i16
  %887 = ptrtoint ptr %msg.i144.i to i32
  call void @__asan_store2_noabort(i32 %887)
  store i16 %conv27.i146.i, ptr %msg.i144.i, align 4
  %flags.i147.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %888 = ptrtoint ptr %flags.i147.i to i32
  call void @__asan_store2_noabort(i32 %888)
  store i16 0, ptr %flags.i147.i, align 2
  %buf.i148.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %889 = ptrtoint ptr %buf.i148.i to i32
  call void @__asan_store4_noabort(i32 %889)
  store ptr %i2c_write_buffer.i138.i, ptr %buf.i148.i, align 4
  %i2c_adap.i150.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %890 = ptrtoint ptr %i2c_adap.i150.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %i2c_adap.i150.i, align 4
  %call39.i151.i = tail call i32 @i2c_transfer(ptr noundef %891, ptr noundef %msg.i144.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_write_word.exit156.i

dib7000m_write_word.exit156.i:                    ; preds = %if.end6.i154.i, %do.end.i137.i, %do.body.i135.i.dib7000m_write_word.exit156.i_crit_edge
  %revision.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 15
  %892 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %892)
  %893 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %893)
  %cmp37.i = icmp eq i16 %893, 16384
  br i1 %cmp37.i, label %if.then39.i94, label %if.else41.i

if.then39.i94:                                    ; preds = %dib7000m_write_word.exit156.i
  %call.i158.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %cmp.i159.i = icmp slt i32 %call.i158.i, 0
  br i1 %cmp.i159.i, label %do.body.i161.i, label %if.end6.i178.i

do.body.i161.i:                                   ; preds = %if.then39.i94
  %894 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %894)
  %tobool.not.i160.i = icmp eq i32 %894, 0
  br i1 %tobool.not.i160.i, label %do.body.i161.i.if.end43.i_crit_edge, label %do.end.i163.i

do.body.i161.i.if.end43.i_crit_edge:              ; preds = %do.body.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

do.end.i163.i:                                    ; preds = %do.body.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %if.end43.i

if.end6.i178.i:                                   ; preds = %if.then39.i94
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i164.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %895 = ptrtoint ptr %i2c_write_buffer.i164.i to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 7, ptr %i2c_write_buffer.i164.i, align 4
  %arrayidx12.i165.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %896 = ptrtoint ptr %arrayidx12.i165.i to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 1, ptr %arrayidx12.i165.i, align 1
  %arrayidx18.i166.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %897 = ptrtoint ptr %arrayidx18.i166.i to i32
  call void @__asan_store1_noabort(i32 %897)
  store i8 0, ptr %arrayidx18.i166.i, align 2
  %arrayidx23.i167.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %898 = ptrtoint ptr %arrayidx23.i167.i to i32
  call void @__asan_store1_noabort(i32 %898)
  store i8 0, ptr %arrayidx23.i167.i, align 1
  %msg.i168.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %899 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %900 = ptrtoint ptr %899 to i32
  call void @__asan_store4_noabort(i32 %900)
  store i32 262144, ptr %899, align 4
  %i2c_addr.i169.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %901 = ptrtoint ptr %i2c_addr.i169.i to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %i2c_addr.i169.i, align 8
  %903 = lshr i8 %902, 1
  %conv27.i170.i = zext i8 %903 to i16
  %904 = ptrtoint ptr %msg.i168.i to i32
  call void @__asan_store2_noabort(i32 %904)
  store i16 %conv27.i170.i, ptr %msg.i168.i, align 4
  %flags.i171.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %905 = ptrtoint ptr %flags.i171.i to i32
  call void @__asan_store2_noabort(i32 %905)
  store i16 0, ptr %flags.i171.i, align 2
  %buf.i172.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %906 = ptrtoint ptr %buf.i172.i to i32
  call void @__asan_store4_noabort(i32 %906)
  store ptr %i2c_write_buffer.i164.i, ptr %buf.i172.i, align 4
  %i2c_adap.i174.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %907 = ptrtoint ptr %i2c_adap.i174.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %i2c_adap.i174.i, align 4
  %call39.i175.i = tail call i32 @i2c_transfer(ptr noundef %908, ptr noundef %msg.i168.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %if.end43.i

if.else41.i:                                      ; preds = %dib7000m_write_word.exit156.i
  call void @__sanitizer_cov_trace_pc() #8
  %call42.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %763, i16 noundef zeroext 537) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else41.i, %if.end6.i178.i, %do.end.i163.i, %do.body.i161.i.if.end43.i_crit_edge
  %call.i182.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i74, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182.i)
  %cmp.i183.i = icmp slt i32 %call.i182.i, 0
  br i1 %cmp.i183.i, label %do.body.i185.i, label %if.end6.i204.i

do.body.i185.i:                                   ; preds = %if.end43.i
  %909 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %909)
  %tobool.not.i184.i = icmp eq i32 %909, 0
  br i1 %tobool.not.i184.i, label %do.body.i185.i.dib7000m_autosearch_start.exit_crit_edge, label %do.end.i187.i

do.body.i185.i.dib7000m_autosearch_start.exit_crit_edge: ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_autosearch_start.exit

do.end.i187.i:                                    ; preds = %do.body.i185.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i186.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_autosearch_start.exit

if.end6.i204.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i188.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 18
  %910 = ptrtoint ptr %i2c_write_buffer.i188.i to i32
  call void @__asan_store1_noabort(i32 %910)
  store i8 0, ptr %i2c_write_buffer.i188.i, align 4
  %arrayidx12.i189.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 1
  %911 = ptrtoint ptr %arrayidx12.i189.i to i32
  call void @__asan_store1_noabort(i32 %911)
  store i8 0, ptr %arrayidx12.i189.i, align 1
  %912 = lshr i16 %call30.i, 8
  %conv16.i190.i = trunc i16 %912 to i8
  %arrayidx18.i191.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 2
  %913 = ptrtoint ptr %arrayidx18.i191.i to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 %conv16.i190.i, ptr %arrayidx18.i191.i, align 2
  %conv21.i192.i = trunc i16 %call30.i to i8
  %arrayidx23.i193.i = getelementptr %struct.dib7000m_state, ptr %763, i32 0, i32 18, i32 3
  %914 = ptrtoint ptr %arrayidx23.i193.i to i32
  call void @__asan_store1_noabort(i32 %914)
  store i8 %conv21.i192.i, ptr %arrayidx23.i193.i, align 1
  %msg.i194.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17
  %915 = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 2
  %916 = ptrtoint ptr %915 to i32
  call void @__asan_store4_noabort(i32 %916)
  store i32 262144, ptr %915, align 4
  %i2c_addr.i195.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 2
  %917 = ptrtoint ptr %i2c_addr.i195.i to i32
  call void @__asan_load1_noabort(i32 %917)
  %918 = load i8, ptr %i2c_addr.i195.i, align 8
  %919 = lshr i8 %918, 1
  %conv27.i196.i = zext i8 %919 to i16
  %920 = ptrtoint ptr %msg.i194.i to i32
  call void @__asan_store2_noabort(i32 %920)
  store i16 %conv27.i196.i, ptr %msg.i194.i, align 4
  %flags.i197.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 1
  %921 = ptrtoint ptr %flags.i197.i to i32
  call void @__asan_store2_noabort(i32 %921)
  store i16 0, ptr %flags.i197.i, align 2
  %buf.i198.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 17, i32 0, i32 3
  %922 = ptrtoint ptr %buf.i198.i to i32
  call void @__asan_store4_noabort(i32 %922)
  store ptr %i2c_write_buffer.i188.i, ptr %buf.i198.i, align 4
  %i2c_adap.i200.i = getelementptr inbounds %struct.dib7000m_state, ptr %763, i32 0, i32 3
  %923 = ptrtoint ptr %i2c_adap.i200.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %i2c_adap.i200.i, align 4
  %call39.i201.i = tail call i32 @i2c_transfer(ptr noundef %924, ptr noundef %msg.i194.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i74) #6
  br label %dib7000m_autosearch_start.exit

dib7000m_autosearch_start.exit:                   ; preds = %if.end6.i204.i, %do.end.i187.i, %do.body.i185.i.dib7000m_autosearch_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %schan.i) #6
  br label %do.body18

do.body18:                                        ; preds = %dib7000m_autosearch_is_irq.exit.do.body18_crit_edge, %dib7000m_autosearch_start.exit
  %i.0 = phi i32 [ 800, %dib7000m_autosearch_start.exit ], [ %dec, %dib7000m_autosearch_is_irq.exit.do.body18_crit_edge ]
  tail call void @msleep(i32 noundef 1) #6
  %925 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %demodulator_priv, align 4
  %revision.i96 = getelementptr inbounds %struct.dib7000m_state, ptr %926, i32 0, i32 15
  %927 = ptrtoint ptr %revision.i96 to i32
  call void @__asan_load2_noabort(i32 %927)
  %928 = load i16, ptr %revision.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %928)
  %cmp.i97 = icmp eq i16 %928, 16384
  br i1 %cmp.i97, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body18
  %call.i.i98 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %926, i16 noundef zeroext 1793) #6
  %conv.i.i = zext i16 %call.i.i98 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i99, label %if.end7.i.i, label %do.body.i.i100

do.body.i.i100:                                   ; preds = %if.then.i
  %929 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %929)
  %tobool1.not.i.i = icmp eq i32 %929, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i100.cleanup44_crit_edge, label %do.body.i.i100.cleanup.sink.split.i_crit_edge

do.body.i.i100.cleanup.sink.split.i_crit_edge:    ; preds = %do.body.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body.i.i100.cleanup44_crit_edge:               ; preds = %do.body.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end7.i.i:                                      ; preds = %if.then.i
  %and9.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end7.i.i.dib7000m_autosearch_is_irq.exit_crit_edge, label %do.body12.i.i

if.end7.i.i.dib7000m_autosearch_is_irq.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_autosearch_is_irq.exit

do.body12.i.i:                                    ; preds = %if.end7.i.i
  %930 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %930)
  %tobool13.not.i.i = icmp eq i32 %930, 0
  br i1 %tobool13.not.i.i, label %do.body12.i.i.if.end38_crit_edge, label %do.body12.i.i.cleanup.sink.split.i_crit_edge

do.body12.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body12.i.i.if.end38_crit_edge:                 ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else.i:                                        ; preds = %do.body18
  %call.i5.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %926, i16 noundef zeroext 537) #6
  %conv.i6.i = zext i16 %call.i5.i to i32
  %and.i7.i = and i32 %conv.i6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end7.i13.i, label %do.body.i10.i

do.body.i10.i:                                    ; preds = %if.else.i
  %931 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %931)
  %tobool1.not.i9.i = icmp eq i32 %931, 0
  br i1 %tobool1.not.i9.i, label %do.body.i10.i.cleanup44_crit_edge, label %do.body.i10.i.cleanup.sink.split.i_crit_edge

do.body.i10.i.cleanup.sink.split.i_crit_edge:     ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body.i10.i.cleanup44_crit_edge:                ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end7.i13.i:                                    ; preds = %if.else.i
  %and9.i11.i = and i32 %conv.i6.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i11.i)
  %tobool10.not.i12.i = icmp eq i32 %and9.i11.i, 0
  br i1 %tobool10.not.i12.i, label %if.end7.i13.i.dib7000m_autosearch_is_irq.exit_crit_edge, label %do.body12.i15.i

if.end7.i13.i.dib7000m_autosearch_is_irq.exit_crit_edge: ; preds = %if.end7.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_autosearch_is_irq.exit

do.body12.i15.i:                                  ; preds = %if.end7.i13.i
  %932 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %932)
  %tobool13.not.i14.i = icmp eq i32 %932, 0
  br i1 %tobool13.not.i14.i, label %do.body12.i15.i.if.end38_crit_edge, label %do.body12.i15.i.cleanup.sink.split.i_crit_edge

do.body12.i15.i.cleanup.sink.split.i_crit_edge:   ; preds = %do.body12.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body12.i15.i.if.end38_crit_edge:               ; preds = %do.body12.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

cleanup.sink.split.i:                             ; preds = %do.body12.i15.i.cleanup.sink.split.i_crit_edge, %do.body.i10.i.cleanup.sink.split.i_crit_edge, %do.body12.i.i.cleanup.sink.split.i_crit_edge, %do.body.i.i100.cleanup.sink.split.i_crit_edge
  %.str.65.sink.i16.sink.i = phi ptr [ @.str.62, %do.body.i.i100.cleanup.sink.split.i_crit_edge ], [ @.str.65, %do.body12.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.62, %do.body.i10.i.cleanup.sink.split.i_crit_edge ], [ @.str.65, %do.body12.i15.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 1, %do.body.i.i100.cleanup.sink.split.i_crit_edge ], [ 2, %do.body12.i.i.cleanup.sink.split.i_crit_edge ], [ 1, %do.body.i10.i.cleanup.sink.split.i_crit_edge ], [ 2, %do.body12.i15.i.cleanup.sink.split.i_crit_edge ]
  %call19.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.65.sink.i16.sink.i, ptr noundef nonnull @.str.63) #9
  br label %do.body24

dib7000m_autosearch_is_irq.exit:                  ; preds = %if.end7.i13.i.dib7000m_autosearch_is_irq.exit_crit_edge, %if.end7.i.i.dib7000m_autosearch_is_irq.exit_crit_edge
  %dec = add nsw i32 %i.0, -1
  %tobool22.not = icmp eq i32 %i.0, 0
  br i1 %tobool22.not, label %dib7000m_autosearch_is_irq.exit.do.body24_crit_edge, label %dib7000m_autosearch_is_irq.exit.do.body18_crit_edge

dib7000m_autosearch_is_irq.exit.do.body18_crit_edge: ; preds = %dib7000m_autosearch_is_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

dib7000m_autosearch_is_irq.exit.do.body24_crit_edge: ; preds = %dib7000m_autosearch_is_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.body24:                                        ; preds = %dib7000m_autosearch_is_irq.exit.do.body24_crit_edge, %cleanup.sink.split.i
  %retval.0.i101396.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %dib7000m_autosearch_is_irq.exit.do.body24_crit_edge ]
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool25.not = icmp eq i32 %.pr, 0
  br i1 %tobool25.not, label %do.body24.do.end33_crit_edge, label %do.end29

do.body24.do.end33_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i101396.ph) #9
  br label %do.end33

do.end33:                                         ; preds = %do.end29, %do.body24.do.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i101396.ph)
  %switch = icmp ult i32 %retval.0.i101396.ph, 2
  br i1 %switch, label %do.end33.cleanup44_crit_edge, label %do.end33.if.end38_crit_edge

do.end33.if.end38_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end33.cleanup44_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end38:                                         ; preds = %do.end33.if.end38_crit_edge, %do.body12.i15.i.if.end38_crit_edge, %do.body12.i.i.if.end38_crit_edge
  %call39 = tail call i32 @dib7000m_get_frontend(ptr noundef %fe, ptr noundef %dtv_property_cache)
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %lor.lhs.false14.if.end41_crit_edge
  %933 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @dib7000m_set_channel(ptr noundef %934, ptr noundef %dtv_property_cache, i8 noundef zeroext 0) #6
  %i2c_buffer_lock.i.i104 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 20
  %call.i.i105 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp.i.i106 = icmp slt i32 %call.i.i105, 0
  br i1 %cmp.i.i106, label %do.body.i.i108, label %if.end6.i.i123

do.body.i.i108:                                   ; preds = %if.end41
  %935 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %935)
  %tobool.not.i.i107 = icmp eq i32 %935, 0
  br i1 %tobool.not.i.i107, label %do.body.i.i108.dib7000m_write_word.exit.i124_crit_edge, label %do.end.i.i110

do.body.i.i108.dib7000m_write_word.exit.i124_crit_edge: ; preds = %do.body.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i124

do.end.i.i110:                                    ; preds = %do.body.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i124

if.end6.i.i123:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i111 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %936 = ptrtoint ptr %i2c_write_buffer.i.i111 to i32
  call void @__asan_store1_noabort(i32 %936)
  store i8 3, ptr %i2c_write_buffer.i.i111, align 4
  %arrayidx12.i.i112 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %937 = ptrtoint ptr %arrayidx12.i.i112 to i32
  call void @__asan_store1_noabort(i32 %937)
  store i8 -126, ptr %arrayidx12.i.i112, align 1
  %arrayidx18.i.i113 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %938 = ptrtoint ptr %arrayidx18.i.i113 to i32
  call void @__asan_store1_noabort(i32 %938)
  store i8 64, ptr %arrayidx18.i.i113, align 2
  %arrayidx23.i.i114 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %939 = ptrtoint ptr %arrayidx23.i.i114 to i32
  call void @__asan_store1_noabort(i32 %939)
  store i8 0, ptr %arrayidx23.i.i114, align 1
  %msg.i.i115 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %940 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %941 = ptrtoint ptr %940 to i32
  call void @__asan_store4_noabort(i32 %941)
  store i32 262144, ptr %940, align 4
  %i2c_addr.i.i116 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %942 = ptrtoint ptr %i2c_addr.i.i116 to i32
  call void @__asan_load1_noabort(i32 %942)
  %943 = load i8, ptr %i2c_addr.i.i116, align 8
  %944 = lshr i8 %943, 1
  %conv27.i.i117 = zext i8 %944 to i16
  %945 = ptrtoint ptr %msg.i.i115 to i32
  call void @__asan_store2_noabort(i32 %945)
  store i16 %conv27.i.i117, ptr %msg.i.i115, align 4
  %flags.i.i118 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %946 = ptrtoint ptr %flags.i.i118 to i32
  call void @__asan_store2_noabort(i32 %946)
  store i16 0, ptr %flags.i.i118, align 2
  %buf.i.i119 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %947 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_store4_noabort(i32 %947)
  store ptr %i2c_write_buffer.i.i111, ptr %buf.i.i119, align 4
  %i2c_adap.i.i120 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %948 = ptrtoint ptr %i2c_adap.i.i120 to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %i2c_adap.i.i120, align 4
  %call39.i.i121 = tail call i32 @i2c_transfer(ptr noundef %949, ptr noundef %msg.i.i115, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i.i121)
  %cmp40.not.i.i = icmp eq i32 %call39.i.i121, 1
  %cond.i.i122 = select i1 %cmp40.not.i.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit.i124

dib7000m_write_word.exit.i124:                    ; preds = %if.end6.i.i123, %do.end.i.i110, %do.body.i.i108.dib7000m_write_word.exit.i124_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i122, %if.end6.i.i123 ], [ -22, %do.end.i.i110 ], [ -22, %do.body.i.i108.dib7000m_write_word.exit.i124_crit_edge ]
  %call.i100.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %cmp.i101.i = icmp slt i32 %call.i100.i, 0
  br i1 %cmp.i101.i, label %do.body.i103.i, label %if.end6.i120.i

do.body.i103.i:                                   ; preds = %dib7000m_write_word.exit.i124
  %950 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %950)
  %tobool.not.i102.i = icmp eq i32 %950, 0
  br i1 %tobool.not.i102.i, label %do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge, label %do.end.i105.i

do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge: ; preds = %do.body.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit122.i

do.end.i105.i:                                    ; preds = %do.body.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit122.i

if.end6.i120.i:                                   ; preds = %dib7000m_write_word.exit.i124
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i106.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %951 = ptrtoint ptr %i2c_write_buffer.i106.i to i32
  call void @__asan_store1_noabort(i32 %951)
  store i8 3, ptr %i2c_write_buffer.i106.i, align 4
  %arrayidx12.i107.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %952 = ptrtoint ptr %arrayidx12.i107.i to i32
  call void @__asan_store1_noabort(i32 %952)
  store i8 -126, ptr %arrayidx12.i107.i, align 1
  %arrayidx18.i108.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %953 = ptrtoint ptr %arrayidx18.i108.i to i32
  call void @__asan_store1_noabort(i32 %953)
  store i8 0, ptr %arrayidx18.i108.i, align 2
  %arrayidx23.i109.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %954 = ptrtoint ptr %arrayidx23.i109.i to i32
  call void @__asan_store1_noabort(i32 %954)
  store i8 0, ptr %arrayidx23.i109.i, align 1
  %msg.i110.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %955 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %956 = ptrtoint ptr %955 to i32
  call void @__asan_store4_noabort(i32 %956)
  store i32 262144, ptr %955, align 4
  %i2c_addr.i111.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %957 = ptrtoint ptr %i2c_addr.i111.i to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %i2c_addr.i111.i, align 8
  %959 = lshr i8 %958, 1
  %conv27.i112.i = zext i8 %959 to i16
  %960 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store2_noabort(i32 %960)
  store i16 %conv27.i112.i, ptr %msg.i110.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %961 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_store2_noabort(i32 %961)
  store i16 0, ptr %flags.i113.i, align 2
  %buf.i114.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %962 = ptrtoint ptr %buf.i114.i to i32
  call void @__asan_store4_noabort(i32 %962)
  store ptr %i2c_write_buffer.i106.i, ptr %buf.i114.i, align 4
  %i2c_adap.i116.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %963 = ptrtoint ptr %i2c_adap.i116.i to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %i2c_adap.i116.i, align 4
  %call39.i117.i = tail call i32 @i2c_transfer(ptr noundef %964, ptr noundef %msg.i110.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i117.i)
  %cmp40.not.i118.i = icmp eq i32 %call39.i117.i, 1
  %cond.i119.i = select i1 %cmp40.not.i118.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit122.i

dib7000m_write_word.exit122.i:                    ; preds = %if.end6.i120.i, %do.end.i105.i, %do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge
  %retval.0.i121.i = phi i32 [ %cond.i119.i, %if.end6.i120.i ], [ -22, %do.end.i105.i ], [ -22, %do.body.i103.i.dib7000m_write_word.exit122.i_crit_edge ]
  tail call void @msleep(i32 noundef 45) #6
  %mobile_mode.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 1, i32 4
  %965 = ptrtoint ptr %mobile_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %965)
  %966 = load i8, ptr %mobile_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %966)
  %tobool.not.i123.i = icmp eq i8 %966, 0
  %spec.select.i.i = select i1 %tobool.not.i123.i, i16 -32554, i16 -32768
  %revision.i.i125 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 15
  %967 = ptrtoint ptr %revision.i.i125 to i32
  call void @__asan_load2_noabort(i32 %967)
  %968 = load i16, ptr %revision.i.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %968)
  %cmp25.i.i126 = icmp eq i16 %968, 16387
  %offset.0.i.i127 = zext i1 %cmp25.i.i126 to i16
  %call.i276.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i)
  %cmp.i277.i = icmp slt i32 %call.i276.i, 0
  br i1 %cmp.i277.i, label %do.body.i279.i, label %if.end6.i297.i

do.body.i279.i:                                   ; preds = %dib7000m_write_word.exit122.i
  %969 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %969)
  %tobool.not.i278.i = icmp eq i32 %969, 0
  br i1 %tobool.not.i278.i, label %do.body.i279.i.dib7000m_write_word.exit299.i_crit_edge, label %do.end.i281.i

do.body.i279.i.dib7000m_write_word.exit299.i_crit_edge: ; preds = %do.body.i279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit299.i

do.end.i281.i:                                    ; preds = %do.body.i279.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i280.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit299.i

if.end6.i297.i:                                   ; preds = %dib7000m_write_word.exit122.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i282.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %970 = ptrtoint ptr %i2c_write_buffer.i282.i to i32
  call void @__asan_store1_noabort(i32 %970)
  store i8 3, ptr %i2c_write_buffer.i282.i, align 4
  %conv10.i283.i = select i1 %cmp25.i.i126, i8 -120, i8 -121
  %arrayidx12.i284.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %971 = ptrtoint ptr %arrayidx12.i284.i to i32
  call void @__asan_store1_noabort(i32 %971)
  store i8 %conv10.i283.i, ptr %arrayidx12.i284.i, align 1
  %arrayidx18.i285.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %972 = ptrtoint ptr %arrayidx18.i285.i to i32
  call void @__asan_store1_noabort(i32 %972)
  store i8 0, ptr %arrayidx18.i285.i, align 2
  %arrayidx23.i286.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %973 = ptrtoint ptr %arrayidx23.i286.i to i32
  call void @__asan_store1_noabort(i32 %973)
  store i8 0, ptr %arrayidx23.i286.i, align 1
  %msg.i287.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %974 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %975 = ptrtoint ptr %974 to i32
  call void @__asan_store4_noabort(i32 %975)
  store i32 262144, ptr %974, align 4
  %i2c_addr.i288.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %976 = ptrtoint ptr %i2c_addr.i288.i to i32
  call void @__asan_load1_noabort(i32 %976)
  %977 = load i8, ptr %i2c_addr.i288.i, align 8
  %978 = lshr i8 %977, 1
  %conv27.i289.i = zext i8 %978 to i16
  %979 = ptrtoint ptr %msg.i287.i to i32
  call void @__asan_store2_noabort(i32 %979)
  store i16 %conv27.i289.i, ptr %msg.i287.i, align 4
  %flags.i290.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %980 = ptrtoint ptr %flags.i290.i to i32
  call void @__asan_store2_noabort(i32 %980)
  store i16 0, ptr %flags.i290.i, align 2
  %buf.i291.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %981 = ptrtoint ptr %buf.i291.i to i32
  call void @__asan_store4_noabort(i32 %981)
  store ptr %i2c_write_buffer.i282.i, ptr %buf.i291.i, align 4
  %i2c_adap.i293.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %982 = ptrtoint ptr %i2c_adap.i293.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %i2c_adap.i293.i, align 4
  %call39.i294.i = tail call i32 @i2c_transfer(ptr noundef %983, ptr noundef %msg.i287.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit299.i

dib7000m_write_word.exit299.i:                    ; preds = %if.end6.i297.i, %do.end.i281.i, %do.body.i279.i.dib7000m_write_word.exit299.i_crit_edge
  %conv33.i.i128 = or i16 %offset.0.i.i127, 904
  %call34.i.i129 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %934, i16 noundef zeroext %conv33.i.i128, i16 noundef zeroext %spec.select.i.i) #6
  %call.i251.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.i)
  %cmp.i252.i = icmp slt i32 %call.i251.i, 0
  br i1 %cmp.i252.i, label %do.body.i254.i, label %if.end6.i272.i

do.body.i254.i:                                   ; preds = %dib7000m_write_word.exit299.i
  %984 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %984)
  %tobool.not.i253.i = icmp eq i32 %984, 0
  br i1 %tobool.not.i253.i, label %do.body.i254.i.dib7000m_write_word.exit274.i_crit_edge, label %do.end.i256.i

do.body.i254.i.dib7000m_write_word.exit274.i_crit_edge: ; preds = %do.body.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit274.i

do.end.i256.i:                                    ; preds = %do.body.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i255.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit274.i

if.end6.i272.i:                                   ; preds = %dib7000m_write_word.exit299.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i257.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %985 = ptrtoint ptr %i2c_write_buffer.i257.i to i32
  call void @__asan_store1_noabort(i32 %985)
  store i8 3, ptr %i2c_write_buffer.i257.i, align 4
  %conv10.i258.i = select i1 %cmp25.i.i126, i8 -118, i8 -119
  %arrayidx12.i259.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %986 = ptrtoint ptr %arrayidx12.i259.i to i32
  call void @__asan_store1_noabort(i32 %986)
  store i8 %conv10.i258.i, ptr %arrayidx12.i259.i, align 1
  %arrayidx18.i260.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %987 = ptrtoint ptr %arrayidx18.i260.i to i32
  call void @__asan_store1_noabort(i32 %987)
  store i8 1, ptr %arrayidx18.i260.i, align 2
  %arrayidx23.i261.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %988 = ptrtoint ptr %arrayidx23.i261.i to i32
  call void @__asan_store1_noabort(i32 %988)
  store i8 11, ptr %arrayidx23.i261.i, align 1
  %msg.i262.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %989 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %990 = ptrtoint ptr %989 to i32
  call void @__asan_store4_noabort(i32 %990)
  store i32 262144, ptr %989, align 4
  %i2c_addr.i263.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %991 = ptrtoint ptr %i2c_addr.i263.i to i32
  call void @__asan_load1_noabort(i32 %991)
  %992 = load i8, ptr %i2c_addr.i263.i, align 8
  %993 = lshr i8 %992, 1
  %conv27.i264.i = zext i8 %993 to i16
  %994 = ptrtoint ptr %msg.i262.i to i32
  call void @__asan_store2_noabort(i32 %994)
  store i16 %conv27.i264.i, ptr %msg.i262.i, align 4
  %flags.i265.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %995 = ptrtoint ptr %flags.i265.i to i32
  call void @__asan_store2_noabort(i32 %995)
  store i16 0, ptr %flags.i265.i, align 2
  %buf.i266.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %996 = ptrtoint ptr %buf.i266.i to i32
  call void @__asan_store4_noabort(i32 %996)
  store ptr %i2c_write_buffer.i257.i, ptr %buf.i266.i, align 4
  %i2c_adap.i268.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %997 = ptrtoint ptr %i2c_adap.i268.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %i2c_adap.i268.i, align 4
  %call39.i269.i = tail call i32 @i2c_transfer(ptr noundef %998, ptr noundef %msg.i262.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit274.i

dib7000m_write_word.exit274.i:                    ; preds = %if.end6.i272.i, %do.end.i256.i, %do.body.i254.i.dib7000m_write_word.exit274.i_crit_edge
  %call.i227.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %cmp.i228.i = icmp slt i32 %call.i227.i, 0
  br i1 %cmp.i228.i, label %do.body.i230.i, label %if.end6.i247.i

do.body.i230.i:                                   ; preds = %dib7000m_write_word.exit274.i
  %999 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %999)
  %tobool.not.i229.i = icmp eq i32 %999, 0
  br i1 %tobool.not.i229.i, label %do.body.i230.i.dib7000m_write_word.exit249.i_crit_edge, label %do.end.i232.i

do.body.i230.i.dib7000m_write_word.exit249.i_crit_edge: ; preds = %do.body.i230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit249.i

do.end.i232.i:                                    ; preds = %do.body.i230.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i231.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit249.i

if.end6.i247.i:                                   ; preds = %dib7000m_write_word.exit274.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i233.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1000 = ptrtoint ptr %i2c_write_buffer.i233.i to i32
  call void @__asan_store1_noabort(i32 %1000)
  store i8 3, ptr %i2c_write_buffer.i233.i, align 4
  %1001 = zext i1 %cmp25.i.i126 to i8
  %conv10.i.i130 = or i8 %1001, -118
  %arrayidx12.i234.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1002 = ptrtoint ptr %arrayidx12.i234.i to i32
  call void @__asan_store1_noabort(i32 %1002)
  store i8 %conv10.i.i130, ptr %arrayidx12.i234.i, align 1
  %arrayidx18.i235.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1003 = ptrtoint ptr %arrayidx18.i235.i to i32
  call void @__asan_store1_noabort(i32 %1003)
  store i8 0, ptr %arrayidx18.i235.i, align 2
  %arrayidx23.i236.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1004 = ptrtoint ptr %arrayidx23.i236.i to i32
  call void @__asan_store1_noabort(i32 %1004)
  store i8 0, ptr %arrayidx23.i236.i, align 1
  %msg.i237.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1005 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1006 = ptrtoint ptr %1005 to i32
  call void @__asan_store4_noabort(i32 %1006)
  store i32 262144, ptr %1005, align 4
  %i2c_addr.i238.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1007 = ptrtoint ptr %i2c_addr.i238.i to i32
  call void @__asan_load1_noabort(i32 %1007)
  %1008 = load i8, ptr %i2c_addr.i238.i, align 8
  %1009 = lshr i8 %1008, 1
  %conv27.i239.i = zext i8 %1009 to i16
  %1010 = ptrtoint ptr %msg.i237.i to i32
  call void @__asan_store2_noabort(i32 %1010)
  store i16 %conv27.i239.i, ptr %msg.i237.i, align 4
  %flags.i240.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1011 = ptrtoint ptr %flags.i240.i to i32
  call void @__asan_store2_noabort(i32 %1011)
  store i16 0, ptr %flags.i240.i, align 2
  %buf.i241.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1012 = ptrtoint ptr %buf.i241.i to i32
  call void @__asan_store4_noabort(i32 %1012)
  store ptr %i2c_write_buffer.i233.i, ptr %buf.i241.i, align 4
  %i2c_adap.i243.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1013 = ptrtoint ptr %i2c_adap.i243.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %i2c_adap.i243.i, align 4
  %call39.i244.i = tail call i32 @i2c_transfer(ptr noundef %1014, ptr noundef %msg.i237.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit249.i

dib7000m_write_word.exit249.i:                    ; preds = %if.end6.i247.i, %do.end.i232.i, %do.body.i230.i.dib7000m_write_word.exit249.i_crit_edge
  %call.i126.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %cmp.i127.i = icmp slt i32 %call.i126.i, 0
  br i1 %cmp.i127.i, label %do.body.i129.i, label %if.end6.i146.i

do.body.i129.i:                                   ; preds = %dib7000m_write_word.exit249.i
  %1015 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1015)
  %tobool.not.i128.i = icmp eq i32 %1015, 0
  br i1 %tobool.not.i128.i, label %do.body.i129.i.dib7000m_write_word.exit148.i_crit_edge, label %do.end.i131.i

do.body.i129.i.dib7000m_write_word.exit148.i_crit_edge: ; preds = %do.body.i129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit148.i

do.end.i131.i:                                    ; preds = %do.body.i129.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit148.i

if.end6.i146.i:                                   ; preds = %dib7000m_write_word.exit249.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i132.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1016 = ptrtoint ptr %i2c_write_buffer.i132.i to i32
  call void @__asan_store1_noabort(i32 %1016)
  store i8 0, ptr %i2c_write_buffer.i132.i, align 4
  %arrayidx12.i133.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1017 = ptrtoint ptr %arrayidx12.i133.i to i32
  call void @__asan_store1_noabort(i32 %1017)
  store i8 29, ptr %arrayidx12.i133.i, align 1
  %arrayidx18.i134.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1018 = ptrtoint ptr %arrayidx18.i134.i to i32
  call void @__asan_store1_noabort(i32 %1018)
  store i8 16, ptr %arrayidx18.i134.i, align 2
  %arrayidx23.i135.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1019 = ptrtoint ptr %arrayidx23.i135.i to i32
  call void @__asan_store1_noabort(i32 %1019)
  store i8 115, ptr %arrayidx23.i135.i, align 1
  %msg.i136.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1020 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1021 = ptrtoint ptr %1020 to i32
  call void @__asan_store4_noabort(i32 %1021)
  store i32 262144, ptr %1020, align 4
  %i2c_addr.i137.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1022 = ptrtoint ptr %i2c_addr.i137.i to i32
  call void @__asan_load1_noabort(i32 %1022)
  %1023 = load i8, ptr %i2c_addr.i137.i, align 8
  %1024 = lshr i8 %1023, 1
  %conv27.i138.i = zext i8 %1024 to i16
  %1025 = ptrtoint ptr %msg.i136.i to i32
  call void @__asan_store2_noabort(i32 %1025)
  store i16 %conv27.i138.i, ptr %msg.i136.i, align 4
  %flags.i139.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1026 = ptrtoint ptr %flags.i139.i to i32
  call void @__asan_store2_noabort(i32 %1026)
  store i16 0, ptr %flags.i139.i, align 2
  %buf.i140.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1027 = ptrtoint ptr %buf.i140.i to i32
  call void @__asan_store4_noabort(i32 %1027)
  store ptr %i2c_write_buffer.i132.i, ptr %buf.i140.i, align 4
  %i2c_adap.i142.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1028 = ptrtoint ptr %i2c_adap.i142.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %i2c_adap.i142.i, align 4
  %call39.i143.i = tail call i32 @i2c_transfer(ptr noundef %1029, ptr noundef %msg.i136.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i143.i)
  %cmp40.not.i144.i = icmp eq i32 %call39.i143.i, 1
  %cond.i145.i = select i1 %cmp40.not.i144.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit148.i

dib7000m_write_word.exit148.i:                    ; preds = %if.end6.i146.i, %do.end.i131.i, %do.body.i129.i.dib7000m_write_word.exit148.i_crit_edge
  %retval.0.i147.i = phi i32 [ %cond.i145.i, %if.end6.i146.i ], [ -22, %do.end.i131.i ], [ -22, %do.body.i129.i.dib7000m_write_word.exit148.i_crit_edge ]
  %timf.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 10
  %1030 = ptrtoint ptr %timf.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %timf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1031)
  %cmp.i131 = icmp eq i32 %1031, 0
  br i1 %cmp.i131, label %if.then.i132, label %dib7000m_write_word.exit148.i.if.end.i134_crit_edge

dib7000m_write_word.exit148.i.if.end.i134_crit_edge: ; preds = %dib7000m_write_word.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i134

if.then.i132:                                     ; preds = %dib7000m_write_word.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 200) #6
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.then.i132, %dib7000m_write_word.exit148.i.if.end.i134_crit_edge
  %1032 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %transmission_mode, align 4
  %call.i150.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i)
  %cmp.i151.i = icmp slt i32 %call.i150.i, 0
  br i1 %cmp.i151.i, label %do.body.i153.i, label %if.end6.i170.i

do.body.i153.i:                                   ; preds = %if.end.i134
  %1034 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1034)
  %tobool.not.i152.i = icmp eq i32 %1034, 0
  br i1 %tobool.not.i152.i, label %do.body.i153.i.dib7000m_write_word.exit172.i_crit_edge, label %do.end.i155.i

do.body.i153.i.dib7000m_write_word.exit172.i_crit_edge: ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit172.i

do.end.i155.i:                                    ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit172.i

if.end6.i170.i:                                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1033)
  %switch.selectcmp89.i = icmp eq i32 %1033, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1033)
  %switch.selectcmp.i = icmp eq i32 %1033, 3
  %i2c_write_buffer.i156.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1035 = ptrtoint ptr %i2c_write_buffer.i156.i to i32
  call void @__asan_store1_noabort(i32 %1035)
  store i8 0, ptr %i2c_write_buffer.i156.i, align 4
  %arrayidx12.i157.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1036 = ptrtoint ptr %arrayidx12.i157.i to i32
  call void @__asan_store1_noabort(i32 %1036)
  store i8 26, ptr %arrayidx12.i157.i, align 1
  %1037 = select i1 %switch.selectcmp.i, i8 -122, i8 -106
  %conv16.i.i135 = select i1 %switch.selectcmp89.i, i8 118, i8 %1037
  %arrayidx18.i158.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1038 = ptrtoint ptr %arrayidx18.i158.i to i32
  call void @__asan_store1_noabort(i32 %1038)
  store i8 %conv16.i.i135, ptr %arrayidx18.i158.i, align 2
  %arrayidx23.i159.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1039 = ptrtoint ptr %arrayidx23.i159.i to i32
  call void @__asan_store1_noabort(i32 %1039)
  store i8 -128, ptr %arrayidx23.i159.i, align 1
  %msg.i160.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1040 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1041 = ptrtoint ptr %1040 to i32
  call void @__asan_store4_noabort(i32 %1041)
  store i32 262144, ptr %1040, align 4
  %i2c_addr.i161.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1042 = ptrtoint ptr %i2c_addr.i161.i to i32
  call void @__asan_load1_noabort(i32 %1042)
  %1043 = load i8, ptr %i2c_addr.i161.i, align 8
  %1044 = lshr i8 %1043, 1
  %conv27.i162.i = zext i8 %1044 to i16
  %1045 = ptrtoint ptr %msg.i160.i to i32
  call void @__asan_store2_noabort(i32 %1045)
  store i16 %conv27.i162.i, ptr %msg.i160.i, align 4
  %flags.i163.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1046 = ptrtoint ptr %flags.i163.i to i32
  call void @__asan_store2_noabort(i32 %1046)
  store i16 0, ptr %flags.i163.i, align 2
  %buf.i164.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1047 = ptrtoint ptr %buf.i164.i to i32
  call void @__asan_store4_noabort(i32 %1047)
  store ptr %i2c_write_buffer.i156.i, ptr %buf.i164.i, align 4
  %i2c_adap.i166.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1048 = ptrtoint ptr %i2c_adap.i166.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %i2c_adap.i166.i, align 4
  %call39.i167.i = tail call i32 @i2c_transfer(ptr noundef %1049, ptr noundef %msg.i160.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i167.i)
  %cmp40.not.i168.i = icmp eq i32 %call39.i167.i, 1
  %cond.i169.i = select i1 %cmp40.not.i168.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit172.i

dib7000m_write_word.exit172.i:                    ; preds = %if.end6.i170.i, %do.end.i155.i, %do.body.i153.i.dib7000m_write_word.exit172.i_crit_edge
  %retval.0.i171.i = phi i32 [ %cond.i169.i, %if.end6.i170.i ], [ -22, %do.end.i155.i ], [ -22, %do.body.i153.i.dib7000m_write_word.exit172.i_crit_edge ]
  %1050 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load i32, ptr %transmission_mode, align 4
  %call.i174.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %cmp.i175.i = icmp slt i32 %call.i174.i, 0
  br i1 %cmp.i175.i, label %do.body.i177.i, label %if.end6.i195.i

do.body.i177.i:                                   ; preds = %dib7000m_write_word.exit172.i
  %1052 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1052)
  %tobool.not.i176.i = icmp eq i32 %1052, 0
  br i1 %tobool.not.i176.i, label %do.body.i177.i.dib7000m_write_word.exit197.i_crit_edge, label %do.end.i179.i

do.body.i177.i.dib7000m_write_word.exit197.i_crit_edge: ; preds = %do.body.i177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit197.i

do.end.i179.i:                                    ; preds = %do.body.i177.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit197.i

if.end6.i195.i:                                   ; preds = %dib7000m_write_word.exit172.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1051)
  %switch.selectcmp97.i = icmp eq i32 %1051, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1051)
  %switch.selectcmp95.i = icmp eq i32 %1051, 3
  %i2c_write_buffer.i180.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1053 = ptrtoint ptr %i2c_write_buffer.i180.i to i32
  call void @__asan_store1_noabort(i32 %1053)
  store i8 0, ptr %i2c_write_buffer.i180.i, align 4
  %arrayidx12.i181.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1054 = ptrtoint ptr %arrayidx12.i181.i to i32
  call void @__asan_store1_noabort(i32 %1054)
  store i8 32, ptr %arrayidx12.i181.i, align 1
  %arrayidx18.i182.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1055 = ptrtoint ptr %arrayidx18.i182.i to i32
  call void @__asan_store1_noabort(i32 %1055)
  store i8 0, ptr %arrayidx18.i182.i, align 2
  %1056 = select i1 %switch.selectcmp95.i, i8 7, i8 8
  %conv21.i183.i = select i1 %switch.selectcmp97.i, i8 6, i8 %1056
  %arrayidx23.i184.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1057 = ptrtoint ptr %arrayidx23.i184.i to i32
  call void @__asan_store1_noabort(i32 %1057)
  store i8 %conv21.i183.i, ptr %arrayidx23.i184.i, align 1
  %msg.i185.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1058 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1059 = ptrtoint ptr %1058 to i32
  call void @__asan_store4_noabort(i32 %1059)
  store i32 262144, ptr %1058, align 4
  %i2c_addr.i186.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1060 = ptrtoint ptr %i2c_addr.i186.i to i32
  call void @__asan_load1_noabort(i32 %1060)
  %1061 = load i8, ptr %i2c_addr.i186.i, align 8
  %1062 = lshr i8 %1061, 1
  %conv27.i187.i = zext i8 %1062 to i16
  %1063 = ptrtoint ptr %msg.i185.i to i32
  call void @__asan_store2_noabort(i32 %1063)
  store i16 %conv27.i187.i, ptr %msg.i185.i, align 4
  %flags.i188.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1064 = ptrtoint ptr %flags.i188.i to i32
  call void @__asan_store2_noabort(i32 %1064)
  store i16 0, ptr %flags.i188.i, align 2
  %buf.i189.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1065 = ptrtoint ptr %buf.i189.i to i32
  call void @__asan_store4_noabort(i32 %1065)
  store ptr %i2c_write_buffer.i180.i, ptr %buf.i189.i, align 4
  %i2c_adap.i191.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1066 = ptrtoint ptr %i2c_adap.i191.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %i2c_adap.i191.i, align 4
  %call39.i192.i = tail call i32 @i2c_transfer(ptr noundef %1067, ptr noundef %msg.i185.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i192.i)
  %cmp40.not.i193.i = icmp eq i32 %call39.i192.i, 1
  %cond.i194.i = select i1 %cmp40.not.i193.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit197.i

dib7000m_write_word.exit197.i:                    ; preds = %if.end6.i195.i, %do.end.i179.i, %do.body.i177.i.dib7000m_write_word.exit197.i_crit_edge
  %retval.0.i196.i = phi i32 [ %cond.i194.i, %if.end6.i195.i ], [ -22, %do.end.i179.i ], [ -22, %do.body.i177.i.dib7000m_write_word.exit197.i_crit_edge ]
  %1068 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load i32, ptr %transmission_mode, align 4
  %call.i199.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.i)
  %cmp.i200.i = icmp slt i32 %call.i199.i, 0
  br i1 %cmp.i200.i, label %do.body.i202.i, label %if.end6.i220.i

do.body.i202.i:                                   ; preds = %dib7000m_write_word.exit197.i
  %1070 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1070)
  %tobool.not.i201.i = icmp eq i32 %1070, 0
  br i1 %tobool.not.i201.i, label %do.body.i202.i.dib7000m_write_word.exit222.i_crit_edge, label %do.end.i204.i

do.body.i202.i.dib7000m_write_word.exit222.i_crit_edge: ; preds = %do.body.i202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit222.i

do.end.i204.i:                                    ; preds = %do.body.i202.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i203.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit222.i

if.end6.i220.i:                                   ; preds = %dib7000m_write_word.exit197.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1069)
  %switch.selectcmp93.i = icmp eq i32 %1069, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1069)
  %switch.selectcmp91.i = icmp eq i32 %1069, 3
  %i2c_write_buffer.i205.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1071 = ptrtoint ptr %i2c_write_buffer.i205.i to i32
  call void @__asan_store1_noabort(i32 %1071)
  store i8 0, ptr %i2c_write_buffer.i205.i, align 4
  %arrayidx12.i206.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1072 = ptrtoint ptr %arrayidx12.i206.i to i32
  call void @__asan_store1_noabort(i32 %1072)
  store i8 33, ptr %arrayidx12.i206.i, align 1
  %arrayidx18.i207.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1073 = ptrtoint ptr %arrayidx18.i207.i to i32
  call void @__asan_store1_noabort(i32 %1073)
  store i8 0, ptr %arrayidx18.i207.i, align 2
  %1074 = select i1 %switch.selectcmp91.i, i8 7, i8 8
  %conv21.i208.i = select i1 %switch.selectcmp93.i, i8 6, i8 %1074
  %arrayidx23.i209.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1075 = ptrtoint ptr %arrayidx23.i209.i to i32
  call void @__asan_store1_noabort(i32 %1075)
  store i8 %conv21.i208.i, ptr %arrayidx23.i209.i, align 1
  %msg.i210.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1076 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1077 = ptrtoint ptr %1076 to i32
  call void @__asan_store4_noabort(i32 %1077)
  store i32 262144, ptr %1076, align 4
  %i2c_addr.i211.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1078 = ptrtoint ptr %i2c_addr.i211.i to i32
  call void @__asan_load1_noabort(i32 %1078)
  %1079 = load i8, ptr %i2c_addr.i211.i, align 8
  %1080 = lshr i8 %1079, 1
  %conv27.i212.i = zext i8 %1080 to i16
  %1081 = ptrtoint ptr %msg.i210.i to i32
  call void @__asan_store2_noabort(i32 %1081)
  store i16 %conv27.i212.i, ptr %msg.i210.i, align 4
  %flags.i213.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1082 = ptrtoint ptr %flags.i213.i to i32
  call void @__asan_store2_noabort(i32 %1082)
  store i16 0, ptr %flags.i213.i, align 2
  %buf.i214.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1083 = ptrtoint ptr %buf.i214.i to i32
  call void @__asan_store4_noabort(i32 %1083)
  store ptr %i2c_write_buffer.i205.i, ptr %buf.i214.i, align 4
  %i2c_adap.i216.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1084 = ptrtoint ptr %i2c_adap.i216.i to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %i2c_adap.i216.i, align 4
  %call39.i217.i = tail call i32 @i2c_transfer(ptr noundef %1085, ptr noundef %msg.i210.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i217.i)
  %cmp40.not.i218.i = icmp eq i32 %call39.i217.i, 1
  %cond.i219.i = select i1 %cmp40.not.i218.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit222.i

dib7000m_write_word.exit222.i:                    ; preds = %if.end6.i220.i, %do.end.i204.i, %do.body.i202.i.dib7000m_write_word.exit222.i_crit_edge
  %retval.0.i221.i = phi i32 [ %cond.i219.i, %if.end6.i220.i ], [ -22, %do.end.i204.i ], [ -22, %do.body.i202.i.dib7000m_write_word.exit222.i_crit_edge ]
  %call51.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %934, i16 noundef zeroext 535) #6
  %1086 = and i16 %call51.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1086)
  %tobool.not.i136 = icmp eq i16 %1086, 0
  br i1 %tobool.not.i136, label %dib7000m_write_word.exit222.i.dib7000m_tune.exit_crit_edge, label %if.then53.i

dib7000m_write_word.exit222.i.dib7000m_tune.exit_crit_edge: ; preds = %dib7000m_write_word.exit222.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_tune.exit

if.then53.i:                                      ; preds = %dib7000m_write_word.exit222.i
  %call.i223.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %934, i16 noundef zeroext 436) #6
  %conv.i.i137 = zext i16 %call.i223.i to i32
  %shl.i.i138 = shl nuw i32 %conv.i.i137, 16
  %call1.i.i = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %934, i16 noundef zeroext 437) #6
  %conv2.i.i = zext i16 %call1.i.i to i32
  %or.i.i139 = or i32 %shl.i.i138, %conv2.i.i
  %mul.i.i140 = mul i32 %or.i.i139, 160
  %current_bandwidth.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 8
  %1087 = ptrtoint ptr %current_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %current_bandwidth.i.i, align 8
  %div.i.i141 = udiv i32 %1088, 50
  %div3.i.i = udiv i32 %mul.i.i140, %div.i.i141
  %1089 = ptrtoint ptr %timf.i to i32
  call void @__asan_store4_noabort(i32 %1089)
  store i32 %div3.i.i, ptr %timf.i, align 8
  %call.i.i.i142 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i142)
  %cmp.i.i.i143 = icmp slt i32 %call.i.i.i142, 0
  br i1 %cmp.i.i.i143, label %do.body.i.i.i145, label %if.end6.i.i.i161

do.body.i.i.i145:                                 ; preds = %if.then53.i
  %1090 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1090)
  %tobool.not.i.i.i144 = icmp eq i32 %1090, 0
  br i1 %tobool.not.i.i.i144, label %do.body.i.i.i145.dib7000m_write_word.exit.i.i162_crit_edge, label %do.end.i.i.i147

do.body.i.i.i145.dib7000m_write_word.exit.i.i162_crit_edge: ; preds = %do.body.i.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i.i162

do.end.i.i.i147:                                  ; preds = %do.body.i.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i.i162

if.end6.i.i.i161:                                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i.i.i148 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1091 = ptrtoint ptr %i2c_write_buffer.i.i.i148 to i32
  call void @__asan_store1_noabort(i32 %1091)
  store i8 0, ptr %i2c_write_buffer.i.i.i148, align 4
  %arrayidx12.i.i.i149 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1092 = ptrtoint ptr %arrayidx12.i.i.i149 to i32
  call void @__asan_store1_noabort(i32 %1092)
  store i8 23, ptr %arrayidx12.i.i.i149, align 1
  %1093 = lshr i16 %call.i223.i, 8
  %conv16.i.i.i150 = trunc i16 %1093 to i8
  %arrayidx18.i.i.i151 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1094 = ptrtoint ptr %arrayidx18.i.i.i151 to i32
  call void @__asan_store1_noabort(i32 %1094)
  store i8 %conv16.i.i.i150, ptr %arrayidx18.i.i.i151, align 2
  %conv21.i.i.i152 = trunc i16 %call.i223.i to i8
  %arrayidx23.i.i.i153 = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1095 = ptrtoint ptr %arrayidx23.i.i.i153 to i32
  call void @__asan_store1_noabort(i32 %1095)
  store i8 %conv21.i.i.i152, ptr %arrayidx23.i.i.i153, align 1
  %msg.i.i.i154 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1096 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1097 = ptrtoint ptr %1096 to i32
  call void @__asan_store4_noabort(i32 %1097)
  store i32 262144, ptr %1096, align 4
  %i2c_addr.i.i.i155 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1098 = ptrtoint ptr %i2c_addr.i.i.i155 to i32
  call void @__asan_load1_noabort(i32 %1098)
  %1099 = load i8, ptr %i2c_addr.i.i.i155, align 8
  %1100 = lshr i8 %1099, 1
  %conv27.i.i.i156 = zext i8 %1100 to i16
  %1101 = ptrtoint ptr %msg.i.i.i154 to i32
  call void @__asan_store2_noabort(i32 %1101)
  store i16 %conv27.i.i.i156, ptr %msg.i.i.i154, align 4
  %flags.i.i.i157 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1102 = ptrtoint ptr %flags.i.i.i157 to i32
  call void @__asan_store2_noabort(i32 %1102)
  store i16 0, ptr %flags.i.i.i157, align 2
  %buf.i.i.i158 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1103 = ptrtoint ptr %buf.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %1103)
  store ptr %i2c_write_buffer.i.i.i148, ptr %buf.i.i.i158, align 4
  %i2c_adap.i.i.i159 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1104 = ptrtoint ptr %i2c_adap.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %i2c_adap.i.i.i159, align 4
  %call39.i.i.i160 = tail call i32 @i2c_transfer(ptr noundef %1105, ptr noundef %msg.i.i.i154, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit.i.i162

dib7000m_write_word.exit.i.i162:                  ; preds = %if.end6.i.i.i161, %do.end.i.i.i147, %do.body.i.i.i145.dib7000m_write_word.exit.i.i162_crit_edge
  %call.i24.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i104, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i)
  %cmp.i25.i.i = icmp slt i32 %call.i24.i.i, 0
  br i1 %cmp.i25.i.i, label %do.body.i27.i.i, label %if.end6.i46.i.i

do.body.i27.i.i:                                  ; preds = %dib7000m_write_word.exit.i.i162
  %1106 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1106)
  %tobool.not.i26.i.i = icmp eq i32 %1106, 0
  br i1 %tobool.not.i26.i.i, label %do.body.i27.i.i.dib7000m_tune.exit_crit_edge, label %do.end.i29.i.i

do.body.i27.i.i.dib7000m_tune.exit_crit_edge:     ; preds = %do.body.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_tune.exit

do.end.i29.i.i:                                   ; preds = %do.body.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i28.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit48.i.i

if.end6.i46.i.i:                                  ; preds = %dib7000m_write_word.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i30.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 18
  %1107 = ptrtoint ptr %i2c_write_buffer.i30.i.i to i32
  call void @__asan_store1_noabort(i32 %1107)
  store i8 0, ptr %i2c_write_buffer.i30.i.i, align 4
  %arrayidx12.i31.i.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 1
  %1108 = ptrtoint ptr %arrayidx12.i31.i.i to i32
  call void @__asan_store1_noabort(i32 %1108)
  store i8 24, ptr %arrayidx12.i31.i.i, align 1
  %1109 = lshr i16 %call1.i.i, 8
  %conv16.i32.i.i = trunc i16 %1109 to i8
  %arrayidx18.i33.i.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 2
  %1110 = ptrtoint ptr %arrayidx18.i33.i.i to i32
  call void @__asan_store1_noabort(i32 %1110)
  store i8 %conv16.i32.i.i, ptr %arrayidx18.i33.i.i, align 2
  %conv21.i34.i.i = trunc i16 %call1.i.i to i8
  %arrayidx23.i35.i.i = getelementptr %struct.dib7000m_state, ptr %934, i32 0, i32 18, i32 3
  %1111 = ptrtoint ptr %arrayidx23.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %1111)
  store i8 %conv21.i34.i.i, ptr %arrayidx23.i35.i.i, align 1
  %msg.i36.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17
  %1112 = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 2
  %1113 = ptrtoint ptr %1112 to i32
  call void @__asan_store4_noabort(i32 %1113)
  store i32 262144, ptr %1112, align 4
  %i2c_addr.i37.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 2
  %1114 = ptrtoint ptr %i2c_addr.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %1114)
  %1115 = load i8, ptr %i2c_addr.i37.i.i, align 8
  %1116 = lshr i8 %1115, 1
  %conv27.i38.i.i = zext i8 %1116 to i16
  %1117 = ptrtoint ptr %msg.i36.i.i to i32
  call void @__asan_store2_noabort(i32 %1117)
  store i16 %conv27.i38.i.i, ptr %msg.i36.i.i, align 4
  %flags.i39.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 1
  %1118 = ptrtoint ptr %flags.i39.i.i to i32
  call void @__asan_store2_noabort(i32 %1118)
  store i16 0, ptr %flags.i39.i.i, align 2
  %buf.i40.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 17, i32 0, i32 3
  %1119 = ptrtoint ptr %buf.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %1119)
  store ptr %i2c_write_buffer.i30.i.i, ptr %buf.i40.i.i, align 4
  %i2c_adap.i42.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 3
  %1120 = ptrtoint ptr %i2c_adap.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %i2c_adap.i42.i.i, align 4
  %call39.i43.i.i = tail call i32 @i2c_transfer(ptr noundef %1121, ptr noundef %msg.i36.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i104) #6
  br label %dib7000m_write_word.exit48.i.i

dib7000m_write_word.exit48.i.i:                   ; preds = %if.end6.i46.i.i, %do.end.i29.i.i
  %.pr.i.i163 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i163)
  %tobool.not.i224.i = icmp eq i32 %.pr.i.i163, 0
  br i1 %tobool.not.i224.i, label %dib7000m_write_word.exit48.i.i.dib7000m_tune.exit_crit_edge, label %do.end.i225.i

dib7000m_write_word.exit48.i.i.dib7000m_tune.exit_crit_edge: ; preds = %dib7000m_write_word.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_tune.exit

do.end.i225.i:                                    ; preds = %dib7000m_write_word.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %1122 = ptrtoint ptr %timf.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load i32, ptr %timf.i, align 8
  %timf_default.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %934, i32 0, i32 11
  %1124 = ptrtoint ptr %timf_default.i.i to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load i32, ptr %timf_default.i.i, align 4
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %1123, i32 noundef %1125) #9
  br label %dib7000m_tune.exit

dib7000m_tune.exit:                               ; preds = %do.end.i225.i, %dib7000m_write_word.exit48.i.i.dib7000m_tune.exit_crit_edge, %do.body.i27.i.i.dib7000m_tune.exit_crit_edge, %dib7000m_write_word.exit222.i.dib7000m_tune.exit_crit_edge
  %or2.i = or i32 %retval.0.i121.i, %retval.0.i.i
  %or4.i = or i32 %or2.i, %retval.0.i147.i
  %or16.i = or i32 %or4.i, %retval.0.i171.i
  %or33.i = or i32 %or16.i, %retval.0.i196.i
  %or50.i = or i32 %or33.i, %retval.0.i221.i
  %1126 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load i32, ptr %bandwidth_hz, align 4
  %div.i = udiv i32 %1127, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %934, i32 noundef %div.i) #6
  %call43 = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %1, i32 noundef 5)
  br label %cleanup44

cleanup44:                                        ; preds = %dib7000m_tune.exit, %do.end33.cleanup44_crit_edge, %do.body.i10.i.cleanup44_crit_edge, %do.body.i.i100.cleanup44_crit_edge
  %retval.1 = phi i32 [ %or50.i, %dib7000m_tune.exit ], [ 0, %do.end33.cleanup44_crit_edge ], [ 0, %do.body.i.i100.cleanup44_crit_edge ], [ 0, %do.body.i10.i.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib7000m_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %fep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 480)
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 4
  %2 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %inversion, align 4
  %current_bandwidth = getelementptr inbounds %struct.dib7000m_state, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %current_bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_bandwidth, align 8
  %mul = mul i32 %4, 1000
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %bandwidth_hz, align 4
  %conv = zext i16 %call to i32
  %6 = lshr i32 %conv, 8
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch = icmp ult i32 %and, 2
  br i1 %switch, label %sw.epilog.sink.split, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %transmission_mode2 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 6
  %7 = ptrtoint ptr %transmission_mode2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %transmission_mode2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %and4 = and i32 %conv, 3
  %guard_interval11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %8 = ptrtoint ptr %guard_interval11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and4, ptr %guard_interval11, align 4
  %.mask = and i32 %conv, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %.mask)
  %switch.selectcmp = icmp eq i32 %.mask, 16384
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call)
  %switch.selectcmp80 = icmp ult i16 %call, 16384
  %switch.select81 = select i1 %switch.selectcmp80, i32 0, i32 %switch.select
  %modulation20 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 1
  %9 = ptrtoint ptr %modulation20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.select81, ptr %modulation20, align 4
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %10 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %hierarchy, align 4
  %11 = lshr i32 %conv, 5
  %and24 = and i32 %11, 7
  %switch.tableidx = add nsw i32 %and24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 5
  br i1 %12, label %switch.lookup, label %sw.epilog.sw.epilog35_crit_edge

sw.epilog.sw.epilog35_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog35

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000m_get_frontend, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog35_crit_edge
  %.sink78 = phi i32 [ %switch.load, %switch.lookup ], [ 7, %sw.epilog.sw.epilog35_crit_edge ]
  %code_rate_HP34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %14 = ptrtoint ptr %code_rate_HP34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink78, ptr %code_rate_HP34, align 4
  %15 = lshr i32 %conv, 2
  %and38 = and i32 %15, 7
  %switch.tableidx83 = add nsw i32 %and38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx83)
  %16 = icmp ult i32 %switch.tableidx83, 5
  br i1 %16, label %switch.lookup82, label %sw.epilog35.sw.epilog49_crit_edge

sw.epilog35.sw.epilog49_crit_edge:                ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog49

switch.lookup82:                                  ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep84 = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000m_get_frontend.69, i32 0, i32 %switch.tableidx83
  %17 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load85 = load i32, ptr %switch.gep84, align 4
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %switch.lookup82, %sw.epilog35.sw.epilog49_crit_edge
  %.sink79 = phi i32 [ %switch.load85, %switch.lookup82 ], [ 7, %sw.epilog35.sw.epilog49_crit_edge ]
  %code_rate_LP48 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %18 = ptrtoint ptr %code_rate_LP48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink79, ptr %code_rate_LP48, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 535)
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @dib7000m_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 526)
  %conv = zext i16 %call to i32
  %shl = shl nuw i32 %conv, 16
  %call1 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 527)
  %conv2 = zext i16 %call1 to i32
  %or = or i32 %shl, %conv2
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 390)
  %2 = xor i16 %call, -1
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib7000m_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %snr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7000m_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1, i16 noundef zeroext 534)
  %conv = zext i16 %call to i32
  %2 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib7000m_restart_agc(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %1 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -126, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %arrayidx18.i, align 2
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %5 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262144, ptr %5, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_addr.i, align 8
  %9 = lshr i8 %8, 1
  %conv27.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %13 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %14, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %call.i4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i5 = icmp slt i32 %call.i4, 0
  br i1 %cmp.i5, label %do.body.i7, label %if.end6.i24

do.body.i7:                                       ; preds = %dib7000m_write_word.exit
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %do.body.i7.dib7000m_write_word.exit26_crit_edge, label %do.end.i9

do.body.i7.dib7000m_write_word.exit26_crit_edge:  ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26

do.end.i9:                                        ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26

if.end6.i24:                                      ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i10 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %16 = ptrtoint ptr %i2c_write_buffer.i10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %i2c_write_buffer.i10, align 4
  %arrayidx12.i11 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %arrayidx12.i11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -126, ptr %arrayidx12.i11, align 1
  %arrayidx18.i12 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %arrayidx18.i12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx18.i12, align 2
  %arrayidx23.i13 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %arrayidx23.i13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx23.i13, align 1
  %msg.i14 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %20 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262144, ptr %20, align 4
  %i2c_addr.i15 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %i2c_addr.i15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_addr.i15, align 8
  %24 = lshr i8 %23, 1
  %conv27.i16 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv27.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i17, align 2
  %buf.i18 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %i2c_write_buffer.i10, ptr %buf.i18, align 4
  %i2c_adap.i20 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %28 = ptrtoint ptr %i2c_adap.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adap.i20, align 4
  %call39.i21 = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %msg.i14, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit26

dib7000m_write_word.exit26:                       ; preds = %if.end6.i24, %do.end.i9, %do.body.i7.dib7000m_write_word.exit26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dib7000m_set_channel(ptr noundef %state, ptr nocapture noundef readonly %ch, i8 noundef zeroext %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %div = udiv i32 %1, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %state, i32 noundef %div)
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 6
  %2 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 3
  %switch.select = select i1 %switch.selectcmp, i16 256, i16 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp205 = icmp eq i32 %3, 0
  %switch.select206 = select i1 %switch.selectcmp205, i16 0, i16 %switch.select
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 8
  %4 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %guard_interval, align 4
  %extract.t427 = trunc i16 %switch.select206 to i8
  %extract434 = lshr i16 %switch.select206, 8
  %extract.t435 = trunc i16 %extract434 to i8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %5, label %sw.bb23 [
    i32 0, label %entry.sw.epilog27_crit_edge
    i32 1, label %sw.bb14
    i32 3, label %sw.bb18
  ]

entry.sw.epilog27_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t426 = or i8 %extract.t427, 32
  br label %sw.epilog27

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t425 = or i8 %extract.t427, 96
  br label %sw.epilog27

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t424 = or i8 %extract.t427, 64
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb23, %sw.bb18, %sw.bb14, %entry.sw.epilog27_crit_edge
  %value.1.off0 = phi i8 [ %extract.t424, %sw.bb23 ], [ %extract.t425, %sw.bb18 ], [ %extract.t426, %sw.bb14 ], [ %extract.t427, %entry.sw.epilog27_crit_edge ]
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulation, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %8, label %sw.bb37 [
    i32 0, label %sw.epilog27.sw.epilog41_crit_edge
    i32 1, label %sw.bb32
  ]

sw.epilog27.sw.epilog41_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog41

sw.bb32:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t417 = or i8 %value.1.off0, 8
  br label %sw.epilog41

sw.bb37:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t = or i8 %value.1.off0, 16
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.bb37, %sw.bb32, %sw.epilog27.sw.epilog41_crit_edge
  %value.2.off0 = phi i8 [ %extract.t, %sw.bb37 ], [ %extract.t417, %sw.bb32 ], [ %value.1.off0, %sw.epilog27.sw.epilog41_crit_edge ]
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 20
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %sw.epilog41
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i.dib7000m_write_word.exit_crit_edge, label %do.end.i

do.body.i.dib7000m_write_word.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit

if.end6.i:                                        ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %11 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %i2c_write_buffer.i, align 4
  %arrayidx12.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx18.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %extract.t435, ptr %arrayidx18.i, align 2
  %conv21.i = or i8 %value.2.off0, 1
  %arrayidx23.i = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262144, ptr %15, align 4
  %i2c_addr.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %17 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr.i, align 8
  %19 = lshr i8 %18, 1
  %conv27.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv27.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %23 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap.i, align 4
  %call39.i = tail call i32 @i2c_transfer(ptr noundef %24, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit

dib7000m_write_word.exit:                         ; preds = %if.end6.i, %do.end.i, %do.body.i.dib7000m_write_word.exit_crit_edge
  %call.i212 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp.i213 = icmp slt i32 %call.i212, 0
  br i1 %cmp.i213, label %do.body.i215, label %if.end6.i234

do.body.i215:                                     ; preds = %dib7000m_write_word.exit
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i214 = icmp eq i32 %25, 0
  br i1 %tobool.not.i214, label %do.body.i215.dib7000m_write_word.exit236_crit_edge, label %do.end.i217

do.body.i215.dib7000m_write_word.exit236_crit_edge: ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit236

do.end.i217:                                      ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit236

if.end6.i234:                                     ; preds = %dib7000m_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i8 %seq, 4
  %i2c_write_buffer.i218 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %26 = ptrtoint ptr %i2c_write_buffer.i218 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %i2c_write_buffer.i218, align 4
  %arrayidx12.i219 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %arrayidx12.i219 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %arrayidx12.i219, align 1
  %28 = lshr i8 %seq, 4
  %arrayidx18.i221 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %29 = ptrtoint ptr %arrayidx18.i221 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx18.i221, align 2
  %arrayidx23.i223 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %arrayidx23.i223 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %shl, ptr %arrayidx23.i223, align 1
  %msg.i224 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %31 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 262144, ptr %31, align 4
  %i2c_addr.i225 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %33 = ptrtoint ptr %i2c_addr.i225 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c_addr.i225, align 8
  %35 = lshr i8 %34, 1
  %conv27.i226 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i224 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv27.i226, ptr %msg.i224, align 4
  %flags.i227 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i227 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i227, align 2
  %buf.i228 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i228 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %i2c_write_buffer.i218, ptr %buf.i228, align 4
  %i2c_adap.i230 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %39 = ptrtoint ptr %i2c_adap.i230 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_adap.i230, align 4
  %call39.i231 = tail call i32 @i2c_transfer(ptr noundef %40, ptr noundef %msg.i224, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit236

dib7000m_write_word.exit236:                      ; preds = %if.end6.i234, %do.end.i217, %do.body.i215.dib7000m_write_word.exit236_crit_edge
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 9
  %41 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp = icmp eq i32 %42, 1
  %spec.select = select i1 %cmp, i16 81, i16 65
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %ch, i32 0, i32 11
  %43 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %code_rate_HP, align 4
  %switch.tableidx = add i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 6
  br i1 %45, label %switch.lookup, label %dib7000m_write_word.exit236.sw.epilog83_crit_edge

dib7000m_write_word.exit236.sw.epilog83_crit_edge: ; preds = %dib7000m_write_word.exit236
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog83

switch.lookup:                                    ; preds = %dib7000m_write_word.exit236
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.dib7000m_set_channel, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %46)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %switch.lookup, %dib7000m_write_word.exit236.sw.epilog83_crit_edge
  %.sink = phi i16 [ %switch.load, %switch.lookup ], [ 2, %dib7000m_write_word.exit236.sw.epilog83_crit_edge ]
  %conv82 = or i16 %spec.select, %.sink
  %reg_offs = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 5
  %47 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg_offs, align 8
  %conv84 = zext i8 %48 to i16
  %add = add nuw nsw i16 %conv84, 267
  %call86 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add, i16 noundef zeroext %conv82)
  %call.i238 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.i239 = icmp slt i32 %call.i238, 0
  br i1 %cmp.i239, label %do.body.i241, label %if.end6.i258

do.body.i241:                                     ; preds = %sw.epilog83
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i240 = icmp eq i32 %49, 0
  br i1 %tobool.not.i240, label %do.body.i241.dib7000m_write_word.exit260_crit_edge, label %do.end.i243

do.body.i241.dib7000m_write_word.exit260_crit_edge: ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit260

do.end.i243:                                      ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit260

if.end6.i258:                                     ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i244 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %50 = ptrtoint ptr %i2c_write_buffer.i244 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %i2c_write_buffer.i244, align 4
  %arrayidx12.i245 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %arrayidx12.i245 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 26, ptr %arrayidx12.i245, align 1
  %arrayidx18.i246 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %52 = ptrtoint ptr %arrayidx18.i246 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 102, ptr %arrayidx18.i246, align 2
  %arrayidx23.i247 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %53 = ptrtoint ptr %arrayidx23.i247 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %arrayidx23.i247, align 1
  %msg.i248 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %54 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 262144, ptr %54, align 4
  %i2c_addr.i249 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %56 = ptrtoint ptr %i2c_addr.i249 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %i2c_addr.i249, align 8
  %58 = lshr i8 %57, 1
  %conv27.i250 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i248 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv27.i250, ptr %msg.i248, align 4
  %flags.i251 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i251 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i251, align 2
  %buf.i252 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i252 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %i2c_write_buffer.i244, ptr %buf.i252, align 4
  %i2c_adap.i254 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %62 = ptrtoint ptr %i2c_adap.i254 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_adap.i254, align 4
  %call39.i255 = tail call i32 @i2c_transfer(ptr noundef %63, ptr noundef %msg.i248, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit260

dib7000m_write_word.exit260:                      ; preds = %if.end6.i258, %do.end.i243, %do.body.i241.dib7000m_write_word.exit260_crit_edge
  %call.i262 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %cmp.i263 = icmp slt i32 %call.i262, 0
  br i1 %cmp.i263, label %do.body.i265, label %if.end6.i282

do.body.i265:                                     ; preds = %dib7000m_write_word.exit260
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i264 = icmp eq i32 %64, 0
  br i1 %tobool.not.i264, label %do.body.i265.dib7000m_write_word.exit284_crit_edge, label %do.end.i267

do.body.i265.dib7000m_write_word.exit284_crit_edge: ; preds = %do.body.i265
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit284

do.end.i267:                                      ; preds = %do.body.i265
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit284

if.end6.i282:                                     ; preds = %dib7000m_write_word.exit260
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i268 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %65 = ptrtoint ptr %i2c_write_buffer.i268 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %i2c_write_buffer.i268, align 4
  %arrayidx12.i269 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %66 = ptrtoint ptr %arrayidx12.i269 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 29, ptr %arrayidx12.i269, align 1
  %arrayidx18.i270 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %67 = ptrtoint ptr %arrayidx18.i270 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 18, ptr %arrayidx18.i270, align 2
  %arrayidx23.i271 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %68 = ptrtoint ptr %arrayidx23.i271 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 115, ptr %arrayidx23.i271, align 1
  %msg.i272 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %69 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 262144, ptr %69, align 4
  %i2c_addr.i273 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %71 = ptrtoint ptr %i2c_addr.i273 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %i2c_addr.i273, align 8
  %73 = lshr i8 %72, 1
  %conv27.i274 = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i272 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv27.i274, ptr %msg.i272, align 4
  %flags.i275 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i275 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i275, align 2
  %buf.i276 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i276 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %i2c_write_buffer.i268, ptr %buf.i276, align 4
  %i2c_adap.i278 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %77 = ptrtoint ptr %i2c_adap.i278 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_adap.i278, align 4
  %call39.i279 = tail call i32 @i2c_transfer(ptr noundef %78, ptr noundef %msg.i272, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit284

dib7000m_write_word.exit284:                      ; preds = %if.end6.i282, %do.end.i267, %do.body.i265.dib7000m_write_word.exit284_crit_edge
  %call.i286 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %cmp.i287 = icmp slt i32 %call.i286, 0
  br i1 %cmp.i287, label %do.body.i289, label %if.end6.i306

do.body.i289:                                     ; preds = %dib7000m_write_word.exit284
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i288 = icmp eq i32 %79, 0
  br i1 %tobool.not.i288, label %do.body.i289.dib7000m_write_word.exit308_crit_edge, label %do.end.i291

do.body.i289.dib7000m_write_word.exit308_crit_edge: ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit308

do.end.i291:                                      ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit308

if.end6.i306:                                     ; preds = %dib7000m_write_word.exit284
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i292 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %80 = ptrtoint ptr %i2c_write_buffer.i292 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %i2c_write_buffer.i292, align 4
  %arrayidx12.i293 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %arrayidx12.i293 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %arrayidx12.i293, align 1
  %arrayidx18.i294 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %82 = ptrtoint ptr %arrayidx18.i294 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx18.i294, align 2
  %arrayidx23.i295 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %83 = ptrtoint ptr %arrayidx23.i295 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %arrayidx23.i295, align 1
  %msg.i296 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %84 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 262144, ptr %84, align 4
  %i2c_addr.i297 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %86 = ptrtoint ptr %i2c_addr.i297 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i2c_addr.i297, align 8
  %88 = lshr i8 %87, 1
  %conv27.i298 = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i296 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv27.i298, ptr %msg.i296, align 4
  %flags.i299 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i299 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i299, align 2
  %buf.i300 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i300 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %i2c_write_buffer.i292, ptr %buf.i300, align 4
  %i2c_adap.i302 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %92 = ptrtoint ptr %i2c_adap.i302 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adap.i302, align 4
  %call39.i303 = tail call i32 @i2c_transfer(ptr noundef %93, ptr noundef %msg.i296, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit308

dib7000m_write_word.exit308:                      ; preds = %if.end6.i306, %do.end.i291, %do.body.i289.dib7000m_write_word.exit308_crit_edge
  %call.i310 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %cmp.i311 = icmp slt i32 %call.i310, 0
  br i1 %cmp.i311, label %do.body.i313, label %if.end6.i330

do.body.i313:                                     ; preds = %dib7000m_write_word.exit308
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i312 = icmp eq i32 %94, 0
  br i1 %tobool.not.i312, label %do.body.i313.dib7000m_write_word.exit332_crit_edge, label %do.end.i315

do.body.i313.dib7000m_write_word.exit332_crit_edge: ; preds = %do.body.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit332

do.end.i315:                                      ; preds = %do.body.i313
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit332

if.end6.i330:                                     ; preds = %dib7000m_write_word.exit308
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i316 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %95 = ptrtoint ptr %i2c_write_buffer.i316 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %i2c_write_buffer.i316, align 4
  %arrayidx12.i317 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %96 = ptrtoint ptr %arrayidx12.i317 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 33, ptr %arrayidx12.i317, align 1
  %arrayidx18.i318 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %97 = ptrtoint ptr %arrayidx18.i318 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx18.i318, align 2
  %arrayidx23.i319 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %98 = ptrtoint ptr %arrayidx23.i319 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %arrayidx23.i319, align 1
  %msg.i320 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %99 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 262144, ptr %99, align 4
  %i2c_addr.i321 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %101 = ptrtoint ptr %i2c_addr.i321 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %i2c_addr.i321, align 8
  %103 = lshr i8 %102, 1
  %conv27.i322 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i320 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv27.i322, ptr %msg.i320, align 4
  %flags.i323 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i323 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i323, align 2
  %buf.i324 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %106 = ptrtoint ptr %buf.i324 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %i2c_write_buffer.i316, ptr %buf.i324, align 4
  %i2c_adap.i326 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %107 = ptrtoint ptr %i2c_adap.i326 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_adap.i326, align 4
  %call39.i327 = tail call i32 @i2c_transfer(ptr noundef %108, ptr noundef %msg.i320, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit332

dib7000m_write_word.exit332:                      ; preds = %if.end6.i330, %do.end.i315, %do.body.i313.dib7000m_write_word.exit332_crit_edge
  %109 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %switch.selectcmp207 = icmp eq i32 %110, 3
  %switch.select208 = select i1 %switch.selectcmp207, i16 128, i16 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %switch.selectcmp209 = icmp eq i32 %110, 1
  %switch.select210 = select i1 %switch.selectcmp209, i16 256, i16 %switch.select208
  %111 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %guard_interval, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %112, label %dib7000m_write_word.exit332.sw.epilog114_crit_edge [
    i32 1, label %sw.bb98
    i32 2, label %sw.bb101
    i32 3, label %sw.bb105
  ]

dib7000m_write_word.exit332.sw.epilog114_crit_edge: ; preds = %dib7000m_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog114

sw.bb98:                                          ; preds = %dib7000m_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %114 = shl nuw nsw i16 %switch.select210, 1
  br label %sw.epilog114

sw.bb101:                                         ; preds = %dib7000m_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %115 = shl nuw nsw i16 %switch.select210, 2
  br label %sw.epilog114

sw.bb105:                                         ; preds = %dib7000m_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %116 = shl nuw nsw i16 %switch.select210, 3
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %sw.bb105, %sw.bb101, %sw.bb98, %dib7000m_write_word.exit332.sw.epilog114_crit_edge
  %value.6 = phi i16 [ %116, %sw.bb105 ], [ %115, %sw.bb101 ], [ %114, %sw.bb98 ], [ %switch.select210, %dib7000m_write_word.exit332.sw.epilog114_crit_edge ]
  %conv115 = zext i16 %value.6 to i32
  %mul116 = mul nuw nsw i32 %conv115, 3
  %div117204 = lshr i32 %mul116, 1
  %117 = trunc i32 %div117204 to i16
  %conv119 = add nuw nsw i16 %117, 32
  %div_sync_wait = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 14
  %118 = ptrtoint ptr %div_sync_wait to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv119, ptr %div_sync_wait, align 2
  %div_force_off = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 13
  %119 = ptrtoint ptr %div_force_off to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load = load i8, ptr %div_force_off, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %div_force_off, align 4
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %state, i32 0, i32 3
  %120 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %demodulator_priv.i, align 4
  %div_force_off.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 13
  %122 = ptrtoint ptr %div_force_off.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i = load i8, ptr %div_force_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i333 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i333, label %if.end6.i337, label %do.body.i334

do.body.i334:                                     ; preds = %sw.epilog114
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool1.not.i = icmp eq i32 %123, 0
  br i1 %tobool1.not.i, label %do.body.i334.if.end6.thread.i_crit_edge, label %do.end.i336

do.body.i334.if.end6.thread.i_crit_edge:          ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.thread.i

do.end.i336:                                      ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #8
  %call.i335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #9
  br label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %do.end.i336, %do.body.i334.if.end6.thread.i_crit_edge
  %124 = ptrtoint ptr %div_force_off.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load7107.i = load i8, ptr %div_force_off.i, align 4
  %bf.clear110.i = and i8 %bf.load7107.i, -65
  store i8 %bf.clear110.i, ptr %div_force_off.i, align 4
  br label %if.else.i

if.end6.i337:                                     ; preds = %sw.epilog114
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear121 = and i8 %bf.lshr, 1
  %bf.value.i = shl nuw nsw i8 %bf.clear121, 6
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.value.i
  %125 = ptrtoint ptr %div_force_off.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %bf.set.i, ptr %div_force_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear121)
  %tobool8.not.i = icmp eq i8 %bf.clear121, 0
  br i1 %tobool8.not.i, label %if.end6.i337.if.else.i_crit_edge, label %if.then9.i

if.end6.i337.if.else.i_crit_edge:                 ; preds = %if.end6.i337
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then9.i:                                       ; preds = %if.end6.i337
  %reg_offs.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 5
  %126 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %reg_offs.i, align 8
  %i2c_buffer_lock.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 20
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end6.i.i

do.body.i.i:                                      ; preds = %if.then9.i
  %128 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.dib7000m_write_word.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.dib7000m_write_word.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit.i

if.end6.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i = zext i8 %127 to i16
  %add.i = add nuw nsw i16 %conv10.i, 263
  %129 = lshr i16 %add.i, 8
  %conv7.i.i = trunc i16 %129 to i8
  %i2c_write_buffer.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 18
  %130 = ptrtoint ptr %i2c_write_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv7.i.i, ptr %i2c_write_buffer.i.i, align 4
  %conv10.i.i = trunc i16 %add.i to i8
  %arrayidx12.i.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 1
  %131 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 2
  %132 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx18.i.i, align 2
  %arrayidx23.i.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 3
  %133 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 6, ptr %arrayidx23.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17
  %134 = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 2
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 262144, ptr %134, align 4
  %i2c_addr.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 2
  %136 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %i2c_addr.i.i, align 8
  %138 = lshr i8 %137, 1
  %conv27.i.i = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv27.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 3
  %141 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %i2c_write_buffer.i.i, ptr %buf.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 3
  %142 = ptrtoint ptr %i2c_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i2c_adap.i.i, align 4
  %call39.i.i = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %msg.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i) #6
  br label %dib7000m_write_word.exit.i

dib7000m_write_word.exit.i:                       ; preds = %if.end6.i.i, %do.end.i.i, %do.body.i.i.dib7000m_write_word.exit.i_crit_edge
  %144 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %reg_offs.i, align 8
  %call.i2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i3.i, label %do.body.i5.i, label %if.end6.i24.i

do.body.i5.i:                                     ; preds = %dib7000m_write_word.exit.i
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i4.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i4.i, label %do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge, label %do.end.i7.i

do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge: ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit26.i

do.end.i7.i:                                      ; preds = %do.body.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit26.i

if.end6.i24.i:                                    ; preds = %dib7000m_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = zext i8 %145 to i16
  %add15.i = add nuw nsw i16 %conv14.i, 264
  %147 = lshr i16 %add15.i, 8
  %conv7.i8.i = trunc i16 %147 to i8
  %i2c_write_buffer.i9.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 18
  %148 = ptrtoint ptr %i2c_write_buffer.i9.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv7.i8.i, ptr %i2c_write_buffer.i9.i, align 4
  %conv10.i10.i = trunc i16 %add15.i to i8
  %arrayidx12.i11.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 1
  %149 = ptrtoint ptr %arrayidx12.i11.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv10.i10.i, ptr %arrayidx12.i11.i, align 1
  %arrayidx18.i12.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 2
  %150 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx18.i12.i, align 2
  %arrayidx23.i13.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 3
  %151 = ptrtoint ptr %arrayidx23.i13.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 6, ptr %arrayidx23.i13.i, align 1
  %msg.i14.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17
  %152 = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 2
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 262144, ptr %152, align 4
  %i2c_addr.i15.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 2
  %154 = ptrtoint ptr %i2c_addr.i15.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %i2c_addr.i15.i, align 8
  %156 = lshr i8 %155, 1
  %conv27.i16.i = zext i8 %156 to i16
  %157 = ptrtoint ptr %msg.i14.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv27.i16.i, ptr %msg.i14.i, align 4
  %flags.i17.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %flags.i17.i, align 2
  %buf.i18.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 3
  %159 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %i2c_write_buffer.i9.i, ptr %buf.i18.i, align 4
  %i2c_adap.i20.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 3
  %160 = ptrtoint ptr %i2c_adap.i20.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i2c_adap.i20.i, align 4
  %call39.i21.i = tail call i32 @i2c_transfer(ptr noundef %161, ptr noundef %msg.i14.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i.i) #6
  br label %dib7000m_write_word.exit26.i

dib7000m_write_word.exit26.i:                     ; preds = %if.end6.i24.i, %do.end.i7.i, %do.body.i5.i.dib7000m_write_word.exit26.i_crit_edge
  %162 = ptrtoint ptr %reg_offs.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %reg_offs.i, align 8
  %conv19.i = zext i8 %163 to i16
  %add20.i = add nuw nsw i16 %conv19.i, 266
  %div_sync_wait.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 14
  %164 = ptrtoint ptr %div_sync_wait.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %div_sync_wait.i, align 2
  %shl.i = shl i16 %165, 4
  %or23.i = or i16 %shl.i, 6
  %call25.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %121, i16 noundef zeroext %add20.i, i16 noundef zeroext %or23.i) #6
  br label %dib7000m_set_diversity_in.exit

if.else.i:                                        ; preds = %if.end6.i337.if.else.i_crit_edge, %if.end6.thread.i
  %reg_offs26.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 5
  %166 = ptrtoint ptr %reg_offs26.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %reg_offs26.i, align 8
  %i2c_buffer_lock.i27.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 20
  %call.i28.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i27.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %do.body.i31.i, label %if.end6.i50.i

do.body.i31.i:                                    ; preds = %if.else.i
  %168 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i30.i = icmp eq i32 %168, 0
  br i1 %tobool.not.i30.i, label %do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge, label %do.end.i33.i

do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge: ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit52.i

do.end.i33.i:                                     ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit52.i

if.end6.i50.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.i338 = zext i8 %167 to i16
  %add28.i = add nuw nsw i16 %conv27.i338, 263
  %169 = lshr i16 %add28.i, 8
  %conv7.i34.i = trunc i16 %169 to i8
  %i2c_write_buffer.i35.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 18
  %170 = ptrtoint ptr %i2c_write_buffer.i35.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv7.i34.i, ptr %i2c_write_buffer.i35.i, align 4
  %conv10.i36.i = trunc i16 %add28.i to i8
  %arrayidx12.i37.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 1
  %171 = ptrtoint ptr %arrayidx12.i37.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv10.i36.i, ptr %arrayidx12.i37.i, align 1
  %arrayidx18.i38.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 2
  %172 = ptrtoint ptr %arrayidx18.i38.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %arrayidx18.i38.i, align 2
  %arrayidx23.i39.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 3
  %173 = ptrtoint ptr %arrayidx23.i39.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %arrayidx23.i39.i, align 1
  %msg.i40.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17
  %174 = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 2
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 262144, ptr %174, align 4
  %i2c_addr.i41.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 2
  %176 = ptrtoint ptr %i2c_addr.i41.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %i2c_addr.i41.i, align 8
  %178 = lshr i8 %177, 1
  %conv27.i42.i = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i40.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv27.i42.i, ptr %msg.i40.i, align 4
  %flags.i43.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 1
  %180 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i43.i, align 2
  %buf.i44.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 3
  %181 = ptrtoint ptr %buf.i44.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %i2c_write_buffer.i35.i, ptr %buf.i44.i, align 4
  %i2c_adap.i46.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 3
  %182 = ptrtoint ptr %i2c_adap.i46.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i2c_adap.i46.i, align 4
  %call39.i47.i = tail call i32 @i2c_transfer(ptr noundef %183, ptr noundef %msg.i40.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i27.i) #6
  br label %dib7000m_write_word.exit52.i

dib7000m_write_word.exit52.i:                     ; preds = %if.end6.i50.i, %do.end.i33.i, %do.body.i31.i.dib7000m_write_word.exit52.i_crit_edge
  %184 = ptrtoint ptr %reg_offs26.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %reg_offs26.i, align 8
  %call.i54.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i27.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %do.body.i57.i, label %if.end6.i76.i

do.body.i57.i:                                    ; preds = %dib7000m_write_word.exit52.i
  %186 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i56.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i56.i, label %do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge, label %do.end.i59.i

do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge: ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit78.i

do.end.i59.i:                                     ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit78.i

if.end6.i76.i:                                    ; preds = %dib7000m_write_word.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv32.i = zext i8 %185 to i16
  %add33.i = add nuw nsw i16 %conv32.i, 264
  %187 = lshr i16 %add33.i, 8
  %conv7.i60.i = trunc i16 %187 to i8
  %i2c_write_buffer.i61.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 18
  %188 = ptrtoint ptr %i2c_write_buffer.i61.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv7.i60.i, ptr %i2c_write_buffer.i61.i, align 4
  %conv10.i62.i = trunc i16 %add33.i to i8
  %arrayidx12.i63.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 1
  %189 = ptrtoint ptr %arrayidx12.i63.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv10.i62.i, ptr %arrayidx12.i63.i, align 1
  %arrayidx18.i64.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 2
  %190 = ptrtoint ptr %arrayidx18.i64.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %arrayidx18.i64.i, align 2
  %arrayidx23.i65.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 3
  %191 = ptrtoint ptr %arrayidx23.i65.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx23.i65.i, align 1
  %msg.i66.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17
  %192 = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 2
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 262144, ptr %192, align 4
  %i2c_addr.i67.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 2
  %194 = ptrtoint ptr %i2c_addr.i67.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %i2c_addr.i67.i, align 8
  %196 = lshr i8 %195, 1
  %conv27.i68.i = zext i8 %196 to i16
  %197 = ptrtoint ptr %msg.i66.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv27.i68.i, ptr %msg.i66.i, align 4
  %flags.i69.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 1
  %198 = ptrtoint ptr %flags.i69.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %flags.i69.i, align 2
  %buf.i70.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 3
  %199 = ptrtoint ptr %buf.i70.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %i2c_write_buffer.i61.i, ptr %buf.i70.i, align 4
  %i2c_adap.i72.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 3
  %200 = ptrtoint ptr %i2c_adap.i72.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i2c_adap.i72.i, align 4
  %call39.i73.i = tail call i32 @i2c_transfer(ptr noundef %201, ptr noundef %msg.i66.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i27.i) #6
  br label %dib7000m_write_word.exit78.i

dib7000m_write_word.exit78.i:                     ; preds = %if.end6.i76.i, %do.end.i59.i, %do.body.i57.i.dib7000m_write_word.exit78.i_crit_edge
  %202 = ptrtoint ptr %reg_offs26.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %reg_offs26.i, align 8
  %call.i80.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i27.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %cmp.i81.i = icmp slt i32 %call.i80.i, 0
  br i1 %cmp.i81.i, label %do.body.i83.i, label %if.end6.i102.i

do.body.i83.i:                                    ; preds = %dib7000m_write_word.exit78.i
  %204 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i82.i = icmp eq i32 %204, 0
  br i1 %tobool.not.i82.i, label %do.body.i83.i.dib7000m_set_diversity_in.exit_crit_edge, label %do.end.i85.i

do.body.i83.i.dib7000m_set_diversity_in.exit_crit_edge: ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_set_diversity_in.exit

do.end.i85.i:                                     ; preds = %do.body.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_set_diversity_in.exit

if.end6.i102.i:                                   ; preds = %dib7000m_write_word.exit78.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv37.i = zext i8 %203 to i16
  %add38.i = add nuw nsw i16 %conv37.i, 266
  %205 = lshr i16 %add38.i, 8
  %conv7.i86.i = trunc i16 %205 to i8
  %i2c_write_buffer.i87.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 18
  %206 = ptrtoint ptr %i2c_write_buffer.i87.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv7.i86.i, ptr %i2c_write_buffer.i87.i, align 4
  %conv10.i88.i = trunc i16 %add38.i to i8
  %arrayidx12.i89.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 1
  %207 = ptrtoint ptr %arrayidx12.i89.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv10.i88.i, ptr %arrayidx12.i89.i, align 1
  %arrayidx18.i90.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 2
  %208 = ptrtoint ptr %arrayidx18.i90.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %arrayidx18.i90.i, align 2
  %arrayidx23.i91.i = getelementptr %struct.dib7000m_state, ptr %121, i32 0, i32 18, i32 3
  %209 = ptrtoint ptr %arrayidx23.i91.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %arrayidx23.i91.i, align 1
  %msg.i92.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17
  %210 = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 2
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 262144, ptr %210, align 4
  %i2c_addr.i93.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 2
  %212 = ptrtoint ptr %i2c_addr.i93.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %i2c_addr.i93.i, align 8
  %214 = lshr i8 %213, 1
  %conv27.i94.i = zext i8 %214 to i16
  %215 = ptrtoint ptr %msg.i92.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv27.i94.i, ptr %msg.i92.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 1
  %216 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %flags.i95.i, align 2
  %buf.i96.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 17, i32 0, i32 3
  %217 = ptrtoint ptr %buf.i96.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %i2c_write_buffer.i87.i, ptr %buf.i96.i, align 4
  %i2c_adap.i98.i = getelementptr inbounds %struct.dib7000m_state, ptr %121, i32 0, i32 3
  %218 = ptrtoint ptr %i2c_adap.i98.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i2c_adap.i98.i, align 4
  %call39.i99.i = tail call i32 @i2c_transfer(ptr noundef %219, ptr noundef %msg.i92.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i27.i) #6
  br label %dib7000m_set_diversity_in.exit

dib7000m_set_diversity_in.exit:                   ; preds = %if.end6.i102.i, %do.end.i85.i, %do.body.i83.i.dib7000m_set_diversity_in.exit_crit_edge, %dib7000m_write_word.exit26.i
  %220 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %modulation, align 4
  %222 = zext i32 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %221, label %sw.default134 [
    i32 3, label %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge
    i32 1, label %sw.bb129
  ]

dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge: ; preds = %dib7000m_set_diversity_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog139

sw.bb129:                                         ; preds = %dib7000m_set_diversity_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog139

sw.default134:                                    ; preds = %dib7000m_set_diversity_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog139

sw.epilog139:                                     ; preds = %sw.default134, %sw.bb129, %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge
  %est.sroa.17.0 = phi i16 [ -8, %sw.default134 ], [ -16, %sw.bb129 ], [ -8, %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge ]
  %est.sroa.12.0 = phi i16 [ 819, %sw.default134 ], [ 164, %sw.bb129 ], [ 164, %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge ]
  %est.sroa.7.0 = phi i16 [ -82, %sw.default134 ], [ -33, %sw.bb129 ], [ -16, %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge ]
  %est.sroa.0.0 = phi i16 [ 2458, %sw.default134 ], [ 573, %sw.bb129 ], [ 328, %dib7000m_set_diversity_in.exit.sw.epilog139_crit_edge ]
  %223 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %reg_offs, align 8
  %conv146 = zext i8 %224 to i16
  %add147 = add nuw nsw i16 %conv146, 214
  %call150 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add147, i16 noundef zeroext %est.sroa.0.0)
  %225 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %reg_offs, align 8
  %conv146.1 = zext i8 %226 to i16
  %add147.1 = add nuw nsw i16 %conv146.1, 215
  %call150.1 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add147.1, i16 noundef zeroext %est.sroa.7.0)
  %227 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %reg_offs, align 8
  %conv146.2 = zext i8 %228 to i16
  %add147.2 = add nuw nsw i16 %conv146.2, 216
  %call150.2 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add147.2, i16 noundef zeroext %est.sroa.12.0)
  %229 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %reg_offs, align 8
  %conv146.3 = zext i8 %230 to i16
  %add147.3 = add nuw nsw i16 %conv146.3, 217
  %call150.3 = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %add147.3, i16 noundef zeroext %est.sroa.17.0)
  %mobile_mode.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 1, i32 4
  %231 = ptrtoint ptr %mobile_mode.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %mobile_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i339 = icmp eq i8 %232, 0
  %spec.select.i = select i1 %tobool.not.i339, i16 -32545, i16 -32737
  %revision.i = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 15
  %233 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16387, i16 %234)
  %cmp25.i = icmp eq i16 %234, 16387
  %offset.0.i = zext i1 %cmp25.i to i16
  %call.i393 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i393)
  %cmp.i394 = icmp slt i32 %call.i393, 0
  br i1 %cmp.i394, label %do.body.i396, label %if.end6.i414

do.body.i396:                                     ; preds = %sw.epilog139
  %235 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool.not.i395 = icmp eq i32 %235, 0
  br i1 %tobool.not.i395, label %do.body.i396.dib7000m_write_word.exit416_crit_edge, label %do.end.i398

do.body.i396.dib7000m_write_word.exit416_crit_edge: ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit416

do.end.i398:                                      ; preds = %do.body.i396
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit416

if.end6.i414:                                     ; preds = %sw.epilog139
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i399 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %236 = ptrtoint ptr %i2c_write_buffer.i399 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 3, ptr %i2c_write_buffer.i399, align 4
  %conv10.i400 = select i1 %cmp25.i, i8 -120, i8 -121
  %arrayidx12.i401 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %237 = ptrtoint ptr %arrayidx12.i401 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv10.i400, ptr %arrayidx12.i401, align 1
  %arrayidx18.i402 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %238 = ptrtoint ptr %arrayidx18.i402 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %arrayidx18.i402, align 2
  %arrayidx23.i403 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %239 = ptrtoint ptr %arrayidx23.i403 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %arrayidx23.i403, align 1
  %msg.i404 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %240 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 262144, ptr %240, align 4
  %i2c_addr.i405 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %242 = ptrtoint ptr %i2c_addr.i405 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %i2c_addr.i405, align 8
  %244 = lshr i8 %243, 1
  %conv27.i406 = zext i8 %244 to i16
  %245 = ptrtoint ptr %msg.i404 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv27.i406, ptr %msg.i404, align 4
  %flags.i407 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %246 = ptrtoint ptr %flags.i407 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %flags.i407, align 2
  %buf.i408 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %247 = ptrtoint ptr %buf.i408 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %i2c_write_buffer.i399, ptr %buf.i408, align 4
  %i2c_adap.i410 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %248 = ptrtoint ptr %i2c_adap.i410 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %i2c_adap.i410, align 4
  %call39.i411 = tail call i32 @i2c_transfer(ptr noundef %249, ptr noundef %msg.i404, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit416

dib7000m_write_word.exit416:                      ; preds = %if.end6.i414, %do.end.i398, %do.body.i396.dib7000m_write_word.exit416_crit_edge
  %conv33.i = or i16 %offset.0.i, 904
  %call34.i = tail call fastcc i32 @dib7000m_write_word(ptr noundef %state, i16 noundef zeroext %conv33.i, i16 noundef zeroext %spec.select.i) #6
  %call.i368 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %cmp.i369 = icmp slt i32 %call.i368, 0
  br i1 %cmp.i369, label %do.body.i371, label %if.end6.i389

do.body.i371:                                     ; preds = %dib7000m_write_word.exit416
  %250 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.not.i370 = icmp eq i32 %250, 0
  br i1 %tobool.not.i370, label %do.body.i371.dib7000m_write_word.exit391_crit_edge, label %do.end.i373

do.body.i371.dib7000m_write_word.exit391_crit_edge: ; preds = %do.body.i371
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit391

do.end.i373:                                      ; preds = %do.body.i371
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit391

if.end6.i389:                                     ; preds = %dib7000m_write_word.exit416
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i374 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %251 = ptrtoint ptr %i2c_write_buffer.i374 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 3, ptr %i2c_write_buffer.i374, align 4
  %conv10.i375 = select i1 %cmp25.i, i8 -118, i8 -119
  %arrayidx12.i376 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %252 = ptrtoint ptr %arrayidx12.i376 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv10.i375, ptr %arrayidx12.i376, align 1
  %arrayidx18.i377 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %253 = ptrtoint ptr %arrayidx18.i377 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %arrayidx18.i377, align 2
  %arrayidx23.i378 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %254 = ptrtoint ptr %arrayidx23.i378 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx23.i378, align 1
  %msg.i379 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %255 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 262144, ptr %255, align 4
  %i2c_addr.i380 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %257 = ptrtoint ptr %i2c_addr.i380 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %i2c_addr.i380, align 8
  %259 = lshr i8 %258, 1
  %conv27.i381 = zext i8 %259 to i16
  %260 = ptrtoint ptr %msg.i379 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv27.i381, ptr %msg.i379, align 4
  %flags.i382 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %261 = ptrtoint ptr %flags.i382 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %flags.i382, align 2
  %buf.i383 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %262 = ptrtoint ptr %buf.i383 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %i2c_write_buffer.i374, ptr %buf.i383, align 4
  %i2c_adap.i385 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %263 = ptrtoint ptr %i2c_adap.i385 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %i2c_adap.i385, align 4
  %call39.i386 = tail call i32 @i2c_transfer(ptr noundef %264, ptr noundef %msg.i379, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit391

dib7000m_write_word.exit391:                      ; preds = %if.end6.i389, %do.end.i373, %do.body.i371.dib7000m_write_word.exit391_crit_edge
  %call.i343 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343)
  %cmp.i344 = icmp slt i32 %call.i343, 0
  br i1 %cmp.i344, label %do.body.i346, label %if.end6.i364

do.body.i346:                                     ; preds = %dib7000m_write_word.exit391
  %265 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i345 = icmp eq i32 %265, 0
  br i1 %tobool.not.i345, label %do.body.i346.dib7000m_write_word.exit366_crit_edge, label %do.end.i348

do.body.i346.dib7000m_write_word.exit366_crit_edge: ; preds = %do.body.i346
  call void @__sanitizer_cov_trace_pc() #8
  br label %dib7000m_write_word.exit366

do.end.i348:                                      ; preds = %do.body.i346
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #9
  br label %dib7000m_write_word.exit366

if.end6.i364:                                     ; preds = %dib7000m_write_word.exit391
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_write_buffer.i349 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 18
  %266 = ptrtoint ptr %i2c_write_buffer.i349 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 3, ptr %i2c_write_buffer.i349, align 4
  %267 = zext i1 %cmp25.i to i8
  %conv10.i350 = or i8 %267, -118
  %arrayidx12.i351 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 1
  %268 = ptrtoint ptr %arrayidx12.i351 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv10.i350, ptr %arrayidx12.i351, align 1
  %arrayidx18.i352 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 2
  %269 = ptrtoint ptr %arrayidx18.i352 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %arrayidx18.i352, align 2
  %arrayidx23.i353 = getelementptr %struct.dib7000m_state, ptr %state, i32 0, i32 18, i32 3
  %270 = ptrtoint ptr %arrayidx23.i353 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %arrayidx23.i353, align 1
  %msg.i354 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17
  %271 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 2
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 262144, ptr %271, align 4
  %i2c_addr.i355 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 2
  %273 = ptrtoint ptr %i2c_addr.i355 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %i2c_addr.i355, align 8
  %275 = lshr i8 %274, 1
  %conv27.i356 = zext i8 %275 to i16
  %276 = ptrtoint ptr %msg.i354 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv27.i356, ptr %msg.i354, align 4
  %flags.i357 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 1
  %277 = ptrtoint ptr %flags.i357 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 0, ptr %flags.i357, align 2
  %buf.i358 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 17, i32 0, i32 3
  %278 = ptrtoint ptr %buf.i358 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %i2c_write_buffer.i349, ptr %buf.i358, align 4
  %i2c_adap.i360 = getelementptr inbounds %struct.dib7000m_state, ptr %state, i32 0, i32 3
  %279 = ptrtoint ptr %i2c_adap.i360 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %i2c_adap.i360, align 4
  %call39.i361 = tail call i32 @i2c_transfer(ptr noundef %280, ptr noundef %msg.i354, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dib7000m_write_word.exit366

dib7000m_write_word.exit366:                      ; preds = %if.end6.i364, %do.end.i348, %do.body.i346.dib7000m_write_word.exit366_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 22, i32 1}
!5 = !{ptr @__ksymtab_dib7000m_get_i2c_master, !6, !"__ksymtab_dib7000m_get_i2c_master", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1330, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1337, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dib7000m_pid_filter_ctrl._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @dib7000m_pid_filter_ctrl._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_dib7000m_pid_filter_ctrl, !14, !"__ksymtab_dib7000m_pid_filter_ctrl", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1340, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1345, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dib7000m_pid_filter._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dib7000m_pid_filter._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_dib7000m_pid_filter, !21, !"__ksymtab_dib7000m_pid_filter", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1349, i32 1}
!22 = !{ptr @dib7000m_attach.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1417, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_dib7000m_attach, !26, !"__ksymtab_dib7000m_attach", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1437, i32 1}
!27 = !{ptr @__UNIQUE_ID_author292, !28, !"__UNIQUE_ID_author292", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1472, i32 1}
!29 = !{ptr @__UNIQUE_ID_description293, !30, !"__UNIQUE_ID_description293", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1473, i32 1}
!31 = !{ptr @__UNIQUE_ID_file294, !32, !"__UNIQUE_ID_file294", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1474, i32 1}
!33 = !{ptr @__UNIQUE_ID_license295, !32, !"__UNIQUE_ID_license295", i1 false, i1 false}
!34 = !{ptr @debug, !35, !"debug", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 20, i32 12}
!36 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 81, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dib7000m_read_word._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @dib7000m_read_word._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 99, i32 3}
!44 = !{ptr @dib7000m_read_word._entry.8, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dib7000m_read_word._entry_ptr.10, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 112, i32 3}
!48 = !{ptr @dib7000m_write_word._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dib7000m_write_word._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1128, i32 3}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dib7000m_identify._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dib7000m_identify._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1137, i32 3}
!57 = !{ptr @dib7000m_identify._entry.14, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dib7000m_identify._entry_ptr.16, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1143, i32 3}
!61 = !{ptr @dib7000m_identify._entry.17, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dib7000m_identify._entry_ptr.19, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1148, i32 15}
!65 = !{ptr @dib7000m_identify._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dib7000m_identify._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1149, i32 36}
!69 = !{ptr @dib7000m_identify._entry.23, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dib7000m_identify._entry_ptr.25, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1150, i32 36}
!73 = !{ptr @dib7000m_identify._entry.26, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dib7000m_identify._entry_ptr.28, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1151, i32 36}
!77 = !{ptr @dib7000m_identify._entry.29, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dib7000m_identify._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 587, i32 3}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dib7000m_demod_reset._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @dib7000m_demod_reset._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 590, i32 3}
!86 = !{ptr @dib7000m_demod_reset._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dib7000m_demod_reset._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 161, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dib7000m_set_output_mode._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @dib7000m_set_output_mode._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 188, i32 4}
!95 = !{ptr @dib7000m_set_output_mode._entry.39, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dib7000m_set_output_mode._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 327, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dib7000m_set_bandwidth._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dib7000m_set_bandwidth._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 330, i32 3}
!104 = !{ptr @dib7000m_set_bandwidth._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dib7000m_set_bandwidth._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @dib7000m_defaults_common, !107, !"dib7000m_defaults_common", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 462, i32 12}
!108 = !{ptr @dib7000m_defaults, !109, !"dib7000m_defaults", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 536, i32 12}
!110 = !{ptr @dib7000m_ops, !111, !"dib7000m_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1439, i32 38}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1109, i32 3}
!114 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dib7000m_wakeup._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @dib7000m_wakeup._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1249, i32 3}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dib7000m_set_frontend._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @dib7000m_set_frontend._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 811, i32 4}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @dib7000m_agc_startup._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @dib7000m_agc_startup._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 694, i32 3}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dib7000m_set_agc_config._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @dib7000m_set_agc_config._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 710, i32 2}
!134 = !{ptr @dib7000m_set_agc_config._entry.55, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @dib7000m_set_agc_config._entry_ptr.57, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 657, i32 2}
!138 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dib7000m_agc_soft_split._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @dib7000m_agc_soft_split._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 347, i32 3}
!143 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @dib7000m_set_diversity_in._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @dib7000m_set_diversity_in._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1020, i32 3}
!148 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @dib7000m_autosearch_irq._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @dib7000m_autosearch_irq._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 1025, i32 3}
!153 = !{ptr @dib7000m_autosearch_irq._entry.64, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @dib7000m_autosearch_irq._entry_ptr.66, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/dib7000m.c", i32 749, i32 2}
!157 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @dib7000m_update_timf._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @dib7000m_update_timf._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
