; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda827x.c_pt.bc'
source_filename = "../drivers/media/tuners/tda827x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tda827x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda827x_attach\09\09\09\09"
module asm "\09.long\09__crc_tda827x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda827x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda827x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda827x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda827xa_data = type { i32, i8, i8, i8, i8, i8 }
%struct.tda827x_data = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.tda827x_priv = type { i32, ptr, ptr, i32, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
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
%struct.list_head = type { ptr, ptr }

@__param_str_debug = internal constant [14 x i8] c"tda827x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"tda827x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"tda827x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@tda827x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017tda827x: %s:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tda827x.c\00", [33 x i8] zeroinitializer }, align 32
@tda827x_attach._entry_ptr = internal global ptr @tda827x_attach._entry, section ".printk_index", align 4
@tda827xo_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 55000000, i32 860000000, i32 250000, i32 0, i32 0, i32 0 }, ptr @tda827x_release, ptr @tda827x_initial_init, ptr @tda827x_initial_sleep, ptr null, ptr null, ptr @tda827xo_set_params, ptr @tda827xo_set_analog_params, ptr null, ptr @tda827x_get_frequency, ptr @tda827x_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda827x_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017tda827x: type set to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tda827x_attach._entry_ptr.5 = internal global ptr @tda827x_attach._entry.3, section ".printk_index", align 4
@__kstrtab_tda827x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda827x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda827x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda827x_attach to i32), ptr @__kstrtab_tda827x_attach, ptr @__kstrtabns_tda827x_attach }, section "___ksymtab_gpl+tda827x_attach", align 4
@__UNIQUE_ID_description292 = internal constant [39 x i8] c"tda827x.description=DVB TDA827x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"tda827x.author=Hartmut Hackmann <hartmut.hackmann@t-online.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"tda827x.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [42 x i8] c"tda827x.file=drivers/media/tuners/tda827x\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"tda827x.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda827x_probe_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: could not read from tuner at addr: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda827x_probe_version\00", [42 x i8] zeroinitializer }, align 32
@tda827x_probe_version._entry_ptr = internal global ptr @tda827x_probe_version._entry, section ".printk_index", align 4
@tda827x_probe_version._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda827x: tda827x tuner found\0A\00", [32 x i8] zeroinitializer }, align 32
@tda827x_probe_version._entry_ptr.10 = internal global ptr @tda827x_probe_version._entry.8, section ".printk_index", align 4
@tda827x_probe_version._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017tda827x: tda827xa tuner found\0A\00", [63 x i8] zeroinitializer }, align 32
@tda827x_probe_version._entry_ptr.13 = internal global ptr @tda827x_probe_version._entry.11, section ".printk_index", align 4
@tda827xa_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827XA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 906000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @tda827x_release, ptr @tda827x_init, ptr @tda827xa_sleep, ptr null, ptr null, ptr @tda827xa_set_params, ptr @tda827xa_set_analog_params, ptr null, ptr @tda827x_get_frequency, ptr @tda827x_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda827x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tda827x_init\00", [19 x i8] zeroinitializer }, align 32
@tda827x_init._entry_ptr = internal global ptr @tda827x_init._entry, section ".printk_index", align 4
@tda827xo_sleep.buf = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"0\D0", [30 x i8] zeroinitializer }, align 32
@tda827xo_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827xo_sleep\00", [17 x i8] zeroinitializer }, align 32
@tda827xo_sleep._entry_ptr = internal global ptr @tda827xo_sleep._entry, section ".printk_index", align 4
@tda827xa_sleep.buf = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"0\90", [30 x i8] zeroinitializer }, align 32
@tda827xa_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827xa_sleep\00", [17 x i8] zeroinitializer }, align 32
@tda827xa_sleep._entry_ptr = internal global ptr @tda827xa_sleep._entry, section ".printk_index", align 4
@tda827xa_dvbt = internal constant { [27 x %struct.tda827xa_data], [92 x i8] } { [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 290000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 550000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], [92 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda827xa_set_params\00", [44 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry_ptr = internal global ptr @tda827xa_set_params._entry, section ".printk_index", align 4
@tda827xa_set_params._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017tda827x: %s select tda827xa_dvbc\0A\00", [60 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry_ptr.20 = internal global ptr @tda827xa_set_params._entry.18, section ".printk_index", align 4
@tda827xa_dvbc = internal constant { [27 x %struct.tda827xa_data], [92 x i8] } { [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 50125000, i8 2, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 58500000, i8 3, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 69250000, i8 0, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 83625000, i8 1, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 100250000, i8 2, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 117000000, i8 3, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 138500000, i8 0, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 167250000, i8 1, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 187000000, i8 2, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 200500000, i8 2, i8 2, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 234000000, i8 3, i8 2, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 277000000, i8 0, i8 1, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 334500000, i8 1, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 401000000, i8 2, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 468000000, i8 3, i8 1, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 535000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 0, i8 0, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 638000000, i8 1, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 669000000, i8 1, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 720000000, i8 2, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 802000000, i8 2, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 835000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 885000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data zeroinitializer], [92 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017tda827x: tda8275a AGC2 gain is: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry_ptr.23 = internal global ptr @tda827xa_set_params._entry.21, section ".printk_index", align 4
@tda827xa_set_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: could not write to tuner at addr: 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@tda827xa_set_params._entry_ptr.26 = internal global ptr @tda827xa_set_params._entry.24, section ".printk_index", align 4
@tda827xa_lna_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017tda827x: tda827x_config not defined, cannot set LNA gain!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda827xa_lna_gain\00", [46 x i8] zeroinitializer }, align 32
@tda827xa_lna_gain._entry_ptr = internal global ptr @tda827xa_lna_gain._entry, section ".printk_index", align 4
@tda827xa_lna_gain._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017tda827x: setting LNA to high gain\0A\00", [59 x i8] zeroinitializer }, align 32
@tda827xa_lna_gain._entry_ptr.31 = internal global ptr @tda827xa_lna_gain._entry.29, section ".printk_index", align 4
@tda827xa_lna_gain._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017tda827x: setting LNA to low gain\0A\00", [60 x i8] zeroinitializer }, align 32
@tda827xa_lna_gain._entry_ptr.34 = internal global ptr @tda827xa_lna_gain._entry.32, section ".printk_index", align 4
@tda827xa_analog = internal constant { [26 x %struct.tda827xa_data], [72 x i8] } { [26 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], [72 x i8] zeroinitializer }, align 32
@tda827xa_set_analog_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017tda827x: AGC2 gain is: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tda827xa_set_analog_params\00", [37 x i8] zeroinitializer }, align 32
@tda827xa_set_analog_params._entry_ptr = internal global ptr @tda827xa_set_analog_params._entry, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GH\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DK\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LC\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xx\00", [29 x i8] zeroinitializer }, align 32
@tda827x_set_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017tda827x: setting tda827x to radio FM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda827x_set_std\00", [16 x i8] zeroinitializer }, align 32
@tda827x_set_std._entry_ptr = internal global ptr @tda827x_set_std._entry, section ".printk_index", align 4
@tda827x_set_std._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017tda827x: setting tda827x to system %s\0A\00", [55 x i8] zeroinitializer }, align 32
@tda827x_set_std._entry_ptr.49 = internal global ptr @tda827x_set_std._entry.47, section ".printk_index", align 4
@tda827xo_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.50, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda827xo_set_params\00", [44 x i8] zeroinitializer }, align 32
@tda827xo_set_params._entry_ptr = internal global ptr @tda827xo_set_params._entry, section ".printk_index", align 4
@tda827x_table = internal constant { [29 x %struct.tda827x_data], [68 x i8] } { [29 x %struct.tda827x_data] [%struct.tda827x_data { i32 62000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 66000000, i8 3, i8 3, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 76000000, i8 3, i8 1, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 84000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 93000000, i8 3, i8 2, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 98000000, i8 3, i8 3, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 109000000, i8 3, i8 3, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 123000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 133000000, i8 2, i8 3, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 151000000, i8 2, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 154000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 181000000, i8 2, i8 2, i8 1, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 185000000, i8 2, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 217000000, i8 2, i8 3, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 244000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 265000000, i8 1, i8 3, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 302000000, i8 1, i8 1, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 324000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 370000000, i8 1, i8 2, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 454000000, i8 1, i8 3, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 493000000, i8 0, i8 2, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 530000000, i8 0, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 554000000, i8 0, i8 1, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 604000000, i8 0, i8 1, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 696000000, i8 0, i8 2, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 740000000, i8 0, i8 2, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data { i32 820000000, i8 0, i8 3, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 865000000, i8 0, i8 3, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data zeroinitializer], [68 x i8] zeroinitializer }, align 32
@tda827xo_set_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.50, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda827xo_set_params._entry_ptr.52 = internal global ptr @tda827xo_set_params._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 16, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 875, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"tda827xo_tuner_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 807, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 886, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 850, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 855, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 861, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"tda827xa_tuner_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 823, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 780, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 222, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 226, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 434, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 438, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"tda827xa_dvbt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 342, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 514, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 533, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"tda827xa_dvbc\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 372, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 592, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 642, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 458, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 464, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 466, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"tda827xa_analog\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 402, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 715, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 47, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 50, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 53, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 56, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 59, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 62, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 65, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 68, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 73, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 75, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 154, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"tda827x_table\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 91, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private constant [34 x i8] c"../drivers/media/tuners/tda827x.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 214, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_tda827x_attach, ptr @__param_debug, ptr @tda827x_attach._entry, ptr @tda827x_attach._entry.3, ptr @tda827x_attach._entry_ptr, ptr @tda827x_attach._entry_ptr.5, ptr @tda827x_init._entry, ptr @tda827x_init._entry_ptr, ptr @tda827x_probe_version._entry, ptr @tda827x_probe_version._entry.11, ptr @tda827x_probe_version._entry.8, ptr @tda827x_probe_version._entry_ptr, ptr @tda827x_probe_version._entry_ptr.10, ptr @tda827x_probe_version._entry_ptr.13, ptr @tda827x_set_std._entry, ptr @tda827x_set_std._entry.47, ptr @tda827x_set_std._entry_ptr, ptr @tda827x_set_std._entry_ptr.49, ptr @tda827xa_lna_gain._entry, ptr @tda827xa_lna_gain._entry.29, ptr @tda827xa_lna_gain._entry.32, ptr @tda827xa_lna_gain._entry_ptr, ptr @tda827xa_lna_gain._entry_ptr.31, ptr @tda827xa_lna_gain._entry_ptr.34, ptr @tda827xa_set_analog_params._entry, ptr @tda827xa_set_analog_params._entry_ptr, ptr @tda827xa_set_params._entry, ptr @tda827xa_set_params._entry.18, ptr @tda827xa_set_params._entry.21, ptr @tda827xa_set_params._entry.24, ptr @tda827xa_set_params._entry_ptr, ptr @tda827xa_set_params._entry_ptr.20, ptr @tda827xa_set_params._entry_ptr.23, ptr @tda827xa_set_params._entry_ptr.26, ptr @tda827xa_sleep._entry, ptr @tda827xa_sleep._entry_ptr, ptr @tda827xo_set_params._entry, ptr @tda827xo_set_params._entry.51, ptr @tda827xo_set_params._entry_ptr, ptr @tda827xo_set_params._entry_ptr.52, ptr @tda827xo_sleep._entry, ptr @tda827xo_sleep._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tda827xo_tuner_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @tda827xa_tuner_ops, ptr @.str.14, ptr @tda827xo_sleep.buf, ptr @.str.15, ptr @tda827xa_sleep.buf, ptr @.str.16, ptr @tda827xa_dvbt, ptr @.str.17, ptr @.str.19, ptr @tda827xa_dvbc, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @tda827xa_analog, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @tda827x_table], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xo_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_probe_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_probe_version._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_probe_version._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xo_sleep.buf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xo_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_sleep.buf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_dvbt to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_set_params._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_dvbc to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_set_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_set_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_lna_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_lna_gain._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_lna_gain._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_analog to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xa_set_analog_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_set_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_set_std._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xo_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_table to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827xo_set_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda827x_attach(ptr noundef %fe, i32 noundef %addr, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %call7.i.i, align 8
  %i2c_adap = getelementptr inbounds %struct.tda827x_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %i2c_adap, align 4
  %cfg7 = getelementptr inbounds %struct.tda827x_priv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %cfg7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cfg, ptr %cfg7, align 8
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %5 = call ptr @memcpy(ptr %tuner_ops, ptr @tda827xo_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %do.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %tuner_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end3.cleanup_crit_edge ], [ %fe, %do.end13 ], [ %fe, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda827x_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827x_initial_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tda827x_probe_version(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 2
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %call1 = tail call i32 %1(ptr noundef %fe) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827x_initial_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tda827x_probe_version(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 3
  %0 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep, align 4
  %call1 = tail call i32 %1(ptr noundef %fe) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xo_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [14 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 10
  %12 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 11
  %13 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 12
  %14 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 13
  %15 = call ptr @memset(ptr %buf, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %16 = getelementptr inbounds i8, ptr %msg, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %conv = trunc i32 %19 to i16
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %22 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf1, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.50) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %do.end4.if.end19_crit_edge, label %if.else

do.end4.if.end19_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %25)
  %cmp8 = icmp ult i32 %25, 6000001
  br i1 %cmp8, label %if.else.if.end19_crit_edge, label %if.else11

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %25)
  %cmp13 = icmp ult i32 %25, 7000001
  %phi.bo = select i1 %cmp13, i32 4625000, i32 5125000
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.else.if.end19_crit_edge, %do.end4.if.end19_crit_edge
  %if_freq.0 = phi i32 [ 5125000, %do.end4.if.end19_crit_edge ], [ 4125000, %if.else.if.end19_crit_edge ], [ %phi.bo, %if.else11 ]
  %26 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000000, i32 %27)
  %cmp20 = icmp ugt i32 %27, 62000000
  br i1 %cmp20, label %while.body, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 66000000, i32 %27)
  %cmp20.1 = icmp ugt i32 %27, 66000000
  br i1 %cmp20.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 76000000, i32 %27)
  %cmp20.2 = icmp ugt i32 %27, 76000000
  br i1 %cmp20.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 84000000, i32 %27)
  %cmp20.3 = icmp ugt i32 %27, 84000000
  br i1 %cmp20.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 93000000, i32 %27)
  %cmp20.4 = icmp ugt i32 %27, 93000000
  br i1 %cmp20.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 98000000, i32 %27)
  %cmp20.5 = icmp ugt i32 %27, 98000000
  br i1 %cmp20.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109000000, i32 %27)
  %cmp20.6 = icmp ugt i32 %27, 109000000
  br i1 %cmp20.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 123000000, i32 %27)
  %cmp20.7 = icmp ugt i32 %27, 123000000
  br i1 %cmp20.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 133000000, i32 %27)
  %cmp20.8 = icmp ugt i32 %27, 133000000
  br i1 %cmp20.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 151000000, i32 %27)
  %cmp20.9 = icmp ugt i32 %27, 151000000
  br i1 %cmp20.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000000, i32 %27)
  %cmp20.10 = icmp ugt i32 %27, 154000000
  br i1 %cmp20.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 181000000, i32 %27)
  %cmp20.11 = icmp ugt i32 %27, 181000000
  br i1 %cmp20.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 185000000, i32 %27)
  %cmp20.12 = icmp ugt i32 %27, 185000000
  br i1 %cmp20.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 217000000, i32 %27)
  %cmp20.13 = icmp ugt i32 %27, 217000000
  br i1 %cmp20.13, label %while.body.13, label %while.body.12.while.end_crit_edge

