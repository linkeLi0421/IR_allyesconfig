; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda10048.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10048.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda10048_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10048_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10048_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10048_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10048_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10048_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.init_tab = type { i8, i16 }
%struct.snr_tab = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10048_state = type { ptr, %struct.tda10048_config, %struct.dvb_frontend, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tda10048_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017tda10048: %s()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda10048.c\00", [57 x i8] zeroinitializer }, align 32
@tda10048_attach._entry_ptr = internal global ptr @tda10048_attach._entry, section ".printk_index", align 4
@tda10048_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NXP TDA10048HN DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda10048_release, ptr null, ptr @tda10048_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10048_set_frontend, ptr @tda10048_get_tune_settings, ptr @tda10048_get_frontend, ptr @tda10048_read_status, ptr @tda10048_read_ber, ptr @tda10048_read_signal_strength, ptr @tda10048_read_snr, ptr @tda10048_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10048_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_tda10048_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10048_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10048_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10048_attach to i32), ptr @__kstrtab_tda10048_attach, ptr @__kstrtabns_tda10048_attach }, section "___ksymtab+tda10048_attach", align 4
@__param_str_debug = internal constant [15 x i8] c"tda10048.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"tda10048.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [50 x i8] c"tda10048.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"tda10048.description=NXP TDA10048HN DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [28 x i8] c"tda10048.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"tda10048.file=drivers/media/dvb-frontends/tda10048\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"tda10048.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda10048_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017tda10048: %s(reg = 0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10048_readreg\00", [47 x i8] zeroinitializer }, align 32
@tda10048_readreg._entry_ptr = internal global ptr @tda10048_readreg._entry, section ".printk_index", align 4
@tda10048_readreg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", [63 x i8] zeroinitializer }, align 32
@tda10048_readreg._entry_ptr.7 = internal global ptr @tda10048_readreg._entry.5, section ".printk_index", align 4
@tda10048_establish_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014%s() tda10048_config.dtv6_if_freq_khz is not set (defaulting to %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tda10048_establish_defaults\00", [36 x i8] zeroinitializer }, align 32
@tda10048_establish_defaults._entry_ptr = internal global ptr @tda10048_establish_defaults._entry, section ".printk_index", align 4
@tda10048_establish_defaults._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014%s() tda10048_config.dtv7_if_freq_khz is not set (defaulting to %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@tda10048_establish_defaults._entry_ptr.12 = internal global ptr @tda10048_establish_defaults._entry.10, section ".printk_index", align 4
@tda10048_establish_defaults._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014%s() tda10048_config.dtv8_if_freq_khz is not set (defaulting to %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@tda10048_establish_defaults._entry_ptr.15 = internal global ptr @tda10048_establish_defaults._entry.13, section ".printk_index", align 4
@tda10048_establish_defaults._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s() tda10048_config.clk_freq_khz is not set (defaulting to %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tda10048_establish_defaults._entry_ptr.18 = internal global ptr @tda10048_establish_defaults._entry.16, section ".printk_index", align 4
@tda10048_set_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017tda10048: %s(bw = %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_set_if\00", [16 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr = internal global ptr @tda10048_set_if._entry, section ".printk_index", align 4
@tda10048_set_if._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s() no default\0A\00", [45 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.23 = internal global ptr @tda10048_set_if._entry.21, section ".printk_index", align 4
@tda10048_set_if._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Incorrect attach settings\0A\00", [62 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.26 = internal global ptr @tda10048_set_if._entry.24, section ".printk_index", align 4
@tda10048_set_if._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017tda10048: - freq_if_hz = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.29 = internal global ptr @tda10048_set_if._entry.27, section ".printk_index", align 4
@tda10048_set_if._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017tda10048: - xtal_hz = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.32 = internal global ptr @tda10048_set_if._entry.30, section ".printk_index", align 4
@tda10048_set_if._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda10048: - pll_mfactor = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.35 = internal global ptr @tda10048_set_if._entry.33, section ".printk_index", align 4
@tda10048_set_if._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda10048: - pll_nfactor = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.38 = internal global ptr @tda10048_set_if._entry.36, section ".printk_index", align 4
@tda10048_set_if._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.20, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda10048: - pll_pfactor = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.41 = internal global ptr @tda10048_set_if._entry.39, section ".printk_index", align 4
@tda10048_set_if._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.20, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda10048: - sample_freq = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_set_if._entry_ptr.44 = internal global ptr @tda10048_set_if._entry.42, section ".printk_index", align 4
@tda10048_set_phy2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10048_set_phy2\00", [46 x i8] zeroinitializer }, align 32
@tda10048_set_phy2._entry_ptr = internal global ptr @tda10048_set_phy2._entry, section ".printk_index", align 4
@tda10048_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017tda10048: %s(reg = 0x%02x, data = 0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10048_writereg\00", [46 x i8] zeroinitializer }, align 32
@tda10048_writereg._entry_ptr = internal global ptr @tda10048_writereg._entry, section ".printk_index", align 4
@tda10048_writereg._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: writereg error (ret == %i)\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_writereg._entry_ptr.50 = internal global ptr @tda10048_writereg._entry.48, section ".printk_index", align 4
@tda10048_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017tda10048: %s(bw=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10048_set_bandwidth\00", [41 x i8] zeroinitializer }, align 32
@tda10048_set_bandwidth._entry_ptr = internal global ptr @tda10048_set_bandwidth._entry, section ".printk_index", align 4
@tda10048_set_bandwidth._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() invalid bandwidth\0A\00", [38 x i8] zeroinitializer }, align 32
@tda10048_set_bandwidth._entry_ptr.55 = internal global ptr @tda10048_set_bandwidth._entry.53, section ".printk_index", align 4
@tda10048_set_wref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.56, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10048_set_wref\00", [46 x i8] zeroinitializer }, align 32
@tda10048_set_wref._entry_ptr = internal global ptr @tda10048_set_wref._entry, section ".printk_index", align 4
@tda10048_set_invwref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.57, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10048_set_invwref\00", [43 x i8] zeroinitializer }, align 32
@tda10048_set_invwref._entry_ptr = internal global ptr @tda10048_set_invwref._entry, section ".printk_index", align 4
@tda10048_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017tda10048: %s(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10048_i2c_gate_ctrl\00", [41 x i8] zeroinitializer }, align 32
@tda10048_i2c_gate_ctrl._entry_ptr = internal global ptr @tda10048_i2c_gate_ctrl._entry, section ".printk_index", align 4
@tda10048_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10048_release\00", [47 x i8] zeroinitializer }, align 32
@tda10048_release._entry_ptr = internal global ptr @tda10048_release._entry, section ".printk_index", align 4
@tda10048_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.61, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda10048_init\00", [18 x i8] zeroinitializer }, align 32
@tda10048_init._entry_ptr = internal global ptr @tda10048_init._entry, section ".printk_index", align 4
@init_tab = internal global { [41 x %struct.init_tab], [60 x i8] } { [41 x %struct.init_tab] [%struct.init_tab { i8 81, i16 8 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 81, i16 15 }, %struct.init_tab { i8 82, i16 10 }, %struct.init_tab { i8 83, i16 67 }, %struct.init_tab { i8 -122, i16 2 }, %struct.init_tab { i8 -121, i16 10 }, %struct.init_tab { i8 -118, i16 189 }, %struct.init_tab { i8 -117, i16 228 }, %struct.init_tab { i8 -116, i16 168 }, %struct.init_tab { i8 -115, i16 2 }, %struct.init_tab { i8 -120, i16 4 }, %struct.init_tab { i8 -119, i16 6 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 112, i16 22 }, %struct.init_tab { i8 98, i16 11 }, %struct.init_tab { i8 120, i16 0 }, %struct.init_tab { i8 121, i16 255 }, %struct.init_tab { i8 122, i16 0 }, %struct.init_tab { i8 123, i16 255 }, %struct.init_tab { i8 115, i16 0 }, %struct.init_tab { i8 114, i16 112 }, %struct.init_tab { i8 -62, i16 56 }, %struct.init_tab { i8 118, i16 18 }, %struct.init_tab { i8 80, i16 0 }, %struct.init_tab { i8 -31, i16 7 }, %struct.init_tab { i8 78, i16 0 }, %struct.init_tab { i8 -32, i16 192 }, %struct.init_tab { i8 68, i16 33 }, %struct.init_tab { i8 69, i16 0 }, %struct.init_tab { i8 70, i16 0 }, %struct.init_tab { i8 31, i16 4 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 16 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 -51, i16 0 }, %struct.init_tab { i8 31, i16 4 }], [60 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: waiting for firmware upload (%s)...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda10048_firmware_upload\00", [39 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr = internal global ptr @tda10048_firmware_upload._entry, section ".printk_index", align 4
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-fe-tda10048-1.0.fw\00", [41 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Upload failed. (file not found?)\0A\00", [56 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.67 = internal global ptr @tda10048_firmware_upload._entry.65, section ".printk_index", align 4
@tda10048_firmware_upload._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: firmware read %zu bytes.\0A\00", [32 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.70 = internal global ptr @tda10048_firmware_upload._entry.68, section ".printk_index", align 4
@tda10048_firmware_upload._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: firmware incorrect size\0A\00", [33 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.73 = internal global ptr @tda10048_firmware_upload._entry.71, section ".printk_index", align 4
@tda10048_firmware_upload._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: firmware uploading\0A\00", [38 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.76 = internal global ptr @tda10048_firmware_upload._entry.74, section ".printk_index", align 4
@tda10048_firmware_upload._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.63, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: firmware uploaded\0A\00", [39 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.79 = internal global ptr @tda10048_firmware_upload._entry.77, section ".printk_index", align 4
@tda10048_firmware_upload._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.63, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: firmware upload failed\0A\00", [34 x i8] zeroinitializer }, align 32
@tda10048_firmware_upload._entry_ptr.82 = internal global ptr @tda10048_firmware_upload._entry.80, section ".printk_index", align 4
@tda10048_writeregbulk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017tda10048: %s(%d, ?, len = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10048_writeregbulk\00", [42 x i8] zeroinitializer }, align 32
@tda10048_writeregbulk._entry_ptr = internal global ptr @tda10048_writeregbulk._entry, section ".printk_index", align 4
@tda10048_writeregbulk._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017tda10048: %s():  write len = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tda10048_writeregbulk._entry_ptr.87 = internal global ptr @tda10048_writeregbulk._entry.85, section ".printk_index", align 4
@tda10048_writeregbulk._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s(): writereg error err %i\0A\00", [33 x i8] zeroinitializer }, align 32
@tda10048_writeregbulk._entry_ptr.90 = internal global ptr @tda10048_writeregbulk._entry.88, section ".printk_index", align 4
@tda10048_output_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.91, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10048_output_mode\00", [43 x i8] zeroinitializer }, align 32
@tda10048_output_mode._entry_ptr = internal global ptr @tda10048_output_mode._entry, section ".printk_index", align 4
@tda10048_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.92, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10048_set_inversion\00", [41 x i8] zeroinitializer }, align 32
@tda10048_set_inversion._entry_ptr = internal global ptr @tda10048_set_inversion._entry, section ".printk_index", align 4
@tda10048_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017tda10048: %s(frequency=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10048_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10048_set_frontend._entry_ptr = internal global ptr @tda10048_set_frontend._entry, section ".printk_index", align 4
@tda10048_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.95, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10048_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10048_get_frontend._entry_ptr = internal global ptr @tda10048_get_frontend._entry, section ".printk_index", align 4
@tda10048_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017tda10048: %s() status =0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10048_read_status\00", [43 x i8] zeroinitializer }, align 32
@tda10048_read_status._entry_ptr = internal global ptr @tda10048_read_status._entry, section ".printk_index", align 4
@tda10048_read_ber.cber_current = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tda10048_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.98, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10048_read_ber\00", [46 x i8] zeroinitializer }, align 32
@tda10048_read_ber._entry_ptr = internal global ptr @tda10048_read_ber._entry, section ".printk_index", align 4
@tda10048_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.99, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda10048_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@tda10048_read_signal_strength._entry_ptr = internal global ptr @tda10048_read_signal_strength._entry, section ".printk_index", align 4
@tda10048_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.100, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10048_read_snr\00", [46 x i8] zeroinitializer }, align 32
@tda10048_read_snr._entry_ptr = internal global ptr @tda10048_read_snr._entry, section ".printk_index", align 4
@snr_tab = internal constant { [123 x %struct.snr_tab], [42 x i8] } { [123 x %struct.snr_tab] [%struct.snr_tab zeroinitializer, %struct.snr_tab { i8 1, i8 -10 }, %struct.snr_tab { i8 2, i8 -41 }, %struct.snr_tab { i8 3, i8 -58 }, %struct.snr_tab { i8 4, i8 -71 }, %struct.snr_tab { i8 5, i8 -80 }, %struct.snr_tab { i8 6, i8 -88 }, %struct.snr_tab { i8 7, i8 -95 }, %struct.snr_tab { i8 8, i8 -101 }, %struct.snr_tab { i8 9, i8 -106 }, %struct.snr_tab { i8 10, i8 -110 }, %struct.snr_tab { i8 11, i8 -115 }, %struct.snr_tab { i8 12, i8 -118 }, %struct.snr_tab { i8 13, i8 -122 }, %struct.snr_tab { i8 14, i8 -125 }, %struct.snr_tab { i8 15, i8 -128 }, %struct.snr_tab { i8 16, i8 125 }, %struct.snr_tab { i8 17, i8 122 }, %struct.snr_tab { i8 18, i8 120 }, %struct.snr_tab { i8 19, i8 118 }, %struct.snr_tab { i8 20, i8 115 }, %struct.snr_tab { i8 21, i8 113 }, %struct.snr_tab { i8 22, i8 111 }, %struct.snr_tab { i8 23, i8 109 }, %struct.snr_tab { i8 24, i8 107 }, %struct.snr_tab { i8 25, i8 106 }, %struct.snr_tab { i8 26, i8 104 }, %struct.snr_tab { i8 27, i8 102 }, %struct.snr_tab { i8 28, i8 101 }, %struct.snr_tab { i8 29, i8 99 }, %struct.snr_tab { i8 30, i8 98 }, %struct.snr_tab { i8 31, i8 96 }, %struct.snr_tab { i8 32, i8 95 }, %struct.snr_tab { i8 33, i8 94 }, %struct.snr_tab { i8 34, i8 92 }, %struct.snr_tab { i8 35, i8 91 }, %struct.snr_tab { i8 36, i8 90 }, %struct.snr_tab { i8 37, i8 89 }, %struct.snr_tab { i8 38, i8 88 }, %struct.snr_tab { i8 39, i8 86 }, %struct.snr_tab { i8 40, i8 85 }, %struct.snr_tab { i8 41, i8 84 }, %struct.snr_tab { i8 42, i8 83 }, %struct.snr_tab { i8 43, i8 82 }, %struct.snr_tab { i8 44, i8 81 }, %struct.snr_tab { i8 45, i8 80 }, %struct.snr_tab { i8 46, i8 79 }, %struct.snr_tab { i8 47, i8 78 }, %struct.snr_tab { i8 48, i8 77 }, %struct.snr_tab { i8 49, i8 76 }, %struct.snr_tab { i8 50, i8 76 }, %struct.snr_tab { i8 51, i8 75 }, %struct.snr_tab { i8 52, i8 74 }, %struct.snr_tab { i8 53, i8 73 }, %struct.snr_tab { i8 54, i8 72 }, %struct.snr_tab { i8 56, i8 71 }, %struct.snr_tab { i8 57, i8 70 }, %struct.snr_tab { i8 58, i8 69 }, %struct.snr_tab { i8 60, i8 68 }, %struct.snr_tab { i8 61, i8 67 }, %struct.snr_tab { i8 63, i8 66 }, %struct.snr_tab { i8 64, i8 65 }, %struct.snr_tab { i8 66, i8 64 }, %struct.snr_tab { i8 67, i8 63 }, %struct.snr_tab { i8 68, i8 62 }, %struct.snr_tab { i8 69, i8 62 }, %struct.snr_tab { i8 70, i8 61 }, %struct.snr_tab { i8 72, i8 60 }, %struct.snr_tab { i8 74, i8 59 }, %struct.snr_tab { i8 75, i8 58 }, %struct.snr_tab { i8 77, i8 57 }, %struct.snr_tab { i8 79, i8 56 }, %struct.snr_tab { i8 81, i8 55 }, %struct.snr_tab { i8 83, i8 54 }, %struct.snr_tab { i8 85, i8 53 }, %struct.snr_tab { i8 87, i8 52 }, %struct.snr_tab { i8 89, i8 51 }, %struct.snr_tab { i8 91, i8 50 }, %struct.snr_tab { i8 93, i8 49 }, %struct.snr_tab { i8 95, i8 48 }, %struct.snr_tab { i8 97, i8 47 }, %struct.snr_tab { i8 100, i8 46 }, %struct.snr_tab { i8 102, i8 45 }, %struct.snr_tab { i8 104, i8 44 }, %struct.snr_tab { i8 107, i8 43 }, %struct.snr_tab { i8 109, i8 42 }, %struct.snr_tab { i8 112, i8 41 }, %struct.snr_tab { i8 114, i8 40 }, %struct.snr_tab { i8 117, i8 39 }, %struct.snr_tab { i8 120, i8 38 }, %struct.snr_tab { i8 123, i8 37 }, %struct.snr_tab { i8 125, i8 36 }, %struct.snr_tab { i8 -128, i8 35 }, %struct.snr_tab { i8 -125, i8 34 }, %struct.snr_tab { i8 -122, i8 33 }, %struct.snr_tab { i8 -118, i8 32 }, %struct.snr_tab { i8 -115, i8 31 }, %struct.snr_tab { i8 -112, i8 30 }, %struct.snr_tab { i8 -109, i8 29 }, %struct.snr_tab { i8 -105, i8 28 }, %struct.snr_tab { i8 -102, i8 27 }, %struct.snr_tab { i8 -98, i8 26 }, %struct.snr_tab { i8 -94, i8 25 }, %struct.snr_tab { i8 -91, i8 24 }, %struct.snr_tab { i8 -87, i8 23 }, %struct.snr_tab { i8 -83, i8 22 }, %struct.snr_tab { i8 -79, i8 21 }, %struct.snr_tab { i8 -75, i8 20 }, %struct.snr_tab { i8 -70, i8 19 }, %struct.snr_tab { i8 -66, i8 18 }, %struct.snr_tab { i8 -62, i8 17 }, %struct.snr_tab { i8 -57, i8 16 }, %struct.snr_tab { i8 -52, i8 15 }, %struct.snr_tab { i8 -48, i8 14 }, %struct.snr_tab { i8 -43, i8 13 }, %struct.snr_tab { i8 -38, i8 12 }, %struct.snr_tab { i8 -33, i8 11 }, %struct.snr_tab { i8 -27, i8 10 }, %struct.snr_tab { i8 -22, i8 9 }, %struct.snr_tab { i8 -17, i8 8 }, %struct.snr_tab { i8 -11, i8 7 }, %struct.snr_tab { i8 -5, i8 6 }, %struct.snr_tab { i8 -1, i8 5 }], [42 x i8] zeroinitializer }, align 32
@tda10048_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.101, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10048_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@tda10048_read_ucblocks._entry_ptr = internal global ptr @tda10048_read_ucblocks._entry, section ".printk_index", align 4
@switch.table.tda10048_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.tda10048_get_frontend.102 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.tda10048_get_frontend.103 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 4000, i64 16000]
@__sancov_gen_cov_switch_values.105 = internal global [10 x i64] [i64 8, i64 16, i64 3300, i64 3500, i64 3800, i64 4000, i64 4300, i64 4500, i64 5000, i64 36130]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 120, i32 21 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1088, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"tda10048_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1143, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 240, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 245, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1054, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1061, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1068, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1075, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 414, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 428, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 442, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 447, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 448, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 449, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 450, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 451, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 457, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 297, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 218, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 223, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 387, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 398, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 333, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 363, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 680, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1042, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 754, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 150, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 479, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 486, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 490, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 497, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 500, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 552, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 555, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 259, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 275, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 280, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 696, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 564, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 720, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1024, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 792, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [13 x i8] c"cber_current\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 812, i32 13 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 816, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 843, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 990, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [8 x i8] c"snr_tab\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 858, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda10048.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1008, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [35 x i8] c"switch.table.tda10048_get_frontend\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [39 x i8] c"switch.table.tda10048_get_frontend.102\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [39 x i8] c"switch.table.tda10048_get_frontend.103\00", align 1
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tda10048_attach, ptr @__param_debug, ptr @tda10048_attach._entry, ptr @tda10048_attach._entry_ptr, ptr @tda10048_establish_defaults._entry, ptr @tda10048_establish_defaults._entry.10, ptr @tda10048_establish_defaults._entry.13, ptr @tda10048_establish_defaults._entry.16, ptr @tda10048_establish_defaults._entry_ptr, ptr @tda10048_establish_defaults._entry_ptr.12, ptr @tda10048_establish_defaults._entry_ptr.15, ptr @tda10048_establish_defaults._entry_ptr.18, ptr @tda10048_firmware_upload._entry, ptr @tda10048_firmware_upload._entry.65, ptr @tda10048_firmware_upload._entry.68, ptr @tda10048_firmware_upload._entry.71, ptr @tda10048_firmware_upload._entry.74, ptr @tda10048_firmware_upload._entry.77, ptr @tda10048_firmware_upload._entry.80, ptr @tda10048_firmware_upload._entry_ptr, ptr @tda10048_firmware_upload._entry_ptr.67, ptr @tda10048_firmware_upload._entry_ptr.70, ptr @tda10048_firmware_upload._entry_ptr.73, ptr @tda10048_firmware_upload._entry_ptr.76, ptr @tda10048_firmware_upload._entry_ptr.79, ptr @tda10048_firmware_upload._entry_ptr.82, ptr @tda10048_get_frontend._entry, ptr @tda10048_get_frontend._entry_ptr, ptr @tda10048_i2c_gate_ctrl._entry, ptr @tda10048_i2c_gate_ctrl._entry_ptr, ptr @tda10048_init._entry, ptr @tda10048_init._entry_ptr, ptr @tda10048_output_mode._entry, ptr @tda10048_output_mode._entry_ptr, ptr @tda10048_read_ber._entry, ptr @tda10048_read_ber._entry_ptr, ptr @tda10048_read_signal_strength._entry, ptr @tda10048_read_signal_strength._entry_ptr, ptr @tda10048_read_snr._entry, ptr @tda10048_read_snr._entry_ptr, ptr @tda10048_read_status._entry, ptr @tda10048_read_status._entry_ptr, ptr @tda10048_read_ucblocks._entry, ptr @tda10048_read_ucblocks._entry_ptr, ptr @tda10048_readreg._entry, ptr @tda10048_readreg._entry.5, ptr @tda10048_readreg._entry_ptr, ptr @tda10048_readreg._entry_ptr.7, ptr @tda10048_release._entry, ptr @tda10048_release._entry_ptr, ptr @tda10048_set_bandwidth._entry, ptr @tda10048_set_bandwidth._entry.53, ptr @tda10048_set_bandwidth._entry_ptr, ptr @tda10048_set_bandwidth._entry_ptr.55, ptr @tda10048_set_frontend._entry, ptr @tda10048_set_frontend._entry_ptr, ptr @tda10048_set_if._entry, ptr @tda10048_set_if._entry.21, ptr @tda10048_set_if._entry.24, ptr @tda10048_set_if._entry.27, ptr @tda10048_set_if._entry.30, ptr @tda10048_set_if._entry.33, ptr @tda10048_set_if._entry.36, ptr @tda10048_set_if._entry.39, ptr @tda10048_set_if._entry.42, ptr @tda10048_set_if._entry_ptr, ptr @tda10048_set_if._entry_ptr.23, ptr @tda10048_set_if._entry_ptr.26, ptr @tda10048_set_if._entry_ptr.29, ptr @tda10048_set_if._entry_ptr.32, ptr @tda10048_set_if._entry_ptr.35, ptr @tda10048_set_if._entry_ptr.38, ptr @tda10048_set_if._entry_ptr.41, ptr @tda10048_set_if._entry_ptr.44, ptr @tda10048_set_inversion._entry, ptr @tda10048_set_inversion._entry_ptr, ptr @tda10048_set_invwref._entry, ptr @tda10048_set_invwref._entry_ptr, ptr @tda10048_set_phy2._entry, ptr @tda10048_set_phy2._entry_ptr, ptr @tda10048_set_wref._entry, ptr @tda10048_set_wref._entry_ptr, ptr @tda10048_writereg._entry, ptr @tda10048_writereg._entry.48, ptr @tda10048_writereg._entry_ptr, ptr @tda10048_writereg._entry_ptr.50, ptr @tda10048_writeregbulk._entry, ptr @tda10048_writeregbulk._entry.85, ptr @tda10048_writeregbulk._entry.88, ptr @tda10048_writeregbulk._entry_ptr, ptr @tda10048_writeregbulk._entry_ptr.87, ptr @tda10048_writeregbulk._entry_ptr.90, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tda10048_ops, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @init_tab, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @tda10048_read_ber.cber_current, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @snr_tab, ptr @.str.101, ptr @switch.table.tda10048_get_frontend, ptr @switch.table.tda10048_get_frontend.102, ptr @switch.table.tda10048_get_frontend.103], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_readreg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_establish_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_establish_defaults._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_establish_defaults._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_establish_defaults._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_if._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_phy2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_writereg._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_bandwidth._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_wref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_invwref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_firmware_upload._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_writeregbulk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_writeregbulk._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_writeregbulk._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_output_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_ber.cber_current to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snr_tab to i32), i32 246, i32 288, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda10048_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda10048_get_frontend.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda10048_get_frontend.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10048_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1096) #12
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %do.end3.error_crit_edge, label %if.end7

do.end3.error_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end7:                                          ; preds = %do.end3
  %config8 = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %config8, ptr %config, i32 18)
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %no_firmware = getelementptr inbounds %struct.tda10048_config, ptr %config, i32 0, i32 9
  %4 = ptrtoint ptr %no_firmware to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_firmware, align 1, !range !229
  %6 = zext i8 %5 to i32
  %fwloaded = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %fwloaded to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fwloaded, align 8
  %bandwidth = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8000000, ptr %bandwidth, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %9 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %10 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %config8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config8, align 4
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf8.i, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp ugt i32 %23, 1
  br i1 %cmp.i, label %do.end.i, label %if.end7.do.end14.i_crit_edge

if.end7.do.end14.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %if.end7.do.end14.i_crit_edge
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %call16.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %26 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %27)
  %cmp12.not = icmp eq i8 %27, 72
  br i1 %cmp12.not, label %if.end15, label %tda10048_readreg.exit.error_crit_edge

tda10048_readreg.exit.error_crit_edge:            ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end15:                                         ; preds = %tda10048_readreg.exit
  %frontend = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %28 = call ptr @memcpy(ptr %ops, ptr @tda10048_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %set_pll = getelementptr inbounds %struct.tda10048_config, ptr %config, i32 0, i32 10
  %30 = ptrtoint ptr %set_pll to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %set_pll, align 2, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool17.not = icmp eq i8 %31, 0
  br i1 %tobool17.not, label %if.end15.if.end25_crit_edge, label %if.then18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %pll_m = getelementptr inbounds %struct.tda10048_config, ptr %config, i32 0, i32 11
  %32 = ptrtoint ptr %pll_m to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pll_m, align 1
  %conv19 = zext i8 %33 to i32
  %pll_n = getelementptr inbounds %struct.tda10048_config, ptr %config, i32 0, i32 13
  %34 = ptrtoint ptr %pll_n to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pll_n, align 1
  %conv20 = zext i8 %35 to i32
  %pll_p = getelementptr inbounds %struct.tda10048_config, ptr %config, i32 0, i32 12
  %36 = ptrtoint ptr %pll_p to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pll_p, align 2
  %conv21 = zext i8 %37 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.end15.if.end25_crit_edge
  %conv19.sink = phi i32 [ %conv19, %if.then18 ], [ 10, %if.end15.if.end25_crit_edge ]
  %conv20.sink = phi i32 [ %conv20, %if.then18 ], [ 3, %if.end15.if.end25_crit_edge ]
  %conv21.sink = phi i32 [ %conv21, %if.then18 ], [ 0, %if.end15.if.end25_crit_edge ]
  %38 = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv19.sink, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv20.sink, ptr %40, align 8
  %42 = getelementptr inbounds %struct.tda10048_state, ptr %call7.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv21.sink, ptr %42, align 4
  %44 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %demodulator_priv, align 8
  %dtv6_if_freq_khz.i = getelementptr inbounds %struct.tda10048_state, ptr %45, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %dtv6_if_freq_khz.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dtv6_if_freq_khz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i67 = icmp eq i16 %47, 0
  br i1 %cmp.i67, label %if.then.i, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %dtv6_if_freq_khz.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 4300, ptr %dtv6_if_freq_khz.i, align 2
  %call.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 4300) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end25.if.end.i_crit_edge
  %dtv7_if_freq_khz.i = getelementptr inbounds %struct.tda10048_state, ptr %45, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %dtv7_if_freq_khz.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dtv7_if_freq_khz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp7.i = icmp eq i16 %50, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dtv7_if_freq_khz.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 4300, ptr %dtv7_if_freq_khz.i, align 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 4300) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then9.i, %if.end.i.if.end18.i_crit_edge
  %dtv8_if_freq_khz.i = getelementptr inbounds %struct.tda10048_state, ptr %45, i32 0, i32 1, i32 6
  %52 = ptrtoint ptr %dtv8_if_freq_khz.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dtv8_if_freq_khz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp20.i = icmp eq i16 %53, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end18.i.if.end31.i_crit_edge

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dtv8_if_freq_khz.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 4300, ptr %dtv8_if_freq_khz.i, align 2
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 4300) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end31.i_crit_edge
  %clk_freq_khz.i = getelementptr inbounds %struct.tda10048_state, ptr %45, i32 0, i32 1, i32 7
  %55 = ptrtoint ptr %clk_freq_khz.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %clk_freq_khz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp33.i = icmp eq i16 %56, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end31.i.tda10048_establish_defaults.exit_crit_edge

if.end31.i.tda10048_establish_defaults.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_establish_defaults.exit

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %clk_freq_khz.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 16000, ptr %clk_freq_khz.i, align 2
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef 16000) #11
  br label %tda10048_establish_defaults.exit

tda10048_establish_defaults.exit:                 ; preds = %if.then35.i, %if.end31.i.tda10048_establish_defaults.exit_crit_edge
  %call28 = call fastcc i32 @tda10048_set_if(ptr noundef %frontend, i32 noundef 8000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end32, label %tda10048_establish_defaults.exit.error_crit_edge

tda10048_establish_defaults.exit.error_crit_edge: ; preds = %tda10048_establish_defaults.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end32:                                         ; preds = %tda10048_establish_defaults.exit
  %call34 = call fastcc i32 @tda10048_set_bandwidth(ptr noundef %frontend, i32 noundef 8000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end38, label %if.end32.error_crit_edge

if.end32.error_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = call i32 @tda10048_i2c_gate_ctrl(ptr noundef %frontend, i32 noundef 0)
  br label %cleanup

error:                                            ; preds = %if.end32.error_crit_edge, %tda10048_establish_defaults.exit.error_crit_edge, %tda10048_readreg.exit.error_crit_edge, %do.end3.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end38
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end38 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda10048_set_if(ptr nocapture noundef readonly %fe, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %buf.i51.i = alloca [2 x i8], align 1
  %msg.i52.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %bw) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bw, label %do.end11 [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb5
    i32 8000000, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dtv6_if_freq_khz = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dtv7_if_freq_khz = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 5
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dtv8_if_freq_khz = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 6
  br label %sw.epilog

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb
  %if_freq_khz.0.in.in = phi ptr [ %dtv8_if_freq_khz, %sw.bb7 ], [ %dtv7_if_freq_khz, %sw.bb5 ], [ %dtv6_if_freq_khz, %sw.bb ]
  %4 = ptrtoint ptr %if_freq_khz.0.in.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %if_freq_khz.0.in = load i16, ptr %if_freq_khz.0.in.in, align 2
  %clk_freq_khz16 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %clk_freq_khz16 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %clk_freq_khz16, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %6, label %sw.epilog.do.end36_crit_edge [
    i16 4000, label %land.lhs.true
    i16 16000, label %land.lhs.true.1
  ]

sw.epilog.do.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29406, i16 %if_freq_khz.0.in)
  %cmp22 = icmp eq i16 %if_freq_khz.0.in, -29406
  br i1 %cmp22, label %land.lhs.true.do.body40_crit_edge, label %land.lhs.true.do.end36_crit_edge

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true.do.body40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

land.lhs.true.1:                                  ; preds = %sw.epilog
  %8 = zext i16 %if_freq_khz.0.in to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %if_freq_khz.0.in, label %land.lhs.true.1.do.end36_crit_edge [
    i16 3300, label %land.lhs.true.1.do.body40_crit_edge
    i16 3500, label %do.body40.fold.split
    i16 3800, label %do.body40.fold.split199
    i16 4000, label %do.body40.fold.split200
    i16 4300, label %do.body40.fold.split201
    i16 4500, label %do.body40.fold.split202
    i16 5000, label %do.body40.fold.split203
    i16 -29406, label %do.body40.fold.split204
  ]

land.lhs.true.1.do.body40_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

land.lhs.true.1.do.end36_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %land.lhs.true.1.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %sw.epilog.do.end36_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20) #11
  br label %cleanup

do.body40.fold.split:                             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split199:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split200:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split201:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split202:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split203:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40.fold.split204:                          ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

do.body40:                                        ; preds = %do.body40.fold.split204, %do.body40.fold.split203, %do.body40.fold.split202, %do.body40.fold.split201, %do.body40.fold.split200, %do.body40.fold.split199, %do.body40.fold.split, %land.lhs.true.1.do.body40_crit_edge, %land.lhs.true.do.body40_crit_edge
  %.lcssa177 = phi i32 [ 4000000, %land.lhs.true.do.body40_crit_edge ], [ 16000000, %land.lhs.true.1.do.body40_crit_edge ], [ 16000000, %do.body40.fold.split ], [ 16000000, %do.body40.fold.split199 ], [ 16000000, %do.body40.fold.split200 ], [ 16000000, %do.body40.fold.split201 ], [ 16000000, %do.body40.fold.split202 ], [ 16000000, %do.body40.fold.split203 ], [ 16000000, %do.body40.fold.split204 ]
  %.lcssa = phi i32 [ 36130000, %land.lhs.true.do.body40_crit_edge ], [ 3300000, %land.lhs.true.1.do.body40_crit_edge ], [ 3500000, %do.body40.fold.split ], [ 3800000, %do.body40.fold.split199 ], [ 4000000, %do.body40.fold.split200 ], [ 4300000, %do.body40.fold.split201 ], [ 4500000, %do.body40.fold.split202 ], [ 5000000, %do.body40.fold.split203 ], [ 36130000, %do.body40.fold.split204 ]
  %freq_if_hz = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %freq_if_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.lcssa, ptr %freq_if_hz, align 4
  %xtal_hz = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %xtal_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.lcssa177, ptr %xtal_hz, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp41.not = icmp eq i32 %11, 0
  br i1 %cmp41.not, label %do.body40.do.end101_crit_edge, label %do.body53

do.body40.do.end101_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101

do.body53:                                        ; preds = %do.body40
  %freq_if_hz48 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %freq_if_hz48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq_if_hz48, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %13) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp54.not = icmp eq i32 %.pr, 0
  br i1 %cmp54.not, label %do.body53.do.end101_crit_edge, label %do.body66

do.body53.do.end101_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101

do.body66:                                        ; preds = %do.body53
  %xtal_hz61 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %xtal_hz61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xtal_hz61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %15) #11
  %.pr161 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr161)
  %cmp67.not = icmp eq i32 %.pr161, 0
  br i1 %cmp67.not, label %do.body66.do.end101_crit_edge, label %do.body78

do.body66.do.end101_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101

do.body78:                                        ; preds = %do.body66
  %pll_mfactor = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %pll_mfactor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_mfactor, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %17) #11
  %.pr163.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr163.pr)
  %cmp79.not = icmp eq i32 %.pr163.pr, 0
  br i1 %cmp79.not, label %do.body78.do.end101_crit_edge, label %do.body90