while.body.12.while.end_crit_edge:                ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.13:                                    ; preds = %while.body.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244000000, i32 %27)
  %cmp20.14 = icmp ugt i32 %27, 244000000
  br i1 %cmp20.14, label %while.body.14, label %while.body.13.while.end_crit_edge

while.body.13.while.end_crit_edge:                ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.14:                                    ; preds = %while.body.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 265000000, i32 %27)
  %cmp20.15 = icmp ugt i32 %27, 265000000
  br i1 %cmp20.15, label %while.body.15, label %while.body.14.while.end_crit_edge

while.body.14.while.end_crit_edge:                ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 302000000, i32 %27)
  %cmp20.16 = icmp ugt i32 %27, 302000000
  br i1 %cmp20.16, label %while.body.16, label %while.body.15.while.end_crit_edge

while.body.15.while.end_crit_edge:                ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.16:                                    ; preds = %while.body.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 324000000, i32 %27)
  %cmp20.17 = icmp ugt i32 %27, 324000000
  br i1 %cmp20.17, label %while.body.17, label %while.body.16.while.end_crit_edge

while.body.16.while.end_crit_edge:                ; preds = %while.body.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.17:                                    ; preds = %while.body.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 370000000, i32 %27)
  %cmp20.18 = icmp ugt i32 %27, 370000000
  br i1 %cmp20.18, label %while.body.18, label %while.body.17.while.end_crit_edge

while.body.17.while.end_crit_edge:                ; preds = %while.body.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.18:                                    ; preds = %while.body.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 454000000, i32 %27)
  %cmp20.19 = icmp ugt i32 %27, 454000000
  br i1 %cmp20.19, label %while.body.19, label %while.body.18.while.end_crit_edge

while.body.18.while.end_crit_edge:                ; preds = %while.body.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.19:                                    ; preds = %while.body.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 493000000, i32 %27)
  %cmp20.20 = icmp ugt i32 %27, 493000000
  br i1 %cmp20.20, label %while.body.20, label %while.body.19.while.end_crit_edge

while.body.19.while.end_crit_edge:                ; preds = %while.body.19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.20:                                    ; preds = %while.body.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 530000000, i32 %27)
  %cmp20.21 = icmp ugt i32 %27, 530000000
  br i1 %cmp20.21, label %while.body.21, label %while.body.20.while.end_crit_edge

while.body.20.while.end_crit_edge:                ; preds = %while.body.20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.21:                                    ; preds = %while.body.20
  call void @__sanitizer_cov_trace_const_cmp4(i32 554000000, i32 %27)
  %cmp20.22 = icmp ugt i32 %27, 554000000
  br i1 %cmp20.22, label %while.body.22, label %while.body.21.while.end_crit_edge

while.body.21.while.end_crit_edge:                ; preds = %while.body.21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.22:                                    ; preds = %while.body.21
  call void @__sanitizer_cov_trace_const_cmp4(i32 604000000, i32 %27)
  %cmp20.23 = icmp ugt i32 %27, 604000000
  br i1 %cmp20.23, label %while.body.23, label %while.body.22.while.end_crit_edge

while.body.22.while.end_crit_edge:                ; preds = %while.body.22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.23:                                    ; preds = %while.body.22
  call void @__sanitizer_cov_trace_const_cmp4(i32 696000000, i32 %27)
  %cmp20.24 = icmp ugt i32 %27, 696000000
  br i1 %cmp20.24, label %while.body.24, label %while.body.23.while.end_crit_edge

while.body.23.while.end_crit_edge:                ; preds = %while.body.23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.24:                                    ; preds = %while.body.23
  call void @__sanitizer_cov_trace_const_cmp4(i32 740000000, i32 %27)
  %cmp20.25 = icmp ugt i32 %27, 740000000
  br i1 %cmp20.25, label %while.body.25, label %while.body.24.while.end_crit_edge

while.body.24.while.end_crit_edge:                ; preds = %while.body.24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.25:                                    ; preds = %while.body.24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 820000000, i32 %27)
  %cmp20.26 = icmp ugt i32 %27, 820000000
  %spec.select = select i1 %cmp20.26, i32 27, i32 26
  br label %while.end

while.end:                                        ; preds = %while.body.25, %while.body.24.while.end_crit_edge, %while.body.23.while.end_crit_edge, %while.body.22.while.end_crit_edge, %while.body.21.while.end_crit_edge, %while.body.20.while.end_crit_edge, %while.body.19.while.end_crit_edge, %while.body.18.while.end_crit_edge, %while.body.17.while.end_crit_edge, %while.body.16.while.end_crit_edge, %while.body.15.while.end_crit_edge, %while.body.14.while.end_crit_edge, %while.body.13.while.end_crit_edge, %while.body.12.while.end_crit_edge, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end19.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end19.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 8, %while.body.7.while.end_crit_edge ], [ 9, %while.body.8.while.end_crit_edge ], [ 10, %while.body.9.while.end_crit_edge ], [ 11, %while.body.10.while.end_crit_edge ], [ 12, %while.body.11.while.end_crit_edge ], [ 13, %while.body.12.while.end_crit_edge ], [ 14, %while.body.13.while.end_crit_edge ], [ 15, %while.body.14.while.end_crit_edge ], [ 16, %while.body.15.while.end_crit_edge ], [ 17, %while.body.16.while.end_crit_edge ], [ 18, %while.body.17.while.end_crit_edge ], [ 19, %while.body.18.while.end_crit_edge ], [ 20, %while.body.19.while.end_crit_edge ], [ 21, %while.body.20.while.end_crit_edge ], [ 22, %while.body.21.while.end_crit_edge ], [ 23, %while.body.22.while.end_crit_edge ], [ 24, %while.body.23.while.end_crit_edge ], [ 25, %while.body.24.while.end_crit_edge ], [ %spec.select, %while.body.25 ]
  %add29 = add i32 %if_freq.0, %27
  %div = sdiv i32 %add29, 250000
  %spd = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 1
  %28 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %spd, align 4
  %conv31 = zext i8 %29 to i32
  %add32 = add nuw nsw i32 %conv31, 2
  %shl = shl i32 %div, %add32
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %buf, align 1
  %shr = lshr i32 %shl, 8
  %31 = trunc i32 %shr to i8
  %conv34 = or i8 %31, 64
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv34, ptr %2, align 1
  %conv36 = trunc i32 %shl to i8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv36, ptr %3, align 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %4, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 82, ptr %5, align 1
  %shl43 = shl i8 %29, 6
  %div1p5 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 6
  %36 = ptrtoint ptr %div1p5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %div1p5, align 1
  %shl46 = shl i8 %37, 5
  %add47 = add i8 %shl46, %shl43
  %bs = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 2
  %38 = ptrtoint ptr %bs to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bs, align 1
  %shl50 = shl i8 %39, 3
  %add51 = add i8 %add47, %shl50
  %bp = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 3
  %40 = ptrtoint ptr %bp to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bp, align 2
  %add54 = add i8 %add51, %41
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add54, ptr %6, align 1
  %gc3 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 5
  %43 = ptrtoint ptr %gc3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gc3, align 4
  %shl59 = shl i8 %44, 4
  %add60 = add i8 %shl59, -113
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add60, ptr %7, align 1
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -65, ptr %8, align 1
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 42, ptr %9, align 1
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 5, ptr %10, align 1
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %11, align 1
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %12, align 1
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %13, align 1
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 64, ptr %14, align 1
  %53 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 14, ptr %len, align 4
  %54 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %56 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %while.end.if.end.i_crit_edge, label %if.then.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %57(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg, i32 noundef 1) #6
  %60 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %61, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %61(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp12.not.i = icmp eq i32 %call3.i, 1
  %or.cond.i = or i1 %cmp.i, %cmp12.not.i
  %retval.0.i = select i1 %or.cond.i, i32 %call3.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp72 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp72, label %tuner_transfer.exit.do.end93_crit_edge, label %if.end75

tuner_transfer.exit.do.end93_crit_edge:           ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end75:                                         ; preds = %tuner_transfer.exit
  call void @msleep(i32 noundef 500) #6
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 48, ptr %buf, align 1
  %cp = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 4
  %63 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cp, align 1
  %add79 = add i8 %64, 80
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add79, ptr %2, align 1
  %66 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 2, ptr %len, align 4
  %67 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tuner_priv, align 4
  %69 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i133 = icmp eq ptr %70, null
  br i1 %tobool.not.i133, label %if.end75.if.end.i139_crit_edge, label %if.then.i135

if.end75.if.end.i139_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i139

if.then.i135:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %call.i134 = call i32 %70(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i139

if.end.i139:                                      ; preds = %if.then.i135, %if.end75.if.end.i139_crit_edge
  %i2c_adap.i136 = getelementptr inbounds %struct.tda827x_priv, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %i2c_adap.i136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c_adap.i136, align 4
  %call3.i137 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg, i32 noundef 1) #6
  %73 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i138 = icmp eq ptr %74, null
  br i1 %tobool6.not.i138, label %if.end.i139.tuner_transfer.exit146_crit_edge, label %if.then7.i141

if.end.i139.tuner_transfer.exit146_crit_edge:     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit146

if.then7.i141:                                    ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i140 = call i32 %74(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit146

tuner_transfer.exit146:                           ; preds = %if.then7.i141, %if.end.i139.tuner_transfer.exit146_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i137)
  %cmp.i142 = icmp slt i32 %call3.i137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i137)
  %cmp12.not.i143 = icmp eq i32 %call3.i137, 1
  %or.cond.i144 = or i1 %cmp.i142, %cmp12.not.i143
  %retval.0.i145 = select i1 %or.cond.i144, i32 %call3.i137, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145)
  %cmp84 = icmp slt i32 %retval.0.i145, 0
  br i1 %cmp84, label %tuner_transfer.exit146.do.end93_crit_edge, label %if.end87

tuner_transfer.exit146.do.end93_crit_edge:        ; preds = %tuner_transfer.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end87:                                         ; preds = %tuner_transfer.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dtv_property_cache, align 4
  %frequency89 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 5
  %77 = ptrtoint ptr %frequency89 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %frequency89, align 4
  %78 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 6
  %80 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %bandwidth, align 4
  br label %cleanup

do.end93:                                         ; preds = %tuner_transfer.exit146.do.end93_crit_edge, %tuner_transfer.exit.do.end93_crit_edge
  %rc.0 = phi i32 [ %retval.0.i, %tuner_transfer.exit.do.end93_crit_edge ], [ %retval.0.i145, %tuner_transfer.exit146.do.end93_crit_edge ]
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  %shl96 = shl i32 %82, 1
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.50, i32 noundef %shl96) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %if.end87
  %retval.0 = phi i32 [ %rc.0, %do.end93 ], [ 0, %if.end87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xo_set_analog_params(ptr noundef %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %tuner_reg = alloca [8 x i8], align 1
  %reg2 = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tuner_reg) #6
  %0 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %tuner_reg, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg2) #6
  %7 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %reg2, align 1, !annotation !145
  %8 = getelementptr inbounds [2 x i8], ptr %reg2, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !145
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %10 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %12 = getelementptr inbounds i8, ptr %msg, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params, align 8
  tail call fastcc void @tda827x_set_std(ptr noundef %fe, ptr noundef %params)
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  %div = udiv i32 %19, 1000
  %spec.select = select i1 %cmp, i32 %div, i32 %19
  %sgIF = getelementptr inbounds %struct.tda827x_priv, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %sgIF to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sgIF, align 4
  %add = add i32 %spec.select, %23
  %mul = mul i32 %add, 62500
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000000, i32 %mul)
  %cmp2 = icmp ugt i32 %mul, 62000000
  br i1 %cmp2, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 66000000, i32 %mul)
  %cmp2.1 = icmp ugt i32 %mul, 66000000
  br i1 %cmp2.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 76000000, i32 %mul)
  %cmp2.2 = icmp ugt i32 %mul, 76000000
  br i1 %cmp2.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 84000000, i32 %mul)
  %cmp2.3 = icmp ugt i32 %mul, 84000000
  br i1 %cmp2.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 93000000, i32 %mul)
  %cmp2.4 = icmp ugt i32 %mul, 93000000
  br i1 %cmp2.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 98000000, i32 %mul)
  %cmp2.5 = icmp ugt i32 %mul, 98000000
  br i1 %cmp2.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109000000, i32 %mul)
  %cmp2.6 = icmp ugt i32 %mul, 109000000
  br i1 %cmp2.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 123000000, i32 %mul)
  %cmp2.7 = icmp ugt i32 %mul, 123000000
  br i1 %cmp2.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 133000000, i32 %mul)
  %cmp2.8 = icmp ugt i32 %mul, 133000000
  br i1 %cmp2.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 151000000, i32 %mul)
  %cmp2.9 = icmp ugt i32 %mul, 151000000
  br i1 %cmp2.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000000, i32 %mul)
  %cmp2.10 = icmp ugt i32 %mul, 154000000
  br i1 %cmp2.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 181000000, i32 %mul)
  %cmp2.11 = icmp ugt i32 %mul, 181000000
  br i1 %cmp2.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 185000000, i32 %mul)
  %cmp2.12 = icmp ugt i32 %mul, 185000000
  br i1 %cmp2.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 217000000, i32 %mul)
  %cmp2.13 = icmp ugt i32 %mul, 217000000
  br i1 %cmp2.13, label %while.body.13, label %while.body.12.while.end_crit_edge

while.body.12.while.end_crit_edge:                ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.13:                                    ; preds = %while.body.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 244000000, i32 %mul)
  %cmp2.14 = icmp ugt i32 %mul, 244000000
  br i1 %cmp2.14, label %while.body.14, label %while.body.13.while.end_crit_edge

while.body.13.while.end_crit_edge:                ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.14:                                    ; preds = %while.body.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 265000000, i32 %mul)
  %cmp2.15 = icmp ugt i32 %mul, 265000000
  br i1 %cmp2.15, label %while.body.15, label %while.body.14.while.end_crit_edge

while.body.14.while.end_crit_edge:                ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 302000000, i32 %mul)
  %cmp2.16 = icmp ugt i32 %mul, 302000000
  br i1 %cmp2.16, label %while.body.16, label %while.body.15.while.end_crit_edge

while.body.15.while.end_crit_edge:                ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.16:                                    ; preds = %while.body.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 324000000, i32 %mul)
  %cmp2.17 = icmp ugt i32 %mul, 324000000
  br i1 %cmp2.17, label %while.body.17, label %while.body.16.while.end_crit_edge

while.body.16.while.end_crit_edge:                ; preds = %while.body.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.17:                                    ; preds = %while.body.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 370000000, i32 %mul)
  %cmp2.18 = icmp ugt i32 %mul, 370000000
  br i1 %cmp2.18, label %while.body.18, label %while.body.17.while.end_crit_edge

while.body.17.while.end_crit_edge:                ; preds = %while.body.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.18:                                    ; preds = %while.body.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 454000000, i32 %mul)
  %cmp2.19 = icmp ugt i32 %mul, 454000000
  br i1 %cmp2.19, label %while.body.19, label %while.body.18.while.end_crit_edge

while.body.18.while.end_crit_edge:                ; preds = %while.body.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.19:                                    ; preds = %while.body.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 493000000, i32 %mul)
  %cmp2.20 = icmp ugt i32 %mul, 493000000
  br i1 %cmp2.20, label %while.body.20, label %while.body.19.while.end_crit_edge

while.body.19.while.end_crit_edge:                ; preds = %while.body.19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.20:                                    ; preds = %while.body.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 530000000, i32 %mul)
  %cmp2.21 = icmp ugt i32 %mul, 530000000
  br i1 %cmp2.21, label %while.body.21, label %while.body.20.while.end_crit_edge

while.body.20.while.end_crit_edge:                ; preds = %while.body.20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.21:                                    ; preds = %while.body.20
  call void @__sanitizer_cov_trace_const_cmp4(i32 554000000, i32 %mul)
  %cmp2.22 = icmp ugt i32 %mul, 554000000
  br i1 %cmp2.22, label %while.body.22, label %while.body.21.while.end_crit_edge

while.body.21.while.end_crit_edge:                ; preds = %while.body.21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.22:                                    ; preds = %while.body.21
  call void @__sanitizer_cov_trace_const_cmp4(i32 604000000, i32 %mul)
  %cmp2.23 = icmp ugt i32 %mul, 604000000
  br i1 %cmp2.23, label %while.body.23, label %while.body.22.while.end_crit_edge

while.body.22.while.end_crit_edge:                ; preds = %while.body.22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.23:                                    ; preds = %while.body.22
  call void @__sanitizer_cov_trace_const_cmp4(i32 696000000, i32 %mul)
  %cmp2.24 = icmp ugt i32 %mul, 696000000
  br i1 %cmp2.24, label %while.body.24, label %while.body.23.while.end_crit_edge

while.body.23.while.end_crit_edge:                ; preds = %while.body.23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.24:                                    ; preds = %while.body.23
  call void @__sanitizer_cov_trace_const_cmp4(i32 740000000, i32 %mul)
  %cmp2.25 = icmp ugt i32 %mul, 740000000
  br i1 %cmp2.25, label %while.body.25, label %while.body.24.while.end_crit_edge

while.body.24.while.end_crit_edge:                ; preds = %while.body.24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.25:                                    ; preds = %while.body.24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 820000000, i32 %mul)
  %cmp2.26 = icmp ugt i32 %mul, 820000000
  %spec.select261 = select i1 %cmp2.26, i32 27, i32 26
  br label %while.end

while.end:                                        ; preds = %while.body.25, %while.body.24.while.end_crit_edge, %while.body.23.while.end_crit_edge, %while.body.22.while.end_crit_edge, %while.body.21.while.end_crit_edge, %while.body.20.while.end_crit_edge, %while.body.19.while.end_crit_edge, %while.body.18.while.end_crit_edge, %while.body.17.while.end_crit_edge, %while.body.16.while.end_crit_edge, %while.body.15.while.end_crit_edge, %while.body.14.while.end_crit_edge, %while.body.13.while.end_crit_edge, %while.body.12.while.end_crit_edge, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 8, %while.body.7.while.end_crit_edge ], [ 9, %while.body.8.while.end_crit_edge ], [ 10, %while.body.9.while.end_crit_edge ], [ 11, %while.body.10.while.end_crit_edge ], [ 12, %while.body.11.while.end_crit_edge ], [ 13, %while.body.12.while.end_crit_edge ], [ 14, %while.body.13.while.end_crit_edge ], [ 15, %while.body.14.while.end_crit_edge ], [ 16, %while.body.15.while.end_crit_edge ], [ 17, %while.body.16.while.end_crit_edge ], [ 18, %while.body.17.while.end_crit_edge ], [ 19, %while.body.18.while.end_crit_edge ], [ 20, %while.body.19.while.end_crit_edge ], [ 21, %while.body.20.while.end_crit_edge ], [ 22, %while.body.21.while.end_crit_edge ], [ 23, %while.body.22.while.end_crit_edge ], [ 24, %while.body.23.while.end_crit_edge ], [ 25, %while.body.24.while.end_crit_edge ], [ %spec.select261, %while.body.25 ]
  %spd = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 1
  %24 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spd, align 4
  %conv12 = zext i8 %25 to i32
  %shl = shl i32 %add, %conv12
  %26 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tuner_reg, align 1
  %shr = lshr i32 %shl, 8
  %conv14 = trunc i32 %shr to i8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14, ptr %0, align 1
  %conv16 = trunc i32 %shl to i8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv16, ptr %1, align 1
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %2, align 1
  %lpsel = getelementptr inbounds %struct.tda827x_priv, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %lpsel to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lpsel, align 4
  %shl20 = shl i8 %31, 5
  %add21 = add i8 %shl20, 82
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add21, ptr %3, align 1
  %shl27 = shl i8 %25, 6
  %div1p5 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 6
  %33 = ptrtoint ptr %div1p5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %div1p5, align 1
  %shl30 = shl i8 %34, 5
  %add31 = add i8 %shl30, %shl27
  %bs = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 2
  %35 = ptrtoint ptr %bs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bs, align 1
  %shl34 = shl i8 %36, 3
  %add35 = add i8 %add31, %shl34
  %bp = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 3
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bp, align 2
  %add38 = add i8 %add35, %38
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %add38, ptr %4, align 1
  %gc3 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 5
  %40 = ptrtoint ptr %gc3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %gc3, align 4
  %shl43 = shl i8 %41, 4
  %add44 = add i8 %shl43, -113
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add44, ptr %5, align 1
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -113, ptr %6, align 1
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tuner_reg, ptr %buf, align 4
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 8, ptr %len, align 4
  %46 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %48 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %while.end.if.end.i_crit_edge, label %if.then.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %49(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg, i32 noundef 1) #6
  %52 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i, label %tuner_transfer.exit.thread, label %tuner_transfer.exit

tuner_transfer.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %reg2, ptr %buf, align 4
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %len, align 4
  %56 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -128, ptr %reg2, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %8, align 1
  %58 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i131

tuner_transfer.exit:                              ; preds = %if.end.i
  %call10.i = call i32 %53(ptr noundef %fe, i32 noundef 0) #6
  %60 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr253 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %reg2, ptr %buf, align 4
  %62 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 2, ptr %len, align 4
  %63 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -128, ptr %reg2, align 1
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %8, align 1
  %65 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i125 = icmp eq ptr %.pr253, null
  br i1 %tobool.not.i125, label %tuner_transfer.exit.if.end.i131_crit_edge, label %if.then.i127

tuner_transfer.exit.if.end.i131_crit_edge:        ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i131

if.then.i127:                                     ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i126 = call i32 %.pr253(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i131

if.end.i131:                                      ; preds = %if.then.i127, %tuner_transfer.exit.if.end.i131_crit_edge, %tuner_transfer.exit.thread
  %67 = phi ptr [ %59, %tuner_transfer.exit.thread ], [ %66, %if.then.i127 ], [ %66, %tuner_transfer.exit.if.end.i131_crit_edge ]
  %i2c_adap.i128 = getelementptr inbounds %struct.tda827x_priv, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %i2c_adap.i128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_adap.i128, align 4
  %call3.i129 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg, i32 noundef 1) #6
  %70 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i130 = icmp eq ptr %71, null
  br i1 %tobool6.not.i130, label %tuner_transfer.exit138.thread, label %tuner_transfer.exit138

tuner_transfer.exit138.thread:                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 96, ptr %reg2, align 1
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -65, ptr %8, align 1
  %74 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i147

tuner_transfer.exit138:                           ; preds = %if.end.i131
  %call10.i132 = call i32 %71(ptr noundef %fe, i32 noundef 0) #6
  %76 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %77 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 96, ptr %reg2, align 1
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -65, ptr %8, align 1
  %79 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i141 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i141, label %tuner_transfer.exit138.if.end.i147_crit_edge, label %if.then.i143

tuner_transfer.exit138.if.end.i147_crit_edge:     ; preds = %tuner_transfer.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i147

if.then.i143:                                     ; preds = %tuner_transfer.exit138
  call void @__sanitizer_cov_trace_pc() #8
  %call.i142 = call i32 %.pr(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.then.i143, %tuner_transfer.exit138.if.end.i147_crit_edge, %tuner_transfer.exit138.thread
  %81 = phi ptr [ %75, %tuner_transfer.exit138.thread ], [ %80, %if.then.i143 ], [ %80, %tuner_transfer.exit138.if.end.i147_crit_edge ]
  %i2c_adap.i144 = getelementptr inbounds %struct.tda827x_priv, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %i2c_adap.i144 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_adap.i144, align 4
  %call3.i145 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg, i32 noundef 1) #6
  %84 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i146 = icmp eq ptr %85, null
  br i1 %tobool6.not.i146, label %tuner_transfer.exit154.thread, label %tuner_transfer.exit154

tuner_transfer.exit154.thread:                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 48, ptr %reg2, align 1
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %3, align 1
  %add62257 = xor i8 %88, -128
  %89 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %add62257, ptr %8, align 1
  %90 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i163

tuner_transfer.exit154:                           ; preds = %if.end.i147
  %call10.i148 = call i32 %85(ptr noundef %fe, i32 noundef 0) #6
  %92 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr256 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %93 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 48, ptr %reg2, align 1
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %3, align 1
  %add62 = xor i8 %95, -128
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %add62, ptr %8, align 1
  %97 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i157 = icmp eq ptr %.pr256, null
  br i1 %tobool.not.i157, label %tuner_transfer.exit154.if.end.i163_crit_edge, label %if.then.i159

tuner_transfer.exit154.if.end.i163_crit_edge:     ; preds = %tuner_transfer.exit154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i163

if.then.i159:                                     ; preds = %tuner_transfer.exit154
  call void @__sanitizer_cov_trace_pc() #8
  %call.i158 = call i32 %.pr256(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i163

if.end.i163:                                      ; preds = %if.then.i159, %tuner_transfer.exit154.if.end.i163_crit_edge, %tuner_transfer.exit154.thread
  %99 = phi ptr [ %91, %tuner_transfer.exit154.thread ], [ %98, %if.then.i159 ], [ %98, %tuner_transfer.exit154.if.end.i163_crit_edge ]
  %i2c_adap.i160 = getelementptr inbounds %struct.tda827x_priv, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %i2c_adap.i160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_adap.i160, align 4
  %call3.i161 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg, i32 noundef 1) #6
  %102 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i162 = icmp eq ptr %103, null
  br i1 %tobool6.not.i162, label %if.end.i163.tuner_transfer.exit170_crit_edge, label %if.then7.i165

if.end.i163.tuner_transfer.exit170_crit_edge:     ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit170