do.body78.do.end101_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101

do.body90:                                        ; preds = %do.body78
  %pll_nfactor = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %pll_nfactor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pll_nfactor, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %19) #11
  %.pr165 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr165)
  %cmp91.not = icmp eq i32 %.pr165, 0
  br i1 %cmp91.not, label %do.body90.do.end101_crit_edge, label %do.end96

do.body90.do.end101_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %pll_pfactor = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %pll_pfactor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pll_pfactor, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %21) #11
  br label %do.end101

do.end101:                                        ; preds = %do.end96, %do.body90.do.end101_crit_edge, %do.body78.do.end101_crit_edge, %do.body66.do.end101_crit_edge, %do.body53.do.end101_crit_edge, %do.body40.do.end101_crit_edge
  %xtal_hz102 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %xtal_hz102 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xtal_hz102, align 4
  %pll_mfactor103 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %pll_mfactor103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pll_mfactor103, align 4
  %add = add i32 %25, 45
  %mul104 = mul i32 %add, %23
  %sample_freq = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 9
  %pll_nfactor105 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %pll_nfactor105 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pll_nfactor105, align 4
  %add106 = add i32 %27, 1
  %div = udiv i32 %mul104, %add106
  %pll_pfactor108 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %pll_pfactor108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pll_pfactor108, align 4
  %add109 = add i32 %29, 4
  %div111 = udiv i32 %div, %add109
  %30 = ptrtoint ptr %sample_freq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div111, ptr %sample_freq, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp113.not = icmp eq i32 %31, 0
  br i1 %cmp113.not, label %do.end124.thread, label %do.end124

do.end124.thread:                                 ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sample_freq, align 4
  %freq_if_hz126168 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %freq_if_hz126168 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %freq_if_hz126168, align 4
  %36 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demodulator_priv, align 4
  br label %do.end3.i

do.end124:                                        ; preds = %do.end101
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %div111) #11
  %.pr167 = load i32, ptr @debug, align 4
  %38 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sample_freq, align 4
  %freq_if_hz126 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %freq_if_hz126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %freq_if_hz126, align 4
  %42 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr167)
  %cmp.not.i = icmp eq i32 %.pr167, 0
  br i1 %cmp.not.i, label %do.end124.do.end3.i_crit_edge, label %do.end.i

do.end124.do.end3.i_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end124.do.end3.i_crit_edge, %do.end124.thread
  %44 = phi ptr [ %37, %do.end124.thread ], [ %43, %do.end.i ], [ %43, %do.end124.do.end3.i_crit_edge ]
  %45 = phi i32 [ %35, %do.end124.thread ], [ %41, %do.end.i ], [ %41, %do.end124.do.end3.i_crit_edge ]
  %46 = phi i32 [ %33, %do.end124.thread ], [ %39, %do.end.i ], [ %39, %do.end124.do.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp4.i = icmp eq i32 %46, 0
  br i1 %cmp4.i, label %do.end3.i.cleanup_crit_edge, label %if.end6.i

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %do.end3.i
  %div1.i = lshr i32 %46, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %45)
  %cmp7.i = icmp ugt i32 %div1.i, %45
  br i1 %cmp7.i, label %if.then8.i, label %if.else420.i

if.then8.i:                                       ; preds = %if.end6.i
  %conv.i = zext i32 %45 to i64
  %mul9.i = mul nuw nsw i64 %conv.i, 327680
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i)
  %cmp182.i = icmp ult i64 %mul9.i, 4294967296
  br i1 %cmp182.i, label %if.then186.i, label %if.else192.i, !prof !230

if.then186.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv187.i = trunc i64 %mul9.i to i32
  %div190.i = udiv i32 %conv187.i, %46
  %conv191.i = zext i32 %div190.i to i64
  br label %if.then229.i

if.else192.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %mul9.i) #13, !srcloc !231
  %asmresult1.i.i = extractvalue { i64, i64 } %47, 1
  br label %if.then229.i

if.then229.i:                                     ; preds = %if.else192.i, %if.then186.i
  %t.0.i = phi i64 [ %conv191.i, %if.then186.i ], [ %asmresult1.i.i, %if.else192.i ]
  %add198.i = add i64 %t.0.i, 5
  %div3094.i = lshr i64 %add198.i, 1
  %48 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3094.i, i64 3689348814741910323) #13, !srcloc !232
  %49 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3094.i, i64 %48) #13, !srcloc !233
  %extract.t212 = trunc i64 %49 to i8
  %extract215 = lshr i64 %49, 8
  %extract.t216 = trunc i64 %extract215 to i8
  br label %if.end870.i

if.else420.i:                                     ; preds = %if.end6.i
  %sub421.i = sub i32 %46, %45
  %conv422.i = zext i32 %sub421.i to i64
  %mul424.i = mul nuw nsw i64 %conv422.i, 327680
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul424.i)
  %cmp626.i = icmp ult i64 %mul424.i, 4294967296
  br i1 %cmp626.i, label %if.then634.i, label %if.else640.i, !prof !230

if.then634.i:                                     ; preds = %if.else420.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv635.i = trunc i64 %mul424.i to i32
  %div638.i = udiv i32 %conv635.i, %46
  %conv639.i = zext i32 %div638.i to i64
  br label %if.end866.i

if.else640.i:                                     ; preds = %if.else420.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %mul424.i) #13, !srcloc !231
  %asmresult1.i41.i = extractvalue { i64, i64 } %50, 1
  br label %if.end866.i