if.then7.i165:                                    ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i164 = call i32 %103(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit170

tuner_transfer.exit170:                           ; preds = %if.then7.i165, %if.end.i163.tuner_transfer.exit170_crit_edge
  call void @msleep(i32 noundef 1) #6
  %104 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 48, ptr %reg2, align 1
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %3, align 1
  %add69 = add i8 %106, 4
  %107 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %add69, ptr %8, align 1
  %108 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tuner_priv, align 4
  %110 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i173 = icmp eq ptr %111, null
  br i1 %tobool.not.i173, label %tuner_transfer.exit170.if.end.i179_crit_edge, label %if.then.i175

tuner_transfer.exit170.if.end.i179_crit_edge:     ; preds = %tuner_transfer.exit170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i179

if.then.i175:                                     ; preds = %tuner_transfer.exit170
  call void @__sanitizer_cov_trace_pc() #8
  %call.i174 = call i32 %111(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i175, %tuner_transfer.exit170.if.end.i179_crit_edge
  %i2c_adap.i176 = getelementptr inbounds %struct.tda827x_priv, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %i2c_adap.i176 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i2c_adap.i176, align 4
  %call3.i177 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg, i32 noundef 1) #6
  %114 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i178 = icmp eq ptr %115, null
  br i1 %tobool6.not.i178, label %if.end.i179.tuner_transfer.exit186_crit_edge, label %if.then7.i181

if.end.i179.tuner_transfer.exit186_crit_edge:     ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit186

if.then7.i181:                                    ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i180 = call i32 %115(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit186

tuner_transfer.exit186:                           ; preds = %if.then7.i181, %if.end.i179.tuner_transfer.exit186_crit_edge
  call void @msleep(i32 noundef 1) #6
  %116 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 48, ptr %reg2, align 1
  %117 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %3, align 1
  %119 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %8, align 1
  %120 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tuner_priv, align 4
  %122 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i189 = icmp eq ptr %123, null
  br i1 %tobool.not.i189, label %tuner_transfer.exit186.if.end.i195_crit_edge, label %if.then.i191

tuner_transfer.exit186.if.end.i195_crit_edge:     ; preds = %tuner_transfer.exit186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

if.then.i191:                                     ; preds = %tuner_transfer.exit186
  call void @__sanitizer_cov_trace_pc() #8
  %call.i190 = call i32 %123(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i191, %tuner_transfer.exit186.if.end.i195_crit_edge
  %i2c_adap.i192 = getelementptr inbounds %struct.tda827x_priv, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %i2c_adap.i192 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i2c_adap.i192, align 4
  %call3.i193 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg, i32 noundef 1) #6
  %126 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i194 = icmp eq ptr %127, null
  br i1 %tobool6.not.i194, label %if.end.i195.tuner_transfer.exit202_crit_edge, label %if.then7.i197

if.end.i195.tuner_transfer.exit202_crit_edge:     ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit202

if.then7.i197:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i196 = call i32 %127(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit202

tuner_transfer.exit202:                           ; preds = %if.then7.i197, %if.end.i195.tuner_transfer.exit202_crit_edge
  call void @msleep(i32 noundef 550) #6
  %128 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 48, ptr %reg2, align 1
  %129 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %3, align 1
  %131 = and i8 %130, -4
  %cp = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %i.0.lcssa, i32 4
  %132 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cp, align 1
  %add82 = add i8 %131, %133
  %134 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %add82, ptr %8, align 1
  %135 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tuner_priv, align 4
  %137 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i205 = icmp eq ptr %138, null
  br i1 %tobool.not.i205, label %tuner_transfer.exit202.if.end.i211_crit_edge, label %if.then.i207

tuner_transfer.exit202.if.end.i211_crit_edge:     ; preds = %tuner_transfer.exit202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i211

if.then.i207:                                     ; preds = %tuner_transfer.exit202
  call void @__sanitizer_cov_trace_pc() #8
  %call.i206 = call i32 %138(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i211

if.end.i211:                                      ; preds = %if.then.i207, %tuner_transfer.exit202.if.end.i211_crit_edge
  %i2c_adap.i208 = getelementptr inbounds %struct.tda827x_priv, ptr %136, i32 0, i32 1
  %139 = ptrtoint ptr %i2c_adap.i208 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c_adap.i208, align 4
  %call3.i209 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg, i32 noundef 1) #6
  %141 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i210 = icmp eq ptr %142, null
  br i1 %tobool6.not.i210, label %tuner_transfer.exit218.thread, label %tuner_transfer.exit218

tuner_transfer.exit218.thread:                    ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 96, ptr %reg2, align 1
  %144 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 63, ptr %8, align 1
  %145 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i227

tuner_transfer.exit218:                           ; preds = %if.end.i211
  %call10.i212 = call i32 %142(ptr noundef %fe, i32 noundef 0) #6
  %147 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr251 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %148 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 96, ptr %reg2, align 1
  %149 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 63, ptr %8, align 1
  %150 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i221 = icmp eq ptr %.pr251, null
  br i1 %tobool.not.i221, label %tuner_transfer.exit218.if.end.i227_crit_edge, label %if.then.i223

tuner_transfer.exit218.if.end.i227_crit_edge:     ; preds = %tuner_transfer.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i227

if.then.i223:                                     ; preds = %tuner_transfer.exit218
  call void @__sanitizer_cov_trace_pc() #8
  %call.i222 = call i32 %.pr251(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i227

if.end.i227:                                      ; preds = %if.then.i223, %tuner_transfer.exit218.if.end.i227_crit_edge, %tuner_transfer.exit218.thread
  %152 = phi ptr [ %146, %tuner_transfer.exit218.thread ], [ %151, %if.then.i223 ], [ %151, %tuner_transfer.exit218.if.end.i227_crit_edge ]
  %i2c_adap.i224 = getelementptr inbounds %struct.tda827x_priv, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %i2c_adap.i224 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c_adap.i224, align 4
  %call3.i225 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg, i32 noundef 1) #6
  %155 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i226 = icmp eq ptr %156, null
  br i1 %tobool6.not.i226, label %tuner_transfer.exit234.thread, label %tuner_transfer.exit234

tuner_transfer.exit234.thread:                    ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -128, ptr %reg2, align 1
  %158 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 8, ptr %8, align 1
  %159 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i243

tuner_transfer.exit234:                           ; preds = %if.end.i227
  %call10.i228 = call i32 %156(ptr noundef %fe, i32 noundef 0) #6
  %161 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pr252 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %162 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -128, ptr %reg2, align 1
  %163 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 8, ptr %8, align 1
  %164 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i237 = icmp eq ptr %.pr252, null
  br i1 %tobool.not.i237, label %tuner_transfer.exit234.if.end.i243_crit_edge, label %if.then.i239

tuner_transfer.exit234.if.end.i243_crit_edge:     ; preds = %tuner_transfer.exit234
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i243

if.then.i239:                                     ; preds = %tuner_transfer.exit234
  call void @__sanitizer_cov_trace_pc() #8
  %call.i238 = call i32 %.pr252(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i243

if.end.i243:                                      ; preds = %if.then.i239, %tuner_transfer.exit234.if.end.i243_crit_edge, %tuner_transfer.exit234.thread
  %166 = phi ptr [ %160, %tuner_transfer.exit234.thread ], [ %165, %if.then.i239 ], [ %165, %tuner_transfer.exit234.if.end.i243_crit_edge ]
  %i2c_adap.i240 = getelementptr inbounds %struct.tda827x_priv, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %i2c_adap.i240 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i2c_adap.i240, align 4
  %call3.i241 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg, i32 noundef 1) #6
  %169 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i242 = icmp eq ptr %170, null
  br i1 %tobool6.not.i242, label %if.end.i243.tuner_transfer.exit250_crit_edge, label %if.then7.i245

if.end.i243.tuner_transfer.exit250_crit_edge:     ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit250

if.then7.i245:                                    ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i244 = call i32 %170(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit250

tuner_transfer.exit250:                           ; preds = %if.then7.i245, %if.end.i243.tuner_transfer.exit250_crit_edge
  %171 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %params, align 8
  %frequency93 = getelementptr inbounds %struct.tda827x_priv, ptr %11, i32 0, i32 5
  %173 = ptrtoint ptr %frequency93 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %frequency93, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tuner_reg) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda827x_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda827x_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda827x_probe_version(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !145
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %buf, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #6
  %15 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %16(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp12.not.i = icmp eq i32 %call3.i, 1
  %or.cond.i = or i1 %cmp.i, %cmp12.not.i
  %retval.0.i = select i1 %or.cond.i, i32 %call3.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %msg, align 4
  %conv3 = zext i16 %18 to i32
  %shl = shl nuw nsw i32 %conv3, 1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %shl) #9
  br label %cleanup

if.end:                                           ; preds = %tuner_transfer.exit
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %21 = and i8 %20, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp6 = icmp eq i8 %21, 0
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %cmp6, label %do.body9, label %do.body25

do.body9:                                         ; preds = %if.end
  br i1 %tobool.not, label %do.body9.do.end18_crit_edge, label %do.end13

do.body9.do.end18_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end13:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body9.do.end18_crit_edge
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 2
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tda827x_init, ptr %init, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 3
  %24 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tda827xo_sleep, ptr %sleep, align 4
  %cfg = getelementptr inbounds %struct.tda827x_priv, ptr %2, i32 0, i32 2
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg, align 4
  %tobool21.not = icmp eq ptr %26, null
  br i1 %tobool21.not, label %do.end18.cleanup_crit_edge, label %if.then22

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %agcf = getelementptr inbounds %struct.tda827x_config, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %agcf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @tda827xo_agcf, ptr %agcf, align 4
  br label %cleanup

do.body25:                                        ; preds = %if.end
  br i1 %tobool.not, label %do.body25.do.end35_crit_edge, label %do.end30

do.body25.do.end35_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body25.do.end35_crit_edge
  %tuner_ops37 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %28 = call ptr @memcpy(ptr %tuner_ops37, ptr @tda827xa_tuner_ops, i32 220)
  %cfg38 = getelementptr inbounds %struct.tda827x_priv, ptr %2, i32 0, i32 2
  %29 = ptrtoint ptr %cfg38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg38, align 4
  %tobool39.not = icmp eq ptr %30, null
  br i1 %tobool39.not, label %do.end35.cleanup_crit_edge, label %if.then40

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %agcf42 = getelementptr inbounds %struct.tda827x_config, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %agcf42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tda827xa_agcf, ptr %agcf42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.end35.cleanup_crit_edge, %if.then22, %do.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %do.end35.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.end18.cleanup_crit_edge ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827x_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cfg = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end11_crit_edge, label %land.lhs.true

do.end3.if.end11_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 %6(ptr noundef %fe) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %do.end3.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xo_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tda827xo_sleep.buf, ptr %buf, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end3.if.end.i_crit_edge, label %if.then.i

do.end3.if.end.i_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end3.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #6
  %17 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %18(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  %cfg = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %tuner_transfer.exit.if.end12_crit_edge, label %land.lhs.true

tuner_transfer.exit.if.end12_crit_edge:           ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %tuner_transfer.exit
  %sleep = getelementptr inbounds %struct.tda827x_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sleep, align 4
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %land.lhs.true.if.end12_crit_edge, label %if.then8

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 %22(ptr noundef %fe) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %tuner_transfer.exit.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda827xo_agcf(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -32756, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %buf, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #6
  %15 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %16(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda827xa_agcf(ptr noundef %fe) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -32724, ptr %data, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %buf, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %12(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #6
  %15 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %16(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xa_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tda827xa_sleep.buf, ptr %buf, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end3.if.end.i_crit_edge, label %if.then.i

do.end3.if.end.i_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %14(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end3.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #6
  %17 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %18(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  %cfg = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %tuner_transfer.exit.if.end12_crit_edge, label %land.lhs.true

tuner_transfer.exit.if.end12_crit_edge:           ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %tuner_transfer.exit
  %sleep = getelementptr inbounds %struct.tda827x_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sleep, align 4
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %land.lhs.true.if.end12_crit_edge, label %if.then8

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 %22(ptr noundef %fe) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %tuner_transfer.exit.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xa_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 10
  %12 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %13 = getelementptr inbounds i8, ptr %msg, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 11, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf1, align 4
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call fastcc void @tda827xa_lna_gain(ptr noundef %fe, i32 noundef 1, ptr noundef null)
  call void @msleep(i32 noundef 20) #6
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %do.end4.if.end19_crit_edge, label %if.else

do.end4.if.end19_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %23)
  %cmp8 = icmp ult i32 %23, 6000001
  br i1 %cmp8, label %if.else.if.end19_crit_edge, label %if.else11

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %23)
  %cmp13 = icmp ult i32 %23, 7000001
  %. = select i1 %cmp13, i32 4500000, i32 5000000
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.else.if.end19_crit_edge, %do.end4.if.end19_crit_edge
  %if_freq.0 = phi i32 [ 5000000, %do.end4.if.end19_crit_edge ], [ 4000000, %if.else.if.end19_crit_edge ], [ %., %if.else11 ]
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %26 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delivery_system, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end19.sw.epilog_crit_edge [
    i32 1, label %if.end19.do.body20_crit_edge
    i32 18, label %if.end19.do.body20_crit_edge395
  ]

if.end19.do.body20_crit_edge395:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end19.do.body20_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body20:                                        ; preds = %if.end19.do.body20_crit_edge, %if.end19.do.body20_crit_edge395
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool21.not = icmp eq i32 %29, 0
  br i1 %tobool21.not, label %do.body20.sw.epilog_crit_edge, label %do.end25

do.body20.sw.epilog_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %do.body20.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge
  %frequency_map.0 = phi ptr [ @tda827xa_dvbt, %if.end19.sw.epilog_crit_edge ], [ @tda827xa_dvbc, %do.end25 ], [ @tda827xa_dvbc, %do.body20.sw.epilog_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %sw.epilog
  %i.0 = phi i32 [ 0, %sw.epilog ], [ %add, %while.body.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %25)
  %cmp31 = icmp ult i32 %31, %25
  br i1 %cmp31, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add = add i32 %i.0, 1
  %arrayidx33 = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %add
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx33, align 4
  %cmp35 = icmp eq i32 %33, 0
  br i1 %cmp35, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %add39 = add nuw nsw i32 %if_freq.0, 31250
  %add40 = add i32 %add39, %25
  %div = sdiv i32 %add40, 62500
  %spd = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0, i32 2
  %34 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %spd, align 1
  %conv42 = zext i8 %35 to i32
  %shl = shl i32 %div, %conv42
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %buf, align 1
  %shr = lshr i32 %shl, 8
  %conv44 = trunc i32 %shr to i8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv44, ptr %2, align 1
  %conv46 = trunc i32 %shl to i8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv46, ptr %3, align 1
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %4, align 1
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 22, ptr %5, align 1
  %shl53 = shl i8 %35, 5
  %svco = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0, i32 1
  %41 = ptrtoint ptr %svco to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %svco, align 4
  %shl56 = shl i8 %42, 3
  %add57 = add i8 %shl56, %shl53
  %sbs = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0, i32 4
  %43 = ptrtoint ptr %sbs to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sbs, align 1
  %add60 = add i8 %add57, %44
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add60, ptr %6, align 1
  %gc3 = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0, i32 5
  %46 = ptrtoint ptr %gc3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %gc3, align 4
  %shl65 = shl i8 %47, 4
  %add66 = add i8 %shl65, 75
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %add66, ptr %7, align 1
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 28, ptr %8, align 1
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 6, ptr %9, align 1
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 36, ptr %10, align 1
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %11, align 1
  %53 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 11, ptr %len, align 4
  %54 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %56 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %while.end.if.end.i_crit_edge, label %if.then.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %57(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg, i32 noundef 1) #6
  %60 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %61, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %61(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp12.not.i = icmp eq i32 %call3.i, 1
  %or.cond.i = or i1 %cmp.i, %cmp12.not.i
  %retval.0.i = select i1 %or.cond.i, i32 %call3.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp75 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp75, label %tuner_transfer.exit.do.end185_crit_edge, label %if.end78

tuner_transfer.exit.do.end185_crit_edge:          ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end78:                                         ; preds = %tuner_transfer.exit
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -112, ptr %buf, align 1
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %2, align 1
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 96, ptr %3, align 1
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %4, align 1
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 89, ptr %5, align 1
  %67 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 5, ptr %len, align 4
  %68 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tuner_priv, align 4
  %70 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i253 = icmp eq ptr %71, null
  br i1 %tobool.not.i253, label %if.end78.if.end.i259_crit_edge, label %if.then.i255

if.end78.if.end.i259_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i259

if.then.i255:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %call.i254 = call i32 %71(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i259

if.end.i259:                                      ; preds = %if.then.i255, %if.end78.if.end.i259_crit_edge
  %i2c_adap.i256 = getelementptr inbounds %struct.tda827x_priv, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %i2c_adap.i256 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_adap.i256, align 4
  %call3.i257 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg, i32 noundef 1) #6
  %74 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i258 = icmp eq ptr %75, null
  br i1 %tobool6.not.i258, label %if.end.i259.tuner_transfer.exit266_crit_edge, label %if.then7.i261

if.end.i259.tuner_transfer.exit266_crit_edge:     ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit266

if.then7.i261:                                    ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i260 = call i32 %75(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit266

tuner_transfer.exit266:                           ; preds = %if.then7.i261, %if.end.i259.tuner_transfer.exit266_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i257)
  %cmp.i262 = icmp slt i32 %call3.i257, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i257)
  %cmp12.not.i263 = icmp eq i32 %call3.i257, 1
  %or.cond.i264 = or i1 %cmp.i262, %cmp12.not.i263
  %retval.0.i265 = select i1 %or.cond.i264, i32 %call3.i257, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i265)
  %cmp86 = icmp slt i32 %retval.0.i265, 0
  br i1 %cmp86, label %tuner_transfer.exit266.do.end185_crit_edge, label %if.end89

tuner_transfer.exit266.do.end185_crit_edge:       ; preds = %tuner_transfer.exit266
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end89:                                         ; preds = %tuner_transfer.exit266
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -96, ptr %buf, align 1
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 64, ptr %2, align 1
  %78 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %len, align 4
  %79 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tuner_priv, align 4
  %81 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i269 = icmp eq ptr %82, null
  br i1 %tobool.not.i269, label %if.end89.if.end.i275_crit_edge, label %if.then.i271

if.end89.if.end.i275_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i275

if.then.i271:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %call.i270 = call i32 %82(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i275

if.end.i275:                                      ; preds = %if.then.i271, %if.end89.if.end.i275_crit_edge
  %i2c_adap.i272 = getelementptr inbounds %struct.tda827x_priv, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %i2c_adap.i272 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_adap.i272, align 4
  %call3.i273 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg, i32 noundef 1) #6
  %85 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i274 = icmp eq ptr %86, null
  br i1 %tobool6.not.i274, label %if.end.i275.tuner_transfer.exit282_crit_edge, label %if.then7.i277

if.end.i275.tuner_transfer.exit282_crit_edge:     ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit282

if.then7.i277:                                    ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i276 = call i32 %86(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit282

tuner_transfer.exit282:                           ; preds = %if.then7.i277, %if.end.i275.tuner_transfer.exit282_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i273)
  %cmp.i278 = icmp slt i32 %call3.i273, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i273)
  %cmp12.not.i279 = icmp eq i32 %call3.i273, 1
  %or.cond.i280 = or i1 %cmp.i278, %cmp12.not.i279
  %retval.0.i281 = select i1 %or.cond.i280, i32 %call3.i273, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i281)
  %cmp94 = icmp slt i32 %retval.0.i281, 0
  br i1 %cmp94, label %tuner_transfer.exit282.do.end185_crit_edge, label %if.end97

tuner_transfer.exit282.do.end185_crit_edge:       ; preds = %tuner_transfer.exit282
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end97:                                         ; preds = %tuner_transfer.exit282
  call void @msleep(i32 noundef 11) #6
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags, align 2
  %88 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tuner_priv, align 4
  %90 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i285 = icmp eq ptr %91, null
  br i1 %tobool.not.i285, label %if.end97.if.end.i291_crit_edge, label %if.then.i287

if.end97.if.end.i291_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i291

if.then.i287:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %call.i286 = call i32 %91(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i291

if.end.i291:                                      ; preds = %if.then.i287, %if.end97.if.end.i291_crit_edge
  %i2c_adap.i288 = getelementptr inbounds %struct.tda827x_priv, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %i2c_adap.i288 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_adap.i288, align 4
  %call3.i289 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg, i32 noundef 1) #6
  %94 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i290 = icmp eq ptr %95, null
  br i1 %tobool6.not.i290, label %if.end.i291.tuner_transfer.exit298_crit_edge, label %if.then7.i293

if.end.i291.tuner_transfer.exit298_crit_edge:     ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit298

if.then7.i293:                                    ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i292 = call i32 %95(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit298

tuner_transfer.exit298:                           ; preds = %if.then7.i293, %if.end.i291.tuner_transfer.exit298_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i289)
  %cmp.i294 = icmp slt i32 %call3.i289, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i289)
  %cmp12.not.i295 = icmp eq i32 %call3.i289, 1
  %or.cond.i296 = or i1 %cmp.i294, %cmp12.not.i295
  %retval.0.i297 = select i1 %or.cond.i296, i32 %call3.i289, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i297)
  %cmp100 = icmp slt i32 %retval.0.i297, 0
  br i1 %cmp100, label %tuner_transfer.exit298.do.end185_crit_edge, label %if.end103

tuner_transfer.exit298.do.end185_crit_edge:       ; preds = %tuner_transfer.exit298
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end103:                                        ; preds = %tuner_transfer.exit298
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags, align 2
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %2, align 1
  %99 = lshr i8 %98, 4
  store i8 %99, ptr %2, align 1
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool110.not = icmp eq i32 %100, 0
  br i1 %tobool110.not, label %if.end103.do.end121_crit_edge, label %do.end114

if.end103.do.end121_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end121

do.end114:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %conv117 = zext i8 %99 to i32
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv117) #9
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %101)
  %.pr = load i8, ptr %2, align 1
  br label %do.end121

do.end121:                                        ; preds = %do.end114, %if.end103.do.end121_crit_edge
  %102 = phi i8 [ %.pr, %do.end114 ], [ %99, %if.end103.do.end121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %102)
  %cmp124 = icmp ult i8 %102, 2
  br i1 %cmp124, label %if.then126, label %do.end121.if.end134_crit_edge

do.end121.if.end134_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then126:                                       ; preds = %do.end121
  call fastcc void @tda827xa_lna_gain(ptr noundef %fe, i32 noundef 0, ptr noundef null)
  %103 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 96, ptr %buf, align 1
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 12, ptr %2, align 1
  %105 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tuner_priv, align 4
  %107 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i301 = icmp eq ptr %108, null
  br i1 %tobool.not.i301, label %if.then126.if.end.i307_crit_edge, label %if.then.i303

if.then126.if.end.i307_crit_edge:                 ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i307

if.then.i303:                                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  %call.i302 = call i32 %108(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i307

if.end.i307:                                      ; preds = %if.then.i303, %if.then126.if.end.i307_crit_edge
  %i2c_adap.i304 = getelementptr inbounds %struct.tda827x_priv, ptr %106, i32 0, i32 1
  %109 = ptrtoint ptr %i2c_adap.i304 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i2c_adap.i304, align 4
  %call3.i305 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg, i32 noundef 1) #6
  %111 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i306 = icmp eq ptr %112, null
  br i1 %tobool6.not.i306, label %if.end.i307.tuner_transfer.exit314_crit_edge, label %if.then7.i309

if.end.i307.tuner_transfer.exit314_crit_edge:     ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit314

if.then7.i309:                                    ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i308 = call i32 %112(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit314

tuner_transfer.exit314:                           ; preds = %if.then7.i309, %if.end.i307.tuner_transfer.exit314_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i305)
  %cmp.i310 = icmp slt i32 %call3.i305, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i305)
  %cmp12.not.i311 = icmp eq i32 %call3.i305, 1
  %or.cond.i312 = or i1 %cmp.i310, %cmp12.not.i311
  %retval.0.i313 = select i1 %or.cond.i312, i32 %call3.i305, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i313)
  %cmp130 = icmp slt i32 %retval.0.i313, 0
  br i1 %cmp130, label %tuner_transfer.exit314.do.end185_crit_edge, label %tuner_transfer.exit314.if.end134_crit_edge

tuner_transfer.exit314.if.end134_crit_edge:       ; preds = %tuner_transfer.exit314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

tuner_transfer.exit314.do.end185_crit_edge:       ; preds = %tuner_transfer.exit314
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end134:                                        ; preds = %tuner_transfer.exit314.if.end134_crit_edge, %do.end121.if.end134_crit_edge
  %113 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -64, ptr %buf, align 1
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -103, ptr %2, align 1
  %115 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tuner_priv, align 4
  %117 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i317 = icmp eq ptr %118, null
  br i1 %tobool.not.i317, label %if.end134.if.end.i323_crit_edge, label %if.then.i319

if.end134.if.end.i323_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i323

if.then.i319:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %call.i318 = call i32 %118(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i323

if.end.i323:                                      ; preds = %if.then.i319, %if.end134.if.end.i323_crit_edge
  %i2c_adap.i320 = getelementptr inbounds %struct.tda827x_priv, ptr %116, i32 0, i32 1
  %119 = ptrtoint ptr %i2c_adap.i320 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i2c_adap.i320, align 4
  %call3.i321 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg, i32 noundef 1) #6
  %121 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i322 = icmp eq ptr %122, null
  br i1 %tobool6.not.i322, label %if.end.i323.tuner_transfer.exit330_crit_edge, label %if.then7.i325

if.end.i323.tuner_transfer.exit330_crit_edge:     ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit330

if.then7.i325:                                    ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i324 = call i32 %122(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit330

tuner_transfer.exit330:                           ; preds = %if.then7.i325, %if.end.i323.tuner_transfer.exit330_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i321)
  %cmp.i326 = icmp slt i32 %call3.i321, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i321)
  %cmp12.not.i327 = icmp eq i32 %call3.i321, 1
  %or.cond.i328 = or i1 %cmp.i326, %cmp12.not.i327
  %retval.0.i329 = select i1 %or.cond.i328, i32 %call3.i321, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i329)
  %cmp138 = icmp slt i32 %retval.0.i329, 0
  br i1 %cmp138, label %tuner_transfer.exit330.do.end185_crit_edge, label %if.end141

tuner_transfer.exit330.do.end185_crit_edge:       ; preds = %tuner_transfer.exit330
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end141:                                        ; preds = %tuner_transfer.exit330
  %123 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 96, ptr %buf, align 1
  %124 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 60, ptr %2, align 1
  %125 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tuner_priv, align 4
  %127 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i333 = icmp eq ptr %128, null
  br i1 %tobool.not.i333, label %if.end141.if.end.i339_crit_edge, label %if.then.i335

if.end141.if.end.i339_crit_edge:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i339

if.then.i335:                                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  %call.i334 = call i32 %128(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i339

if.end.i339:                                      ; preds = %if.then.i335, %if.end141.if.end.i339_crit_edge
  %i2c_adap.i336 = getelementptr inbounds %struct.tda827x_priv, ptr %126, i32 0, i32 1
  %129 = ptrtoint ptr %i2c_adap.i336 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i2c_adap.i336, align 4
  %call3.i337 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg, i32 noundef 1) #6
  %131 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i338 = icmp eq ptr %132, null
  br i1 %tobool6.not.i338, label %if.end.i339.tuner_transfer.exit346_crit_edge, label %if.then7.i341

if.end.i339.tuner_transfer.exit346_crit_edge:     ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit346

if.then7.i341:                                    ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i340 = call i32 %132(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit346

tuner_transfer.exit346:                           ; preds = %if.then7.i341, %if.end.i339.tuner_transfer.exit346_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i337)
  %cmp.i342 = icmp slt i32 %call3.i337, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i337)
  %cmp12.not.i343 = icmp eq i32 %call3.i337, 1
  %or.cond.i344 = or i1 %cmp.i342, %cmp12.not.i343
  %retval.0.i345 = select i1 %or.cond.i344, i32 %call3.i337, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i345)
  %cmp145 = icmp slt i32 %retval.0.i345, 0
  br i1 %cmp145, label %tuner_transfer.exit346.do.end185_crit_edge, label %if.end148

tuner_transfer.exit346.do.end185_crit_edge:       ; preds = %tuner_transfer.exit346
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end148:                                        ; preds = %tuner_transfer.exit346
  %133 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 48, ptr %buf, align 1
  %scr = getelementptr %struct.tda827xa_data, ptr %frequency_map.0, i32 %i.0, i32 3
  %134 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %scr, align 2
  %add152 = add i8 %135, 16
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %add152, ptr %2, align 1
  %137 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tuner_priv, align 4
  %139 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i349 = icmp eq ptr %140, null
  br i1 %tobool.not.i349, label %if.end148.if.end.i355_crit_edge, label %if.then.i351

if.end148.if.end.i355_crit_edge:                  ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i355

if.then.i351:                                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %call.i350 = call i32 %140(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i355

if.end.i355:                                      ; preds = %if.then.i351, %if.end148.if.end.i355_crit_edge
  %i2c_adap.i352 = getelementptr inbounds %struct.tda827x_priv, ptr %138, i32 0, i32 1
  %141 = ptrtoint ptr %i2c_adap.i352 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i2c_adap.i352, align 4
  %call3.i353 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg, i32 noundef 1) #6
  %143 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i354 = icmp eq ptr %144, null
  br i1 %tobool6.not.i354, label %if.end.i355.tuner_transfer.exit362_crit_edge, label %if.then7.i357

if.end.i355.tuner_transfer.exit362_crit_edge:     ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit362

if.then7.i357:                                    ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i356 = call i32 %144(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit362

tuner_transfer.exit362:                           ; preds = %if.then7.i357, %if.end.i355.tuner_transfer.exit362_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i353)
  %cmp.i358 = icmp slt i32 %call3.i353, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i353)
  %cmp12.not.i359 = icmp eq i32 %call3.i353, 1
  %or.cond.i360 = or i1 %cmp.i358, %cmp12.not.i359
  %retval.0.i361 = select i1 %or.cond.i360, i32 %call3.i353, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i361)
  %cmp156 = icmp slt i32 %retval.0.i361, 0
  br i1 %cmp156, label %tuner_transfer.exit362.do.end185_crit_edge, label %if.end159