if.end866.i:                                      ; preds = %if.else640.i, %if.then634.i
  %t.1.i = phi i64 [ %conv639.i, %if.then634.i ], [ %asmresult1.i41.i, %if.else640.i ]
  %add646.i = add i64 %t.1.i, 5
  %div7572.i = lshr i64 %add646.i, 1
  %51 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div7572.i, i64 3689348814741910323) #13, !srcloc !232
  %52 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div7572.i, i64 %51) #13, !srcloc !233
  %add869.i = sub i64 0, %52
  %extract.t211 = trunc i64 %add869.i to i8
  %extract213 = lshr i64 %add869.i, 8
  %extract.t214 = trunc i64 %extract213 to i8
  br label %if.end870.i

if.end870.i:                                      ; preds = %if.end866.i, %if.then229.i
  %add869.i.sink210.off0 = phi i8 [ %extract.t211, %if.end866.i ], [ %extract.t212, %if.then229.i ]
  %add869.i.sink210.off8 = phi i8 [ %extract.t214, %if.end866.i ], [ %extract.t216, %if.then229.i ]
  %config1.i.i = getelementptr inbounds %struct.tda10048_state, ptr %44, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -122, ptr %buf.i.i, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %add869.i.sink210.off0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %56 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196607, ptr %56, align 4
  %58 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %config1.i.i, align 2
  %conv.i50.i = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i50.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i.i = icmp ugt i32 %63, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end870.i.do.end8.i.i_crit_edge

if.end870.i.do.end8.i.i_crit_edge:                ; preds = %if.end870.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %if.end870.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i = zext i8 %add869.i.sink210.off0 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 134, i32 noundef %conv6.i.i) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %if.end870.i.do.end8.i.i_crit_edge
  %64 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %44, align 4
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.not.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp10.not.i.i, label %do.end8.i.i.tda10048_writereg.exit.i_crit_edge, label %do.end15.i.i

do.end8.i.i.tda10048_writereg.exit.i_crit_edge:   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i

do.end15.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i) #11
  br label %tda10048_writereg.exit.i

tda10048_writereg.exit.i:                         ; preds = %do.end15.i.i, %do.end8.i.i.tda10048_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i51.i) #8
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i51.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i51.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -121, ptr %buf.i51.i, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %add869.i.sink210.off8, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52.i) #8
  %69 = getelementptr inbounds i8, ptr %msg.i52.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %config1.i.i, align 2
  %conv.i54.i = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i52.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i54.i, ptr %msg.i52.i, align 4
  %flags.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i55.i, align 2
  %buf2.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf2.i57.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i51.i, ptr %buf2.i57.i, align 4
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i58.i = icmp ugt i32 %76, 1
  br i1 %cmp.i58.i, label %do.end.i61.i, label %tda10048_writereg.exit.i.do.end8.i64.i_crit_edge

tda10048_writereg.exit.i.do.end8.i64.i_crit_edge: ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i64.i

do.end.i61.i:                                     ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i59.i = zext i8 %add869.i.sink210.off8 to i32
  %call.i60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 135, i32 noundef %conv6.i59.i) #11
  br label %do.end8.i64.i

do.end8.i64.i:                                    ; preds = %do.end.i61.i, %tda10048_writereg.exit.i.do.end8.i64.i_crit_edge
  %77 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %44, align 4
  %call9.i62.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i52.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i62.i)
  %cmp10.not.i63.i = icmp eq i32 %call9.i62.i, 1
  br i1 %cmp10.not.i63.i, label %do.end8.i64.i.tda10048_writereg.exit69.i_crit_edge, label %do.end15.i66.i

do.end8.i64.i.tda10048_writereg.exit69.i_crit_edge: ; preds = %do.end8.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit69.i

do.end15.i66.i:                                   ; preds = %do.end8.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i62.i) #11
  br label %tda10048_writereg.exit69.i

tda10048_writereg.exit69.i:                       ; preds = %do.end15.i66.i, %do.end8.i64.i.tda10048_writereg.exit69.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i51.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tda10048_writereg.exit69.i, %do.end3.i.cleanup_crit_edge, %do.end36, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end36 ], [ 0, %do.end3.i.cleanup_crit_edge ], [ 0, %tda10048_writereg.exit69.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda10048_set_bandwidth(ptr nocapture noundef readonly %fe, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  %buf.i12.i20 = alloca [2 x i8], align 1
  %msg.i13.i21 = alloca %struct.i2c_msg, align 4
  %buf.i.i22 = alloca [2 x i8], align 1
  %msg.i.i23 = alloca %struct.i2c_msg, align 4
  %buf.i50.i = alloca [2 x i8], align 1
  %msg.i51.i = alloca %struct.i2c_msg, align 4
  %buf.i31.i = alloca [2 x i8], align 1
  %msg.i32.i = alloca %struct.i2c_msg, align 4
  %buf.i12.i = alloca [2 x i8], align 1
  %msg.i13.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %bw) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %bw, label %do.end9 [
    i32 6000000, label %do.end3.sw.bb_crit_edge
    i32 7000000, label %do.end3.sw.bb_crit_edge100
    i32 8000000, label %do.end3.sw.bb_crit_edge101
  ]

do.end3.sw.bb_crit_edge101:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end3.sw.bb_crit_edge100:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end3.sw.bb_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end3.sw.bb_crit_edge, %do.end3.sw.bb_crit_edge100, %do.end3.sw.bb_crit_edge101
  %sample_freq = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_freq, align 4
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %sw.bb.do.end3.i_crit_edge, label %do.end.i

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.56) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i = icmp eq i32 %5, 0
  br i1 %cmp4.i, label %do.end3.i.tda10048_set_wref.exit_crit_edge, label %if.else193.i

do.end3.i.tda10048_set_wref.exit_crit_edge:       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_set_wref.exit

if.else193.i:                                     ; preds = %do.end3.i
  %mul9.i = mul i32 %5, 7
  %mul.i = mul nuw nsw i32 %bw, 10
  %conv.i = zext i32 %mul.i to i64
  %mul8.i = shl nuw nsw i64 %conv.i, 31
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul9.i, i64 %mul8.i) #13, !srcloc !231
  %asmresult1.i.i = extractvalue { i64, i64 } %9, 1
  %add199.i = add i64 %asmresult1.i.i, 5
  %div3101.i = lshr i64 %add199.i, 1
  %10 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3101.i, i64 3689348814741910323) #13, !srcloc !232
  %11 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3101.i, i64 %10) #13, !srcloc !233
  %conv421.i = trunc i64 %11 to i8
  %config1.i.i = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -118, ptr %buf.i.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv421.i, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %17 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %config1.i.i, align 2
  %conv.i11.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i11.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i = icmp ugt i32 %22, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else193.i.do.end8.i.i_crit_edge

if.else193.i.do.end8.i.i_crit_edge:               ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

do.end.i.i:                                       ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = trunc i64 %11 to i32
  %conv6.i.i = and i32 %23, 255
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 138, i32 noundef %conv6.i.i) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i.i, %if.else193.i.do.end8.i.i_crit_edge
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.not.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp10.not.i.i, label %do.end8.i.i.tda10048_writereg.exit.i_crit_edge, label %do.end15.i.i

do.end8.i.i.tda10048_writereg.exit.i_crit_edge:   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i

do.end15.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i) #11
  br label %tda10048_writereg.exit.i

tda10048_writereg.exit.i:                         ; preds = %do.end15.i.i, %do.end8.i.i.tda10048_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  %shr423.i = lshr i64 %11, 8
  %conv424.i = trunc i64 %shr423.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i12.i) #8
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i12.i, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i12.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -117, ptr %buf.i12.i, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv424.i, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13.i) #8
  %29 = getelementptr inbounds i8, ptr %msg.i13.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %config1.i.i, align 2
  %conv.i15.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i13.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i15.i, ptr %msg.i13.i, align 4
  %flags.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i16.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i16.i, align 2
  %buf2.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf2.i18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i12.i, ptr %buf2.i18.i, align 4
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i19.i = icmp ugt i32 %36, 1
  br i1 %cmp.i19.i, label %do.end.i22.i, label %tda10048_writereg.exit.i.do.end8.i25.i_crit_edge

tda10048_writereg.exit.i.do.end8.i25.i_crit_edge: ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i25.i

do.end.i22.i:                                     ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = trunc i64 %shr423.i to i32
  %conv6.i20.i = and i32 %37, 255
  %call.i21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 139, i32 noundef %conv6.i20.i) #11
  br label %do.end8.i25.i

do.end8.i25.i:                                    ; preds = %do.end.i22.i, %tda10048_writereg.exit.i.do.end8.i25.i_crit_edge
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  %call9.i23.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i13.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i23.i)
  %cmp10.not.i24.i = icmp eq i32 %call9.i23.i, 1
  br i1 %cmp10.not.i24.i, label %do.end8.i25.i.tda10048_writereg.exit30.i_crit_edge, label %do.end15.i27.i

do.end8.i25.i.tda10048_writereg.exit30.i_crit_edge: ; preds = %do.end8.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit30.i

do.end15.i27.i:                                   ; preds = %do.end8.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i23.i) #11
  br label %tda10048_writereg.exit30.i

tda10048_writereg.exit30.i:                       ; preds = %do.end15.i27.i, %do.end8.i25.i.tda10048_writereg.exit30.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12.i) #8
  %shr426.i = lshr i64 %11, 16
  %conv427.i = trunc i64 %shr426.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #8
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -116, ptr %buf.i31.i, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv427.i, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32.i) #8
  %43 = getelementptr inbounds i8, ptr %msg.i32.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %config1.i.i, align 2
  %conv.i34.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i32.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i34.i, ptr %msg.i32.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i35.i, align 2
  %buf2.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf2.i37.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i31.i, ptr %buf2.i37.i, align 4
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i38.i = icmp ugt i32 %50, 1
  br i1 %cmp.i38.i, label %do.end.i41.i, label %tda10048_writereg.exit30.i.do.end8.i44.i_crit_edge

tda10048_writereg.exit30.i.do.end8.i44.i_crit_edge: ; preds = %tda10048_writereg.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i44.i

do.end.i41.i:                                     ; preds = %tda10048_writereg.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = trunc i64 %shr426.i to i32
  %conv6.i39.i = and i32 %51, 255
  %call.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 140, i32 noundef %conv6.i39.i) #11
  br label %do.end8.i44.i

do.end8.i44.i:                                    ; preds = %do.end.i41.i, %tda10048_writereg.exit30.i.do.end8.i44.i_crit_edge
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %7, align 4
  %call9.i42.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i42.i)
  %cmp10.not.i43.i = icmp eq i32 %call9.i42.i, 1
  br i1 %cmp10.not.i43.i, label %do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge, label %do.end15.i46.i

do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge: ; preds = %do.end8.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit49.i

do.end15.i46.i:                                   ; preds = %do.end8.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i42.i) #11
  br label %tda10048_writereg.exit49.i

tda10048_writereg.exit49.i:                       ; preds = %do.end15.i46.i, %do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #8
  %shr429.i = lshr i64 %11, 24
  %conv430.i = trunc i64 %shr429.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i50.i) #8
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i50.i, i32 0, i32 1
  %55 = ptrtoint ptr %buf.i50.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -115, ptr %buf.i50.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv430.i, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51.i) #8
  %57 = getelementptr inbounds i8, ptr %msg.i51.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 196607, ptr %57, align 4
  %59 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %config1.i.i, align 2
  %conv.i53.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i51.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i53.i, ptr %msg.i51.i, align 4
  %flags.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i54.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i54.i, align 2
  %buf2.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i, i32 0, i32 3
  %63 = ptrtoint ptr %buf2.i56.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i50.i, ptr %buf2.i56.i, align 4
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i57.i = icmp ugt i32 %64, 1
  br i1 %cmp.i57.i, label %do.end.i60.i, label %tda10048_writereg.exit49.i.do.end8.i63.i_crit_edge

tda10048_writereg.exit49.i.do.end8.i63.i_crit_edge: ; preds = %tda10048_writereg.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i63.i

do.end.i60.i:                                     ; preds = %tda10048_writereg.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = trunc i64 %shr429.i to i32
  %conv6.i58.i = and i32 %65, 255
  %call.i59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 141, i32 noundef %conv6.i58.i) #11
  br label %do.end8.i63.i

do.end8.i63.i:                                    ; preds = %do.end.i60.i, %tda10048_writereg.exit49.i.do.end8.i63.i_crit_edge
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %7, align 4
  %call9.i61.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i51.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i61.i)
  %cmp10.not.i62.i = icmp eq i32 %call9.i61.i, 1
  br i1 %cmp10.not.i62.i, label %do.end8.i63.i.tda10048_writereg.exit68.i_crit_edge, label %do.end15.i65.i

do.end8.i63.i.tda10048_writereg.exit68.i_crit_edge: ; preds = %do.end8.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit68.i

do.end15.i65.i:                                   ; preds = %do.end8.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i61.i) #11
  br label %tda10048_writereg.exit68.i

tda10048_writereg.exit68.i:                       ; preds = %do.end15.i65.i, %do.end8.i63.i.tda10048_writereg.exit68.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i50.i) #8
  br label %tda10048_set_wref.exit

tda10048_set_wref.exit:                           ; preds = %tda10048_writereg.exit68.i, %do.end3.i.tda10048_set_wref.exit_crit_edge
  %68 = ptrtoint ptr %sample_freq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sample_freq, align 4
  %70 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %demodulator_priv, align 4
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not.i25 = icmp eq i32 %72, 0
  br i1 %cmp.not.i25, label %tda10048_set_wref.exit.do.end3.i29_crit_edge, label %do.end.i27

tda10048_set_wref.exit.do.end3.i29_crit_edge:     ; preds = %tda10048_set_wref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i29

do.end.i27:                                       ; preds = %tda10048_set_wref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.57) #11
  br label %do.end3.i29

do.end3.i29:                                      ; preds = %do.end.i27, %tda10048_set_wref.exit.do.end3.i29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp4.i28 = icmp eq i32 %69, 0
  br i1 %cmp4.i28, label %do.end3.i29.tda10048_set_invwref.exit_crit_edge, label %if.end6.i33

do.end3.i29.tda10048_set_invwref.exit_crit_edge:  ; preds = %do.end3.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_set_invwref.exit

if.end6.i33:                                      ; preds = %do.end3.i29
  %conv.i30 = zext i32 %69 to i64
  %mul8.i31 = mul nuw nsw i64 %conv.i30, 2240
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul8.i31)
  %cmp180.i = icmp ult i64 %mul8.i31, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !230

if.then184.i:                                     ; preds = %if.end6.i33
  call void @__sanitizer_cov_trace_pc() #10
  %conv185.i = trunc i64 %mul8.i31 to i32
  %div188.i = udiv i32 %conv185.i, %bw
  %conv189.i = zext i32 %div188.i to i64
  br label %if.end416.i

if.else190.i:                                     ; preds = %if.end6.i33
  call void @__sanitizer_cov_trace_pc() #10
  %73 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %bw, i64 %mul8.i31) #13, !srcloc !231
  %asmresult1.i.i70 = extractvalue { i64, i64 } %73, 1
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.else190.i, %if.then184.i
  %t.0.i71 = phi i64 [ %conv189.i, %if.then184.i ], [ %asmresult1.i.i70, %if.else190.i ]
  %add196.i = add i64 %t.0.i71, 5
  %div3071.i = lshr i64 %add196.i, 1
  %74 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3071.i, i64 3689348814741910323) #13, !srcloc !232
  %75 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div3071.i, i64 %74) #13, !srcloc !233
  %conv418.i = trunc i64 %75 to i8
  %config1.i.i72 = getelementptr inbounds %struct.tda10048_state, ptr %71, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i22) #8
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i.i22, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i.i22 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -120, ptr %buf.i.i22, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv418.i, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i23) #8
  %79 = getelementptr inbounds i8, ptr %msg.i.i23, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %config1.i.i72, align 2
  %conv.i11.i73 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i.i23 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i11.i73, ptr %msg.i.i23, align 4
  %flags.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i23, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i.i74, align 2
  %buf2.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i23, i32 0, i32 3
  %85 = ptrtoint ptr %buf2.i.i75 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i.i22, ptr %buf2.i.i75, align 4
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i.i76 = icmp ugt i32 %86, 1
  br i1 %cmp.i.i76, label %do.end.i.i79, label %if.end416.i.do.end8.i.i82_crit_edge

if.end416.i.do.end8.i.i82_crit_edge:              ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i82

do.end.i.i79:                                     ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = trunc i64 %75 to i32
  %conv6.i.i77 = and i32 %87, 255
  %call.i.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 136, i32 noundef %conv6.i.i77) #11
  br label %do.end8.i.i82

do.end8.i.i82:                                    ; preds = %do.end.i.i79, %if.end416.i.do.end8.i.i82_crit_edge
  %88 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %71, align 4
  %call9.i.i80 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i.i23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i80)
  %cmp10.not.i.i81 = icmp eq i32 %call9.i.i80, 1
  br i1 %cmp10.not.i.i81, label %do.end8.i.i82.tda10048_writereg.exit.i90_crit_edge, label %do.end15.i.i84

do.end8.i.i82.tda10048_writereg.exit.i90_crit_edge: ; preds = %do.end8.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i90

do.end15.i.i84:                                   ; preds = %do.end8.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i80) #11
  br label %tda10048_writereg.exit.i90

tda10048_writereg.exit.i90:                       ; preds = %do.end15.i.i84, %do.end8.i.i82.tda10048_writereg.exit.i90_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i22) #8
  %shr420.i = lshr i64 %75, 8
  %conv421.i85 = trunc i64 %shr420.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i12.i20) #8
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i12.i20, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i12.i20 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -119, ptr %buf.i12.i20, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv421.i85, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13.i21) #8
  %93 = getelementptr inbounds i8, ptr %msg.i13.i21, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %93, align 4
  %95 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %config1.i.i72, align 2
  %conv.i15.i86 = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i13.i21 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i15.i86, ptr %msg.i13.i21, align 4
  %flags.i16.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i21, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i16.i87 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i16.i87, align 2
  %buf2.i18.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i21, i32 0, i32 3
  %99 = ptrtoint ptr %buf2.i18.i88 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i12.i20, ptr %buf2.i18.i88, align 4
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i19.i89 = icmp ugt i32 %100, 1
  br i1 %cmp.i19.i89, label %do.end.i22.i93, label %tda10048_writereg.exit.i90.do.end8.i25.i96_crit_edge

tda10048_writereg.exit.i90.do.end8.i25.i96_crit_edge: ; preds = %tda10048_writereg.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i25.i96

do.end.i22.i93:                                   ; preds = %tda10048_writereg.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  %101 = trunc i64 %shr420.i to i32
  %conv6.i20.i91 = and i32 %101, 255
  %call.i21.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 137, i32 noundef %conv6.i20.i91) #11
  br label %do.end8.i25.i96

do.end8.i25.i96:                                  ; preds = %do.end.i22.i93, %tda10048_writereg.exit.i90.do.end8.i25.i96_crit_edge
  %102 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %71, align 4
  %call9.i23.i94 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i13.i21, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i23.i94)
  %cmp10.not.i24.i95 = icmp eq i32 %call9.i23.i94, 1
  br i1 %cmp10.not.i24.i95, label %do.end8.i25.i96.tda10048_writereg.exit30.i99_crit_edge, label %do.end15.i27.i98

do.end8.i25.i96.tda10048_writereg.exit30.i99_crit_edge: ; preds = %do.end8.i25.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit30.i99

do.end15.i27.i98:                                 ; preds = %do.end8.i25.i96
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i26.i97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i23.i94) #11
  br label %tda10048_writereg.exit30.i99

tda10048_writereg.exit30.i99:                     ; preds = %do.end15.i27.i98, %do.end8.i25.i96.tda10048_writereg.exit30.i99_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13.i21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12.i20) #8
  br label %tda10048_set_invwref.exit

tda10048_set_invwref.exit:                        ; preds = %tda10048_writereg.exit30.i99, %do.end3.i29.tda10048_set_invwref.exit_crit_edge
  %bandwidth = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 10
  %104 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %bw, ptr %bandwidth, align 4
  br label %cleanup

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %tda10048_set_invwref.exit
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %tda10048_set_invwref.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %b0.i31 = alloca [1 x i8], align 1
  %b1.i32 = alloca [1 x i8], align 1
  %msg.i33 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i22 = alloca [2 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %enable) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %disable_gate_access = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %disable_gate_access to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disable_gate_access, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp eq i32 %enable, 0
  %config1.i34 = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 30, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %config1.i34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config1.i34, align 2
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp ugt i32 %19, 1
  br i1 %cmp.i, label %do.end.i, label %if.then8.do.end14.i_crit_edge

if.then8.do.end14.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %if.then8.do.end14.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  %24 = or i8 %23, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i22) #8
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i22, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 30, ptr %buf.i22, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #8
  %28 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config1.i34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config1.i34, align 2
  %conv.i25 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i26, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %34 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i22, ptr %buf2.i, align 4
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i28 = icmp ugt i32 %35, 1
  br i1 %cmp.i28, label %do.end.i30, label %tda10048_readreg.exit.do.end8.i_crit_edge