tuner_transfer.exit362.do.end185_crit_edge:       ; preds = %tuner_transfer.exit362
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end159:                                        ; preds = %tuner_transfer.exit362
  call void @msleep(i32 noundef 163) #6
  %145 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -64, ptr %buf, align 1
  %146 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 57, ptr %2, align 1
  %147 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tuner_priv, align 4
  %149 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i365 = icmp eq ptr %150, null
  br i1 %tobool.not.i365, label %if.end159.if.end.i371_crit_edge, label %if.then.i367

if.end159.if.end.i371_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i371

if.then.i367:                                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %call.i366 = call i32 %150(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i371

if.end.i371:                                      ; preds = %if.then.i367, %if.end159.if.end.i371_crit_edge
  %i2c_adap.i368 = getelementptr inbounds %struct.tda827x_priv, ptr %148, i32 0, i32 1
  %151 = ptrtoint ptr %i2c_adap.i368 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i2c_adap.i368, align 4
  %call3.i369 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg, i32 noundef 1) #6
  %153 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i370 = icmp eq ptr %154, null
  br i1 %tobool6.not.i370, label %if.end.i371.tuner_transfer.exit378_crit_edge, label %if.then7.i373

if.end.i371.tuner_transfer.exit378_crit_edge:     ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit378

if.then7.i373:                                    ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i372 = call i32 %154(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit378

tuner_transfer.exit378:                           ; preds = %if.then7.i373, %if.end.i371.tuner_transfer.exit378_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i369)
  %cmp.i374 = icmp slt i32 %call3.i369, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i369)
  %cmp12.not.i375 = icmp eq i32 %call3.i369, 1
  %or.cond.i376 = or i1 %cmp.i374, %cmp12.not.i375
  %retval.0.i377 = select i1 %or.cond.i376, i32 %call3.i369, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i377)
  %cmp163 = icmp slt i32 %retval.0.i377, 0
  br i1 %cmp163, label %tuner_transfer.exit378.do.end185_crit_edge, label %if.end166

tuner_transfer.exit378.do.end185_crit_edge:       ; preds = %tuner_transfer.exit378
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end166:                                        ; preds = %tuner_transfer.exit378
  call void @msleep(i32 noundef 3) #6
  %155 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 80, ptr %buf, align 1
  %156 = ptrtoint ptr %gc3 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %gc3, align 4
  %shl171 = shl i8 %157, 4
  %add172 = add i8 %shl171, 79
  %158 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %add172, ptr %2, align 1
  %159 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tuner_priv, align 4
  %161 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i381 = icmp eq ptr %162, null
  br i1 %tobool.not.i381, label %if.end166.if.end.i387_crit_edge, label %if.then.i383

if.end166.if.end.i387_crit_edge:                  ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i387

if.then.i383:                                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  %call.i382 = call i32 %162(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i387

if.end.i387:                                      ; preds = %if.then.i383, %if.end166.if.end.i387_crit_edge
  %i2c_adap.i384 = getelementptr inbounds %struct.tda827x_priv, ptr %160, i32 0, i32 1
  %163 = ptrtoint ptr %i2c_adap.i384 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i2c_adap.i384, align 4
  %call3.i385 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg, i32 noundef 1) #6
  %165 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i386 = icmp eq ptr %166, null
  br i1 %tobool6.not.i386, label %if.end.i387.tuner_transfer.exit394_crit_edge, label %if.then7.i389

if.end.i387.tuner_transfer.exit394_crit_edge:     ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit394

if.then7.i389:                                    ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i388 = call i32 %166(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit394

tuner_transfer.exit394:                           ; preds = %if.then7.i389, %if.end.i387.tuner_transfer.exit394_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i385)
  %cmp.i390 = icmp slt i32 %call3.i385, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i385)
  %cmp12.not.i391 = icmp eq i32 %call3.i385, 1
  %or.cond.i392 = or i1 %cmp.i390, %cmp12.not.i391
  %retval.0.i393 = select i1 %or.cond.i392, i32 %call3.i385, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i393)
  %cmp176 = icmp slt i32 %retval.0.i393, 0
  br i1 %cmp176, label %tuner_transfer.exit394.do.end185_crit_edge, label %if.end179

tuner_transfer.exit394.do.end185_crit_edge:       ; preds = %tuner_transfer.exit394
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

if.end179:                                        ; preds = %tuner_transfer.exit394
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dtv_property_cache, align 4
  %frequency181 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 5
  %169 = ptrtoint ptr %frequency181 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %frequency181, align 4
  %170 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 6
  %172 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %bandwidth, align 4
  br label %cleanup

do.end185:                                        ; preds = %tuner_transfer.exit394.do.end185_crit_edge, %tuner_transfer.exit378.do.end185_crit_edge, %tuner_transfer.exit362.do.end185_crit_edge, %tuner_transfer.exit346.do.end185_crit_edge, %tuner_transfer.exit330.do.end185_crit_edge, %tuner_transfer.exit314.do.end185_crit_edge, %tuner_transfer.exit298.do.end185_crit_edge, %tuner_transfer.exit282.do.end185_crit_edge, %tuner_transfer.exit266.do.end185_crit_edge, %tuner_transfer.exit.do.end185_crit_edge
  %rc.0 = phi i32 [ %retval.0.i, %tuner_transfer.exit.do.end185_crit_edge ], [ %retval.0.i265, %tuner_transfer.exit266.do.end185_crit_edge ], [ %retval.0.i281, %tuner_transfer.exit282.do.end185_crit_edge ], [ %retval.0.i297, %tuner_transfer.exit298.do.end185_crit_edge ], [ %retval.0.i313, %tuner_transfer.exit314.do.end185_crit_edge ], [ %retval.0.i329, %tuner_transfer.exit330.do.end185_crit_edge ], [ %retval.0.i345, %tuner_transfer.exit346.do.end185_crit_edge ], [ %retval.0.i361, %tuner_transfer.exit362.do.end185_crit_edge ], [ %retval.0.i377, %tuner_transfer.exit378.do.end185_crit_edge ], [ %retval.0.i393, %tuner_transfer.exit394.do.end185_crit_edge ]
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %1, align 4
  %shl188 = shl i32 %174, 1
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %shl188) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end185, %if.end179
  %retval.0 = phi i32 [ %rc.0, %do.end185 ], [ 0, %if.end179 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda827xa_set_analog_params(ptr noundef %fe, ptr noundef %params) #0 align 64 {
entry:
  %tuner_reg = alloca [11 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tuner_reg) #6
  %0 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 1
  %1 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 2
  %2 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 3
  %3 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 4
  %4 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 5
  %5 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 6
  %6 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 7
  %7 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 8
  %8 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 9
  %9 = getelementptr inbounds [11 x i8], ptr %tuner_reg, i32 0, i32 10
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %10 = call ptr @memset(ptr %tuner_reg, i32 255, i32 11)
  %11 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %13 = getelementptr inbounds i8, ptr %msg, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tuner_reg, ptr %buf, align 4
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %params, align 8
  call fastcc void @tda827x_set_std(ptr noundef %fe, ptr noundef %params)
  call fastcc void @tda827xa_lna_gain(ptr noundef %fe, i32 noundef 1, ptr noundef %params)
  call void @msleep(i32 noundef 10) #6
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  %div = udiv i32 %21, 1000
  %spec.select = select i1 %cmp, i32 %div, i32 %21
  %sgIF = getelementptr inbounds %struct.tda827x_priv, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %sgIF to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sgIF, align 4
  %add = add i32 %spec.select, %25
  %mul = mul i32 %add, 62500
  call void @__sanitizer_cov_trace_const_cmp4(i32 56875000, i32 %mul)
  %cmp2 = icmp ugt i32 %mul, 56875000
  br i1 %cmp2, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 67250000, i32 %mul)
  %cmp2.1 = icmp ugt i32 %mul, 67250000
  br i1 %cmp2.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 81250000, i32 %mul)
  %cmp2.2 = icmp ugt i32 %mul, 81250000
  br i1 %cmp2.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 97500000, i32 %mul)
  %cmp2.3 = icmp ugt i32 %mul, 97500000
  br i1 %cmp2.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 113750000, i32 %mul)
  %cmp2.4 = icmp ugt i32 %mul, 113750000
  br i1 %cmp2.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 134500000, i32 %mul)
  %cmp2.5 = icmp ugt i32 %mul, 134500000
  br i1 %cmp2.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000000, i32 %mul)
  %cmp2.6 = icmp ugt i32 %mul, 154000000
  br i1 %cmp2.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 162500000, i32 %mul)
  %cmp2.7 = icmp ugt i32 %mul, 162500000
  br i1 %cmp2.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 183000000, i32 %mul)
  %cmp2.8 = icmp ugt i32 %mul, 183000000
  br i1 %cmp2.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 195000000, i32 %mul)
  %cmp2.9 = icmp ugt i32 %mul, 195000000
  br i1 %cmp2.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 227500000, i32 %mul)
  %cmp2.10 = icmp ugt i32 %mul, 227500000
  br i1 %cmp2.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 269000000, i32 %mul)
  %cmp2.11 = icmp ugt i32 %mul, 269000000
  br i1 %cmp2.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 325000000, i32 %mul)
  %cmp2.12 = icmp ugt i32 %mul, 325000000
  br i1 %cmp2.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 390000000, i32 %mul)
  %cmp2.13 = icmp ugt i32 %mul, 390000000
  br i1 %cmp2.13, label %while.body.13, label %while.body.12.while.end_crit_edge

while.body.12.while.end_crit_edge:                ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.13:                                    ; preds = %while.body.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 455000000, i32 %mul)
  %cmp2.14 = icmp ugt i32 %mul, 455000000
  br i1 %cmp2.14, label %while.body.14, label %while.body.13.while.end_crit_edge

while.body.13.while.end_crit_edge:                ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.14:                                    ; preds = %while.body.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 520000000, i32 %mul)
  %cmp2.15 = icmp ugt i32 %mul, 520000000
  br i1 %cmp2.15, label %while.body.15, label %while.body.14.while.end_crit_edge

while.body.14.while.end_crit_edge:                ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 538000000, i32 %mul)
  %cmp2.16 = icmp ugt i32 %mul, 538000000
  br i1 %cmp2.16, label %while.body.16, label %while.body.15.while.end_crit_edge

while.body.15.while.end_crit_edge:                ; preds = %while.body.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.16:                                    ; preds = %while.body.15
  call void @__sanitizer_cov_trace_const_cmp4(i32 554000000, i32 %mul)
  %cmp2.17 = icmp ugt i32 %mul, 554000000
  br i1 %cmp2.17, label %while.body.17, label %while.body.16.while.end_crit_edge

while.body.16.while.end_crit_edge:                ; preds = %while.body.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.17:                                    ; preds = %while.body.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 620000000, i32 %mul)
  %cmp2.18 = icmp ugt i32 %mul, 620000000
  br i1 %cmp2.18, label %while.body.18, label %while.body.17.while.end_crit_edge

while.body.17.while.end_crit_edge:                ; preds = %while.body.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.18:                                    ; preds = %while.body.17
  call void @__sanitizer_cov_trace_const_cmp4(i32 650000000, i32 %mul)
  %cmp2.19 = icmp ugt i32 %mul, 650000000
  br i1 %cmp2.19, label %while.body.19, label %while.body.18.while.end_crit_edge

while.body.18.while.end_crit_edge:                ; preds = %while.body.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.19:                                    ; preds = %while.body.18
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000000, i32 %mul)
  %cmp2.20 = icmp ugt i32 %mul, 700000000
  br i1 %cmp2.20, label %while.body.20, label %while.body.19.while.end_crit_edge

while.body.19.while.end_crit_edge:                ; preds = %while.body.19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.20:                                    ; preds = %while.body.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 780000000, i32 %mul)
  %cmp2.21 = icmp ugt i32 %mul, 780000000
  br i1 %cmp2.21, label %while.body.21, label %while.body.20.while.end_crit_edge

while.body.20.while.end_crit_edge:                ; preds = %while.body.20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.21:                                    ; preds = %while.body.20
  call void @__sanitizer_cov_trace_const_cmp4(i32 820000000, i32 %mul)
  %cmp2.22 = icmp ugt i32 %mul, 820000000
  br i1 %cmp2.22, label %while.body.22, label %while.body.21.while.end_crit_edge

while.body.21.while.end_crit_edge:                ; preds = %while.body.21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.22:                                    ; preds = %while.body.21
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 870000000, i32 %mul)
  %cmp2.23 = icmp ugt i32 %mul, 870000000
  %spec.select310 = select i1 %cmp2.23, i32 24, i32 23
  br label %while.end

while.end:                                        ; preds = %while.body.22, %while.body.21.while.end_crit_edge, %while.body.20.while.end_crit_edge, %while.body.19.while.end_crit_edge, %while.body.18.while.end_crit_edge, %while.body.17.while.end_crit_edge, %while.body.16.while.end_crit_edge, %while.body.15.while.end_crit_edge, %while.body.14.while.end_crit_edge, %while.body.13.while.end_crit_edge, %while.body.12.while.end_crit_edge, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ], [ 8, %while.body.7.while.end_crit_edge ], [ 9, %while.body.8.while.end_crit_edge ], [ 10, %while.body.9.while.end_crit_edge ], [ 11, %while.body.10.while.end_crit_edge ], [ 12, %while.body.11.while.end_crit_edge ], [ 13, %while.body.12.while.end_crit_edge ], [ 14, %while.body.13.while.end_crit_edge ], [ 15, %while.body.14.while.end_crit_edge ], [ 16, %while.body.15.while.end_crit_edge ], [ 17, %while.body.16.while.end_crit_edge ], [ 18, %while.body.17.while.end_crit_edge ], [ 19, %while.body.18.while.end_crit_edge ], [ 20, %while.body.19.while.end_crit_edge ], [ 21, %while.body.20.while.end_crit_edge ], [ 22, %while.body.21.while.end_crit_edge ], [ %spec.select310, %while.body.22 ]
  %spd = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %i.0.lcssa, i32 2
  %26 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %spd, align 1
  %conv12 = zext i8 %27 to i32
  %shl = shl i32 %add, %conv12
  %28 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %tuner_reg, align 1
  %shr = lshr i32 %shl, 8
  %conv14 = trunc i32 %shr to i8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv14, ptr %0, align 1
  %conv16 = trunc i32 %shl to i8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %1, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %2, align 1
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 22, ptr %3, align 1
  %shl23 = shl i8 %27, 5
  %svco = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %i.0.lcssa, i32 1
  %33 = ptrtoint ptr %svco to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %svco, align 4
  %shl26 = shl i8 %34, 3
  %add27 = add i8 %shl26, %shl23
  %sbs = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %i.0.lcssa, i32 4
  %35 = ptrtoint ptr %sbs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sbs, align 1
  %add30 = add i8 %add27, %36
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %add30, ptr %4, align 1
  %gc3 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %i.0.lcssa, i32 5
  %38 = ptrtoint ptr %gc3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gc3, align 4
  %shl35 = shl i8 %39, 4
  %add36 = add i8 %shl35, -117
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add36, ptr %5, align 1
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 28, ptr %6, align 1
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %7, align 1
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %8, align 1
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %9, align 1
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 11, ptr %len, align 4
  %46 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %48 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %while.end.if.end.i_crit_edge, label %if.then.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %49(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg, i32 noundef 1) #6
  %52 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i, label %if.end.i.tuner_transfer.exit_crit_edge, label %if.then7.i