tda10048_readreg.exit.do.end8.i_crit_edge:        ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i30:                                       ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = zext i8 %24 to i32
  %call.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 30, i32 noundef %conv6.i) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i30, %tda10048_readreg.exit.do.end8.i_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end8.i.tda10048_writereg.exit_crit_edge, label %do.end15.i

do.end8.i.tda10048_writereg.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit

do.end15.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i) #11
  br label %tda10048_writereg.exit

tda10048_writereg.exit:                           ; preds = %do.end15.i, %do.end8.i.tda10048_writereg.exit_crit_edge
  %not.cmp10.not.i = xor i1 %cmp10.not.i, true
  %cond.i = sext i1 %not.cmp10.not.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i22) #8
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i31) #8
  %38 = ptrtoint ptr %b0.i31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 30, ptr %b0.i31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i32) #8
  %39 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i32, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i33) #8
  %40 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config1.i34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config1.i34, align 2
  %conv.i35 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i35, ptr %msg.i33, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i36, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i31, ptr %buf.i38, align 4
  %arrayinit.element.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i39 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i35, ptr %arrayinit.element.i39, align 4
  %flags6.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 1
  %49 = ptrtoint ptr %flags6.i40 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags6.i40, align 2
  %len7.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 2
  %50 = ptrtoint ptr %len7.i41 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len7.i41, align 4
  %buf8.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 3
  %51 = ptrtoint ptr %buf8.i42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b1.i32, ptr %buf8.i42, align 4
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i43 = icmp ugt i32 %52, 1
  br i1 %cmp.i43, label %do.end.i45, label %if.else.do.end14.i48_crit_edge

if.else.do.end14.i48_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i48

do.end.i45:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30) #11
  br label %do.end14.i48

do.end14.i48:                                     ; preds = %do.end.i45, %if.else.do.end14.i48_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call16.i46 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i33, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i46)
  %cmp17.not.i47 = icmp eq i32 %call16.i46, 2
  br i1 %cmp17.not.i47, label %do.end14.i48.tda10048_readreg.exit51_crit_edge, label %do.end22.i50

do.end14.i48.tda10048_readreg.exit51_crit_edge:   ; preds = %do.end14.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit51

do.end22.i50:                                     ; preds = %do.end14.i48
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i46) #11
  br label %tda10048_readreg.exit51

tda10048_readreg.exit51:                          ; preds = %do.end22.i50, %do.end14.i48.tda10048_readreg.exit51_crit_edge
  %55 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %b1.i32, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i31) #8
  %57 = and i8 %56, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #8
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %59 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 30, ptr %buf.i52, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %57, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #8
  %61 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %63 = ptrtoint ptr %config1.i34 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %config1.i34, align 2
  %conv.i55 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i56, align 2
  %buf2.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %67 = ptrtoint ptr %buf2.i58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i52, ptr %buf2.i58, align 4
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i59 = icmp ugt i32 %68, 1
  br i1 %cmp.i59, label %do.end.i62, label %tda10048_readreg.exit51.do.end8.i65_crit_edge

tda10048_readreg.exit51.do.end8.i65_crit_edge:    ; preds = %tda10048_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i65

do.end.i62:                                       ; preds = %tda10048_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i60 = zext i8 %57 to i32
  %call.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 30, i32 noundef %conv6.i60) #11
  br label %do.end8.i65

do.end8.i65:                                      ; preds = %do.end.i62, %tda10048_readreg.exit51.do.end8.i65_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call9.i63 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i53, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i63)
  %cmp10.not.i64 = icmp eq i32 %call9.i63, 1
  br i1 %cmp10.not.i64, label %do.end8.i65.tda10048_writereg.exit70_crit_edge, label %do.end15.i67

do.end8.i65.tda10048_writereg.exit70_crit_edge:   ; preds = %do.end8.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit70

do.end15.i67:                                     ; preds = %do.end8.i65
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i63) #11
  br label %tda10048_writereg.exit70

tda10048_writereg.exit70:                         ; preds = %do.end15.i67, %do.end8.i65.tda10048_writereg.exit70_crit_edge
  %not.cmp10.not.i68 = xor i1 %cmp10.not.i64, true
  %cond.i69 = sext i1 %not.cmp10.not.i68 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #8
  br label %cleanup

cleanup:                                          ; preds = %tda10048_writereg.exit70, %tda10048_writereg.exit, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %tda10048_writereg.exit ], [ %cond.i69, %tda10048_writereg.exit70 ], [ 0, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda10048_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.60) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i31.i = alloca [2 x i8], align 1
  %msg.i32.i = alloca %struct.i2c_msg, align 4
  %b0.i10.i = alloca [1 x i8], align 1
  %b1.i11.i = alloca [1 x i8], align 1
  %msg.i12.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i63 = alloca [2 x i8], align 1
  %msg.i2.i64 = alloca %struct.i2c_msg, align 4
  %b0.i.i65 = alloca [1 x i8], align 1
  %b1.i.i66 = alloca [1 x i8], align 1
  %msg.i.i67 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i73.i = alloca [2 x i8], align 1
  %msg.i74.i = alloca %struct.i2c_msg, align 4
  %buf.i55.i = alloca [2 x i8], align 1
  %msg.i56.i = alloca %struct.i2c_msg, align 4
  %buf.i37.i = alloca [2 x i8], align 1
  %msg.i38.i = alloca %struct.i2c_msg, align 4
  %buf.i19.i = alloca [2 x i8], align 1
  %msg.i20.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i43 = alloca [2 x i8], align 1
  %msg.i.i44 = alloca %struct.i2c_msg, align 4
  %b0.i277.i = alloca [1 x i8], align 1
  %b1.i278.i = alloca [1 x i8], align 1
  %msg.i279.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i271.i = alloca %struct.i2c_msg, align 4
  %buf.i253.i = alloca [2 x i8], align 1
  %msg.i254.i = alloca %struct.i2c_msg, align 4
  %buf.i234.i = alloca [2 x i8], align 1
  %msg.i235.i = alloca %struct.i2c_msg, align 4
  %b0.i213.i = alloca [1 x i8], align 1
  %b1.i214.i = alloca [1 x i8], align 1
  %msg.i215.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i194.i = alloca [2 x i8], align 1
  %msg.i195.i = alloca %struct.i2c_msg, align 4
  %b0.i173.i = alloca [1 x i8], align 1
  %b1.i174.i = alloca [1 x i8], align 1
  %msg.i175.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i154.i = alloca [2 x i8], align 1
  %msg.i155.i = alloca %struct.i2c_msg, align 4
  %b0.i133.i = alloca [1 x i8], align 1
  %b1.i134.i = alloca [1 x i8], align 1
  %msg.i135.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i124.i = alloca [2 x i8], align 1
  %msg.i125.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %fw.i = alloca ptr, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.61) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %pll_mfactor = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %pll_mfactor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pll_mfactor, align 4
  %5 = trunc i32 %4 to i16
  %conv5 = and i16 %5, 255
  store i16 %conv5, ptr getelementptr inbounds ([41 x %struct.init_tab], ptr @init_tab, i32 0, i32 4, i32 1), align 2
  %pll_nfactor = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %pll_nfactor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_nfactor, align 4
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, 191
  %conv8 = or i16 %9, 64
  store i16 %conv8, ptr getelementptr inbounds ([41 x %struct.init_tab], ptr @init_tab, i32 0, i32 5, i32 1), align 2
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %tda10048_writereg.exit.for.body_crit_edge, %do.end4
  %i.0101 = phi i32 [ 0, %do.end4 ], [ %inc, %tda10048_writereg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [41 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0101
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 2
  %data = getelementptr [41 x %struct.init_tab], ptr @init_tab, i32 0, i32 %i.0101, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data, align 2
  %conv12 = trunc i16 %15 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %buf.i, align 1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %11, align 4
  %19 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %msg.i, align 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %23 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf2.i, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp ugt i32 %24, 1
  br i1 %cmp.i, label %do.end.i, label %for.body.do.end8.i_crit_edge

for.body.do.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i8 %13 to i32
  %conv12.mask = and i16 %15, 255
  %conv6.i = zext i16 %conv12.mask to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %conv5.i, i32 noundef %conv6.i) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %for.body.do.end8.i_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end8.i.tda10048_writereg.exit_crit_edge, label %do.end15.i

do.end8.i.tda10048_writereg.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit

do.end15.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i) #11
  br label %tda10048_writereg.exit

tda10048_writereg.exit:                           ; preds = %do.end15.i, %do.end8.i.tda10048_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.end, label %tda10048_writereg.exit.for.body_crit_edge

tda10048_writereg.exit.for.body_crit_edge:        ; preds = %tda10048_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %tda10048_writereg.exit
  %fwloaded = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %fwloaded to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fwloaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then16, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %for.end
  %29 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !234
  %fwbulkwritelen.i = getelementptr inbounds %struct.tda10048_state, ptr %30, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %fwbulkwritelen.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fwbulkwritelen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %33)
  %cmp.not.i = icmp eq i8 %33, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %33)
  %cmp4.not.i = icmp eq i8 %33, 50
  %spec.store.select.i = select i1 %cmp4.not.i, i32 50, i32 200
  %wlen.0.i = select i1 %cmp.not.i, i32 200, i32 %spec.store.select.i
  %call.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #11
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %30, align 4
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 8
  %call6.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.64, ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.end15.i42, label %do.end10.i

do.end10.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.63) #11
  br label %tda10048_firmware_upload.exit

do.end15.i42:                                     ; preds = %if.then16
  %38 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %call17.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.63, i32 noundef %41) #11
  %42 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24878, i32 %45)
  %cmp20.not.i = icmp eq i32 %45, 24878
  br i1 %cmp20.not.i, label %do.end31.i, label %do.end25.i

do.end25.i:                                       ; preds = %do.end15.i42
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.63) #11
  br label %do.end89.i

do.end31.i:                                       ; preds = %do.end15.i42
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.63) #11
  %config1.i.i = getelementptr inbounds %struct.tda10048_state, ptr %30, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #8
  %46 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 68, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #8
  %47 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %48 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 255, i32 16)
  %50 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %config1.i.i, align 2
  %conv.i.i = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i.i, align 2
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %48, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %56 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %57 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %58 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %59 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i.i = icmp ugt i32 %60, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end31.i.do.end14.i.i_crit_edge

do.end31.i.do.end14.i.i_crit_edge:                ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i

do.end.i.i:                                       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68) #11
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i.i, %do.end31.i.do.end14.i.i_crit_edge
  %61 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %30, align 4
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %do.end14.i.i.tda10048_readreg.exit.i_crit_edge, label %do.end22.i.i

do.end14.i.i.tda10048_readreg.exit.i_crit_edge:   ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit.i

do.end22.i.i:                                     ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i.i) #11
  br label %tda10048_readreg.exit.i

tda10048_readreg.exit.i:                          ; preds = %do.end22.i.i, %do.end14.i.i.tda10048_readreg.exit.i_crit_edge
  %63 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #8
  %65 = and i8 %64, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i124.i) #8
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i124.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i124.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 68, ptr %buf.i124.i, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125.i) #8
  %69 = getelementptr inbounds i8, ptr %msg.i125.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %config1.i.i, align 2
  %conv.i127.i = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i125.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i127.i, ptr %msg.i125.i, align 4
  %flags.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i128.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i128.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i124.i, ptr %buf2.i.i, align 4
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i130.i = icmp ugt i32 %76, 1
  br i1 %cmp.i130.i, label %do.end.i132.i, label %tda10048_readreg.exit.i.do.end8.i.i_crit_edge

tda10048_readreg.exit.i.do.end8.i.i_crit_edge:    ; preds = %tda10048_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

do.end.i132.i:                                    ; preds = %tda10048_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i = zext i8 %65 to i32
  %call.i131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 68, i32 noundef %conv6.i.i) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %do.end.i132.i, %tda10048_readreg.exit.i.do.end8.i.i_crit_edge
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %30, align 4
  %call9.i.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i125.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i)
  %cmp10.not.i.i = icmp eq i32 %call9.i.i, 1
  br i1 %cmp10.not.i.i, label %do.end8.i.i.tda10048_writereg.exit.i_crit_edge, label %do.end15.i.i

do.end8.i.i.tda10048_writereg.exit.i_crit_edge:   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i

do.end15.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i) #11
  br label %tda10048_writereg.exit.i

tda10048_writereg.exit.i:                         ; preds = %do.end15.i.i, %do.end8.i.i.tda10048_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i133.i) #8
  %79 = ptrtoint ptr %b0.i133.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 68, ptr %b0.i133.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i134.i) #8
  %80 = ptrtoint ptr %b1.i134.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %b1.i134.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i135.i) #8
  %81 = getelementptr inbounds i8, ptr %msg.i135.i, i32 4
  %82 = call ptr @memset(ptr %81, i32 255, i32 16)
  %83 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %config1.i.i, align 2
  %conv.i137.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i135.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i137.i, ptr %msg.i135.i, align 4
  %flags.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i138.i, align 2
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %81, align 4
  %buf.i140.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i140.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i133.i, ptr %buf.i140.i, align 4
  %arrayinit.element.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 1
  %89 = ptrtoint ptr %arrayinit.element.i141.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i137.i, ptr %arrayinit.element.i141.i, align 4
  %flags6.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 1, i32 1
  %90 = ptrtoint ptr %flags6.i142.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %flags6.i142.i, align 2
  %len7.i143.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 1, i32 2
  %91 = ptrtoint ptr %len7.i143.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %len7.i143.i, align 4
  %buf8.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135.i, i32 1, i32 3
  %92 = ptrtoint ptr %buf8.i144.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b1.i134.i, ptr %buf8.i144.i, align 4
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i145.i = icmp ugt i32 %93, 1
  br i1 %cmp.i145.i, label %do.end.i147.i, label %tda10048_writereg.exit.i.do.end14.i150.i_crit_edge

tda10048_writereg.exit.i.do.end14.i150.i_crit_edge: ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i150.i

do.end.i147.i:                                    ; preds = %tda10048_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68) #11
  br label %do.end14.i150.i

do.end14.i150.i:                                  ; preds = %do.end.i147.i, %tda10048_writereg.exit.i.do.end14.i150.i_crit_edge
  %94 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %30, align 4
  %call16.i148.i = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i135.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i148.i)
  %cmp17.not.i149.i = icmp eq i32 %call16.i148.i, 2
  br i1 %cmp17.not.i149.i, label %do.end14.i150.i.tda10048_readreg.exit153.i_crit_edge, label %do.end22.i152.i

do.end14.i150.i.tda10048_readreg.exit153.i_crit_edge: ; preds = %do.end14.i150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit153.i

do.end22.i152.i:                                  ; preds = %do.end14.i150.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i151.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i148.i) #11
  br label %tda10048_readreg.exit153.i

tda10048_readreg.exit153.i:                       ; preds = %do.end22.i152.i, %do.end14.i150.i.tda10048_readreg.exit153.i_crit_edge
  %96 = ptrtoint ptr %b1.i134.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %b1.i134.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i135.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i134.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i133.i) #8
  %98 = or i8 %97, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i154.i) #8
  %99 = getelementptr inbounds [2 x i8], ptr %buf.i154.i, i32 0, i32 1
  %100 = ptrtoint ptr %buf.i154.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 68, ptr %buf.i154.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %98, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i155.i) #8
  %102 = getelementptr inbounds i8, ptr %msg.i155.i, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 196607, ptr %102, align 4
  %104 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %config1.i.i, align 2
  %conv.i157.i = zext i8 %105 to i16
  %106 = ptrtoint ptr %msg.i155.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i157.i, ptr %msg.i155.i, align 4
  %flags.i158.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155.i, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i158.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags.i158.i, align 2
  %buf2.i160.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155.i, i32 0, i32 3
  %108 = ptrtoint ptr %buf2.i160.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %buf.i154.i, ptr %buf2.i160.i, align 4
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i161.i = icmp ugt i32 %109, 1
  br i1 %cmp.i161.i, label %do.end.i164.i, label %tda10048_readreg.exit153.i.do.end8.i167.i_crit_edge

tda10048_readreg.exit153.i.do.end8.i167.i_crit_edge: ; preds = %tda10048_readreg.exit153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i167.i

do.end.i164.i:                                    ; preds = %tda10048_readreg.exit153.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i162.i = zext i8 %98 to i32
  %call.i163.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 68, i32 noundef %conv6.i162.i) #11
  br label %do.end8.i167.i

do.end8.i167.i:                                   ; preds = %do.end.i164.i, %tda10048_readreg.exit153.i.do.end8.i167.i_crit_edge
  %110 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %30, align 4
  %call9.i165.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i155.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i165.i)
  %cmp10.not.i166.i = icmp eq i32 %call9.i165.i, 1
  br i1 %cmp10.not.i166.i, label %do.end8.i167.i.tda10048_writereg.exit172.i_crit_edge, label %do.end15.i169.i

do.end8.i167.i.tda10048_writereg.exit172.i_crit_edge: ; preds = %do.end8.i167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit172.i

do.end15.i169.i:                                  ; preds = %do.end8.i167.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i168.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i165.i) #11
  br label %tda10048_writereg.exit172.i

tda10048_writereg.exit172.i:                      ; preds = %do.end15.i169.i, %do.end8.i167.i.tda10048_writereg.exit172.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i155.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i173.i) #8
  %112 = ptrtoint ptr %b0.i173.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 30, ptr %b0.i173.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i174.i) #8
  %113 = ptrtoint ptr %b1.i174.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %b1.i174.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i175.i) #8
  %114 = getelementptr inbounds i8, ptr %msg.i175.i, i32 4
  %115 = call ptr @memset(ptr %114, i32 255, i32 16)
  %116 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %config1.i.i, align 2
  %conv.i177.i = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i175.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i177.i, ptr %msg.i175.i, align 4
  %flags.i178.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i178.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i178.i, align 2
  %120 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %114, align 4
  %buf.i180.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 0, i32 3
  %121 = ptrtoint ptr %buf.i180.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b0.i173.i, ptr %buf.i180.i, align 4
  %arrayinit.element.i181.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1
  %122 = ptrtoint ptr %arrayinit.element.i181.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i177.i, ptr %arrayinit.element.i181.i, align 4
  %flags6.i182.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 1
  %123 = ptrtoint ptr %flags6.i182.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %flags6.i182.i, align 2
  %len7.i183.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 2
  %124 = ptrtoint ptr %len7.i183.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %len7.i183.i, align 4
  %buf8.i184.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 3
  %125 = ptrtoint ptr %buf8.i184.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %b1.i174.i, ptr %buf8.i184.i, align 4
  %126 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp.i185.i = icmp ugt i32 %126, 1
  br i1 %cmp.i185.i, label %do.end.i187.i, label %tda10048_writereg.exit172.i.do.end14.i190.i_crit_edge

tda10048_writereg.exit172.i.do.end14.i190.i_crit_edge: ; preds = %tda10048_writereg.exit172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i190.i

do.end.i187.i:                                    ; preds = %tda10048_writereg.exit172.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30) #11
  br label %do.end14.i190.i

do.end14.i190.i:                                  ; preds = %do.end.i187.i, %tda10048_writereg.exit172.i.do.end14.i190.i_crit_edge
  %127 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %30, align 4
  %call16.i188.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i175.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i188.i)
  %cmp17.not.i189.i = icmp eq i32 %call16.i188.i, 2
  br i1 %cmp17.not.i189.i, label %do.end14.i190.i.tda10048_readreg.exit193.i_crit_edge, label %do.end22.i192.i

do.end14.i190.i.tda10048_readreg.exit193.i_crit_edge: ; preds = %do.end14.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit193.i

do.end22.i192.i:                                  ; preds = %do.end14.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i188.i) #11
  br label %tda10048_readreg.exit193.i

tda10048_readreg.exit193.i:                       ; preds = %do.end22.i192.i, %do.end14.i190.i.tda10048_readreg.exit193.i_crit_edge
  %129 = ptrtoint ptr %b1.i174.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %b1.i174.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i175.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i174.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i173.i) #8
  %131 = and i8 %130, -7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i194.i) #8
  %132 = getelementptr inbounds [2 x i8], ptr %buf.i194.i, i32 0, i32 1
  %133 = ptrtoint ptr %buf.i194.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 30, ptr %buf.i194.i, align 1
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %131, ptr %132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i195.i) #8
  %135 = getelementptr inbounds i8, ptr %msg.i195.i, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 196607, ptr %135, align 4
  %137 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %config1.i.i, align 2
  %conv.i197.i = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i195.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i197.i, ptr %msg.i195.i, align 4
  %flags.i198.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i198.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i198.i, align 2
  %buf2.i200.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195.i, i32 0, i32 3
  %141 = ptrtoint ptr %buf2.i200.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %buf.i194.i, ptr %buf2.i200.i, align 4
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp.i201.i = icmp ugt i32 %142, 1
  br i1 %cmp.i201.i, label %do.end.i204.i, label %tda10048_readreg.exit193.i.do.end8.i207.i_crit_edge