if.end.i.tuner_transfer.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %53(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit

tuner_transfer.exit:                              ; preds = %if.then7.i, %if.end.i.tuner_transfer.exit_crit_edge
  %54 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -112, ptr %tuner_reg, align 1
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %0, align 1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -32, ptr %1, align 1
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %2, align 1
  %lpsel = getelementptr inbounds %struct.tda827x_priv, ptr %12, i32 0, i32 4
  %58 = ptrtoint ptr %lpsel to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lpsel, align 4
  %shl49 = shl i8 %59, 1
  %add50 = add i8 %shl49, -103
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %add50, ptr %3, align 1
  %61 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 5, ptr %len, align 4
  %62 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tuner_priv, align 4
  %64 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i152 = icmp eq ptr %65, null
  br i1 %tobool.not.i152, label %tuner_transfer.exit.if.end.i158_crit_edge, label %if.then.i154

tuner_transfer.exit.if.end.i158_crit_edge:        ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i158

if.then.i154:                                     ; preds = %tuner_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i153 = call i32 %65(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i158

if.end.i158:                                      ; preds = %if.then.i154, %tuner_transfer.exit.if.end.i158_crit_edge
  %i2c_adap.i155 = getelementptr inbounds %struct.tda827x_priv, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %i2c_adap.i155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i2c_adap.i155, align 4
  %call3.i156 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg, i32 noundef 1) #6
  %68 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i157 = icmp eq ptr %69, null
  br i1 %tobool6.not.i157, label %tuner_transfer.exit165.thread, label %tuner_transfer.exit165

tuner_transfer.exit165.thread:                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -96, ptr %tuner_reg, align 1
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -64, ptr %0, align 1
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %len, align 4
  %73 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i174

tuner_transfer.exit165:                           ; preds = %if.end.i158
  %call10.i159 = call i32 %69(ptr noundef %fe, i32 noundef 0) #6
  %75 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr301 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %76 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -96, ptr %tuner_reg, align 1
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -64, ptr %0, align 1
  %78 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %len, align 4
  %79 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i168 = icmp eq ptr %.pr301, null
  br i1 %tobool.not.i168, label %tuner_transfer.exit165.if.end.i174_crit_edge, label %if.then.i170

tuner_transfer.exit165.if.end.i174_crit_edge:     ; preds = %tuner_transfer.exit165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i174

if.then.i170:                                     ; preds = %tuner_transfer.exit165
  call void @__sanitizer_cov_trace_pc() #8
  %call.i169 = call i32 %.pr301(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i174

if.end.i174:                                      ; preds = %if.then.i170, %tuner_transfer.exit165.if.end.i174_crit_edge, %tuner_transfer.exit165.thread
  %81 = phi ptr [ %74, %tuner_transfer.exit165.thread ], [ %80, %if.then.i170 ], [ %80, %tuner_transfer.exit165.if.end.i174_crit_edge ]
  %i2c_adap.i171 = getelementptr inbounds %struct.tda827x_priv, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %i2c_adap.i171 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_adap.i171, align 4
  %call3.i172 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg, i32 noundef 1) #6
  %84 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i173 = icmp eq ptr %85, null
  br i1 %tobool6.not.i173, label %if.end.i174.tuner_transfer.exit181_crit_edge, label %if.then7.i176

if.end.i174.tuner_transfer.exit181_crit_edge:     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit181

if.then7.i176:                                    ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i175 = call i32 %85(ptr noundef %fe, i32 noundef 0) #6
  %86 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr303 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  br label %tuner_transfer.exit181

tuner_transfer.exit181:                           ; preds = %if.then7.i176, %if.end.i174.tuner_transfer.exit181_crit_edge
  %87 = phi ptr [ null, %if.end.i174.tuner_transfer.exit181_crit_edge ], [ %.pr303, %if.then7.i176 ]
  %88 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 48, ptr %tuner_reg, align 1
  %scr = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %i.0.lcssa, i32 3
  %89 = ptrtoint ptr %scr to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %scr, align 2
  %add62 = add i8 %90, 16
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %add62, ptr %0, align 1
  %92 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i184 = icmp eq ptr %87, null
  br i1 %tobool.not.i184, label %tuner_transfer.exit181.if.end.i190_crit_edge, label %if.then.i186

tuner_transfer.exit181.if.end.i190_crit_edge:     ; preds = %tuner_transfer.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i190

if.then.i186:                                     ; preds = %tuner_transfer.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %call.i185 = call i32 %87(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i190

if.end.i190:                                      ; preds = %if.then.i186, %tuner_transfer.exit181.if.end.i190_crit_edge
  %i2c_adap.i187 = getelementptr inbounds %struct.tda827x_priv, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %i2c_adap.i187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i2c_adap.i187, align 4
  %call3.i188 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg, i32 noundef 1) #6
  %96 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i189 = icmp eq ptr %97, null
  br i1 %tobool6.not.i189, label %tuner_transfer.exit197.thread, label %tuner_transfer.exit197

tuner_transfer.exit197.thread:                    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %flags, align 2
  %99 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i206

tuner_transfer.exit197:                           ; preds = %if.end.i190
  %call10.i191 = call i32 %97(ptr noundef %fe, i32 noundef 0) #6
  %101 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %flags, align 2
  %103 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i200 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i200, label %tuner_transfer.exit197.if.end.i206_crit_edge, label %if.then.i202

tuner_transfer.exit197.if.end.i206_crit_edge:     ; preds = %tuner_transfer.exit197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i206

if.then.i202:                                     ; preds = %tuner_transfer.exit197
  call void @__sanitizer_cov_trace_pc() #8
  %call.i201 = call i32 %.pr(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i206

if.end.i206:                                      ; preds = %if.then.i202, %tuner_transfer.exit197.if.end.i206_crit_edge, %tuner_transfer.exit197.thread
  %105 = phi ptr [ %100, %tuner_transfer.exit197.thread ], [ %104, %if.then.i202 ], [ %104, %tuner_transfer.exit197.if.end.i206_crit_edge ]
  %i2c_adap.i203 = getelementptr inbounds %struct.tda827x_priv, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %i2c_adap.i203 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c_adap.i203, align 4
  %call3.i204 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg, i32 noundef 1) #6
  %108 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i205 = icmp eq ptr %109, null
  br i1 %tobool6.not.i205, label %if.end.i206.tuner_transfer.exit213_crit_edge, label %if.then7.i208

if.end.i206.tuner_transfer.exit213_crit_edge:     ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit213

if.then7.i208:                                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i207 = call i32 %109(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit213

tuner_transfer.exit213:                           ; preds = %if.then7.i208, %if.end.i206.tuner_transfer.exit213_crit_edge
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags, align 2
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %0, align 1
  %113 = lshr i8 %112, 4
  store i8 %113, ptr %0, align 1
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not = icmp eq i32 %114, 0
  br i1 %tobool.not, label %tuner_transfer.exit213.do.end80_crit_edge, label %do.end

tuner_transfer.exit213.do.end80_crit_edge:        ; preds = %tuner_transfer.exit213
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end80

do.end:                                           ; preds = %tuner_transfer.exit213
  call void @__sanitizer_cov_trace_pc() #8
  %conv76 = zext i8 %113 to i32
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv76) #9
  %115 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr298 = load i8, ptr %0, align 1
  br label %do.end80

do.end80:                                         ; preds = %do.end, %tuner_transfer.exit213.do.end80_crit_edge
  %116 = phi i8 [ %.pr298, %do.end ], [ %113, %tuner_transfer.exit213.do.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp83 = icmp eq i8 %116, 0
  br i1 %cmp83, label %if.then85, label %do.end80.if.end86_crit_edge

do.end80.if.end86_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then85:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tda827xa_lna_gain(ptr noundef %fe, i32 noundef 0, ptr noundef %params)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %do.end80.if.end86_crit_edge
  call void @msleep(i32 noundef 100) #6
  %117 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 96, ptr %tuner_reg, align 1
  %118 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 60, ptr %0, align 1
  %119 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tuner_priv, align 4
  %121 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i216 = icmp eq ptr %122, null
  br i1 %tobool.not.i216, label %if.end86.if.end.i222_crit_edge, label %if.then.i218

if.end86.if.end.i222_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i222

if.then.i218:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %call.i217 = call i32 %122(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i222

if.end.i222:                                      ; preds = %if.then.i218, %if.end86.if.end.i222_crit_edge
  %i2c_adap.i219 = getelementptr inbounds %struct.tda827x_priv, ptr %120, i32 0, i32 1
  %123 = ptrtoint ptr %i2c_adap.i219 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c_adap.i219, align 4
  %call3.i220 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg, i32 noundef 1) #6
  %125 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i221 = icmp eq ptr %126, null
  br i1 %tobool6.not.i221, label %if.end.i222.tuner_transfer.exit229_crit_edge, label %if.then7.i224

if.end.i222.tuner_transfer.exit229_crit_edge:     ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit229

if.then7.i224:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i223 = call i32 %126(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit229

tuner_transfer.exit229:                           ; preds = %if.then7.i224, %if.end.i222.tuner_transfer.exit229_crit_edge
  call void @msleep(i32 noundef 163) #6
  %127 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 80, ptr %tuner_reg, align 1
  %add95 = add i8 %shl35, -113
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %add95, ptr %0, align 1
  %129 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tuner_priv, align 4
  %131 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i232 = icmp eq ptr %132, null
  br i1 %tobool.not.i232, label %tuner_transfer.exit229.if.end.i238_crit_edge, label %if.then.i234

tuner_transfer.exit229.if.end.i238_crit_edge:     ; preds = %tuner_transfer.exit229
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i238

if.then.i234:                                     ; preds = %tuner_transfer.exit229
  call void @__sanitizer_cov_trace_pc() #8
  %call.i233 = call i32 %132(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i238

if.end.i238:                                      ; preds = %if.then.i234, %tuner_transfer.exit229.if.end.i238_crit_edge
  %i2c_adap.i235 = getelementptr inbounds %struct.tda827x_priv, ptr %130, i32 0, i32 1
  %133 = ptrtoint ptr %i2c_adap.i235 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i2c_adap.i235, align 4
  %call3.i236 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg, i32 noundef 1) #6
  %135 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i237 = icmp eq ptr %136, null
  br i1 %tobool6.not.i237, label %tuner_transfer.exit245.thread, label %tuner_transfer.exit245

tuner_transfer.exit245.thread:                    ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -128, ptr %tuner_reg, align 1
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 40, ptr %0, align 1
  %139 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i254

tuner_transfer.exit245:                           ; preds = %if.end.i238
  %call10.i239 = call i32 %136(ptr noundef %fe, i32 noundef 0) #6
  %141 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr299 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %142 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -128, ptr %tuner_reg, align 1
  %143 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 40, ptr %0, align 1
  %144 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i248 = icmp eq ptr %.pr299, null
  br i1 %tobool.not.i248, label %tuner_transfer.exit245.if.end.i254_crit_edge, label %if.then.i250

tuner_transfer.exit245.if.end.i254_crit_edge:     ; preds = %tuner_transfer.exit245
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i254

if.then.i250:                                     ; preds = %tuner_transfer.exit245
  call void @__sanitizer_cov_trace_pc() #8
  %call.i249 = call i32 %.pr299(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i254

if.end.i254:                                      ; preds = %if.then.i250, %tuner_transfer.exit245.if.end.i254_crit_edge, %tuner_transfer.exit245.thread
  %146 = phi ptr [ %140, %tuner_transfer.exit245.thread ], [ %145, %if.then.i250 ], [ %145, %tuner_transfer.exit245.if.end.i254_crit_edge ]
  %i2c_adap.i251 = getelementptr inbounds %struct.tda827x_priv, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %i2c_adap.i251 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c_adap.i251, align 4
  %call3.i252 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg, i32 noundef 1) #6
  %149 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i253 = icmp eq ptr %150, null
  br i1 %tobool6.not.i253, label %tuner_transfer.exit261.thread, label %tuner_transfer.exit261

tuner_transfer.exit261.thread:                    ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -80, ptr %tuner_reg, align 1
  %152 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %0, align 1
  %153 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i270

tuner_transfer.exit261:                           ; preds = %if.end.i254
  %call10.i255 = call i32 %150(ptr noundef %fe, i32 noundef 0) #6
  %155 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr300 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %156 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -80, ptr %tuner_reg, align 1
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %0, align 1
  %158 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i264 = icmp eq ptr %.pr300, null
  br i1 %tobool.not.i264, label %tuner_transfer.exit261.if.end.i270_crit_edge, label %if.then.i266

tuner_transfer.exit261.if.end.i270_crit_edge:     ; preds = %tuner_transfer.exit261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i270

if.then.i266:                                     ; preds = %tuner_transfer.exit261
  call void @__sanitizer_cov_trace_pc() #8
  %call.i265 = call i32 %.pr300(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i270

if.end.i270:                                      ; preds = %if.then.i266, %tuner_transfer.exit261.if.end.i270_crit_edge, %tuner_transfer.exit261.thread
  %160 = phi ptr [ %154, %tuner_transfer.exit261.thread ], [ %159, %if.then.i266 ], [ %159, %tuner_transfer.exit261.if.end.i270_crit_edge ]
  %i2c_adap.i267 = getelementptr inbounds %struct.tda827x_priv, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %i2c_adap.i267 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i2c_adap.i267, align 4
  %call3.i268 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg, i32 noundef 1) #6
  %163 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i269 = icmp eq ptr %164, null
  br i1 %tobool6.not.i269, label %tuner_transfer.exit277.thread, label %tuner_transfer.exit277

tuner_transfer.exit277.thread:                    ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -64, ptr %tuner_reg, align 1
  %166 = ptrtoint ptr %lpsel to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %lpsel, align 4
  %shl108307 = shl i8 %167, 1
  %add109308 = add i8 %shl108307, 25
  %168 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %add109308, ptr %0, align 1
  %169 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tuner_priv, align 4
  br label %if.end.i286

tuner_transfer.exit277:                           ; preds = %if.end.i270
  %call10.i271 = call i32 %164(ptr noundef %fe, i32 noundef 0) #6
  %171 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr306 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %172 = ptrtoint ptr %tuner_reg to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -64, ptr %tuner_reg, align 1
  %173 = ptrtoint ptr %lpsel to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %lpsel, align 4
  %shl108 = shl i8 %174, 1
  %add109 = add i8 %shl108, 25
  %175 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %add109, ptr %0, align 1
  %176 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tuner_priv, align 4
  %tobool.not.i280 = icmp eq ptr %.pr306, null
  br i1 %tobool.not.i280, label %tuner_transfer.exit277.if.end.i286_crit_edge, label %if.then.i282

tuner_transfer.exit277.if.end.i286_crit_edge:     ; preds = %tuner_transfer.exit277
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i286

if.then.i282:                                     ; preds = %tuner_transfer.exit277
  call void @__sanitizer_cov_trace_pc() #8
  %call.i281 = call i32 %.pr306(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i286

if.end.i286:                                      ; preds = %if.then.i282, %tuner_transfer.exit277.if.end.i286_crit_edge, %tuner_transfer.exit277.thread
  %178 = phi ptr [ %170, %tuner_transfer.exit277.thread ], [ %177, %if.then.i282 ], [ %177, %tuner_transfer.exit277.if.end.i286_crit_edge ]
  %i2c_adap.i283 = getelementptr inbounds %struct.tda827x_priv, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %i2c_adap.i283 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i2c_adap.i283, align 4
  %call3.i284 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg, i32 noundef 1) #6
  %181 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i285 = icmp eq ptr %182, null
  br i1 %tobool6.not.i285, label %if.end.i286.tuner_transfer.exit293_crit_edge, label %if.then7.i288

if.end.i286.tuner_transfer.exit293_crit_edge:     ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #8
  br label %tuner_transfer.exit293

if.then7.i288:                                    ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i287 = call i32 %182(ptr noundef %fe, i32 noundef 0) #6
  br label %tuner_transfer.exit293

tuner_transfer.exit293:                           ; preds = %if.then7.i288, %if.end.i286.tuner_transfer.exit293_crit_edge
  %183 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %params, align 8
  %frequency114 = getelementptr inbounds %struct.tda827x_priv, ptr %12, i32 0, i32 5
  %185 = ptrtoint ptr %frequency114 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %frequency114, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tuner_reg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda827xa_lna_gain(ptr noundef %fe, i32 noundef %high, ptr noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 8705, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %buf1, align 4
  %cfg = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %switch_addr = getelementptr inbounds %struct.tda827x_config, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %switch_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %switch_addr, align 4
  %conv = trunc i32 %12 to i16
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %msg, align 4
  %config = getelementptr inbounds %struct.tda827x_config, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end6.if.end37_crit_edge, label %if.then11

if.end6.if.end37_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then11:                                        ; preds = %if.end6
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %if.then11.if.end37_crit_edge, label %if.end37.sink.split

if.then11.if.end37_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %high)
  %tobool12.not = icmp eq i32 %high, 0
  %.str.33..str.30 = select i1 %tobool12.not, ptr @.str.33, ptr @.str.30
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33..str.30) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.then11.if.end37_crit_edge, %if.end6.if.end37_crit_edge
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 4
  %config39 = getelementptr inbounds %struct.tda827x_config, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %config39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config39, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %20, label %if.end37.cleanup_crit_edge [
    i32 3, label %sw.bb67
    i32 1, label %if.end37.sw.bb_crit_edge
    i32 2, label %if.end37.sw.bb_crit_edge97
  ]

if.end37.sw.bb_crit_edge97:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end37.sw.bb_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end37.sw.bb_crit_edge, %if.end37.sw.bb_crit_edge97
  %cmp40 = icmp eq ptr %params, null
  br i1 %cmp40, label %sw.bb.if.end48_crit_edge, label %if.else43

sw.bb.if.end48_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else43:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %22 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %std, align 8
  %and = and i64 %23, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool44.not = icmp ne i64 %and, 0
  %. = zext i1 %tobool44.not to i32
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %sw.bb.if.end48_crit_edge
  %gp_func.0 = phi i32 [ 0, %sw.bb.if.end48_crit_edge ], [ 1, %if.else43 ]
  %arg.0 = phi i32 [ 0, %sw.bb.if.end48_crit_edge ], [ %., %if.else43 ]
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %24 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %callback, align 4
  %tobool49.not = icmp eq ptr %25, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_adap = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_adap, align 4
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %algo_data, align 4
  %call52 = call i32 %25(ptr noundef %29, i32 noundef 0, i32 noundef %gp_func.0, i32 noundef %arg.0) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %high)
  %tobool54.not = icmp eq i32 %high, 0
  %conv55 = zext i1 %tobool54.not to i8
  %arrayidx = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv55, ptr %arrayidx, align 1
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg, align 4
  %config57 = getelementptr inbounds %struct.tda827x_config, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %config57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %config57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp58 = icmp eq i32 %34, 2
  br i1 %cmp58, label %if.then60, label %if.end53.if.end65_crit_edge

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %not.tobool54.not = xor i1 %tobool54.not, true
  %conv63 = zext i1 %not.tobool54.not to i8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv63, ptr %arrayidx, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end53.if.end65_crit_edge
  %36 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %38 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end65.if.end.i_crit_edge, label %if.then.i

if.end65.if.end.i_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %39(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end65.if.end.i_crit_edge
  %i2c_adap.i = getelementptr inbounds %struct.tda827x_priv, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_adap.i, align 4
  %call3.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg, i32 noundef 1) #6
  %42 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.then7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 %43(ptr noundef %fe, i32 noundef 0) #6
  br label %cleanup

sw.bb67:                                          ; preds = %if.end37
  %callback68 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %44 = ptrtoint ptr %callback68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %callback68, align 4
  %tobool69.not = icmp eq ptr %45, null
  br i1 %tobool69.not, label %sw.bb67.cleanup_crit_edge, label %if.then70

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_adap72 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %i2c_adap72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_adap72, align 4
  %algo_data73 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %algo_data73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %algo_data73, align 4
  %call74 = call i32 %45(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef %high) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %sw.bb67.cleanup_crit_edge, %if.then7.i, %if.end.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda827x_set_std(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lpsel = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lpsel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lpsel, align 4
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %std, align 8
  %and = and i64 %4, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %sgIF to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 92, ptr %sgIF, align 4
  %6 = ptrtoint ptr %lpsel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %lpsel, align 4
  br label %if.end44

if.else:                                          ; preds = %entry
  %and3 = and i64 %4, 65539
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF6 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %sgIF6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 108, ptr %sgIF6, align 4
  br label %if.end44

if.else7:                                         ; preds = %if.else
  %and9 = and i64 %4, 786444
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF12 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sgIF12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 124, ptr %sgIF12, align 4
  br label %if.end44

if.else13:                                        ; preds = %if.else7
  %and15 = and i64 %4, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF18 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %sgIF18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 124, ptr %sgIF18, align 4
  br label %if.end44

if.else19:                                        ; preds = %if.else13
  %and21 = and i64 %4, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF24 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sgIF24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 124, ptr %sgIF24, align 4
  br label %if.end44

if.else25:                                        ; preds = %if.else19
  %and27 = and i64 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %sgIF30 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %sgIF30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 124, ptr %sgIF30, align 4
  br label %if.end44

if.else31:                                        ; preds = %if.else25
  %and33 = and i64 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  %sgIF38 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %sgIF38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %sgIF38, align 4
  br label %if.end44

if.else37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sgIF38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 124, ptr %sgIF38, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then35, %if.then29, %if.then23, %if.then17, %if.then11, %if.then5, %if.then
  %mode.0 = phi ptr [ @.str.37, %if.then ], [ @.str.38, %if.then5 ], [ @.str.39, %if.then11 ], [ @.str.40, %if.then17 ], [ @.str.41, %if.then23 ], [ @.str.42, %if.then29 ], [ @.str.43, %if.then35 ], [ @.str.44, %if.else37 ]
  %mode45 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %mode45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then46, label %do.body55

if.then46:                                        ; preds = %if.end44
  %sgIF47 = getelementptr inbounds %struct.tda827x_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %sgIF47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 88, ptr %sgIF47, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool48.not = icmp eq i32 %17, 0
  br i1 %tobool48.not, label %if.then46.if.end66_crit_edge, label %do.end

if.then46.if.end66_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end:                                           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %if.end66

do.body55:                                        ; preds = %if.end44
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool56.not = icmp eq i32 %18, 0
  br i1 %tobool56.not, label %do.body55.if.end66_crit_edge, label %do.end60

do.body55.if.end66_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %mode.0) #9
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %do.body55.if.end66_crit_edge, %do.end, %if.then46.if.end66_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda827x.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda827x.c", i32 18, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda827x.c", i32 875, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tda827x_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @tda827x_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/tda827x.c", i32 886, i32 2}
!13 = !{ptr @tda827x_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tda827x_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_tda827x_attach, !16, !"__ksymtab_tda827x_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/tda827x.c", i32 890, i32 1}
!17 = !{ptr @__UNIQUE_ID_description292, !18, !"__UNIQUE_ID_description292", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/tda827x.c", i32 892, i32 1}
!19 = !{ptr @__UNIQUE_ID_author293, !20, !"__UNIQUE_ID_author293", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/tda827x.c", i32 893, i32 1}
!21 = !{ptr @__UNIQUE_ID_author294, !22, !"__UNIQUE_ID_author294", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/tda827x.c", i32 894, i32 1}
!23 = !{ptr @__UNIQUE_ID_file295, !24, !"__UNIQUE_ID_file295", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/tda827x.c", i32 895, i32 1}
!25 = !{ptr @__UNIQUE_ID_license296, !24, !"__UNIQUE_ID_license296", i1 false, i1 false}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda827x.c", i32 16, i32 12}
!28 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @tda827xo_tuner_ops, !30, !"tda827xo_tuner_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/tda827x.c", i32 807, i32 35}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/tda827x.c", i32 850, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tda827x_probe_version._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tda827x_probe_version._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/tuners/tda827x.c", i32 855, i32 3}
!38 = !{ptr @tda827x_probe_version._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tda827x_probe_version._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda827x.c", i32 861, i32 3}
!42 = !{ptr @tda827x_probe_version._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tda827x_probe_version._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/tda827x.c", i32 780, i32 2}
!46 = !{ptr @tda827x_init._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tda827x_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @tda827xo_sleep.buf, !49, !"buf", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tda827x.c", i32 222, i32 12}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda827x.c", i32 226, i32 2}
!52 = !{ptr @tda827xo_sleep._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tda827xo_sleep._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @tda827xa_tuner_ops, !55, !"tda827xa_tuner_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tda827x.c", i32 823, i32 35}
!56 = !{ptr @tda827xa_sleep.buf, !57, !"buf", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/tda827x.c", i32 434, i32 12}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/tda827x.c", i32 438, i32 2}
!60 = !{ptr @tda827xa_sleep._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tda827xa_sleep._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/tda827x.c", i32 514, i32 2}
!64 = !{ptr @tda827xa_set_params._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tda827xa_set_params._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/tda827x.c", i32 533, i32 3}
!68 = !{ptr @tda827xa_set_params._entry.18, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tda827xa_set_params._entry_ptr.20, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/tda827x.c", i32 592, i32 2}
!72 = !{ptr @tda827xa_set_params._entry.21, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tda827xa_set_params._entry_ptr.23, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/tda827x.c", i32 642, i32 2}
!76 = !{ptr @tda827xa_set_params._entry.24, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tda827xa_set_params._entry_ptr.26, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @tda827xa_dvbt, !79, !"tda827xa_dvbt", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/tda827x.c", i32 342, i32 29}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/tda827x.c", i32 458, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tda827xa_lna_gain._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tda827xa_lna_gain._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/tda827x.c", i32 464, i32 4}
!87 = !{ptr @tda827xa_lna_gain._entry.29, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @tda827xa_lna_gain._entry_ptr.31, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/tuners/tda827x.c", i32 466, i32 4}
!91 = !{ptr @tda827xa_lna_gain._entry.32, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @tda827xa_lna_gain._entry_ptr.34, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @tda827xa_dvbc, !94, !"tda827xa_dvbc", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/tda827x.c", i32 372, i32 29}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/tda827x.c", i32 715, i32 2}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @tda827xa_set_analog_params._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @tda827xa_set_analog_params._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/tda827x.c", i32 47, i32 10}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/tda827x.c", i32 50, i32 10}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/tda827x.c", i32 53, i32 10}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/tda827x.c", i32 56, i32 10}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/tda827x.c", i32 59, i32 10}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/tda827x.c", i32 62, i32 10}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/tuners/tda827x.c", i32 65, i32 10}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/tda827x.c", i32 68, i32 10}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/tuners/tda827x.c", i32 73, i32 3}
!118 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @tda827x_set_std._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @tda827x_set_std._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/tuners/tda827x.c", i32 75, i32 3}
!123 = !{ptr @tda827x_set_std._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tda827x_set_std._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @tda827xa_analog, !126, !"tda827xa_analog", i1 false, i1 false}
!126 = !{!"../drivers/media/tuners/tda827x.c", i32 402, i32 29}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/tuners/tda827x.c", i32 154, i32 2}
!129 = !{ptr @tda827xo_set_params._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tda827xo_set_params._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @tda827xo_set_params._entry.51, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/tda827x.c", i32 214, i32 2}
!133 = !{ptr @tda827xo_set_params._entry_ptr.52, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @tda827x_table, !135, !"tda827x_table", i1 false, i1 false}
!135 = !{!"../drivers/media/tuners/tda827x.c", i32 91, i32 34}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