tda10048_readreg.exit193.i.do.end8.i207.i_crit_edge: ; preds = %tda10048_readreg.exit193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i207.i

do.end.i204.i:                                    ; preds = %tda10048_readreg.exit193.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i202.i = zext i8 %131 to i32
  %call.i203.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 30, i32 noundef %conv6.i202.i) #11
  br label %do.end8.i207.i

do.end8.i207.i:                                   ; preds = %do.end.i204.i, %tda10048_readreg.exit193.i.do.end8.i207.i_crit_edge
  %143 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %30, align 4
  %call9.i205.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i195.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i205.i)
  %cmp10.not.i206.i = icmp eq i32 %call9.i205.i, 1
  br i1 %cmp10.not.i206.i, label %do.end8.i207.i.tda10048_writereg.exit212.i_crit_edge, label %do.end15.i209.i

do.end8.i207.i.tda10048_writereg.exit212.i_crit_edge: ; preds = %do.end8.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit212.i

do.end15.i209.i:                                  ; preds = %do.end8.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i205.i) #11
  br label %tda10048_writereg.exit212.i

tda10048_writereg.exit212.i:                      ; preds = %do.end15.i209.i, %do.end8.i207.i.tda10048_writereg.exit212.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i195.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i194.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i213.i) #8
  %145 = ptrtoint ptr %b0.i213.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 30, ptr %b0.i213.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i214.i) #8
  %146 = ptrtoint ptr %b1.i214.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %b1.i214.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i215.i) #8
  %147 = getelementptr inbounds i8, ptr %msg.i215.i, i32 4
  %148 = call ptr @memset(ptr %147, i32 255, i32 16)
  %149 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %config1.i.i, align 2
  %conv.i217.i = zext i8 %150 to i16
  %151 = ptrtoint ptr %msg.i215.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv.i217.i, ptr %msg.i215.i, align 4
  %flags.i218.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i218.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i218.i, align 2
  %153 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 1, ptr %147, align 4
  %buf.i220.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 0, i32 3
  %154 = ptrtoint ptr %buf.i220.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %b0.i213.i, ptr %buf.i220.i, align 4
  %arrayinit.element.i221.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 1
  %155 = ptrtoint ptr %arrayinit.element.i221.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i217.i, ptr %arrayinit.element.i221.i, align 4
  %flags6.i222.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 1, i32 1
  %156 = ptrtoint ptr %flags6.i222.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %flags6.i222.i, align 2
  %len7.i223.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 1, i32 2
  %157 = ptrtoint ptr %len7.i223.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %len7.i223.i, align 4
  %buf8.i224.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i215.i, i32 1, i32 3
  %158 = ptrtoint ptr %buf8.i224.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %b1.i214.i, ptr %buf8.i224.i, align 4
  %159 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp.i225.i = icmp ugt i32 %159, 1
  br i1 %cmp.i225.i, label %do.end.i227.i, label %tda10048_writereg.exit212.i.do.end14.i230.i_crit_edge

tda10048_writereg.exit212.i.do.end14.i230.i_crit_edge: ; preds = %tda10048_writereg.exit212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i230.i

do.end.i227.i:                                    ; preds = %tda10048_writereg.exit212.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i226.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30) #11
  br label %do.end14.i230.i

do.end14.i230.i:                                  ; preds = %do.end.i227.i, %tda10048_writereg.exit212.i.do.end14.i230.i_crit_edge
  %160 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %30, align 4
  %call16.i228.i = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i215.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i228.i)
  %cmp17.not.i229.i = icmp eq i32 %call16.i228.i, 2
  br i1 %cmp17.not.i229.i, label %do.end14.i230.i.tda10048_readreg.exit233.i_crit_edge, label %do.end22.i232.i

do.end14.i230.i.tda10048_readreg.exit233.i_crit_edge: ; preds = %do.end14.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit233.i

do.end22.i232.i:                                  ; preds = %do.end14.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i231.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i228.i) #11
  br label %tda10048_readreg.exit233.i

tda10048_readreg.exit233.i:                       ; preds = %do.end22.i232.i, %do.end14.i230.i.tda10048_readreg.exit233.i_crit_edge
  %162 = ptrtoint ptr %b1.i214.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %b1.i214.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i215.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i214.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i213.i) #8
  %164 = or i8 %163, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i234.i) #8
  %165 = getelementptr inbounds [2 x i8], ptr %buf.i234.i, i32 0, i32 1
  %166 = ptrtoint ptr %buf.i234.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 30, ptr %buf.i234.i, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %164, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i235.i) #8
  %168 = getelementptr inbounds i8, ptr %msg.i235.i, i32 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 196607, ptr %168, align 4
  %170 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %config1.i.i, align 2
  %conv.i237.i = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i235.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i237.i, ptr %msg.i235.i, align 4
  %flags.i238.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i235.i, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i238.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i238.i, align 2
  %buf2.i240.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i235.i, i32 0, i32 3
  %174 = ptrtoint ptr %buf2.i240.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.i234.i, ptr %buf2.i240.i, align 4
  %175 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp.i241.i = icmp ugt i32 %175, 1
  br i1 %cmp.i241.i, label %do.end.i244.i, label %tda10048_readreg.exit233.i.do.end8.i247.i_crit_edge

tda10048_readreg.exit233.i.do.end8.i247.i_crit_edge: ; preds = %tda10048_readreg.exit233.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i247.i

do.end.i244.i:                                    ; preds = %tda10048_readreg.exit233.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i242.i = zext i8 %164 to i32
  %call.i243.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 30, i32 noundef %conv6.i242.i) #11
  br label %do.end8.i247.i

do.end8.i247.i:                                   ; preds = %do.end.i244.i, %tda10048_readreg.exit233.i.do.end8.i247.i_crit_edge
  %176 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %30, align 4
  %call9.i245.i = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i235.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i245.i)
  %cmp10.not.i246.i = icmp eq i32 %call9.i245.i, 1
  br i1 %cmp10.not.i246.i, label %do.end8.i247.i.tda10048_writereg.exit252.i_crit_edge, label %do.end15.i249.i

do.end8.i247.i.tda10048_writereg.exit252.i_crit_edge: ; preds = %do.end8.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit252.i

do.end15.i249.i:                                  ; preds = %do.end8.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i245.i) #11
  br label %tda10048_writereg.exit252.i

tda10048_writereg.exit252.i:                      ; preds = %do.end15.i249.i, %do.end8.i247.i.tda10048_writereg.exit252.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i235.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i234.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i253.i) #8
  %178 = getelementptr inbounds [2 x i8], ptr %buf.i253.i, i32 0, i32 1
  %179 = ptrtoint ptr %buf.i253.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 12, ptr %buf.i253.i, align 1
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %178, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i254.i) #8
  %181 = getelementptr inbounds i8, ptr %msg.i254.i, i32 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 196607, ptr %181, align 4
  %183 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %config1.i.i, align 2
  %conv.i256.i = zext i8 %184 to i16
  %185 = ptrtoint ptr %msg.i254.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.i256.i, ptr %msg.i254.i, align 4
  %flags.i257.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254.i, i32 0, i32 1
  %186 = ptrtoint ptr %flags.i257.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %flags.i257.i, align 2
  %buf2.i259.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i254.i, i32 0, i32 3
  %187 = ptrtoint ptr %buf2.i259.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %buf.i253.i, ptr %buf2.i259.i, align 4
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %188)
  %cmp.i260.i = icmp ugt i32 %188, 1
  br i1 %cmp.i260.i, label %do.end.i262.i, label %tda10048_writereg.exit252.i.do.end8.i265.i_crit_edge

tda10048_writereg.exit252.i.do.end8.i265.i_crit_edge: ; preds = %tda10048_writereg.exit252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i265.i

do.end.i262.i:                                    ; preds = %tda10048_writereg.exit252.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i261.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 12, i32 noundef 0) #11
  br label %do.end8.i265.i

do.end8.i265.i:                                   ; preds = %do.end.i262.i, %tda10048_writereg.exit252.i.do.end8.i265.i_crit_edge
  %189 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %30, align 4
  %call9.i263.i = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i254.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i263.i)
  %cmp10.not.i264.i = icmp eq i32 %call9.i263.i, 1
  br i1 %cmp10.not.i264.i, label %do.end8.i265.i.tda10048_writereg.exit270.i_crit_edge, label %do.end15.i267.i

do.end8.i265.i.tda10048_writereg.exit270.i_crit_edge: ; preds = %do.end8.i265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit270.i

do.end15.i267.i:                                  ; preds = %do.end8.i265.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i266.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i263.i) #11
  br label %tda10048_writereg.exit270.i

tda10048_writereg.exit270.i:                      ; preds = %do.end15.i267.i, %do.end8.i265.i.tda10048_writereg.exit270.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i254.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i253.i) #8
  %191 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %fw.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp54301.not.i = icmp eq i32 %194, 0
  br i1 %cmp54301.not.i, label %tda10048_writereg.exit270.i.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i

tda10048_writereg.exit270.i.for.cond.preheader.i_crit_edge: ; preds = %tda10048_writereg.exit270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %tda10048_writereg.exit270.i
  %flags.i276.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i271.i, i32 0, i32 1
  %buf14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i271.i, i32 0, i32 3
  %len18.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i271.i, i32 0, i32 2
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %tda10048_writeregbulk.exit.i.for.cond.preheader.i_crit_edge, %tda10048_writereg.exit270.i.for.cond.preheader.i_crit_edge
  %195 = getelementptr inbounds i8, ptr %msg.i279.i, i32 4
  %flags.i282.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 0, i32 1
  %buf.i284.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 0, i32 3
  %arrayinit.element.i285.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 1
  %flags6.i286.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 1, i32 1
  %len7.i287.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 1, i32 2
  %buf8.i288.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 1, i32 3
  br label %for.body.i

while.body.i:                                     ; preds = %tda10048_writeregbulk.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %196 = phi i32 [ %194, %while.body.lr.ph.i ], [ %217, %tda10048_writeregbulk.exit.i.while.body.i_crit_edge ]
  %197 = phi ptr [ %192, %while.body.lr.ph.i ], [ %215, %tda10048_writeregbulk.exit.i.while.body.i_crit_edge ]
  %pos.0302.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %tda10048_writeregbulk.exit.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %196, %pos.0302.i
  %198 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %wlen.0.i) #8
  %data.i = getelementptr inbounds %struct.firmware, ptr %197, i32 0, i32 1
  %199 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %200, i32 %pos.0302.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i271.i) #8
  %201 = call ptr @memset(ptr %msg.i271.i, i32 255, i32 12)
  %202 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp.i273.i = icmp ugt i32 %202, 1
  br i1 %cmp.i273.i, label %do.end.i275.i, label %while.body.i.do.end5.i.i_crit_edge

while.body.i.do.end5.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i275.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i274.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 14, i32 noundef %198) #11
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i275.i, %while.body.i.do.end5.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %198, 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #14
  %cmp8.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp8.i.i, label %do.end5.i.i.tda10048_writeregbulk.exit.i_crit_edge, label %if.end11.i.i

do.end5.i.i.tda10048_writeregbulk.exit.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writeregbulk.exit.i

if.end11.i.i:                                     ; preds = %do.end5.i.i
  %203 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 14, ptr %call9.i.i.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %204 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %arrayidx.i, i32 %198)
  %205 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %config1.i.i, align 2
  %conv13.i.i = zext i8 %206 to i16
  %207 = ptrtoint ptr %msg.i271.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv13.i.i, ptr %msg.i271.i, align 4
  %208 = ptrtoint ptr %flags.i276.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %flags.i276.i, align 2
  %209 = ptrtoint ptr %buf14.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call9.i.i.i, ptr %buf14.i.i, align 4
  %conv17.i.i = trunc i32 %add.i.i to i16
  %210 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv17.i.i, ptr %len18.i.i, align 4
  %211 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp20.i.i = icmp ugt i32 %211, 1
  br i1 %cmp20.i.i, label %do.end25.i.i, label %if.end11.i.i.do.end32.i.i_crit_edge

if.end11.i.i.do.end32.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32.i.i

do.end25.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef %add.i.i) #11
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %do.end25.i.i, %if.end11.i.i.do.end32.i.i_crit_edge
  %212 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %30, align 4
  %call33.i.i = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %msg.i271.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33.i.i)
  %cmp34.not.i.i = icmp eq i32 %call33.i.i, 1
  br i1 %cmp34.not.i.i, label %do.end32.i.i.tda10048_writeregbulk.exit.i_crit_edge, label %do.end39.i.i

do.end32.i.i.tda10048_writeregbulk.exit.i_crit_edge: ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writeregbulk.exit.i

do.end39.i.i:                                     ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84, i32 noundef %call33.i.i) #11
  br label %tda10048_writeregbulk.exit.i

tda10048_writeregbulk.exit.i:                     ; preds = %do.end39.i.i, %do.end32.i.i.tda10048_writeregbulk.exit.i_crit_edge, %do.end5.i.i.tda10048_writeregbulk.exit.i_crit_edge
  call void @kfree(ptr noundef %call9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i271.i) #8
  %add.i = add i32 %198, %pos.0302.i
  %214 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %fw.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %cmp54.i = icmp ugt i32 %217, %add.i
  br i1 %cmp54.i, label %tda10048_writeregbulk.exit.i.while.body.i_crit_edge, label %tda10048_writeregbulk.exit.i.for.cond.preheader.i_crit_edge

tda10048_writeregbulk.exit.i.for.cond.preheader.i_crit_edge: ; preds = %tda10048_writeregbulk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

tda10048_writeregbulk.exit.i.while.body.i_crit_edge: ; preds = %tda10048_writeregbulk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

for.cond.i:                                       ; preds = %tda10048_readreg.exit297.i
  %add76.i = add nuw nsw i32 %cnt.1303.i, 10
  %cmp68.i = icmp ult i32 %cnt.1303.i, 240
  br i1 %cmp68.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.do.end89.i_crit_edge

for.cond.i.do.end89.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %cnt.1303.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add76.i, %for.cond.i.for.body.i_crit_edge ]
  call void @msleep(i32 noundef 10) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i277.i) #8
  %218 = ptrtoint ptr %b0.i277.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 26, ptr %b0.i277.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i278.i) #8
  %219 = ptrtoint ptr %b1.i278.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %b1.i278.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i279.i) #8
  %220 = call ptr @memset(ptr %195, i32 255, i32 16)
  %221 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %config1.i.i, align 2
  %conv.i281.i = zext i8 %222 to i16
  %223 = ptrtoint ptr %msg.i279.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv.i281.i, ptr %msg.i279.i, align 4
  %224 = ptrtoint ptr %flags.i282.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %flags.i282.i, align 2
  %225 = ptrtoint ptr %195 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 1, ptr %195, align 4
  %226 = ptrtoint ptr %buf.i284.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %b0.i277.i, ptr %buf.i284.i, align 4
  %227 = ptrtoint ptr %arrayinit.element.i285.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv.i281.i, ptr %arrayinit.element.i285.i, align 4
  %228 = ptrtoint ptr %flags6.i286.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1, ptr %flags6.i286.i, align 2
  %229 = ptrtoint ptr %len7.i287.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 1, ptr %len7.i287.i, align 4
  %230 = ptrtoint ptr %buf8.i288.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %b1.i278.i, ptr %buf8.i288.i, align 4
  %231 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %231)
  %cmp.i289.i = icmp ugt i32 %231, 1
  br i1 %cmp.i289.i, label %do.end.i291.i, label %for.body.i.do.end14.i294.i_crit_edge

for.body.i.do.end14.i294.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i294.i

do.end.i291.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i290.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 26) #11
  br label %do.end14.i294.i

do.end14.i294.i:                                  ; preds = %do.end.i291.i, %for.body.i.do.end14.i294.i_crit_edge
  %232 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %30, align 4
  %call16.i292.i = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %msg.i279.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i292.i)
  %cmp17.not.i293.i = icmp eq i32 %call16.i292.i, 2
  br i1 %cmp17.not.i293.i, label %do.end14.i294.i.tda10048_readreg.exit297.i_crit_edge, label %do.end22.i296.i

do.end14.i294.i.tda10048_readreg.exit297.i_crit_edge: ; preds = %do.end14.i294.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit297.i

do.end22.i296.i:                                  ; preds = %do.end14.i294.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i295.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i292.i) #11
  br label %tda10048_readreg.exit297.i

tda10048_readreg.exit297.i:                       ; preds = %do.end22.i296.i, %do.end14.i294.i.tda10048_readreg.exit297.i_crit_edge
  %234 = ptrtoint ptr %b1.i278.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %b1.i278.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i279.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i278.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i277.i) #8
  %236 = and i8 %235, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool73.not.i = icmp eq i8 %236, 0
  br i1 %tobool73.not.i, label %for.cond.i, label %do.end83.i

do.end83.i:                                       ; preds = %tda10048_readreg.exit297.i
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %238) #8
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.63) #11
  %fwloaded.i = getelementptr inbounds %struct.tda10048_state, ptr %30, i32 0, i32 3
  %239 = ptrtoint ptr %fwloaded.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %fwloaded.i, align 4
  br label %tda10048_firmware_upload.exit

do.end89.i:                                       ; preds = %for.cond.i.do.end89.i_crit_edge, %do.end25.i
  %240 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %241) #8
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.63) #11
  br label %tda10048_firmware_upload.exit

tda10048_firmware_upload.exit:                    ; preds = %do.end89.i, %do.end83.i, %do.end10.i
  %retval.0.i = phi i32 [ -5, %do.end10.i ], [ -5, %do.end89.i ], [ 0, %do.end83.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %if.end18

if.end18:                                         ; preds = %tda10048_firmware_upload.exit, %for.end.if.end18_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %tda10048_firmware_upload.exit ], [ 0, %for.end.if.end18_crit_edge ]
  %output_mode = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 1
  %242 = ptrtoint ptr %output_mode to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %output_mode, align 1
  %244 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %demodulator_priv, align 4
  %246 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp.not.i46 = icmp eq i32 %246, 0
  br i1 %cmp.not.i46, label %if.end18.do.end3.i_crit_edge, label %do.end.i48

if.end18.do.end3.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i48:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv19 = zext i8 %243 to i32
  %call.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.91, i32 noundef %conv19) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i48, %if.end18.do.end3.i_crit_edge
  %config1.i.i49 = getelementptr inbounds %struct.tda10048_state, ptr %245, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i43) #8
  %247 = getelementptr inbounds [2 x i8], ptr %buf.i.i43, i32 0, i32 1
  %248 = ptrtoint ptr %buf.i.i43 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 68, ptr %buf.i.i43, align 1
  %249 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 33, ptr %247, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i44) #8
  %250 = getelementptr inbounds i8, ptr %msg.i.i44, i32 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 196607, ptr %250, align 4
  %252 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %config1.i.i49, align 2
  %conv.i.i50 = zext i8 %253 to i16
  %254 = ptrtoint ptr %msg.i.i44 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv.i.i50, ptr %msg.i.i44, align 4
  %flags.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i44, i32 0, i32 1
  %255 = ptrtoint ptr %flags.i.i51 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %flags.i.i51, align 2
  %buf2.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i44, i32 0, i32 3
  %256 = ptrtoint ptr %buf2.i.i52 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %buf.i.i43, ptr %buf2.i.i52, align 4
  %257 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %257)
  %cmp.i.i53 = icmp ugt i32 %257, 1
  br i1 %cmp.i.i53, label %do.end.i.i55, label %do.end3.i.do.end8.i.i58_crit_edge

do.end3.i.do.end8.i.i58_crit_edge:                ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i58

do.end.i.i55:                                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 68, i32 noundef 33) #11
  br label %do.end8.i.i58

do.end8.i.i58:                                    ; preds = %do.end.i.i55, %do.end3.i.do.end8.i.i58_crit_edge
  %258 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %245, align 4
  %call9.i.i56 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i.i44, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i56)
  %cmp10.not.i.i57 = icmp eq i32 %call9.i.i56, 1
  br i1 %cmp10.not.i.i57, label %do.end8.i.i58.tda10048_writereg.exit.i61_crit_edge, label %do.end15.i.i60

do.end8.i.i58.tda10048_writereg.exit.i61_crit_edge: ; preds = %do.end8.i.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i61

do.end15.i.i60:                                   ; preds = %do.end8.i.i58
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i56) #11
  br label %tda10048_writereg.exit.i61

tda10048_writereg.exit.i61:                       ; preds = %do.end15.i.i60, %do.end8.i.i58.tda10048_writereg.exit.i61_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i44) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i43) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #8
  %260 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %261 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 69, ptr %buf.i1.i, align 1
  %262 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #8
  %263 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 196607, ptr %263, align 4
  %265 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %config1.i.i49, align 2
  %conv.i4.i = zext i8 %266 to i16
  %267 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %268 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %flags.i5.i, align 2
  %buf2.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %269 = ptrtoint ptr %buf2.i7.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %buf.i1.i, ptr %buf2.i7.i, align 4
  %270 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %270)
  %cmp.i8.i = icmp ugt i32 %270, 1
  br i1 %cmp.i8.i, label %do.end.i10.i, label %tda10048_writereg.exit.i61.do.end8.i13.i_crit_edge

tda10048_writereg.exit.i61.do.end8.i13.i_crit_edge: ; preds = %tda10048_writereg.exit.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i13.i

do.end.i10.i:                                     ; preds = %tda10048_writereg.exit.i61
  call void @__sanitizer_cov_trace_pc() #10
  %call.i9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 69, i32 noundef 0) #11
  br label %do.end8.i13.i

do.end8.i13.i:                                    ; preds = %do.end.i10.i, %tda10048_writereg.exit.i61.do.end8.i13.i_crit_edge
  %271 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %245, align 4
  %call9.i11.i = call i32 @i2c_transfer(ptr noundef %272, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i11.i)
  %cmp10.not.i12.i = icmp eq i32 %call9.i11.i, 1
  br i1 %cmp10.not.i12.i, label %do.end8.i13.i.tda10048_writereg.exit18.i_crit_edge, label %do.end15.i15.i

do.end8.i13.i.tda10048_writereg.exit18.i_crit_edge: ; preds = %do.end8.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit18.i

do.end15.i15.i:                                   ; preds = %do.end8.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i11.i) #11
  br label %tda10048_writereg.exit18.i

tda10048_writereg.exit18.i:                       ; preds = %do.end15.i15.i, %do.end8.i13.i.tda10048_writereg.exit18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not.i62 = icmp eq i8 %243, 0
  br i1 %tobool.not.i62, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %tda10048_writereg.exit18.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i19.i) #8
  %273 = getelementptr inbounds [2 x i8], ptr %buf.i19.i, i32 0, i32 1
  %274 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 78, ptr %buf.i19.i, align 1
  %275 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 -96, ptr %273, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20.i) #8
  %276 = getelementptr inbounds i8, ptr %msg.i20.i, i32 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 196607, ptr %276, align 4
  %278 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %config1.i.i49, align 2
  %conv.i22.i = zext i8 %279 to i16
  %280 = ptrtoint ptr %msg.i20.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %conv.i22.i, ptr %msg.i20.i, align 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 1
  %281 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 0, ptr %flags.i23.i, align 2
  %buf2.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 3
  %282 = ptrtoint ptr %buf2.i25.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %buf.i19.i, ptr %buf2.i25.i, align 4
  %283 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %283)
  %cmp.i26.i = icmp ugt i32 %283, 1
  br i1 %cmp.i26.i, label %do.end.i28.i, label %if.then6.i.do.end8.i31.i_crit_edge

if.then6.i.do.end8.i31.i_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i31.i

do.end.i28.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 78, i32 noundef 160) #11
  br label %do.end8.i31.i

do.end8.i31.i:                                    ; preds = %do.end.i28.i, %if.then6.i.do.end8.i31.i_crit_edge
  %284 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %245, align 4
  %call9.i29.i = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i20.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i29.i)
  %cmp10.not.i30.i = icmp eq i32 %call9.i29.i, 1
  br i1 %cmp10.not.i30.i, label %do.end8.i31.i.tda10048_writereg.exit36.i_crit_edge, label %do.end15.i33.i

do.end8.i31.i.tda10048_writereg.exit36.i_crit_edge: ; preds = %do.end8.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit36.i

do.end15.i33.i:                                   ; preds = %do.end8.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i29.i) #11
  br label %tda10048_writereg.exit36.i

tda10048_writereg.exit36.i:                       ; preds = %do.end15.i33.i, %do.end8.i31.i.tda10048_writereg.exit36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i19.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37.i) #8
  %286 = getelementptr inbounds [2 x i8], ptr %buf.i37.i, i32 0, i32 1
  %287 = ptrtoint ptr %buf.i37.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 -32, ptr %buf.i37.i, align 1
  %288 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 -64, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38.i) #8
  %289 = getelementptr inbounds i8, ptr %msg.i38.i, i32 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 196607, ptr %289, align 4
  %291 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %config1.i.i49, align 2
  %conv.i40.i = zext i8 %292 to i16
  %293 = ptrtoint ptr %msg.i38.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %conv.i40.i, ptr %msg.i38.i, align 4
  %flags.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 1
  %294 = ptrtoint ptr %flags.i41.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 0, ptr %flags.i41.i, align 2
  %buf2.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38.i, i32 0, i32 3
  %295 = ptrtoint ptr %buf2.i43.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %buf.i37.i, ptr %buf2.i43.i, align 4
  %296 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %296)
  %cmp.i44.i = icmp ugt i32 %296, 1
  br i1 %cmp.i44.i, label %do.end.i46.i, label %tda10048_writereg.exit36.i.do.end8.i49.i_crit_edge

tda10048_writereg.exit36.i.do.end8.i49.i_crit_edge: ; preds = %tda10048_writereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i49.i

do.end.i46.i:                                     ; preds = %tda10048_writereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 224, i32 noundef 192) #11
  br label %do.end8.i49.i

do.end8.i49.i:                                    ; preds = %do.end.i46.i, %tda10048_writereg.exit36.i.do.end8.i49.i_crit_edge
  %297 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %245, align 4
  %call9.i47.i = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %msg.i38.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i47.i)
  %cmp10.not.i48.i = icmp eq i32 %call9.i47.i, 1
  br i1 %cmp10.not.i48.i, label %do.end8.i49.i.tda10048_writereg.exit54.i_crit_edge, label %do.end15.i51.i

do.end8.i49.i.tda10048_writereg.exit54.i_crit_edge: ; preds = %do.end8.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit54.i

do.end15.i51.i:                                   ; preds = %do.end8.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i47.i) #11
  br label %tda10048_writereg.exit54.i

tda10048_writereg.exit54.i:                       ; preds = %do.end15.i51.i, %do.end8.i49.i.tda10048_writereg.exit54.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37.i) #8
  br label %tda10048_output_mode.exit

if.else.i:                                        ; preds = %tda10048_writereg.exit18.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55.i) #8
  %299 = getelementptr inbounds [2 x i8], ptr %buf.i55.i, i32 0, i32 1
  %300 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 78, ptr %buf.i55.i, align 1
  %301 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 0, ptr %299, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56.i) #8
  %302 = getelementptr inbounds i8, ptr %msg.i56.i, i32 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 196607, ptr %302, align 4
  %304 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %config1.i.i49, align 2
  %conv.i58.i = zext i8 %305 to i16
  %306 = ptrtoint ptr %msg.i56.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %conv.i58.i, ptr %msg.i56.i, align 4
  %flags.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 1
  %307 = ptrtoint ptr %flags.i59.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %flags.i59.i, align 2
  %buf2.i61.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 3
  %308 = ptrtoint ptr %buf2.i61.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %buf.i55.i, ptr %buf2.i61.i, align 4
  %309 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %309)
  %cmp.i62.i = icmp ugt i32 %309, 1
  br i1 %cmp.i62.i, label %do.end.i64.i, label %if.else.i.do.end8.i67.i_crit_edge

if.else.i.do.end8.i67.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i67.i

do.end.i64.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 78, i32 noundef 0) #11
  br label %do.end8.i67.i

do.end8.i67.i:                                    ; preds = %do.end.i64.i, %if.else.i.do.end8.i67.i_crit_edge
  %310 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %245, align 4
  %call9.i65.i = call i32 @i2c_transfer(ptr noundef %311, ptr noundef nonnull %msg.i56.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i65.i)
  %cmp10.not.i66.i = icmp eq i32 %call9.i65.i, 1
  br i1 %cmp10.not.i66.i, label %do.end8.i67.i.tda10048_writereg.exit72.i_crit_edge, label %do.end15.i69.i

do.end8.i67.i.tda10048_writereg.exit72.i_crit_edge: ; preds = %do.end8.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit72.i

do.end15.i69.i:                                   ; preds = %do.end8.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i65.i) #11
  br label %tda10048_writereg.exit72.i

tda10048_writereg.exit72.i:                       ; preds = %do.end15.i69.i, %do.end8.i67.i.tda10048_writereg.exit72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73.i) #8
  %312 = getelementptr inbounds [2 x i8], ptr %buf.i73.i, i32 0, i32 1
  %313 = ptrtoint ptr %buf.i73.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 -32, ptr %buf.i73.i, align 1
  %314 = ptrtoint ptr %312 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 1, ptr %312, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74.i) #8
  %315 = getelementptr inbounds i8, ptr %msg.i74.i, i32 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 196607, ptr %315, align 4
  %317 = ptrtoint ptr %config1.i.i49 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %config1.i.i49, align 2
  %conv.i76.i = zext i8 %318 to i16
  %319 = ptrtoint ptr %msg.i74.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %conv.i76.i, ptr %msg.i74.i, align 4
  %flags.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74.i, i32 0, i32 1
  %320 = ptrtoint ptr %flags.i77.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %flags.i77.i, align 2
  %buf2.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74.i, i32 0, i32 3
  %321 = ptrtoint ptr %buf2.i79.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %buf.i73.i, ptr %buf2.i79.i, align 4
  %322 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %322)
  %cmp.i80.i = icmp ugt i32 %322, 1
  br i1 %cmp.i80.i, label %do.end.i82.i, label %tda10048_writereg.exit72.i.do.end8.i85.i_crit_edge

tda10048_writereg.exit72.i.do.end8.i85.i_crit_edge: ; preds = %tda10048_writereg.exit72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i85.i

do.end.i82.i:                                     ; preds = %tda10048_writereg.exit72.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 224, i32 noundef 1) #11
  br label %do.end8.i85.i

do.end8.i85.i:                                    ; preds = %do.end.i82.i, %tda10048_writereg.exit72.i.do.end8.i85.i_crit_edge
  %323 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %245, align 4
  %call9.i83.i = call i32 @i2c_transfer(ptr noundef %324, ptr noundef nonnull %msg.i74.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i83.i)
  %cmp10.not.i84.i = icmp eq i32 %call9.i83.i, 1
  br i1 %cmp10.not.i84.i, label %do.end8.i85.i.tda10048_writereg.exit90.i_crit_edge, label %do.end15.i87.i

do.end8.i85.i.tda10048_writereg.exit90.i_crit_edge: ; preds = %do.end8.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit90.i

do.end15.i87.i:                                   ; preds = %do.end8.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i83.i) #11
  br label %tda10048_writereg.exit90.i

tda10048_writereg.exit90.i:                       ; preds = %do.end15.i87.i, %do.end8.i85.i.tda10048_writereg.exit90.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73.i) #8
  br label %tda10048_output_mode.exit

tda10048_output_mode.exit:                        ; preds = %tda10048_writereg.exit90.i, %tda10048_writereg.exit54.i
  %inversion = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1, i32 3
  %325 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %inversion, align 1
  %327 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %demodulator_priv, align 4
  %329 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %cmp.not.i69 = icmp eq i32 %329, 0
  br i1 %cmp.not.i69, label %tda10048_output_mode.exit.do.end3.i73_crit_edge, label %do.end.i71

tda10048_output_mode.exit.do.end3.i73_crit_edge:  ; preds = %tda10048_output_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i73

do.end.i71:                                       ; preds = %tda10048_output_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = zext i8 %326 to i32
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.92, i32 noundef %conv21) #11
  br label %do.end3.i73

do.end3.i73:                                      ; preds = %do.end.i71, %tda10048_output_mode.exit.do.end3.i73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %326)
  %cmp4.i = icmp eq i8 %326, 1
  %config1.i.i72 = getelementptr inbounds %struct.tda10048_state, ptr %328, i32 0, i32 1
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i100

if.then5.i:                                       ; preds = %do.end3.i73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i65) #8
  %330 = ptrtoint ptr %b0.i.i65 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 96, ptr %b0.i.i65, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i66) #8
  %331 = ptrtoint ptr %b1.i.i66 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %b1.i.i66, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i67) #8
  %332 = getelementptr inbounds i8, ptr %msg.i.i67, i32 4
  %333 = call ptr @memset(ptr %332, i32 255, i32 16)
  %334 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %config1.i.i72, align 2
  %conv.i.i74 = zext i8 %335 to i16
  %336 = ptrtoint ptr %msg.i.i67 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv.i.i74, ptr %msg.i.i67, align 4
  %flags.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 0, i32 1
  %337 = ptrtoint ptr %flags.i.i75 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %flags.i.i75, align 2
  %338 = ptrtoint ptr %332 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 1, ptr %332, align 4
  %buf.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 0, i32 3
  %339 = ptrtoint ptr %buf.i.i76 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %b0.i.i65, ptr %buf.i.i76, align 4
  %arrayinit.element.i.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 1
  %340 = ptrtoint ptr %arrayinit.element.i.i77 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %conv.i.i74, ptr %arrayinit.element.i.i77, align 4
  %flags6.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 1, i32 1
  %341 = ptrtoint ptr %flags6.i.i78 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 1, ptr %flags6.i.i78, align 2
  %len7.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 1, i32 2
  %342 = ptrtoint ptr %len7.i.i79 to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 1, ptr %len7.i.i79, align 4
  %buf8.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i67, i32 1, i32 3
  %343 = ptrtoint ptr %buf8.i.i80 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %b1.i.i66, ptr %buf8.i.i80, align 4
  %344 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %344)
  %cmp.i.i81 = icmp ugt i32 %344, 1
  br i1 %cmp.i.i81, label %do.end.i.i83, label %if.then5.i.do.end14.i.i86_crit_edge

if.then5.i.do.end14.i.i86_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i86

do.end.i.i83:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 96) #11
  br label %do.end14.i.i86

do.end14.i.i86:                                   ; preds = %do.end.i.i83, %if.then5.i.do.end14.i.i86_crit_edge
  %345 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %328, align 4
  %call16.i.i84 = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %msg.i.i67, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i84)
  %cmp17.not.i.i85 = icmp eq i32 %call16.i.i84, 2
  br i1 %cmp17.not.i.i85, label %do.end14.i.i86.tda10048_readreg.exit.i92_crit_edge, label %do.end22.i.i88

do.end14.i.i86.tda10048_readreg.exit.i92_crit_edge: ; preds = %do.end14.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit.i92

do.end22.i.i88:                                   ; preds = %do.end14.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i.i84) #11
  br label %tda10048_readreg.exit.i92

tda10048_readreg.exit.i92:                        ; preds = %do.end22.i.i88, %do.end14.i.i86.tda10048_readreg.exit.i92_crit_edge
  %347 = ptrtoint ptr %b1.i.i66 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %b1.i.i66, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i67) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i66) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i65) #8
  %349 = or i8 %348, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i63) #8
  %350 = getelementptr inbounds [2 x i8], ptr %buf.i1.i63, i32 0, i32 1
  %351 = ptrtoint ptr %buf.i1.i63 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 96, ptr %buf.i1.i63, align 1
  %352 = ptrtoint ptr %350 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %349, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i64) #8
  %353 = getelementptr inbounds i8, ptr %msg.i2.i64, i32 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 196607, ptr %353, align 4
  %355 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %config1.i.i72, align 2
  %conv.i4.i89 = zext i8 %356 to i16
  %357 = ptrtoint ptr %msg.i2.i64 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %conv.i4.i89, ptr %msg.i2.i64, align 4
  %flags.i5.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i64, i32 0, i32 1
  %358 = ptrtoint ptr %flags.i5.i90 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 0, ptr %flags.i5.i90, align 2
  %buf2.i.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i64, i32 0, i32 3
  %359 = ptrtoint ptr %buf2.i.i91 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %buf.i1.i63, ptr %buf2.i.i91, align 4
  %360 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %360)
  %cmp.i7.i = icmp ugt i32 %360, 1
  br i1 %cmp.i7.i, label %do.end.i9.i, label %tda10048_readreg.exit.i92.do.end8.i.i96_crit_edge

tda10048_readreg.exit.i92.do.end8.i.i96_crit_edge: ; preds = %tda10048_readreg.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i96

do.end.i9.i:                                      ; preds = %tda10048_readreg.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i.i93 = zext i8 %349 to i32
  %call.i8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 96, i32 noundef %conv6.i.i93) #11
  br label %do.end8.i.i96

do.end8.i.i96:                                    ; preds = %do.end.i9.i, %tda10048_readreg.exit.i92.do.end8.i.i96_crit_edge
  %361 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %328, align 4
  %call9.i.i94 = call i32 @i2c_transfer(ptr noundef %362, ptr noundef nonnull %msg.i2.i64, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i.i94)
  %cmp10.not.i.i95 = icmp eq i32 %call9.i.i94, 1
  br i1 %cmp10.not.i.i95, label %do.end8.i.i96.tda10048_writereg.exit.i99_crit_edge, label %do.end15.i.i98

do.end8.i.i96.tda10048_writereg.exit.i99_crit_edge: ; preds = %do.end8.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit.i99

do.end15.i.i98:                                   ; preds = %do.end8.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i.i94) #11
  br label %tda10048_writereg.exit.i99

tda10048_writereg.exit.i99:                       ; preds = %do.end15.i.i98, %do.end8.i.i96.tda10048_writereg.exit.i99_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i64) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i63) #8
  br label %tda10048_set_inversion.exit

if.else.i100:                                     ; preds = %do.end3.i73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i10.i) #8
  %363 = ptrtoint ptr %b0.i10.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 96, ptr %b0.i10.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i11.i) #8
  %364 = ptrtoint ptr %b1.i11.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %b1.i11.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i12.i) #8
  %365 = getelementptr inbounds i8, ptr %msg.i12.i, i32 4
  %366 = call ptr @memset(ptr %365, i32 255, i32 16)
  %367 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %config1.i.i72, align 2
  %conv.i14.i = zext i8 %368 to i16
  %369 = ptrtoint ptr %msg.i12.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %conv.i14.i, ptr %msg.i12.i, align 4
  %flags.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 1
  %370 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 0, ptr %flags.i15.i, align 2
  %371 = ptrtoint ptr %365 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 1, ptr %365, align 4
  %buf.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 3
  %372 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %b0.i10.i, ptr %buf.i17.i, align 4
  %arrayinit.element.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1
  %373 = ptrtoint ptr %arrayinit.element.i18.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 %conv.i14.i, ptr %arrayinit.element.i18.i, align 4
  %flags6.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 1
  %374 = ptrtoint ptr %flags6.i19.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 1, ptr %flags6.i19.i, align 2
  %len7.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 2
  %375 = ptrtoint ptr %len7.i20.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 1, ptr %len7.i20.i, align 4
  %buf8.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 3
  %376 = ptrtoint ptr %buf8.i21.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %b1.i11.i, ptr %buf8.i21.i, align 4
  %377 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %377)
  %cmp.i22.i = icmp ugt i32 %377, 1
  br i1 %cmp.i22.i, label %do.end.i24.i, label %if.else.i100.do.end14.i27.i_crit_edge

if.else.i100.do.end14.i27.i_crit_edge:            ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i27.i

do.end.i24.i:                                     ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #10
  %call.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 96) #11
  br label %do.end14.i27.i

do.end14.i27.i:                                   ; preds = %do.end.i24.i, %if.else.i100.do.end14.i27.i_crit_edge
  %378 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %328, align 4
  %call16.i25.i = call i32 @i2c_transfer(ptr noundef %379, ptr noundef nonnull %msg.i12.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i25.i)
  %cmp17.not.i26.i = icmp eq i32 %call16.i25.i, 2
  br i1 %cmp17.not.i26.i, label %do.end14.i27.i.tda10048_readreg.exit30.i_crit_edge, label %do.end22.i29.i

do.end14.i27.i.tda10048_readreg.exit30.i_crit_edge: ; preds = %do.end14.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit30.i

do.end22.i29.i:                                   ; preds = %do.end14.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i25.i) #11
  br label %tda10048_readreg.exit30.i

tda10048_readreg.exit30.i:                        ; preds = %do.end22.i29.i, %do.end14.i27.i.tda10048_readreg.exit30.i_crit_edge
  %380 = ptrtoint ptr %b1.i11.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %b1.i11.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i12.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i10.i) #8
  %382 = and i8 %381, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #8
  %383 = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %384 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 96, ptr %buf.i31.i, align 1
  %385 = ptrtoint ptr %383 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %382, ptr %383, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32.i) #8
  %386 = getelementptr inbounds i8, ptr %msg.i32.i, i32 4
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 196607, ptr %386, align 4
  %388 = ptrtoint ptr %config1.i.i72 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %config1.i.i72, align 2
  %conv.i34.i = zext i8 %389 to i16
  %390 = ptrtoint ptr %msg.i32.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %conv.i34.i, ptr %msg.i32.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 1
  %391 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 0, ptr %flags.i35.i, align 2
  %buf2.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 3
  %392 = ptrtoint ptr %buf2.i37.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %buf.i31.i, ptr %buf2.i37.i, align 4
  %393 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %393)
  %cmp.i38.i = icmp ugt i32 %393, 1
  br i1 %cmp.i38.i, label %do.end.i41.i, label %tda10048_readreg.exit30.i.do.end8.i44.i_crit_edge

tda10048_readreg.exit30.i.do.end8.i44.i_crit_edge: ; preds = %tda10048_readreg.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i44.i

do.end.i41.i:                                     ; preds = %tda10048_readreg.exit30.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i39.i = zext i8 %382 to i32
  %call.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 96, i32 noundef %conv6.i39.i) #11
  br label %do.end8.i44.i

do.end8.i44.i:                                    ; preds = %do.end.i41.i, %tda10048_readreg.exit30.i.do.end8.i44.i_crit_edge
  %394 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %328, align 4
  %call9.i42.i = call i32 @i2c_transfer(ptr noundef %395, ptr noundef nonnull %msg.i32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i42.i)
  %cmp10.not.i43.i = icmp eq i32 %call9.i42.i, 1
  br i1 %cmp10.not.i43.i, label %do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge, label %do.end15.i46.i

do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge: ; preds = %do.end8.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit49.i

do.end15.i46.i:                                   ; preds = %do.end8.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i42.i) #11
  br label %tda10048_writereg.exit49.i

tda10048_writereg.exit49.i:                       ; preds = %do.end15.i46.i, %do.end8.i44.i.tda10048_writereg.exit49.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #8
  br label %tda10048_set_inversion.exit

tda10048_set_inversion.exit:                      ; preds = %tda10048_writereg.exit49.i, %tda10048_writereg.exit.i99
  %call23 = call fastcc i32 @tda10048_set_if(ptr noundef %fe, i32 noundef 8000000)
  %call24 = call fastcc i32 @tda10048_set_bandwidth(ptr noundef %fe, i32 noundef 8000000)
  %call25 = call i32 @tda10048_i2c_gate_ctrl(ptr noundef %fe, i32 noundef 0)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %4) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.not = icmp eq i32 %6, %8
  br i1 %cmp4.not, label %do.end3.if.end10_crit_edge, label %if.then5

do.end3.if.end10_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @tda10048_set_if(ptr noundef %fe, i32 noundef %6)
  %9 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bandwidth_hz, align 4
  %call9 = tail call fastcc i32 @tda10048_set_bandwidth(ptr noundef %fe, i32 noundef %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.end3.if.end10_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %11 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end10.if.end31_crit_edge, label %if.then11

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then11:                                        ; preds = %if.end10
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then11.if.end18_crit_edge, label %if.then14

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11.if.end18_crit_edge
  %15 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_params, align 4
  %call22 = tail call i32 %16(ptr noundef %fe) #8
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end18.if.end31_crit_edge, label %if.then26

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 %18(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end18.if.end31_crit_edge, %if.end10.if.end31_crit_edge
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 24, ptr %buf.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 87, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %22 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %24 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i, ptr %buf2.i, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp ugt i32 %29, 1
  br i1 %cmp.i, label %do.end.i, label %if.end31.do.end8.i_crit_edge

if.end31.do.end8.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 24, i32 noundef 87) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.end31.do.end8.i_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end8.i.tda10048_writereg.exit_crit_edge, label %do.end15.i

do.end8.i.tda10048_writereg.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit

do.end15.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i) #11
  br label %tda10048_writereg.exit

tda10048_writereg.exit:                           ; preds = %do.end15.i, %do.end8.i.tda10048_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #8
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -62, ptr %buf.i53, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 59, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #8
  %35 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196607, ptr %35, align 4
  %37 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %config1.i, align 2
  %conv.i56 = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i56, ptr %msg.i54, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i57, align 2
  %buf2.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %41 = ptrtoint ptr %buf2.i59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i53, ptr %buf2.i59, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i60 = icmp ugt i32 %42, 1
  br i1 %cmp.i60, label %do.end.i62, label %tda10048_writereg.exit.do.end8.i65_crit_edge

tda10048_writereg.exit.do.end8.i65_crit_edge:     ; preds = %tda10048_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i65

do.end.i62:                                       ; preds = %tda10048_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 194, i32 noundef 59) #11
  br label %do.end8.i65

do.end8.i65:                                      ; preds = %do.end.i62, %tda10048_writereg.exit.do.end8.i65_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call9.i63 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i63)
  %cmp10.not.i64 = icmp eq i32 %call9.i63, 1
  br i1 %cmp10.not.i64, label %do.end8.i65.tda10048_writereg.exit70_crit_edge, label %do.end15.i67

do.end8.i65.tda10048_writereg.exit70_crit_edge:   ; preds = %do.end8.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit70

do.end15.i67:                                     ; preds = %do.end8.i65
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i63) #11
  br label %tda10048_writereg.exit70

tda10048_writereg.exit70:                         ; preds = %do.end15.i67, %do.end8.i65.tda10048_writereg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda10048_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %b0.i134.i = alloca [1 x i8], align 1
  %b1.i135.i = alloca [1 x i8], align 1
  %msg.i136.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i113.i = alloca [1 x i8], align 1
  %b1.i114.i = alloca [1 x i8], align 1
  %msg.i115.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i92.i = alloca [1 x i8], align 1
  %b1.i93.i = alloca [1 x i8], align 1
  %msg.i94.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.95) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 96, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end14.i_crit_edge

do.end3.do.end14.i_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 96) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.end3.do.end14.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  %22 = lshr i8 %21, 5
  %.lobit = and i8 %22, 1
  %23 = zext i8 %.lobit to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %24 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #8
  %25 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 24, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #8
  %26 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %29 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config1.i, align 2
  %conv.i.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i, align 2
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %27, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %35 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %36 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %37 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %38 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i = icmp ugt i32 %39, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %tda10048_readreg.exit.do.end14.i.i_crit_edge

tda10048_readreg.exit.do.end14.i.i_crit_edge:     ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i

do.end.i.i:                                       ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24) #11
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i.i, %tda10048_readreg.exit.do.end14.i.i_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call16.i.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i.i)
  %cmp17.not.i.i = icmp eq i32 %call16.i.i, 2
  br i1 %cmp17.not.i.i, label %do.end14.i.i.tda10048_readreg.exit.i_crit_edge, label %do.end22.i.i

do.end14.i.i.tda10048_readreg.exit.i_crit_edge:   ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit.i

do.end22.i.i:                                     ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i.i) #11
  br label %tda10048_readreg.exit.i

tda10048_readreg.exit.i:                          ; preds = %do.end22.i.i, %do.end14.i.i.tda10048_readreg.exit.i_crit_edge
  %42 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #8
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %tda10048_readreg.exit.i.tda10048_get_tps.exit_crit_edge, label %if.end.i

tda10048_readreg.exit.i.tda10048_get_tps.exit_crit_edge: ; preds = %tda10048_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_get_tps.exit

if.end.i:                                         ; preds = %tda10048_readreg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i92.i) #8
  %45 = ptrtoint ptr %b0.i92.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 21, ptr %b0.i92.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i93.i) #8
  %46 = ptrtoint ptr %b1.i93.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %b1.i93.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i94.i) #8
  %47 = getelementptr inbounds i8, ptr %msg.i94.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %49 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %config1.i, align 2
  %conv.i96.i = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i94.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i96.i, ptr %msg.i94.i, align 4
  %flags.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i97.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i97.i, align 2
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %47, align 4
  %buf.i99.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i99.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b0.i92.i, ptr %buf.i99.i, align 4
  %arrayinit.element.i100.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1
  %55 = ptrtoint ptr %arrayinit.element.i100.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i96.i, ptr %arrayinit.element.i100.i, align 4
  %flags6.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 1
  %56 = ptrtoint ptr %flags6.i101.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %flags6.i101.i, align 2
  %len7.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 2
  %57 = ptrtoint ptr %len7.i102.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %len7.i102.i, align 4
  %buf8.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 3
  %58 = ptrtoint ptr %buf8.i103.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b1.i93.i, ptr %buf8.i103.i, align 4
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i104.i = icmp ugt i32 %59, 1
  br i1 %cmp.i104.i, label %do.end.i106.i, label %if.end.i.do.end14.i109.i_crit_edge

if.end.i.do.end14.i109.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i109.i

do.end.i106.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 21) #11
  br label %do.end14.i109.i

do.end14.i109.i:                                  ; preds = %do.end.i106.i, %if.end.i.do.end14.i109.i_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call16.i107.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i94.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i107.i)
  %cmp17.not.i108.i = icmp eq i32 %call16.i107.i, 2
  br i1 %cmp17.not.i108.i, label %do.end14.i109.i.tda10048_readreg.exit112.i_crit_edge, label %do.end22.i111.i

do.end14.i109.i.tda10048_readreg.exit112.i_crit_edge: ; preds = %do.end14.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit112.i

do.end22.i111.i:                                  ; preds = %do.end14.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i107.i) #11
  br label %tda10048_readreg.exit112.i

tda10048_readreg.exit112.i:                       ; preds = %do.end22.i111.i, %do.end14.i109.i.tda10048_readreg.exit112.i_crit_edge
  %62 = ptrtoint ptr %b1.i93.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %b1.i93.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i94.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i93.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i92.i) #8
  %conv2.i = zext i8 %63 to i32
  %and3.i = lshr i32 %conv2.i, 5
  %64 = and i32 %and3.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %.not = icmp eq i32 %64, 3
  br i1 %.not, label %tda10048_readreg.exit112.i.sw.epilog.i_crit_edge, label %switch.lookup

tda10048_readreg.exit112.i.sw.epilog.i_crit_edge: ; preds = %tda10048_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %tda10048_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tda10048_get_frontend, i32 0, i32 %64
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation7.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %66 = ptrtoint ptr %modulation7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %switch.load, ptr %modulation7.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %tda10048_readreg.exit112.i.sw.epilog.i_crit_edge
  %and9.i = lshr i32 %conv2.i, 3
  %67 = and i32 %and9.i, 3
  %hierarchy17.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %68 = ptrtoint ptr %hierarchy17.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %hierarchy17.i, align 4
  %and20.i = and i32 %conv2.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and20.i)
  %69 = icmp ult i32 %and20.i, 5
  br i1 %69, label %switch.lookup8, label %sw.epilog.i.sw.epilog30.i_crit_edge

sw.epilog.i.sw.epilog30.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog30.i

switch.lookup8:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep9 = getelementptr inbounds [5 x i32], ptr @switch.table.tda10048_get_frontend.102, i32 0, i32 %and20.i
  %70 = ptrtoint ptr %switch.gep9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load10 = load i32, ptr %switch.gep9, align 4
  %code_rate_HP29.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %71 = ptrtoint ptr %code_rate_HP29.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %switch.load10, ptr %code_rate_HP29.i, align 4
  br label %sw.epilog30.i

sw.epilog30.i:                                    ; preds = %switch.lookup8, %sw.epilog.i.sw.epilog30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i113.i) #8
  %72 = ptrtoint ptr %b0.i113.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 22, ptr %b0.i113.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i114.i) #8
  %73 = ptrtoint ptr %b1.i114.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %b1.i114.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i115.i) #8
  %74 = getelementptr inbounds i8, ptr %msg.i115.i, i32 4
  %75 = call ptr @memset(ptr %74, i32 255, i32 16)
  %76 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %config1.i, align 2
  %conv.i117.i = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i115.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i117.i, ptr %msg.i115.i, align 4
  %flags.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i118.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i118.i, align 2
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %74, align 4
  %buf.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 0, i32 3
  %81 = ptrtoint ptr %buf.i120.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %b0.i113.i, ptr %buf.i120.i, align 4
  %arrayinit.element.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1
  %82 = ptrtoint ptr %arrayinit.element.i121.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i117.i, ptr %arrayinit.element.i121.i, align 4
  %flags6.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 1
  %83 = ptrtoint ptr %flags6.i122.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %flags6.i122.i, align 2
  %len7.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 2
  %84 = ptrtoint ptr %len7.i123.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %len7.i123.i, align 4
  %buf8.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 3
  %85 = ptrtoint ptr %buf8.i124.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %b1.i114.i, ptr %buf8.i124.i, align 4
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i125.i = icmp ugt i32 %86, 1
  br i1 %cmp.i125.i, label %do.end.i127.i, label %sw.epilog30.i.do.end14.i130.i_crit_edge

sw.epilog30.i.do.end14.i130.i_crit_edge:          ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i130.i

do.end.i127.i:                                    ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 22) #11
  br label %do.end14.i130.i

do.end14.i130.i:                                  ; preds = %do.end.i127.i, %sw.epilog30.i.do.end14.i130.i_crit_edge
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call16.i128.i = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i115.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i128.i)
  %cmp17.not.i129.i = icmp eq i32 %call16.i128.i, 2
  br i1 %cmp17.not.i129.i, label %do.end14.i130.i.tda10048_readreg.exit133.i_crit_edge, label %do.end22.i132.i

do.end14.i130.i.tda10048_readreg.exit133.i_crit_edge: ; preds = %do.end14.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit133.i

do.end22.i132.i:                                  ; preds = %do.end14.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i128.i) #11
  br label %tda10048_readreg.exit133.i

tda10048_readreg.exit133.i:                       ; preds = %do.end22.i132.i, %do.end14.i130.i.tda10048_readreg.exit133.i_crit_edge
  %89 = ptrtoint ptr %b1.i114.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %b1.i114.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i115.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i113.i) #8
  %91 = and i8 %90, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %91)
  %92 = icmp ult i8 %91, 5
  br i1 %92, label %switch.lookup11, label %tda10048_readreg.exit133.i.sw.epilog43.i_crit_edge

tda10048_readreg.exit133.i.sw.epilog43.i_crit_edge: ; preds = %tda10048_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog43.i

switch.lookup11:                                  ; preds = %tda10048_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  %and33.i = zext i8 %91 to i32
  %switch.gep12 = getelementptr inbounds [5 x i32], ptr @switch.table.tda10048_get_frontend.103, i32 0, i32 %and33.i
  %93 = ptrtoint ptr %switch.gep12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  %code_rate_LP42.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %94 = ptrtoint ptr %code_rate_LP42.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %switch.load13, ptr %code_rate_LP42.i, align 4
  br label %sw.epilog43.i

sw.epilog43.i:                                    ; preds = %switch.lookup11, %tda10048_readreg.exit133.i.sw.epilog43.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i134.i) #8
  %95 = ptrtoint ptr %b0.i134.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 20, ptr %b0.i134.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i135.i) #8
  %96 = ptrtoint ptr %b1.i135.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %b1.i135.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i136.i) #8
  %97 = getelementptr inbounds i8, ptr %msg.i136.i, i32 4
  %98 = call ptr @memset(ptr %97, i32 255, i32 16)
  %99 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %config1.i, align 2
  %conv.i138.i = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i136.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i138.i, ptr %msg.i136.i, align 4
  %flags.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i139.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i139.i, align 2
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %97, align 4
  %buf.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 3
  %104 = ptrtoint ptr %buf.i141.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %b0.i134.i, ptr %buf.i141.i, align 4
  %arrayinit.element.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1
  %105 = ptrtoint ptr %arrayinit.element.i142.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i138.i, ptr %arrayinit.element.i142.i, align 4
  %flags6.i143.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 1
  %106 = ptrtoint ptr %flags6.i143.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %flags6.i143.i, align 2
  %len7.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 2
  %107 = ptrtoint ptr %len7.i144.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %len7.i144.i, align 4
  %buf8.i145.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 3
  %108 = ptrtoint ptr %buf8.i145.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %b1.i135.i, ptr %buf8.i145.i, align 4
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i146.i = icmp ugt i32 %109, 1
  br i1 %cmp.i146.i, label %do.end.i148.i, label %sw.epilog43.i.do.end14.i151.i_crit_edge

sw.epilog43.i.do.end14.i151.i_crit_edge:          ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i151.i

do.end.i148.i:                                    ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 20) #11
  br label %do.end14.i151.i

do.end14.i151.i:                                  ; preds = %do.end.i148.i, %sw.epilog43.i.do.end14.i151.i_crit_edge
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call16.i149.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i136.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i149.i)
  %cmp17.not.i150.i = icmp eq i32 %call16.i149.i, 2
  br i1 %cmp17.not.i150.i, label %do.end14.i151.i.tda10048_readreg.exit154.i_crit_edge, label %do.end22.i153.i

do.end14.i151.i.tda10048_readreg.exit154.i_crit_edge: ; preds = %do.end14.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit154.i

do.end22.i153.i:                                  ; preds = %do.end14.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i149.i) #11
  br label %tda10048_readreg.exit154.i

tda10048_readreg.exit154.i:                       ; preds = %do.end22.i153.i, %do.end14.i151.i.tda10048_readreg.exit154.i_crit_edge
  %112 = ptrtoint ptr %b1.i135.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %b1.i135.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i136.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i135.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i134.i) #8
  %conv45.i = zext i8 %113 to i32
  %and46.i = lshr i32 %conv45.i, 2
  %114 = and i32 %and46.i, 3
  %guard_interval54.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 8
  %115 = ptrtoint ptr %guard_interval54.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %guard_interval54.i, align 4
  %and57.i = and i32 %conv45.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and57.i)
  %switch = icmp ult i32 %and57.i, 2
  br i1 %switch, label %cleanup.sink.split.i, label %tda10048_readreg.exit154.i.tda10048_get_tps.exit_crit_edge

tda10048_readreg.exit154.i.tda10048_get_tps.exit_crit_edge: ; preds = %tda10048_readreg.exit154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_get_tps.exit

cleanup.sink.split.i:                             ; preds = %tda10048_readreg.exit154.i
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  %116 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %and57.i, ptr %transmission_mode.i, align 4
  br label %tda10048_get_tps.exit

tda10048_get_tps.exit:                            ; preds = %cleanup.sink.split.i, %tda10048_readreg.exit154.i.tda10048_get_tps.exit_crit_edge, %tda10048_readreg.exit.i.tda10048_get_tps.exit_crit_edge
  %retval.0.i = phi i32 [ -11, %tda10048_readreg.exit.i.tda10048_get_tps.exit_crit_edge ], [ 0, %tda10048_readreg.exit154.i.tda10048_get_tps.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 26, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %entry.do.end14.i_crit_edge

entry.do.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 26) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %entry.do.end14.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  %.pre = zext i8 %21 to i32
  br i1 %cmp.not, label %tda10048_readreg.exit.do.end4_crit_edge, label %do.end

tda10048_readreg.exit.do.end4_crit_edge:          ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %.pre) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %tda10048_readreg.exit.do.end4_crit_edge
  %and = and i32 %.pre, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end4.if.end7_crit_edge, label %if.then6

do.end4.if.end7_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end4.if.end7_crit_edge
  %and9 = and i32 %.pre, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %or12 = or i32 %26, 1
  store i32 %or12, ptr %status, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %and15 = and i32 %.pre, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %or20 = or i32 %28, 28
  store i32 %or20, ptr %status, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i115 = alloca [2 x i8], align 1
  %msg.i116 = alloca %struct.i2c_msg, align 4
  %b0.i94 = alloca [1 x i8], align 1
  %b1.i95 = alloca [1 x i8], align 1
  %msg.i96 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i73 = alloca [1 x i8], align 1
  %b1.i74 = alloca [1 x i8], align 1
  %msg.i75 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i52 = alloca [1 x i8], align 1
  %b1.i53 = alloca [1 x i8], align 1
  %msg.i54 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i31 = alloca [1 x i8], align 1
  %b1.i32 = alloca [1 x i8], align 1
  %msg.i33 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -42, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end14.i_crit_edge

do.end3.do.end14.i_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 214) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.end3.do.end14.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %tda10048_readreg.exit.if.end22_crit_edge, label %if.then5

tda10048_readreg.exit.if.end22_crit_edge:         ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then5:                                         ; preds = %tda10048_readreg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i31) #8
  %23 = ptrtoint ptr %b0.i31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -57, ptr %b0.i31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i32) #8
  %24 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i32, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i33) #8
  %25 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %config1.i, align 2
  %conv.i35 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i35, ptr %msg.i33, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i36, align 2
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %25, align 4
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b0.i31, ptr %buf.i38, align 4
  %arrayinit.element.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1
  %33 = ptrtoint ptr %arrayinit.element.i39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i35, ptr %arrayinit.element.i39, align 4
  %flags6.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 1
  %34 = ptrtoint ptr %flags6.i40 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags6.i40, align 2
  %len7.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 2
  %35 = ptrtoint ptr %len7.i41 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len7.i41, align 4
  %buf8.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 3
  %36 = ptrtoint ptr %buf8.i42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b1.i32, ptr %buf8.i42, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i43 = icmp ugt i32 %37, 1
  br i1 %cmp.i43, label %do.end.i45, label %if.then5.do.end14.i48_crit_edge

if.then5.do.end14.i48_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i48

do.end.i45:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 199) #11
  br label %do.end14.i48

do.end14.i48:                                     ; preds = %do.end.i45, %if.then5.do.end14.i48_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call16.i46 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i33, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i46)
  %cmp17.not.i47 = icmp eq i32 %call16.i46, 2
  br i1 %cmp17.not.i47, label %do.end14.i48.tda10048_readreg.exit51_crit_edge, label %do.end22.i50

do.end14.i48.tda10048_readreg.exit51_crit_edge:   ; preds = %do.end14.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit51

do.end22.i50:                                     ; preds = %do.end14.i48
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i46) #11
  br label %tda10048_readreg.exit51

tda10048_readreg.exit51:                          ; preds = %do.end22.i50, %do.end14.i48.tda10048_readreg.exit51_crit_edge
  %40 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %b1.i32, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i31) #8
  %conv7 = zext i8 %41 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i52) #8
  %42 = ptrtoint ptr %b0.i52 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -58, ptr %b0.i52, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i53) #8
  %43 = ptrtoint ptr %b1.i53 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %b1.i53, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i54) #8
  %44 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %45 = call ptr @memset(ptr %44, i32 255, i32 16)
  %46 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %config1.i, align 2
  %conv.i56 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i56, ptr %msg.i54, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i57, align 2
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %44, align 4
  %buf.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %b0.i52, ptr %buf.i59, align 4
  %arrayinit.element.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i60 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i56, ptr %arrayinit.element.i60, align 4
  %flags6.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i61 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i61, align 2
  %len7.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i62 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i62, align 4
  %buf8.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i63 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i53, ptr %buf8.i63, align 4
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i64 = icmp ugt i32 %56, 1
  br i1 %cmp.i64, label %do.end.i66, label %tda10048_readreg.exit51.do.end14.i69_crit_edge

tda10048_readreg.exit51.do.end14.i69_crit_edge:   ; preds = %tda10048_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i69

do.end.i66:                                       ; preds = %tda10048_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #10
  %call.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 198) #11
  br label %do.end14.i69

do.end14.i69:                                     ; preds = %do.end.i66, %tda10048_readreg.exit51.do.end14.i69_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call16.i67 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i54, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i67)
  %cmp17.not.i68 = icmp eq i32 %call16.i67, 2
  br i1 %cmp17.not.i68, label %do.end14.i69.tda10048_readreg.exit72_crit_edge, label %do.end22.i71

do.end14.i69.tda10048_readreg.exit72_crit_edge:   ; preds = %do.end14.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit72

do.end22.i71:                                     ; preds = %do.end14.i69
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i67) #11
  br label %tda10048_readreg.exit72

tda10048_readreg.exit72:                          ; preds = %do.end22.i71, %do.end14.i69.tda10048_readreg.exit72_crit_edge
  %59 = ptrtoint ptr %b1.i53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b1.i53, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i53) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i52) #8
  %conv9 = zext i8 %60 to i32
  %or = or i32 %shl, %conv9
  %conv10 = zext i32 %or to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i73) #8
  %61 = ptrtoint ptr %b0.i73 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -59, ptr %b0.i73, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i74) #8
  %62 = ptrtoint ptr %b1.i74 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %b1.i74, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i75) #8
  %63 = getelementptr inbounds i8, ptr %msg.i75, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %65 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %config1.i, align 2
  %conv.i77 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i75 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i77, ptr %msg.i75, align 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i78, align 2
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %63, align 4
  %buf.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 3
  %70 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %b0.i73, ptr %buf.i80, align 4
  %arrayinit.element.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1
  %71 = ptrtoint ptr %arrayinit.element.i81 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i77, ptr %arrayinit.element.i81, align 4
  %flags6.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 1
  %72 = ptrtoint ptr %flags6.i82 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %flags6.i82, align 2
  %len7.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 2
  %73 = ptrtoint ptr %len7.i83 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %len7.i83, align 4
  %buf8.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 3
  %74 = ptrtoint ptr %buf8.i84 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %b1.i74, ptr %buf8.i84, align 4
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i85 = icmp ugt i32 %75, 1
  br i1 %cmp.i85, label %do.end.i87, label %tda10048_readreg.exit72.do.end14.i90_crit_edge

tda10048_readreg.exit72.do.end14.i90_crit_edge:   ; preds = %tda10048_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i90

do.end.i87:                                       ; preds = %tda10048_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %call.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 197) #11
  br label %do.end14.i90

do.end14.i90:                                     ; preds = %do.end.i87, %tda10048_readreg.exit72.do.end14.i90_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call16.i88 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i75, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i88)
  %cmp17.not.i89 = icmp eq i32 %call16.i88, 2
  br i1 %cmp17.not.i89, label %do.end14.i90.tda10048_readreg.exit93_crit_edge, label %do.end22.i92

do.end14.i90.tda10048_readreg.exit93_crit_edge:   ; preds = %do.end14.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit93

do.end22.i92:                                     ; preds = %do.end14.i90
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i88) #11
  br label %tda10048_readreg.exit93

tda10048_readreg.exit93:                          ; preds = %do.end22.i92, %do.end14.i90.tda10048_readreg.exit93_crit_edge
  %78 = ptrtoint ptr %b1.i74 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %b1.i74, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i75) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i74) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i73) #8
  %conv12 = zext i8 %79 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i94) #8
  %80 = ptrtoint ptr %b0.i94 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -60, ptr %b0.i94, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i95) #8
  %81 = ptrtoint ptr %b1.i95 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %b1.i95, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i96) #8
  %82 = getelementptr inbounds i8, ptr %msg.i96, i32 4
  %83 = call ptr @memset(ptr %82, i32 255, i32 16)
  %84 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %config1.i, align 2
  %conv.i98 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i96 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i98, ptr %msg.i96, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i99, align 2
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %82, align 4
  %buf.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i101 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b0.i94, ptr %buf.i101, align 4
  %arrayinit.element.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 1
  %90 = ptrtoint ptr %arrayinit.element.i102 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i98, ptr %arrayinit.element.i102, align 4
  %flags6.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 1, i32 1
  %91 = ptrtoint ptr %flags6.i103 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags6.i103, align 2
  %len7.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 1, i32 2
  %92 = ptrtoint ptr %len7.i104 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len7.i104, align 4
  %buf8.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 1, i32 3
  %93 = ptrtoint ptr %buf8.i105 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i95, ptr %buf8.i105, align 4
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i106 = icmp ugt i32 %94, 1
  br i1 %cmp.i106, label %do.end.i108, label %tda10048_readreg.exit93.do.end14.i111_crit_edge

tda10048_readreg.exit93.do.end14.i111_crit_edge:  ; preds = %tda10048_readreg.exit93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i111

do.end.i108:                                      ; preds = %tda10048_readreg.exit93
  call void @__sanitizer_cov_trace_pc() #10
  %call.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 196) #11
  br label %do.end14.i111

do.end14.i111:                                    ; preds = %do.end.i108, %tda10048_readreg.exit93.do.end14.i111_crit_edge
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call16.i109 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i96, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i109)
  %cmp17.not.i110 = icmp eq i32 %call16.i109, 2
  br i1 %cmp17.not.i110, label %do.end14.i111.tda10048_readreg.exit114_crit_edge, label %do.end22.i113

do.end14.i111.tda10048_readreg.exit114_crit_edge: ; preds = %do.end14.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit114

do.end22.i113:                                    ; preds = %do.end14.i111
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i109) #11
  br label %tda10048_readreg.exit114

tda10048_readreg.exit114:                         ; preds = %do.end22.i113, %do.end14.i111.tda10048_readreg.exit114_crit_edge
  %97 = ptrtoint ptr %b1.i95 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %b1.i95, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i96) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i95) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i94) #8
  %conv15 = zext i8 %98 to i32
  %mul17 = mul nuw nsw i64 %conv10, 200000000
  %99 = shl nuw nsw i32 %conv12, 13
  %100 = shl nuw nsw i32 %conv15, 5
  %mul18 = or i32 %100, %99
  %add = or i32 %mul18, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul17)
  %cmp164.i.i = icmp ult i64 %mul17, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !230

if.then168.i.i:                                   ; preds = %tda10048_readreg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul17 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %tda10048_readreg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %101 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %mul17) #13, !srcloc !231
  %asmresult1.i.i.i = extractvalue { i64, i64 } %101, 1
  %extract.t125 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t125, %if.else174.i.i ]
  store i32 %dividend.addr.0.i.i.off0, ptr @tda10048_read_ber.cber_current, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i115) #8
  %102 = getelementptr inbounds [2 x i8], ptr %buf.i115, i32 0, i32 1
  %103 = ptrtoint ptr %buf.i115 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -62, ptr %buf.i115, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 57, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i116) #8
  %105 = getelementptr inbounds i8, ptr %msg.i116, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %105, align 4
  %107 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %config1.i, align 2
  %conv.i118 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i116 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i118, ptr %msg.i116, align 4
  %flags.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i119 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i119, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116, i32 0, i32 3
  %111 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i115, ptr %buf2.i, align 4
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i121 = icmp ugt i32 %112, 1
  br i1 %cmp.i121, label %do.end.i123, label %div_u64.exit.do.end8.i_crit_edge

div_u64.exit.do.end8.i_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i123:                                      ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 194, i32 noundef 57) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i123, %div_u64.exit.do.end8.i_crit_edge
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i116, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end8.i.tda10048_writereg.exit_crit_edge, label %do.end15.i

do.end8.i.tda10048_writereg.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit

do.end15.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i) #11
  br label %tda10048_writereg.exit

tda10048_writereg.exit:                           ; preds = %do.end15.i, %do.end8.i.tda10048_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i116) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i115) #8
  br label %if.end22

if.end22:                                         ; preds = %tda10048_writereg.exit, %tda10048_readreg.exit.if.end22_crit_edge
  %115 = load i32, ptr @tda10048_read_ber.cber_current, align 4
  %116 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef %signal_strength) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %signal_strength, align 2
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -94, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b1.i, ptr %buf8.i, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp ugt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end14.i_crit_edge

do.end3.do.end14.i_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 162) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.end3.do.end14.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp5.not = icmp eq i8 %22, 0
  br i1 %cmp5.not, label %tda10048_readreg.exit.if.end12_crit_edge, label %if.then7

tda10048_readreg.exit.if.end12_crit_edge:         ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %23 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %signal_strength, align 2
  %25 = trunc i32 %or to i16
  %conv11 = sub i16 %24, %25
  store i16 %conv11, ptr %signal_strength, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %tda10048_readreg.exit.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -94, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end14.i_crit_edge

do.end3.do.end14.i_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 162) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.end3.do.end14.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %tda10048_readreg.exit
  %i.017 = phi i32 [ 0, %tda10048_readreg.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [123 x %struct.snr_tab], ptr @snr_tab, i32 0, i32 %i.017
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp7.not = icmp ugt i8 %21, %23
  br i1 %cmp7.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr [123 x %struct.snr_tab], ptr @snr_tab, i32 0, i32 %i.017, i32 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  %conv11 = zext i8 %25 to i16
  %26 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv11, ptr %snr, align 2
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 123
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then9
  %ret.0 = phi i32 [ 0, %if.then9 ], [ -22, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10048_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i36 = alloca [2 x i8], align 1
  %msg.i37 = alloca %struct.i2c_msg, align 4
  %b0.i15 = alloca [1 x i8], align 1
  %b1.i16 = alloca [1 x i8], align 1
  %msg.i17 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.101) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config1.i = getelementptr inbounds %struct.tda10048_state, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #8
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -49, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #8
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1.i, align 2
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end14.i_crit_edge

do.end3.do.end14.i_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 207) #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.end3.do.end14.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp17.not.i, label %do.end14.i.tda10048_readreg.exit_crit_edge, label %do.end22.i

do.end14.i.tda10048_readreg.exit_crit_edge:       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i) #11
  br label %tda10048_readreg.exit

tda10048_readreg.exit:                            ; preds = %do.end22.i, %do.end14.i.tda10048_readreg.exit_crit_edge
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #8
  %conv = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i15) #8
  %22 = ptrtoint ptr %b0.i15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -50, ptr %b0.i15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i16) #8
  %23 = ptrtoint ptr %b1.i16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %b1.i16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i17) #8
  %24 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %25 = call ptr @memset(ptr %24, i32 255, i32 16)
  %26 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config1.i, align 2
  %conv.i19 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i19, ptr %msg.i17, align 4
  %flags.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i20, align 2
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %24, align 4
  %buf.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %b0.i15, ptr %buf.i22, align 4
  %arrayinit.element.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1
  %32 = ptrtoint ptr %arrayinit.element.i23 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i19, ptr %arrayinit.element.i23, align 4
  %flags6.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 1
  %33 = ptrtoint ptr %flags6.i24 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags6.i24, align 2
  %len7.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 2
  %34 = ptrtoint ptr %len7.i25 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %len7.i25, align 4
  %buf8.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 3
  %35 = ptrtoint ptr %buf8.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b1.i16, ptr %buf8.i26, align 4
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i27 = icmp ugt i32 %36, 1
  br i1 %cmp.i27, label %do.end.i29, label %tda10048_readreg.exit.do.end14.i32_crit_edge

tda10048_readreg.exit.do.end14.i32_crit_edge:     ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i32

do.end.i29:                                       ; preds = %tda10048_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 206) #11
  br label %do.end14.i32

do.end14.i32:                                     ; preds = %do.end.i29, %tda10048_readreg.exit.do.end14.i32_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call16.i30 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i17, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i30)
  %cmp17.not.i31 = icmp eq i32 %call16.i30, 2
  br i1 %cmp17.not.i31, label %do.end14.i32.tda10048_readreg.exit35_crit_edge, label %do.end22.i34

do.end14.i32.tda10048_readreg.exit35_crit_edge:   ; preds = %do.end14.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_readreg.exit35

do.end22.i34:                                     ; preds = %do.end14.i32
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %call16.i30) #11
  br label %tda10048_readreg.exit35

tda10048_readreg.exit35:                          ; preds = %do.end22.i34, %do.end14.i32.tda10048_readreg.exit35_crit_edge
  %39 = ptrtoint ptr %b1.i16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %b1.i16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i17) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i15) #8
  %conv6 = zext i8 %40 to i32
  %or = or i32 %shl, %conv6
  %41 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %ucblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp7 = icmp eq i32 %or, 65535
  br i1 %cmp7, label %if.then9, label %tda10048_readreg.exit35.if.end11_crit_edge

tda10048_readreg.exit35.if.end11_crit_edge:       ; preds = %tda10048_readreg.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %tda10048_readreg.exit35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i36) #8
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i36, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -51, ptr %buf.i36, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -128, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i37) #8
  %45 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %config1.i, align 2
  %conv.i39 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i40, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %51 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i36, ptr %buf2.i, align 4
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i42 = icmp ugt i32 %52, 1
  br i1 %cmp.i42, label %do.end.i44, label %if.then9.do.end8.i_crit_edge

if.then9.do.end8.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i44:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 205, i32 noundef 128) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i44, %if.then9.do.end8.i_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call9.i = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i37, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %do.end8.i.tda10048_writereg.exit_crit_edge, label %do.end15.i

do.end8.i.tda10048_writereg.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda10048_writereg.exit

do.end15.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call9.i) #11
  br label %tda10048_writereg.exit

tda10048_writereg.exit:                           ; preds = %do.end15.i, %do.end8.i.tda10048_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36) #8
  br label %if.end11

if.end11:                                         ; preds = %tda10048_writereg.exit, %tda10048_readreg.exit35.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !218, !219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1088, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda10048_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda10048_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tda10048_attach, !7, !"__ksymtab_tda10048_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1141, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1170, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1171, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1173, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1174, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1175, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 120, i32 21}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 240, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tda10048_readreg._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tda10048_readreg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 245, i32 3}
!29 = !{ptr @tda10048_readreg._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tda10048_readreg._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1054, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tda10048_establish_defaults._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tda10048_establish_defaults._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1061, i32 3}
!38 = !{ptr @tda10048_establish_defaults._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tda10048_establish_defaults._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1068, i32 3}
!42 = !{ptr @tda10048_establish_defaults._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tda10048_establish_defaults._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1075, i32 3}
!46 = !{ptr @tda10048_establish_defaults._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tda10048_establish_defaults._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 414, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tda10048_set_if._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tda10048_set_if._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 428, i32 3}
!55 = !{ptr @tda10048_set_if._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tda10048_set_if._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 442, i32 3}
!59 = !{ptr @tda10048_set_if._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tda10048_set_if._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 447, i32 2}
!63 = !{ptr @tda10048_set_if._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tda10048_set_if._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 448, i32 2}
!67 = !{ptr @tda10048_set_if._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tda10048_set_if._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 449, i32 2}
!71 = !{ptr @tda10048_set_if._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tda10048_set_if._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 450, i32 2}
!75 = !{ptr @tda10048_set_if._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tda10048_set_if._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 451, i32 2}
!79 = !{ptr @tda10048_set_if._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tda10048_set_if._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 457, i32 2}
!83 = !{ptr @tda10048_set_if._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tda10048_set_if._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"pll_tab", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 197, i32 3}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 297, i32 2}
!89 = !{ptr @tda10048_set_phy2._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tda10048_set_phy2._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 218, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tda10048_writereg._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @tda10048_writereg._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 223, i32 3}
!98 = !{ptr @tda10048_writereg._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tda10048_writereg._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 387, i32 2}
!102 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tda10048_set_bandwidth._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @tda10048_set_bandwidth._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 398, i32 3}
!107 = !{ptr @tda10048_set_bandwidth._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @tda10048_set_bandwidth._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 333, i32 2}
!111 = !{ptr @tda10048_set_wref._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @tda10048_set_wref._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 363, i32 2}
!115 = !{ptr @tda10048_set_invwref._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tda10048_set_invwref._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 680, i32 2}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tda10048_i2c_gate_ctrl._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @tda10048_i2c_gate_ctrl._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @tda10048_ops, !123, !"tda10048_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1143, i32 38}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1042, i32 2}
!126 = !{ptr @tda10048_release._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tda10048_release._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 754, i32 2}
!130 = !{ptr @tda10048_init._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tda10048_init._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @init_tab, !133, !"init_tab", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 150, i32 3}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 479, i32 2}
!136 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tda10048_firmware_upload._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @tda10048_firmware_upload._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 486, i32 3}
!142 = !{ptr @tda10048_firmware_upload._entry.65, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @tda10048_firmware_upload._entry_ptr.67, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 490, i32 3}
!146 = !{ptr @tda10048_firmware_upload._entry.68, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @tda10048_firmware_upload._entry_ptr.70, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 497, i32 3}
!150 = !{ptr @tda10048_firmware_upload._entry.71, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tda10048_firmware_upload._entry_ptr.73, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 500, i32 3}
!154 = !{ptr @tda10048_firmware_upload._entry.74, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tda10048_firmware_upload._entry_ptr.76, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 552, i32 3}
!158 = !{ptr @tda10048_firmware_upload._entry.77, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @tda10048_firmware_upload._entry_ptr.79, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 555, i32 3}
!162 = !{ptr @tda10048_firmware_upload._entry.80, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @tda10048_firmware_upload._entry_ptr.82, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 259, i32 2}
!166 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tda10048_writeregbulk._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @tda10048_writeregbulk._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 275, i32 2}
!171 = !{ptr @tda10048_writeregbulk._entry.85, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @tda10048_writeregbulk._entry_ptr.87, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 280, i32 3}
!175 = !{ptr @tda10048_writeregbulk._entry.88, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tda10048_writeregbulk._entry_ptr.90, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 696, i32 2}
!179 = !{ptr @tda10048_output_mode._entry, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @tda10048_output_mode._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 564, i32 2}
!183 = !{ptr @tda10048_set_inversion._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @tda10048_set_inversion._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 720, i32 2}
!187 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tda10048_set_frontend._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tda10048_set_frontend._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1024, i32 2}
!192 = !{ptr @tda10048_get_frontend._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tda10048_get_frontend._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 792, i32 2}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tda10048_read_status._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @tda10048_read_status._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @tda10048_read_ber.cber_current, !200, !"cber_current", i1 false, i1 false}
!200 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 812, i32 13}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 816, i32 2}
!203 = !{ptr @tda10048_read_ber._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @tda10048_read_ber._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 843, i32 2}
!207 = !{ptr @tda10048_read_signal_strength._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @tda10048_read_signal_strength._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 990, i32 2}
!211 = !{ptr @tda10048_read_snr._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @tda10048_read_snr._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @snr_tab, !214, !"snr_tab", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 858, i32 3}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/tda10048.c", i32 1008, i32 2}
!217 = !{ptr @tda10048_read_ucblocks._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @tda10048_read_ucblocks._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{i8 0, i8 2}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2148627225, i64 2148627505, i64 2148627839, i64 2148628173}
!232 = !{i64 1141564, i64 1141591}
!233 = !{i64 1141904, i64 1141931, i64 1141965, i64 1141986}
!234 = !{!"auto-init"}
