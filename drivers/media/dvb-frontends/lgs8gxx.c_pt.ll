; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lgs8gxx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgs8gxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lgs8gxx_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lgs8gxx_attach\09\09\09\09"
module asm "\09.long\09__crc_lgs8gxx_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgs8gxx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgs8gxx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgs8gxx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lgs8gxx_state = type { ptr, ptr, %struct.dvb_frontend, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"lgs8gxx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"lgs8gxx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"lgs8gxx.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__param_str_fake_signal_str = internal constant [24 x i8] c"lgs8gxx.fake_signal_str\00", align 1
@fake_signal_str = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fake_signal_str = internal constant %struct.kernel_param { ptr @__param_str_fake_signal_str, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fake_signal_str } }, section "__param", align 4
@__UNIQUE_ID_fake_signal_strtype292 = internal constant [37 x i8] c"lgs8gxx.parmtype=fake_signal_str:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fake_signal_str293 = internal constant [112 x i8] c"lgs8gxx.parm=fake_signal_str:fake signal strength for LGS8913.Signal strength calculation is slow.(default:on).\00", section ".modinfo", align 1
@lgs8gxx_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017lgs8gxx: %s()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gxx_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/lgs8gxx.c\00", [58 x i8] zeroinitializer }, align 32
@lgs8gxx_attach._entry_ptr = internal global ptr @lgs8gxx_attach._entry, section ".printk_index", align 4
@lgs8gxx_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017lgs8gxx: %s lgs8gxx not found at i2c addr 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@lgs8gxx_attach._entry_ptr.5 = internal global ptr @lgs8gxx_attach._entry.3, section ".printk_index", align 4
@lgs8gxx_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Legend Silicon LGS8913/LGS8GXX DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @lgs8gxx_release, ptr null, ptr @lgs8gxx_init, ptr null, ptr null, ptr null, ptr @lgs8gxx_write, ptr null, ptr null, ptr @lgs8gxx_set_fe, ptr @lgs8gxx_get_tune_settings, ptr null, ptr @lgs8gxx_read_status, ptr @lgs8gxx_read_ber, ptr @lgs8gxx_read_signal_strength, ptr @lgs8gxx_read_snr, ptr @lgs8gxx_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgs8gxx_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@lgs8gxx_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lgs8gxx: %s() error_out\0A\00", [37 x i8] zeroinitializer }, align 32
@lgs8gxx_attach._entry_ptr.8 = internal global ptr @lgs8gxx_attach._entry.6, section ".printk_index", align 4
@__kstrtab_lgs8gxx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgs8gxx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgs8gxx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgs8gxx_attach to i32), ptr @__kstrtab_lgs8gxx_attach, ptr @__kstrtabns_lgs8gxx_attach }, section "___ksymtab+lgs8gxx_attach", align 4
@__UNIQUE_ID_description294 = internal constant [77 x i8] c"lgs8gxx.description=Legend Silicon LGS8913/LGS8GXX DMB-TH demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [56 x i8] c"lgs8gxx.author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"lgs8gxx.file=drivers/media/dvb-frontends/lgs8gxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"lgs8gxx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [28 x i8] c"lgs8gxx.firmware=lgs8g75.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lgs8gxx_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lgs8gxx: %s: error reg=0x%x, ret=%i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgs8gxx_read_reg\00", [47 x i8] zeroinitializer }, align 32
@lgs8gxx_read_reg._entry_ptr = internal global ptr @lgs8gxx_read_reg._entry, section ".printk_index", align 4
@lgs8gxx_read_reg._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017lgs8gxx: %s: reg=0x%02X, data=0x%02X\0A\00", [56 x i8] zeroinitializer }, align 32
@lgs8gxx_read_reg._entry_ptr.13 = internal global ptr @lgs8gxx_read_reg._entry.11, section ".printk_index", align 4
@lgs8gxx_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017lgs8gxx: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgs8gxx_release\00", [16 x i8] zeroinitializer }, align 32
@lgs8gxx_release._entry_ptr = internal global ptr @lgs8gxx_release._entry, section ".printk_index", align 4
@lgs8gxx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lgs8gxx_init\00", [19 x i8] zeroinitializer }, align 32
@lgs8gxx_init._entry_ptr = internal global ptr @lgs8gxx_init._entry, section ".printk_index", align 4
@lgs8gxx_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017lgs8gxx: reg 0 = 0x%02X\0A\00", [37 x i8] zeroinitializer }, align 32
@lgs8gxx_init._entry_ptr.19 = internal global ptr @lgs8gxx_init._entry.17, section ".printk_index", align 4
@lgs8gxx_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgs8gxx_write_reg\00", [46 x i8] zeroinitializer }, align 32
@lgs8gxx_write_reg._entry_ptr = internal global ptr @lgs8gxx_write_reg._entry, section ".printk_index", align 4
@lgs8gxx_write_reg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017lgs8gxx: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", [46 x i8] zeroinitializer }, align 32
@lgs8gxx_write_reg._entry_ptr.23 = internal global ptr @lgs8gxx_write_reg._entry.21, section ".printk_index", align 4
@lgs8gxx_set_if_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017lgs8gxx: Set IF Freq to %dkHz\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgs8gxx_set_if_freq\00", [44 x i8] zeroinitializer }, align 32
@lgs8gxx_set_if_freq._entry_ptr = internal global ptr @lgs8gxx_set_if_freq._entry, section ".printk_index", align 4
@lgs8gxx_set_if_freq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017lgs8gxx: Set IF Freq to baseband\0A\00", [60 x i8] zeroinitializer }, align 32
@lgs8gxx_set_if_freq._entry_ptr.28 = internal global ptr @lgs8gxx_set_if_freq._entry.26, section ".printk_index", align 4
@lgs8gxx_set_if_freq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017lgs8gxx: AFC_INIT_FREQ = 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@lgs8gxx_set_if_freq._entry_ptr.31 = internal global ptr @lgs8gxx_set_if_freq._entry.29, section ".printk_index", align 4
@lgs8gxx_set_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.32, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gxx_set_fe\00", [17 x i8] zeroinitializer }, align 32
@lgs8gxx_set_fe._entry_ptr = internal global ptr @lgs8gxx_set_fe._entry, section ".printk_index", align 4
@lgs8gxx_auto_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lgs8gxx: lgs8gxx_auto_detect failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgs8gxx_auto_lock\00", [46 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_lock._entry_ptr = internal global ptr @lgs8gxx_auto_lock._entry, section ".printk_index", align 4
@lgs8gxx_auto_lock._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017lgs8gxx: detected param = 0x%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_lock._entry_ptr.37 = internal global ptr @lgs8gxx_auto_lock._entry.35, section ".printk_index", align 4
@lgs8gxx_auto_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.38, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgs8gxx_auto_detect\00", [44 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_detect._entry_ptr = internal global ptr @lgs8gxx_auto_detect._entry, section ".printk_index", align 4
@lgs8gxx_auto_detect._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgs8gxx: GI 945 locked\0A\00", [38 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_detect._entry_ptr.41 = internal global ptr @lgs8gxx_auto_detect._entry.39, section ".printk_index", align 4
@lgs8gxx_auto_detect._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgs8gxx: GI 595 locked\0A\00", [38 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_detect._entry_ptr.44 = internal global ptr @lgs8gxx_auto_detect._entry.42, section ".printk_index", align 4
@lgs8gxx_auto_detect._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017lgs8gxx: GI 420 locked\0A\00", [38 x i8] zeroinitializer }, align 32
@lgs8gxx_auto_detect._entry_ptr.47 = internal global ptr @lgs8gxx_auto_detect._entry.45, section ".printk_index", align 4
@lgs8gxx_autolock_gi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgs8gxx: try GI 945\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgs8gxx_autolock_gi\00", [44 x i8] zeroinitializer }, align 32
@lgs8gxx_autolock_gi._entry_ptr = internal global ptr @lgs8gxx_autolock_gi._entry, section ".printk_index", align 4
@lgs8gxx_autolock_gi._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgs8gxx: try GI 595\0A\00", [41 x i8] zeroinitializer }, align 32
@lgs8gxx_autolock_gi._entry_ptr.52 = internal global ptr @lgs8gxx_autolock_gi._entry.50, section ".printk_index", align 4
@lgs8gxx_autolock_gi._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017lgs8gxx: try GI 420\0A\00", [41 x i8] zeroinitializer }, align 32
@lgs8gxx_autolock_gi._entry_ptr.55 = internal global ptr @lgs8gxx_autolock_gi._entry.53, section ".printk_index", align 4
@lgs8gxx_autolock_gi._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017lgs8gxx: auto detect finished\0A\00", [63 x i8] zeroinitializer }, align 32
@lgs8gxx_autolock_gi._entry_ptr.58 = internal global ptr @lgs8gxx_autolock_gi._entry.56, section ".printk_index", align 4
@lgs8gxx_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.59, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgs8gxx_read_status\00", [44 x i8] zeroinitializer }, align 32
@lgs8gxx_read_status._entry_ptr = internal global ptr @lgs8gxx_read_status._entry, section ".printk_index", align 4
@lgs8gxx_read_status._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017lgs8gxx: Reg 0x4B: 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@lgs8gxx_read_status._entry_ptr.62 = internal global ptr @lgs8gxx_read_status._entry.60, section ".printk_index", align 4
@lgs8gxx_read_status._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017lgs8gxx: %s: fe_status=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@lgs8gxx_read_status._entry_ptr.65 = internal global ptr @lgs8gxx_read_status._entry.63, section ".printk_index", align 4
@lgs8gxx_get_afc_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgs8gxx: AFC = %u kHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgs8gxx_get_afc_phase\00", [42 x i8] zeroinitializer }, align 32
@lgs8gxx_get_afc_phase._entry_ptr = internal global ptr @lgs8gxx_get_afc_phase._entry, section ".printk_index", align 4
@lgs8gxx_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.68, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgs8gxx_read_ber\00", [47 x i8] zeroinitializer }, align 32
@lgs8gxx_read_ber._entry_ptr = internal global ptr @lgs8gxx_read_ber._entry, section ".printk_index", align 4
@lgs8gxx_read_ber._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017lgs8gxx: error=%d total=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@lgs8gxx_read_ber._entry_ptr.71 = internal global ptr @lgs8gxx_read_ber._entry.69, section ".printk_index", align 4
@lgs8gxx_read_ber._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017lgs8gxx: %s: ber=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lgs8gxx_read_ber._entry_ptr.74 = internal global ptr @lgs8gxx_read_ber._entry.72, section ".printk_index", align 4
@lgs8913_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.75, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgs8913_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@lgs8913_read_signal_strength._entry_ptr = internal global ptr @lgs8913_read_signal_strength._entry, section ".printk_index", align 4
@lgs8913_read_signal_strength._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017lgs8gxx: Fake signal strength\0A\00", [63 x i8] zeroinitializer }, align 32
@lgs8913_read_signal_strength._entry_ptr.78 = internal global ptr @lgs8913_read_signal_strength._entry.76, section ".printk_index", align 4
@lgs8913_read_signal_strength._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017lgs8gxx: gi = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@lgs8913_read_signal_strength._entry_ptr.81 = internal global ptr @lgs8913_read_signal_strength._entry.79, section ".printk_index", align 4
@lgs8913_read_signal_strength._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017lgs8gxx: %s: signal=0x%02X\0A\00", [34 x i8] zeroinitializer }, align 32
@lgs8913_read_signal_strength._entry_ptr.84 = internal global ptr @lgs8913_read_signal_strength._entry.82, section ".printk_index", align 4
@lgs8913_read_signal_strength._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017lgs8gxx: %s: AVG Noise=0x%02X\0A\00", [63 x i8] zeroinitializer }, align 32
@lgs8913_read_signal_strength._entry_ptr.87 = internal global ptr @lgs8913_read_signal_strength._entry.85, section ".printk_index", align 4
@lgs8g75_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.88, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lgs8g75_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@lgs8g75_read_signal_strength._entry_ptr = internal global ptr @lgs8g75_read_signal_strength._entry, section ".printk_index", align 4
@lgs8g75_read_signal_strength._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.88, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgs8g75_read_signal_strength._entry_ptr.90 = internal global ptr @lgs8g75_read_signal_strength._entry.89, section ".printk_index", align 4
@lgs8gxx_read_signal_agc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.91, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lgs8gxx_read_signal_agc\00", [40 x i8] zeroinitializer }, align 32
@lgs8gxx_read_signal_agc._entry_ptr = internal global ptr @lgs8gxx_read_signal_agc._entry, section ".printk_index", align 4
@lgs8gxx_read_signal_agc._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017lgs8gxx: agc_lvl: 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@lgs8gxx_read_signal_agc._entry_ptr.94 = internal global ptr @lgs8gxx_read_signal_agc._entry.92, section ".printk_index", align 4
@lgs8gxx_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017lgs8gxx: AVG Noise=0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lgs8gxx_read_snr\00", [47 x i8] zeroinitializer }, align 32
@lgs8gxx_read_snr._entry_ptr = internal global ptr @lgs8gxx_read_snr._entry, section ".printk_index", align 4
@lgs8gxx_read_snr._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017lgs8gxx: snr=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@lgs8gxx_read_snr._entry_ptr.99 = internal global ptr @lgs8gxx_read_snr._entry.97, section ".printk_index", align 4
@lgs8gxx_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017lgs8gxx: %s: ucblocks=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgs8gxx_read_ucblocks\00", [42 x i8] zeroinitializer }, align 32
@lgs8gxx_read_ucblocks._entry_ptr = internal global ptr @lgs8gxx_read_ucblocks._entry, section ".printk_index", align 4
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lgs8g75.fw\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 26, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"fake_signal_str\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 27, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1010, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1024, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"lgs8gxx_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 974, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1041, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 81, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 87, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 643, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 617, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 620, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 51, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 56, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 156, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 159, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 161, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 664, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 477, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 479, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 405, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 454, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 456, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 458, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 366, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 368, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 370, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 391, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 718, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 734, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 750, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 200, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 928, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 950, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 957, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 796, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 804, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 811, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 824, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 827, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 837, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 846, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 759, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 767, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 873, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 876, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 884, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [41 x i8] c"../drivers/media/dvb-frontends/lgs8gxx.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 583, i32 29 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_fake_signal_str293, ptr @__UNIQUE_ID_fake_signal_strtype292, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_lgs8gxx_attach, ptr @__param_debug, ptr @__param_fake_signal_str, ptr @lgs8913_read_signal_strength._entry, ptr @lgs8913_read_signal_strength._entry.76, ptr @lgs8913_read_signal_strength._entry.79, ptr @lgs8913_read_signal_strength._entry.82, ptr @lgs8913_read_signal_strength._entry.85, ptr @lgs8913_read_signal_strength._entry_ptr, ptr @lgs8913_read_signal_strength._entry_ptr.78, ptr @lgs8913_read_signal_strength._entry_ptr.81, ptr @lgs8913_read_signal_strength._entry_ptr.84, ptr @lgs8913_read_signal_strength._entry_ptr.87, ptr @lgs8g75_read_signal_strength._entry, ptr @lgs8g75_read_signal_strength._entry.89, ptr @lgs8g75_read_signal_strength._entry_ptr, ptr @lgs8g75_read_signal_strength._entry_ptr.90, ptr @lgs8gxx_attach._entry, ptr @lgs8gxx_attach._entry.3, ptr @lgs8gxx_attach._entry.6, ptr @lgs8gxx_attach._entry_ptr, ptr @lgs8gxx_attach._entry_ptr.5, ptr @lgs8gxx_attach._entry_ptr.8, ptr @lgs8gxx_auto_detect._entry, ptr @lgs8gxx_auto_detect._entry.39, ptr @lgs8gxx_auto_detect._entry.42, ptr @lgs8gxx_auto_detect._entry.45, ptr @lgs8gxx_auto_detect._entry_ptr, ptr @lgs8gxx_auto_detect._entry_ptr.41, ptr @lgs8gxx_auto_detect._entry_ptr.44, ptr @lgs8gxx_auto_detect._entry_ptr.47, ptr @lgs8gxx_auto_lock._entry, ptr @lgs8gxx_auto_lock._entry.35, ptr @lgs8gxx_auto_lock._entry_ptr, ptr @lgs8gxx_auto_lock._entry_ptr.37, ptr @lgs8gxx_autolock_gi._entry, ptr @lgs8gxx_autolock_gi._entry.50, ptr @lgs8gxx_autolock_gi._entry.53, ptr @lgs8gxx_autolock_gi._entry.56, ptr @lgs8gxx_autolock_gi._entry_ptr, ptr @lgs8gxx_autolock_gi._entry_ptr.52, ptr @lgs8gxx_autolock_gi._entry_ptr.55, ptr @lgs8gxx_autolock_gi._entry_ptr.58, ptr @lgs8gxx_get_afc_phase._entry, ptr @lgs8gxx_get_afc_phase._entry_ptr, ptr @lgs8gxx_init._entry, ptr @lgs8gxx_init._entry.17, ptr @lgs8gxx_init._entry_ptr, ptr @lgs8gxx_init._entry_ptr.19, ptr @lgs8gxx_read_ber._entry, ptr @lgs8gxx_read_ber._entry.69, ptr @lgs8gxx_read_ber._entry.72, ptr @lgs8gxx_read_ber._entry_ptr, ptr @lgs8gxx_read_ber._entry_ptr.71, ptr @lgs8gxx_read_ber._entry_ptr.74, ptr @lgs8gxx_read_reg._entry, ptr @lgs8gxx_read_reg._entry.11, ptr @lgs8gxx_read_reg._entry_ptr, ptr @lgs8gxx_read_reg._entry_ptr.13, ptr @lgs8gxx_read_signal_agc._entry, ptr @lgs8gxx_read_signal_agc._entry.92, ptr @lgs8gxx_read_signal_agc._entry_ptr, ptr @lgs8gxx_read_signal_agc._entry_ptr.94, ptr @lgs8gxx_read_snr._entry, ptr @lgs8gxx_read_snr._entry.97, ptr @lgs8gxx_read_snr._entry_ptr, ptr @lgs8gxx_read_snr._entry_ptr.99, ptr @lgs8gxx_read_status._entry, ptr @lgs8gxx_read_status._entry.60, ptr @lgs8gxx_read_status._entry.63, ptr @lgs8gxx_read_status._entry_ptr, ptr @lgs8gxx_read_status._entry_ptr.62, ptr @lgs8gxx_read_status._entry_ptr.65, ptr @lgs8gxx_read_ucblocks._entry, ptr @lgs8gxx_read_ucblocks._entry_ptr, ptr @lgs8gxx_release._entry, ptr @lgs8gxx_release._entry_ptr, ptr @lgs8gxx_set_fe._entry, ptr @lgs8gxx_set_fe._entry_ptr, ptr @lgs8gxx_set_if_freq._entry, ptr @lgs8gxx_set_if_freq._entry.26, ptr @lgs8gxx_set_if_freq._entry.29, ptr @lgs8gxx_set_if_freq._entry_ptr, ptr @lgs8gxx_set_if_freq._entry_ptr.28, ptr @lgs8gxx_set_if_freq._entry_ptr.31, ptr @lgs8gxx_write_reg._entry, ptr @lgs8gxx_write_reg._entry.21, ptr @lgs8gxx_write_reg._entry_ptr, ptr @lgs8gxx_write_reg._entry_ptr.23, ptr @debug, ptr @fake_signal_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @lgs8gxx_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_signal_str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_reg._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_write_reg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_set_if_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_set_if_freq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_set_if_freq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_set_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_lock._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_detect._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_detect._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_auto_detect._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_autolock_gi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_autolock_gi._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_autolock_gi._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_autolock_gi._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_status._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_status._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_get_afc_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_ber._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_ber._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8913_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8913_read_signal_strength._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8913_read_signal_strength._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8913_read_signal_strength._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8913_read_signal_strength._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8g75_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8g75_read_signal_strength._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_signal_agc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_signal_agc._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_snr._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gxx_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lgs8gxx_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmp = icmp eq ptr %config, null
  %cmp4 = icmp eq ptr %i2c, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #11
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end6.do.body38_crit_edge, label %if.end10

if.end6.do.body38_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

if.end10:                                         ; preds = %if.end6
  %config11 = getelementptr inbounds %struct.lgs8gxx_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config11, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %call13 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end28, label %do.body16

do.body16:                                        ; preds = %if.end10
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %do.body16.do.end48_crit_edge, label %do.end21

do.body16.do.end48_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %config11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config11, align 4
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %demod_address, align 1
  %conv = zext i8 %8 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  br label %do.body38

if.end28:                                         ; preds = %if.end10
  %call29 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1, ptr noundef nonnull %data)
  %frontend = getelementptr inbounds %struct.lgs8gxx_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.lgs8gxx_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = call ptr @memcpy(ptr %ops, ptr @lgs8gxx_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.lgs8gxx_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp32 = icmp eq i8 %12, 6
  br i1 %cmp32, label %if.then34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !221
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.102, ptr noundef %dev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then34.lgs8g75_init_data.exit_crit_edge

if.then34.lgs8g75_init_data.exit_crit_edge:       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8g75_init_data.exit

if.end.i:                                         ; preds = %if.then34
  %call1.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -58, i8 noundef zeroext 64) #7
  %call2.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 61, i8 noundef zeroext 4) #7
  %call3.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 57, i8 noundef zeroext 0) #7
  %call4.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 58, i8 noundef zeroext 0) #7
  %call5.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 56, i8 noundef zeroext 0) #7
  %call6.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 59, i8 noundef zeroext 0) #7
  %call7.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 56, i8 noundef zeroext 0) #7
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i = icmp eq i32 %19, 0
  br i1 %cmp1.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call8.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 56, i8 noundef zeroext 0) #7
  %conv.i = trunc i32 %i.02.i to i8
  %call9.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 58, i8 noundef zeroext %conv.i) #7
  %20 = lshr i32 %i.02.i, 8
  %conv10.i = trunc i32 %20 to i8
  %call11.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 59, i8 noundef zeroext %conv10.i) #7
  %21 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %24, i32 %i.02.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %call12.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 60, i8 noundef zeroext %26) #7
  %inc.i = add nuw i32 %i.02.i, 1
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call13.i = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 56, i8 noundef zeroext 0) #7
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %32) #7
  br label %lgs8g75_init_data.exit

lgs8g75_init_data.exit:                           ; preds = %for.end.i, %if.then34.lgs8g75_init_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %cleanup

do.body38:                                        ; preds = %do.end21, %if.end6.do.body38_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool39.not = icmp eq i32 %.pr, 0
  br i1 %tobool39.not, label %do.body38.do.end48_crit_edge, label %do.end43

do.body38.do.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body38.do.end48_crit_edge, %do.body16.do.end48_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %lgs8g75_init_data.exit, %if.end28.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end48 ], [ null, %do.end3.cleanup_crit_edge ], [ %frontend, %lgs8g75_init_data.exit ], [ %frontend, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgs8gxx_read_reg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %p_data) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #7
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %9 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b1, ptr %buf5, align 4
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %demod_address, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp.not = icmp ne i8 %15, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %reg)
  %cmp10 = icmp ugt i8 %reg, -65
  %or.cond = and i1 %cmp10, %cmp.not
  %add = add i8 %13, 2
  %dev_addr.0 = select i1 %or.cond, i8 %add, i8 %13
  %conv14 = zext i8 %dev_addr.0 to i16
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %msg, align 4
  %17 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv14, ptr %arrayinit.element, align 4
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp19.not = icmp eq i32 %call, 2
  br i1 %cmp19.not, label %if.end29, label %do.body

do.body:                                          ; preds = %entry
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = zext i8 %reg to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv24, i32 noundef %call) #10
  br label %cleanup

if.end29:                                         ; preds = %entry
  %21 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1, align 1
  %23 = ptrtoint ptr %p_data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %p_data, align 1
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp31 = icmp sgt i32 %24, 1
  br i1 %cmp31, label %do.end39, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = zext i8 %reg to i32
  %conv43 = zext i8 %22 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %conv41, i32 noundef %conv43) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end29.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ 0, %do.end39 ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgs8gxx_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %t.i58 = alloca i8, align 1
  %t.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config1 = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data, align 1
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %data)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %do.end4.do.end16_crit_edge, label %do.end11

do.end4.do.end16_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %conv = zext i8 %8 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.end4.do.end16_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp = icmp eq i8 %10, 6
  br i1 %cmp, label %if.then19, label %do.end16.if.end21_crit_edge

do.end16.if.end21_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %do.end16
  %11 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 6
  br i1 %cmp.not.i, label %if.end.i, label %if.then19.if.end21_crit_edge

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %adc_vpp = getelementptr inbounds %struct.lgs8gxx_config, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %adc_vpp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %adc_vpp, align 4
  %and.i = shl i8 %16, 7
  %or.i = or i8 %and.i, 115
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = or i8 %18, -112
  %call.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 38, i8 noundef zeroext %or.i) #7
  %call10.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 39, i8 noundef zeroext %19) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end.i, %if.then19.if.end21_crit_edge, %do.end16.if.end21_crit_edge
  %serial_ts = getelementptr inbounds %struct.lgs8gxx_config, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %serial_ts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %serial_ts, align 2
  %ts_clk_pol = getelementptr inbounds %struct.lgs8gxx_config, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ts_clk_pol, align 1
  %ts_clk_gated = getelementptr inbounds %struct.lgs8gxx_config, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %ts_clk_gated to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ts_clk_gated, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i) #7
  %26 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %t.i, align 1, !annotation !221
  %27 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp.i = icmp eq i8 %30, 6
  %conv2.i = select i1 %cmp.i, i8 48, i8 -62
  %call.i55 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv2.i, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp3.not.i = icmp eq i32 %call.i55, 0
  br i1 %cmp3.not.i, label %lgs8gxx_set_mpeg_mode.exit, label %lgs8gxx_set_mpeg_mode.exit.thread

lgs8gxx_set_mpeg_mode.exit.thread:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  br label %cleanup

lgs8gxx_set_mpeg_mode.exit:                       ; preds = %if.end21
  %31 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %t.i, align 1
  %33 = and i8 %32, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  %cond8.i = zext i1 %tobool.not.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not.i = icmp eq i8 %23, 0
  %cond13.i = select i1 %tobool12.not.i, i8 0, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not.i = icmp eq i8 %25, 0
  %cond19.i = select i1 %tobool18.not.i, i8 4, i8 0
  %or.i56 = or i8 %cond13.i, %cond8.i
  %or15.i = or i8 %or.i56, %cond19.i
  %or21.i = or i8 %or15.i, %33
  %call23.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %conv2.i, i8 noundef zeroext %or21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.not.i.not = icmp eq i32 %call23.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  br i1 %cmp24.not.i.not, label %if.end28, label %lgs8gxx_set_mpeg_mode.exit.cleanup_crit_edge

lgs8gxx_set_mpeg_mode.exit.cleanup_crit_edge:     ; preds = %lgs8gxx_set_mpeg_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %lgs8gxx_set_mpeg_mode.exit
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp31 = icmp eq i8 %35, 0
  br i1 %cmp31, label %if.then33, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i58) #7
  %36 = ptrtoint ptr %t.i58 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %t.i58, align 1, !annotation !221
  %call.i59 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -63, i8 noundef zeroext 3) #7
  %call1.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 124, ptr noundef nonnull %t.i58) #7
  %37 = ptrtoint ptr %t.i58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %t.i58, align 1
  %39 = and i8 %38, -116
  %40 = or i8 %39, 3
  %call3.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 124, i8 noundef zeroext %40) #7
  %call4.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -61, ptr noundef nonnull %t.i58) #7
  %41 = ptrtoint ptr %t.i58 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %t.i58, align 1
  %43 = and i8 %42, 16
  %call8.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -61, i8 noundef zeroext %43) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i58) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28.if.end35_crit_edge
  %44 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config1, align 4
  %if_freq = getelementptr inbounds %struct.lgs8gxx_config, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %if_freq, align 4
  %if_clk_freq.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %if_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %if_clk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i61 = icmp eq i32 %47, 0
  br i1 %cmp.not.i61, label %if.else200.i, label %if.then.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp2.not.i = icmp eq i32 %49, 0
  br i1 %cmp2.not.i, label %if.then.i.if.end189.i_crit_edge, label %if.else183.i

if.then.i.if.end189.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189.i

if.else183.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %47 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %49, i64 %shl.i) #12, !srcloc !222
  %asmresult1.i.i = extractvalue { i64, i64 } %50, 1
  %extract.t32.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.else183.i, %if.then.i.if.end189.i_crit_edge
  %val.0.off0.i = phi i32 [ 0, %if.then.i.if.end189.i_crit_edge ], [ %extract.t32.i, %if.else183.i ]
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool192.not.i = icmp eq i32 %51, 0
  br i1 %tobool192.not.i, label %if.end189.i.lgs8gxx_set_if_freq.exit_crit_edge, label %do.end.i

if.end189.i.lgs8gxx_set_if_freq.exit_crit_edge:   ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_if_freq.exit

do.end.i:                                         ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  %call196.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %47) #10
  br label %do.body213.i

if.else200.i:                                     ; preds = %if.end35
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool202.not.i = icmp eq i32 %52, 0
  br i1 %tobool202.not.i, label %if.else200.i.lgs8gxx_set_if_freq.exit_crit_edge, label %do.end206.i

if.else200.i.lgs8gxx_set_if_freq.exit_crit_edge:  ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_if_freq.exit

do.end206.i:                                      ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #9
  %call208.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %do.body213.i

do.body213.i:                                     ; preds = %do.end206.i, %do.end.i
  %v32.0.ph.i = phi i32 [ 0, %do.end206.i ], [ %val.0.off0.i, %do.end.i ]
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool214.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool214.not.i, label %do.body213.i.lgs8gxx_set_if_freq.exit_crit_edge, label %do.end218.i

do.body213.i.lgs8gxx_set_if_freq.exit_crit_edge:  ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_if_freq.exit

do.end218.i:                                      ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #9
  %call220.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %v32.0.ph.i) #10
  br label %lgs8gxx_set_if_freq.exit

lgs8gxx_set_if_freq.exit:                         ; preds = %do.end218.i, %do.body213.i.lgs8gxx_set_if_freq.exit_crit_edge, %if.else200.i.lgs8gxx_set_if_freq.exit_crit_edge, %if.end189.i.lgs8gxx_set_if_freq.exit_crit_edge
  %v32.028.i = phi i32 [ %v32.0.ph.i, %do.end218.i ], [ %v32.0.ph.i, %do.body213.i.lgs8gxx_set_if_freq.exit_crit_edge ], [ 0, %if.else200.i.lgs8gxx_set_if_freq.exit_crit_edge ], [ %val.0.off0.i, %if.end189.i.lgs8gxx_set_if_freq.exit_crit_edge ]
  %53 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config1, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %56)
  %cmp226.i = icmp eq i8 %56, 6
  %conv230.i = trunc i32 %v32.028.i to i8
  %..i63 = select i1 %cmp226.i, i8 8, i8 9
  %.36.i = select i1 %cmp226.i, i8 9, i8 10
  %.37.i = select i1 %cmp226.i, i8 10, i8 11
  %.38.i = select i1 %cmp226.i, i8 11, i8 12
  %call247.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %..i63, i8 noundef zeroext %conv230.i) #7
  %shr248.i = lshr i32 %v32.028.i, 8
  %conv250.i = trunc i32 %shr248.i to i8
  %call251.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %.36.i, i8 noundef zeroext %conv250.i) #7
  %shr252.i = lshr i32 %v32.028.i, 16
  %conv254.i = trunc i32 %shr252.i to i8
  %call255.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %.37.i, i8 noundef zeroext %conv254.i) #7
  %shr256.i = lshr i32 %v32.028.i, 24
  %conv258.i = trunc i32 %shr256.i to i8
  %call259.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %.38.i, i8 noundef zeroext %conv258.i) #7
  %57 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config1, align 4
  %ext_adc.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %ext_adc.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ext_adc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i64 = icmp eq i8 %60, 0
  %if_neg_center.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %58, i32 0, i32 10
  %61 = ptrtoint ptr %if_neg_center.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %if_neg_center.i, align 1
  %if_freq.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %58, i32 0, i32 6
  %63 = ptrtoint ptr %if_freq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %if_freq.i, align 4
  %adc_signed.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %58, i32 0, i32 8
  %65 = ptrtoint ptr %adc_signed.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %adc_signed.i, align 1
  %if_neg_edge.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %58, i32 0, i32 9
  %67 = ptrtoint ptr %if_neg_edge.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %if_neg_edge.i, align 2
  br i1 %tobool.not.i64, label %lgs8gxx_set_if_freq.exit.lgs8gxx_set_ad_mode.exit_crit_edge, label %land.lhs.true.i65

lgs8gxx_set_if_freq.exit.lgs8gxx_set_ad_mode.exit_crit_edge: ; preds = %lgs8gxx_set_if_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_ad_mode.exit

land.lhs.true.i65:                                ; preds = %lgs8gxx_set_if_freq.exit
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp23.i = icmp eq i8 %70, 4
  br i1 %cmp23.i, label %if.then.i67, label %land.lhs.true.i65.lgs8gxx_set_ad_mode.exit_crit_edge

land.lhs.true.i65.lgs8gxx_set_ad_mode.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_ad_mode.exit

if.then.i67:                                      ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  %call.i66 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -70, i8 noundef zeroext 64) #7
  br label %lgs8gxx_set_ad_mode.exit

lgs8gxx_set_ad_mode.exit:                         ; preds = %if.then.i67, %land.lhs.true.i65.lgs8gxx_set_ad_mode.exit_crit_edge, %lgs8gxx_set_if_freq.exit.lgs8gxx_set_ad_mode.exit_crit_edge
  %cond.i = phi i8 [ -128, %if.then.i67 ], [ -128, %land.lhs.true.i65.lgs8gxx_set_ad_mode.exit_crit_edge ], [ 0, %lgs8gxx_set_if_freq.exit.lgs8gxx_set_ad_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool13.not.i = icmp ne i8 %68, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool9.not.i = icmp eq i8 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i68 = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not.i = icmp eq i8 %62, 0
  %cond6.i = select i1 %cmp.i68, i8 8, i8 0
  %cond10.i = select i1 %tobool9.not.i, i8 0, i8 2
  %cond14.i = zext i1 %tobool13.not.i to i8
  %or.i69 = select i1 %tobool3.not.i, i8 16, i8 20
  %or7.i = or i8 %cond6.i, %or.i69
  %or11.i = or i8 %or7.i, %cond10.i
  %or15.i70 = or i8 %or11.i, %cond14.i
  %or17.i = or i8 %or15.i70, %cond.i
  %call25.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %or17.i) #7
  br label %cleanup

cleanup:                                          ; preds = %lgs8gxx_set_ad_mode.exit, %lgs8gxx_set_mpeg_mode.exit.cleanup_crit_edge, %lgs8gxx_set_mpeg_mode.exit.thread
  %retval.0 = phi i32 [ 0, %lgs8gxx_set_ad_mode.exit ], [ -5, %lgs8gxx_set_mpeg_mode.exit.cleanup_crit_edge ], [ -5, %lgs8gxx_set_mpeg_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %call = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_set_fe(ptr noundef %fe) #0 align 64 {
entry:
  %t.i85.i = alloca i8, align 1
  %t2.i.i = alloca i8, align 1
  %t.i.i.i = alloca i8, align 1
  %locked.i.i = alloca i8, align 1
  %t.i.i = alloca i8, align 1
  %t.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.32) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.if.end17_crit_edge, label %if.then5

do.end3.if.end17_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then5:                                         ; preds = %do.end3
  %call9 = tail call i32 %4(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.then5.if.end17_crit_edge, label %if.then12

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 %6(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then5.if.end17_crit_edge, %do.end3.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked.i.i) #7
  %7 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %locked.i.i, align 1
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end17.do.end3.i.i_crit_edge, label %do.end.i.i

if.end17.do.end3.i.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #10
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end17.do.end3.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i.i.i) #7
  %9 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %t.i.i.i, align 1, !annotation !221
  %config.i.i.i = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %do.end3.i.i.if.end63.i.i.i_crit_edge [
    i8 0, label %if.end.thread.i.i.i
    i8 6, label %if.then6.i.i.i
    i8 5, label %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge
    i8 4, label %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge32
    i8 3, label %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge33
    i8 1, label %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge34
  ]

do.end3.i.i.if.end63.critedge.i.i.i_crit_edge34:  ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.critedge.i.i.i

do.end3.i.i.if.end63.critedge.i.i.i_crit_edge33:  ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.critedge.i.i.i

do.end3.i.i.if.end63.critedge.i.i.i_crit_edge32:  ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.critedge.i.i.i

do.end3.i.i.if.end63.critedge.i.i.i_crit_edge:    ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.critedge.i.i.i

do.end3.i.i.if.end63.i.i.i_crit_edge:             ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i.i.i

if.end.thread.i.i.i:                              ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -58, i8 noundef zeroext 1) #7
  %call34.c4.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 126, ptr noundef nonnull %t.i.i.i) #7
  %15 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %t.i.i.i, align 1
  %17 = or i8 %16, 1
  %call38.c5.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 126, i8 noundef zeroext %17) #7
  %call39.c6.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -59, ptr noundef nonnull %t.i.i.i) #7
  %18 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %t.i.i.i, align 1
  %20 = and i8 %19, -32
  %call43.c7.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -59, i8 noundef zeroext %20) #7
  %call50.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -63, i8 noundef zeroext 3) #7
  %call51.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 124, ptr noundef nonnull %t.i.i.i) #7
  %21 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %t.i.i.i, align 1
  %23 = and i8 %22, -116
  %24 = or i8 %23, 3
  store i8 %24, ptr %t.i.i.i, align 1
  %call56.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 124, i8 noundef zeroext %24) #7
  %call57.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -61, ptr noundef nonnull %t.i.i.i) #7
  %25 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %t.i.i.i, align 1
  %27 = or i8 %26, 16
  %call62.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -61, i8 noundef zeroext %27) #7
  br label %if.end63.i.i.i

if.then6.i.i.i:                                   ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %t.i.i.i) #7
  %28 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %t.i.i.i, align 1
  %30 = and i8 %29, 123
  %31 = or i8 %30, -128
  %call12.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %31) #7
  %call13.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 0) #7
  %call14.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 4) #7
  br label %if.end63.i.i.i

if.end63.critedge.i.i.i:                          ; preds = %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge, %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge32, %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge33, %do.end3.i.i.if.end63.critedge.i.i.i_crit_edge34
  %call34.c.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 126, ptr noundef nonnull %t.i.i.i) #7
  %32 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %t.i.i.i, align 1
  %34 = or i8 %33, 1
  %call38.c.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 126, i8 noundef zeroext %34) #7
  %call39.c.i.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -59, ptr noundef nonnull %t.i.i.i) #7
  %35 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %t.i.i.i, align 1
  %37 = and i8 %36, -32
  %call43.c.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -59, i8 noundef zeroext %37) #7
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.end63.critedge.i.i.i, %if.then6.i.i.i, %if.end.thread.i.i.i, %do.end3.i.i.if.end63.i.i.i_crit_edge
  %38 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %cmp67.i.i.i = icmp eq i8 %41, 4
  br i1 %cmp67.i.i.i, label %if.then69.i.i.i, label %if.end63.i.i.i.lgs8gxx_set_mode_auto.exit.i.i_crit_edge

if.end63.i.i.i.lgs8gxx_set_mode_auto.exit.i.i_crit_edge: ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_set_mode_auto.exit.i.i

if.then69.i.i.i:                                  ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call70.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -39, i8 noundef zeroext 64) #7
  br label %lgs8gxx_set_mode_auto.exit.i.i

lgs8gxx_set_mode_auto.exit.i.i:                   ; preds = %if.then69.i.i.i, %if.end63.i.i.i.lgs8gxx_set_mode_auto.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i.i) #7
  %42 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %45)
  %cmp.i.i = icmp eq i8 %45, 6
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %lgs8gxx_set_mode_auto.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 103, i8 noundef zeroext -86) #7
  %call8.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 110, i8 noundef zeroext 63) #7
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %lgs8gxx_set_mode_auto.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then6.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %locked.i.i) #7
  %46 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool22.not.i.i, label %for.cond13.i.i, label %if.end10.i.i.land.lhs.true.i.i_crit_edge

if.end10.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond.i.i:                                     ; preds = %for.cond25.1.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %locked.i.i) #7
  %48 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool22.not.1164.i.i = icmp eq i8 %49, 0
  br i1 %tobool22.not.1164.i.i, label %for.cond13.1165.i.i, label %for.cond.i.i.land.lhs.true.i.i_crit_edge

for.cond.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond13.1165.i.i:                              ; preds = %for.cond.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %50 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool22.not.1.1.i.i = icmp eq i8 %51, 0
  br i1 %tobool22.not.1.1.i.i, label %for.cond13.1.1.i.i, label %for.cond13.1165.i.i.land.lhs.true.i.i_crit_edge

for.cond13.1165.i.i.land.lhs.true.i.i_crit_edge:  ; preds = %for.cond13.1165.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond13.1.1.i.i:                               ; preds = %for.cond13.1165.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %locked.i.i) #7
  %52 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool34.not.1166.i.i = icmp eq i8 %53, 0
  br i1 %tobool34.not.1166.i.i, label %for.cond25.1167.i.i, label %for.cond13.1.1.i.i.land.lhs.true.i.i_crit_edge

for.cond13.1.1.i.i.land.lhs.true.i.i_crit_edge:   ; preds = %for.cond13.1.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond25.1167.i.i:                              ; preds = %for.cond13.1.1.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %54 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool34.not.1.1.i.i = icmp eq i8 %55, 0
  br i1 %tobool34.not.1.1.i.i, label %for.cond25.1.1.i.i, label %for.cond25.1167.i.i.land.lhs.true.i.i_crit_edge

for.cond25.1167.i.i.land.lhs.true.i.i_crit_edge:  ; preds = %for.cond25.1167.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond25.1.1.i.i:                               ; preds = %for.cond25.1167.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %56 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %locked.i.i, align 1
  br label %land.lhs.true.i.i

for.cond13.i.i:                                   ; preds = %if.end10.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %58 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool22.not.1.i.i = icmp eq i8 %59, 0
  br i1 %tobool22.not.1.i.i, label %for.cond13.1.i.i, label %for.cond13.i.i.land.lhs.true.i.i_crit_edge

for.cond13.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond13.1.i.i:                                 ; preds = %for.cond13.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %locked.i.i) #7
  %60 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool34.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool34.not.i.i, label %for.cond25.i.i, label %for.cond13.1.i.i.land.lhs.true.i.i_crit_edge

for.cond13.1.i.i.land.lhs.true.i.i_crit_edge:     ; preds = %for.cond13.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond25.i.i:                                   ; preds = %for.cond13.1.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %62 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool34.not.1.i.i = icmp eq i8 %63, 0
  br i1 %tobool34.not.1.i.i, label %for.cond25.1.i.i, label %for.cond25.i.i.land.lhs.true.i.i_crit_edge

for.cond25.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %for.cond25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.cond25.1.i.i:                                 ; preds = %for.cond25.i.i
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %locked.i.i) #7
  %64 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %locked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool44.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool44.not.i.i, label %for.cond.i.i, label %for.cond25.1.i.i.land.lhs.true.i.i_crit_edge

for.cond25.1.i.i.land.lhs.true.i.i_crit_edge:     ; preds = %for.cond25.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.cond25.1.i.i.land.lhs.true.i.i_crit_edge, %for.cond25.i.i.land.lhs.true.i.i_crit_edge, %for.cond13.1.i.i.land.lhs.true.i.i_crit_edge, %for.cond13.i.i.land.lhs.true.i.i_crit_edge, %for.cond25.1.1.i.i, %for.cond25.1167.i.i.land.lhs.true.i.i_crit_edge, %for.cond13.1.1.i.i.land.lhs.true.i.i_crit_edge, %for.cond13.1165.i.i.land.lhs.true.i.i_crit_edge, %for.cond.i.i.land.lhs.true.i.i_crit_edge, %if.end10.i.i.land.lhs.true.i.i_crit_edge
  %66 = phi i8 [ %61, %for.cond13.1.i.i.land.lhs.true.i.i_crit_edge ], [ %63, %for.cond25.i.i.land.lhs.true.i.i_crit_edge ], [ %53, %for.cond13.1.1.i.i.land.lhs.true.i.i_crit_edge ], [ %55, %for.cond25.1167.i.i.land.lhs.true.i.i_crit_edge ], [ %47, %if.end10.i.i.land.lhs.true.i.i_crit_edge ], [ %59, %for.cond13.i.i.land.lhs.true.i.i_crit_edge ], [ %49, %for.cond.i.i.land.lhs.true.i.i_crit_edge ], [ %51, %for.cond13.1165.i.i.land.lhs.true.i.i_crit_edge ], [ %65, %for.cond25.1.i.i.land.lhs.true.i.i_crit_edge ], [ %57, %for.cond25.1.1.i.i ]
  %tmp_gi.1.i.i = phi i8 [ 0, %for.cond13.1.i.i.land.lhs.true.i.i_crit_edge ], [ 0, %for.cond25.i.i.land.lhs.true.i.i_crit_edge ], [ 0, %for.cond13.1.1.i.i.land.lhs.true.i.i_crit_edge ], [ 0, %for.cond25.1167.i.i.land.lhs.true.i.i_crit_edge ], [ 2, %if.end10.i.i.land.lhs.true.i.i_crit_edge ], [ 2, %for.cond13.i.i.land.lhs.true.i.i_crit_edge ], [ 2, %for.cond.i.i.land.lhs.true.i.i_crit_edge ], [ 2, %for.cond13.1165.i.i.land.lhs.true.i.i_crit_edge ], [ 1, %for.cond25.1.i.i.land.lhs.true.i.i_crit_edge ], [ 1, %for.cond25.1.1.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp54.i.i = icmp eq i8 %66, 1
  br i1 %cmp54.i.i, label %if.then56.i.i, label %lgs8gxx_auto_detect.exit.i

if.then56.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i.i) #7
  %67 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %t.i.i, align 1, !annotation !221
  %68 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %71)
  %cmp60.not.i.i = icmp eq i8 %71, 6
  br i1 %cmp60.not.i.i, label %if.else64.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call63.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -94, ptr noundef nonnull %t.i.i) #7
  %72 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %t.i.i, align 1
  br label %if.end68.i.i

if.else64.i.i:                                    ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 31, ptr noundef nonnull %t.i.i) #7
  %74 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %t.i.i, align 1
  %76 = and i8 %75, 63
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else64.i.i, %if.then62.i.i
  %storemerge.i.i = phi i8 [ %76, %if.else64.i.i ], [ %73, %if.then62.i.i ]
  %trunc.i.i = trunc i8 %tmp_gi.1.i.i to i2
  %77 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.103)
  switch i2 %trunc.i.i, label %if.end68.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge [
    i2 -2, label %do.body73.i.i
    i2 1, label %do.body89.i.i
    i2 0, label %do.body105.i.i
  ]

if.end68.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge: ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_auto_detect.exit.thread.i

do.body73.i.i:                                    ; preds = %if.end68.i.i
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool74.not.i.i = icmp eq i32 %78, 0
  br i1 %tobool74.not.i.i, label %do.body73.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, label %do.body73.i.i.if.end118.sink.split.i.i_crit_edge

do.body73.i.i.if.end118.sink.split.i.i_crit_edge: ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.sink.split.i.i

do.body73.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge: ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_auto_detect.exit.thread.i

do.body89.i.i:                                    ; preds = %if.end68.i.i
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool90.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool90.not.i.i, label %do.body89.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, label %do.body89.i.i.if.end118.sink.split.i.i_crit_edge

do.body89.i.i.if.end118.sink.split.i.i_crit_edge: ; preds = %do.body89.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.sink.split.i.i

do.body89.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge: ; preds = %do.body89.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_auto_detect.exit.thread.i

do.body105.i.i:                                   ; preds = %if.end68.i.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool106.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool106.not.i.i, label %do.body105.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, label %do.body105.i.i.if.end118.sink.split.i.i_crit_edge

do.body105.i.i.if.end118.sink.split.i.i_crit_edge: ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.sink.split.i.i

do.body105.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge: ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_auto_detect.exit.thread.i

if.end118.sink.split.i.i:                         ; preds = %do.body105.i.i.if.end118.sink.split.i.i_crit_edge, %do.body89.i.i.if.end118.sink.split.i.i_crit_edge, %do.body73.i.i.if.end118.sink.split.i.i_crit_edge
  %.str.43.sink.i.i = phi ptr [ @.str.40, %do.body73.i.i.if.end118.sink.split.i.i_crit_edge ], [ @.str.43, %do.body89.i.i.if.end118.sink.split.i.i_crit_edge ], [ @.str.46, %do.body105.i.i.if.end118.sink.split.i.i_crit_edge ]
  %call96.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink.i.i) #10
  br label %lgs8gxx_auto_detect.exit.thread.i

lgs8gxx_auto_detect.exit.thread.i:                ; preds = %if.end118.sink.split.i.i, %do.body105.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, %do.body89.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, %do.body73.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge, %if.end68.i.i.lgs8gxx_auto_detect.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked.i.i) #7
  br label %do.body8.i

lgs8gxx_auto_detect.exit.i:                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool120.not.i.not.i = icmp eq i8 %66, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked.i.i) #7
  br i1 %tobool120.not.i.not.i, label %do.body.i, label %lgs8gxx_auto_detect.exit.i.do.body8.i_crit_edge

lgs8gxx_auto_detect.exit.i.do.body8.i_crit_edge:  ; preds = %lgs8gxx_auto_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8.i

do.body.i:                                        ; preds = %lgs8gxx_auto_detect.exit.i
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %do.body.i.if.end20.i_crit_edge, label %do.end.i

do.body.i.if.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %if.end20.i

do.body8.i:                                       ; preds = %lgs8gxx_auto_detect.exit.i.do.body8.i_crit_edge, %lgs8gxx_auto_detect.exit.thread.i
  %detected_param.0105.i = phi i8 [ %storemerge.i.i, %lgs8gxx_auto_detect.exit.thread.i ], [ 0, %lgs8gxx_auto_detect.exit.i.do.body8.i_crit_edge ]
  %gi.0103.i = phi i8 [ %tmp_gi.1.i.i, %lgs8gxx_auto_detect.exit.thread.i ], [ 2, %lgs8gxx_auto_detect.exit.i.do.body8.i_crit_edge ]
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool9.not.i = icmp eq i32 %82, 0
  br i1 %tobool9.not.i, label %do.body8.i.if.end20.i_crit_edge, label %do.end13.i

do.body8.i.if.end20.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv15.i = zext i8 %detected_param.0105.i to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv15.i) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end13.i, %do.body8.i.if.end20.i_crit_edge, %do.end.i, %do.body.i.if.end20.i_crit_edge
  %detected_param.0104.i = phi i8 [ %detected_param.0105.i, %do.body8.i.if.end20.i_crit_edge ], [ %detected_param.0105.i, %do.end13.i ], [ 0, %do.body.i.if.end20.i_crit_edge ], [ 0, %do.end.i ]
  %gi.0102.i = phi i8 [ %gi.0103.i, %do.body8.i.if.end20.i_crit_edge ], [ %gi.0103.i, %do.end13.i ], [ 2, %do.body.i.if.end20.i_crit_edge ], [ 2, %do.end.i ]
  %83 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 4
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %86, label %if.end20.i.if.else53.i_crit_edge [
    i8 0, label %if.end37.thread.i
    i8 6, label %if.then43.i
  ]

if.end20.i.if.else53.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else53.i

if.end37.thread.i:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = and i8 %detected_param.0104.i, -65
  %or84.i = xor i8 %88, 96
  br label %if.else53.i

if.then43.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i) #7
  %89 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %t.i, align 1, !annotation !221
  %call44.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 25, ptr noundef nonnull %t.i) #7
  %90 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %t.i, align 1
  %92 = and i8 %91, -127
  %shl.i = shl i8 %detected_param.0104.i, 1
  %or50.i = or i8 %92, %shl.i
  %call52.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 25, i8 noundef zeroext %or50.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  br label %if.end63.i

if.else53.i:                                      ; preds = %if.end37.thread.i, %if.end20.i.if.else53.i_crit_edge
  %detected_param.1108.i = phi i8 [ %or84.i, %if.end37.thread.i ], [ %detected_param.0104.i, %if.end20.i.if.else53.i_crit_edge ]
  %call54.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 125, i8 noundef zeroext %detected_param.1108.i) #7
  %93 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp58.i = icmp eq i8 %96, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.else53.i.if.end63.i_crit_edge

if.else53.i.if.end63.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then60.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -64, i8 noundef zeroext %detected_param.1108.i) #7
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.else53.i.if.end63.i_crit_edge, %if.then43.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i85.i) #7
  %97 = ptrtoint ptr %t.i85.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %t.i85.i, align 1, !annotation !221
  %98 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config.i.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %101)
  %cmp.i86.i = icmp eq i8 %101, 6
  br i1 %cmp.i86.i, label %if.then.i.i, label %if.end24.i.i

if.then.i.i:                                      ; preds = %if.end63.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t2.i.i) #7
  %102 = ptrtoint ptr %t2.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %t2.i.i, align 1, !annotation !221
  %call.i87.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %t.i85.i) #7
  %103 = ptrtoint ptr %t.i85.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %t.i85.i, align 1
  %105 = and i8 %104, 127
  store i8 %105, ptr %t.i85.i, align 1
  %call4.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %105) #7
  %call5.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 12, ptr noundef nonnull %t.i85.i) #7
  %call6.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 25, ptr noundef nonnull %t2.i.i) #7
  %106 = ptrtoint ptr %t.i85.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %t.i85.i, align 1
  %108 = and i8 %107, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp9.i.i = icmp eq i8 %108, 1
  br i1 %cmp9.i.i, label %land.lhs.true.i89.i, label %if.then.i.i.if.else.i90.i_crit_edge

if.then.i.i.if.else.i90.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i90.i

land.lhs.true.i89.i:                              ; preds = %if.then.i.i
  %109 = ptrtoint ptr %t2.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %t2.i.i, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i88.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i88.i, label %land.lhs.true.i89.i.if.else.i90.i_crit_edge, label %if.then13.i.i

land.lhs.true.i89.i.if.else.i90.i_crit_edge:      ; preds = %land.lhs.true.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i90.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 110, i8 noundef zeroext 5) #7
  %call15.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 2) #7
  %call16.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 3) #7
  %call17.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 5) #7
  %call18.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 62, i8 noundef zeroext 40) #7
  %call19.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 83, i8 noundef zeroext -128) #7
  br label %if.end.i.i

if.else.i90.i:                                    ; preds = %land.lhs.true.i89.i.if.else.i90.i_crit_edge, %if.then.i.i.if.else.i90.i_crit_edge
  %call20.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 110, i8 noundef zeroext 63) #7
  %call21.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 0) #7
  %call22.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 4) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i90.i, %if.then13.i.i
  %call.i.i91.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  tail call void @msleep(i32 noundef 1) #7
  %call1.i.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1) #7
  tail call void @msleep(i32 noundef 100) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t2.i.i) #7
  br label %lgs8gxx_auto_lock.exit

if.end24.i.i:                                     ; preds = %if.end63.i
  %call25.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 126, i8 noundef zeroext 0) #7
  %112 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp29.i.i = icmp eq i8 %115, 0
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end24.i.i.if.end33.i.i_crit_edge

if.end24.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

if.then31.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -63, i8 noundef zeroext 0) #7
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then31.i.i, %if.end24.i.i.if.end33.i.i_crit_edge
  %call34.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -59, ptr noundef nonnull %t.i85.i) #7
  %116 = ptrtoint ptr %t.i85.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %t.i85.i, align 1
  %118 = and i8 %117, -32
  %119 = or i8 %118, 6
  %call38.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -59, i8 noundef zeroext %119) #7
  %call.i1.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  tail call void @msleep(i32 noundef 1) #7
  %call1.i2.i.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 1) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %lgs8gxx_auto_lock.exit

lgs8gxx_auto_lock.exit:                           ; preds = %if.end33.i.i, %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i85.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %gi.0102.i)
  %switch.selectcmp.i = icmp eq i8 %gi.0102.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 595, i16 945
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %gi.0102.i)
  %switch.selectcmp109.i = icmp eq i8 %gi.0102.i, 0
  %switch.select110.i = select i1 %switch.selectcmp109.i, i16 420, i16 %switch.select.i
  %curr_gi70.i = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 3
  %120 = ptrtoint ptr %curr_gi70.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %switch.select110.i, ptr %curr_gi70.i, align 4
  tail call void @msleep(i32 noundef 10) #7
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %121 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 8000000, ptr %bandwidth_hz, align 4
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %122 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 9, ptr %code_rate_HP, align 4
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %123 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 9, ptr %code_rate_LP, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %124 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 6, ptr %modulation, align 4
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %125 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2, ptr %transmission_mode, align 4
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %126 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4, ptr %guard_interval, align 4
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %127 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %hierarchy, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gxx_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_status) #0 align 64 {
entry:
  %t.i82 = alloca i8, align 1
  %t.i = alloca i8, align 1
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #7
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %t, align 1, !annotation !221
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.59) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fe_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i) #7
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %t.i, align 1, !annotation !221
  %config.i = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp.i = icmp eq i8 %9, 6
  %..i = select i1 %cmp.i, i8 35, i8 72
  %call.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %..i, ptr noundef nonnull %t.i) #7
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %t.i, align 1
  %dec.i = add nsw i8 %..i, -1
  %call.1.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %dec.i, ptr noundef nonnull %t.i) #7
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %t.i, align 1
  %dec.1.i = add nsw i8 %..i, -2
  %call.2.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %dec.1.i, ptr noundef nonnull %t.i) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %t.i, align 1
  %dec.2.i = add nsw i8 %..i, -3
  %call.3.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %dec.2.i, ptr noundef nonnull %t.i) #7
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.end3.lgs8gxx_get_afc_phase.exit_crit_edge, label %do.end.i

do.end3.lgs8gxx_get_afc_phase.exit_crit_edge:     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_get_afc_phase.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i8 %11 to i32
  %17 = shl nuw nsw i32 %conv4.i, 16
  %conv4.1.i = zext i8 %13 to i32
  %18 = shl nuw nsw i32 %conv4.1.i, 8
  %shl.2.i = or i32 %18, %17
  %conv4.2.i = zext i8 %15 to i32
  %or.2.i = or i32 %shl.2.i, %conv4.2.i
  %shl.3.i = shl nuw i32 %or.2.i, 8
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %t.i, align 1
  %conv4.3.i = zext i8 %20 to i32
  %or.3.i = or i32 %shl.3.i, %conv4.3.i
  %conv5.i = zext i32 %or.3.i to i64
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %if_clk_freq.i = getelementptr inbounds %struct.lgs8gxx_config, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %if_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %if_clk_freq.i, align 4
  %conv7.i = zext i32 %24 to i64
  %mul.i = mul nuw i64 %conv7.i, %conv5.i
  %shr.i = lshr i64 %mul.i, 32
  %conv10.i = trunc i64 %shr.i to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv10.i) #10
  br label %lgs8gxx_get_afc_phase.exit

lgs8gxx_get_afc_phase.exit:                       ; preds = %do.end.i, %do.end3.lgs8gxx_get_afc_phase.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i82) #7
  %25 = ptrtoint ptr %t.i82 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %t.i82, align 1, !annotation !221
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp.i84 = icmp eq i8 %29, 6
  %..i85 = select i1 %cmp.i84, i8 19, i8 75
  %call2.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %..i85, ptr noundef nonnull %t.i82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %lgs8gxx_is_locked.exit, label %lgs8gxx_is_locked.exit.thread

lgs8gxx_is_locked.exit:                           ; preds = %lgs8gxx_get_afc_phase.exit
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %34 = ptrtoint ptr %t.i82 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %t.i82, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i82) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %33)
  %cmp = icmp eq i8 %33, 6
  br i1 %cmp, label %if.then7, label %lgs8gxx_is_locked.exit.if.end11_crit_edge

lgs8gxx_is_locked.exit.if.end11_crit_edge:        ; preds = %lgs8gxx_is_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lgs8gxx_is_locked.exit.thread:                    ; preds = %lgs8gxx_get_afc_phase.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i82) #7
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %cmp87 = icmp eq i8 %39, 6
  br i1 %cmp87, label %lgs8gxx_is_locked.exit.thread.cleanup_crit_edge, label %lgs8gxx_is_locked.exit.thread.if.end11_crit_edge

lgs8gxx_is_locked.exit.thread.if.end11_crit_edge: ; preds = %lgs8gxx_is_locked.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

lgs8gxx_is_locked.exit.thread.cleanup_crit_edge:  ; preds = %lgs8gxx_is_locked.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %lgs8gxx_is_locked.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool8.not = icmp sgt i8 %35, -1
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fe_status, align 4
  %or = or i32 %41, 31
  store i32 %or, ptr %fe_status, align 4
  br label %cleanup

if.end11:                                         ; preds = %lgs8gxx_is_locked.exit.thread.if.end11_crit_edge, %lgs8gxx_is_locked.exit.if.end11_crit_edge
  %call12 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 75, ptr noundef nonnull %t)
  %sext.mask = and i32 %call12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp15.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp15.not, label %do.body19, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %if.end11
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not = icmp eq i32 %42, 0
  br i1 %tobool20.not, label %do.body19.do.end30_crit_edge, label %do.end24

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end24:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %t, align 1
  %conv26 = zext i8 %44 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv26) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end24, %do.body19.do.end30_crit_edge
  %45 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %fe_status, align 4
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp34 = icmp eq i8 %49, 0
  %50 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %t, align 1
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %do.end30
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp38.not = icmp eq i8 %52, 0
  br i1 %cmp38.not, label %if.then36.if.end42_crit_edge, label %if.then40

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %fe_status, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then36.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp45 = icmp slt i8 %51, 0
  br i1 %cmp45, label %if.then47, label %if.end42.do.body58_crit_edge

if.end42.do.body58_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fe_status, align 4
  %or48 = or i32 %55, 28
  br label %do.body58.sink.split

if.else:                                          ; preds = %do.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp52 = icmp slt i8 %51, 0
  br i1 %cmp52, label %if.else.do.body58.sink.split_crit_edge, label %if.else.do.body58_crit_edge

if.else.do.body58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.else.do.body58.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.sink.split

do.body58.sink.split:                             ; preds = %if.else.do.body58.sink.split_crit_edge, %if.then47
  %or48.sink = phi i32 [ %or48, %if.then47 ], [ 31, %if.else.do.body58.sink.split_crit_edge ]
  %56 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or48.sink, ptr %fe_status, align 4
  br label %do.body58

do.body58:                                        ; preds = %do.body58.sink.split, %if.else.do.body58_crit_edge, %if.end42.do.body58_crit_edge
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool59.not = icmp eq i32 %57, 0
  br i1 %tobool59.not, label %do.body58.cleanup_crit_edge, label %do.end63

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fe_status, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef %59) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.body58.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.then7.cleanup_crit_edge, %lgs8gxx_is_locked.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then7.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ 0, %do.end63 ], [ 0, %do.body58.cleanup_crit_edge ], [ 0, %lgs8gxx_is_locked.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  %t.i = alloca i8, align 1
  %orig.i = alloca i8, align 1
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #7
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %t, align 1, !annotation !221
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.68) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %orig.i) #7
  %4 = ptrtoint ptr %orig.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %orig.i, align 1, !annotation !221
  %config.i = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp.i = icmp eq i8 %8, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 48, ptr noundef nonnull %orig.i) #7
  %9 = ptrtoint ptr %orig.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %orig.i, align 1
  %11 = and i8 %10, -25
  %12 = or i8 %11, 16
  %call6.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %12) #7
  %13 = or i8 %10, 24
  %call10.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %13) #7
  %call14.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %12) #7
  br label %packet_counter_start.exit

if.else.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -58, i8 noundef zeroext 1) #7
  %call16.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -58, i8 noundef zeroext 65) #7
  %call17.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -58, i8 noundef zeroext 1) #7
  br label %packet_counter_start.exit

packet_counter_start.exit:                        ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %orig.i) #7
  tail call void @msleep(i32 noundef 200) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %t.i, align 1, !annotation !221
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp.i75 = icmp eq i8 %18, 6
  br i1 %cmp.i75, label %if.then.i77, label %if.else.i78

if.then.i77:                                      ; preds = %packet_counter_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i76 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 48, ptr noundef nonnull %t.i) #7
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %t.i, align 1
  %21 = and i8 %20, -25
  %call4.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext %21) #7
  br label %packet_counter_stop.exit

if.else.i78:                                      ; preds = %packet_counter_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -58, i8 noundef zeroext -127) #7
  br label %packet_counter_stop.exit

packet_counter_stop.exit:                         ; preds = %if.else.i78, %if.then.i77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %cmp = icmp eq i8 %25, 6
  %. = select i1 %cmp, i32 43, i32 211
  %conv10 = trunc i32 %. to i8
  %call11 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv10, ptr noundef nonnull %t)
  %26 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %t, align 1
  %conv12 = zext i8 %27 to i32
  %28 = trunc i32 %. to i8
  %conv10.1 = add nsw i8 %28, -1
  %call11.1 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv10.1, ptr noundef nonnull %t)
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %t, align 1
  %conv12.1 = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %conv12, 16
  %32 = shl nuw nsw i32 %conv12.1, 8
  %shl.2 = or i32 %31, %32
  %33 = trunc i32 %. to i8
  %conv10.2 = add nsw i8 %33, -2
  %call11.2 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv10.2, ptr noundef nonnull %t)
  %34 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %t, align 1
  %conv12.2 = zext i8 %35 to i32
  %or.2 = or i32 %shl.2, %conv12.2
  %36 = trunc i32 %. to i8
  %conv10.3 = add nsw i8 %36, -3
  %call11.3 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv10.3, ptr noundef nonnull %t)
  %37 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %t, align 1
  %conv12.3 = zext i8 %38 to i32
  %.73 = select i1 %cmp, i32 47, i32 215
  %conv21 = trunc i32 %.73 to i8
  %call22 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv21, ptr noundef nonnull %t)
  %39 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %t, align 1
  %conv23 = zext i8 %40 to i32
  %41 = trunc i32 %.73 to i8
  %conv21.1 = add nsw i8 %41, -1
  %call22.1 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv21.1, ptr noundef nonnull %t)
  %42 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %t, align 1
  %conv23.1 = zext i8 %43 to i32
  %44 = shl nuw nsw i32 %conv23, 16
  %45 = shl nuw nsw i32 %conv23.1, 8
  %shl17.2 = or i32 %44, %45
  %46 = trunc i32 %.73 to i8
  %conv21.2 = add nsw i8 %46, -2
  %call22.2 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv21.2, ptr noundef nonnull %t)
  %47 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %t, align 1
  %conv23.2 = zext i8 %48 to i32
  %or24.2 = or i32 %shl17.2, %conv23.2
  %shl17.3 = shl nuw i32 %or24.2, 8
  %49 = trunc i32 %.73 to i8
  %conv21.3 = add nsw i8 %49, -3
  %call22.3 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %conv21.3, ptr noundef nonnull %t)
  %50 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %t, align 1
  %conv23.3 = zext i8 %51 to i32
  %or24.3 = or i32 %shl17.3, %conv23.3
  %shl.3 = shl nuw i32 %or.2, 8
  %or.3 = or i32 %shl.3, %conv12.3
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool29.not = icmp eq i32 %52, 0
  br i1 %tobool29.not, label %packet_counter_stop.exit.do.end38_crit_edge, label %do.end33

packet_counter_stop.exit.do.end38_crit_edge:      ; preds = %packet_counter_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end33:                                         ; preds = %packet_counter_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %or24.3, i32 noundef %or.3) #10
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %packet_counter_stop.exit.do.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3)
  %cmp39 = icmp eq i32 %or.3, 0
  br i1 %cmp39, label %do.end38.do.body44_crit_edge, label %if.else42

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

if.else42:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %or24.3, 100
  %div = udiv i32 %mul, %or.3
  br label %do.body44

do.body44:                                        ; preds = %if.else42, %do.end38.do.body44_crit_edge
  %storemerge = phi i32 [ %div, %if.else42 ], [ 0, %do.end38.do.body44_crit_edge ]
  %53 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge, ptr %ber, align 4
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool45.not = icmp eq i32 %54, 0
  br i1 %tobool45.not, label %do.body44.do.end54_crit_edge, label %do.end49

do.body44.do.end54_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef %storemerge) #10
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %do.body44.do.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  %agc_lvl.i = alloca [2 x i8], align 1
  %t.i17 = alloca i8, align 1
  %t.i = alloca i8, align 1
  %str.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %5, label %if.else9 [
    i8 0, label %if.then
    i8 6, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i) #7
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %t.i, align 1, !annotation !221
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %str.i) #7
  %8 = ptrtoint ptr %str.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %str.i, align 1, !annotation !221
  %curr_gi.i = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %curr_gi.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %curr_gi.i, align 4
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.do.end3.i_crit_edge, label %do.end.i

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.75) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 75, ptr noundef nonnull %t.i) #7
  %sext.mask.i = and i32 %call4.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp.not.i = icmp eq i32 %sext.mask.i, 0
  br i1 %cmp.not.i, label %if.end8.i, label %do.end3.i.lgs8913_read_signal_strength.exit_crit_edge

do.end3.i.lgs8913_read_signal_strength.exit_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8913_read_signal_strength.exit

if.end8.i:                                        ; preds = %do.end3.i
  %12 = load i32, ptr @fake_signal_str, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %do.body28.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %t.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %14)
  %cmp12.i = icmp ugt i8 %14, -65
  br i1 %cmp12.i, label %do.body15.i, label %if.then10.i.if.end26.i_crit_edge

if.then10.i.if.end26.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.body15.i:                                      ; preds = %if.then10.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not.i = icmp eq i32 %15, 0
  br i1 %tobool16.not.i, label %do.body15.i.if.end26.i_crit_edge, label %do.end20.i

do.body15.i.if.end26.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %do.body15.i.if.end26.i_crit_edge, %if.then10.i.if.end26.i_crit_edge
  %storemerge.i = phi i16 [ 32767, %do.end20.i ], [ 32767, %do.body15.i.if.end26.i_crit_edge ], [ 0, %if.then10.i.if.end26.i_crit_edge ]
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %storemerge.i, ptr %signal, align 2
  br label %lgs8913_read_signal_strength.exit

do.body28.i:                                      ; preds = %if.end8.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool29.not.i = icmp eq i32 %17, 0
  br i1 %tobool29.not.i, label %do.body28.i.do.end39.i_crit_edge, label %do.end33.i

do.body28.i.do.end39.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end33.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv35.i = zext i16 %10 to i32
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv35.i) #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end33.i, %do.body28.i.do.end39.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp42110.not.i = icmp eq i16 %10, 0
  br i1 %cmp42110.not.i, label %do.end39.i.for.end.i_crit_edge, label %do.end39.i.for.body.i_crit_edge

do.end39.i.for.body.i_crit_edge:                  ; preds = %do.end39.i
  br label %for.body.i

do.end39.i.for.end.i_crit_edge:                   ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %if.end53.i.for.body.i_crit_edge, %do.end39.i.for.body.i_crit_edge
  %max_strength.0113.i = phi i16 [ %24, %if.end53.i.for.body.i_crit_edge ], [ 0, %do.end39.i.for.body.i_crit_edge ]
  %i.0111.i = phi i16 [ %inc.i, %if.end53.i.for.body.i_crit_edge ], [ 0, %do.end39.i.for.body.i_crit_edge ]
  %18 = and i16 %i.0111.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp46.i = icmp eq i16 %18, 0
  br i1 %cmp46.i, label %if.then48.i, label %for.body.i.if.end53.i_crit_edge

for.body.i.if.end53.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then48.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = lshr i16 %i.0111.i, 8
  %20 = trunc i16 %19 to i8
  %conv51.i = and i8 %20, 3
  %call52.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -124, i8 noundef zeroext %conv51.i) #7
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then48.i, %for.body.i.if.end53.i_crit_edge
  %conv56.i = trunc i16 %i.0111.i to i8
  %call57.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext -125, i8 noundef zeroext %conv56.i) #7
  %call58.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -108, ptr noundef nonnull %str.i) #7
  %21 = ptrtoint ptr %str.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %str.i, align 1
  %23 = zext i8 %22 to i16
  %24 = tail call i16 @llvm.umax.i16(i16 %max_strength.0113.i, i16 %23) #7
  %inc.i = add nuw i16 %i.0111.i, 1
  %cmp42.i = icmp ult i16 %inc.i, %10
  br i1 %cmp42.i, label %if.end53.i.for.body.i_crit_edge, label %if.end53.i.for.end.i_crit_edge

if.end53.i.for.end.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end53.i.for.body.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end53.i.for.end.i_crit_edge, %do.end39.i.for.end.i_crit_edge
  %max_strength.0.lcssa.i = phi i16 [ 0, %do.end39.i.for.end.i_crit_edge ], [ %24, %if.end53.i.for.end.i_crit_edge ]
  %25 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %max_strength.0.lcssa.i, ptr %signal, align 2
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool67.not.i = icmp eq i32 %26, 0
  br i1 %tobool67.not.i, label %for.end.i.do.end77.i_crit_edge, label %do.end71.i

for.end.i.do.end77.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

do.end71.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv73.i = zext i16 %max_strength.0.lcssa.i to i32
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.75, i32 noundef %conv73.i) #10
  br label %do.end77.i

do.end77.i:                                       ; preds = %do.end71.i, %for.end.i.do.end77.i_crit_edge
  %call78.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -107, ptr noundef nonnull %t.i) #7
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool80.not.i = icmp eq i32 %27, 0
  br i1 %tobool80.not.i, label %do.end77.i.lgs8913_read_signal_strength.exit_crit_edge, label %do.end84.i

do.end77.i.lgs8913_read_signal_strength.exit_crit_edge: ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8913_read_signal_strength.exit

do.end84.i:                                       ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %t.i, align 1
  %conv86.i = zext i8 %29 to i32
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.75, i32 noundef %conv86.i) #10
  br label %lgs8913_read_signal_strength.exit

lgs8913_read_signal_strength.exit:                ; preds = %do.end84.i, %do.end77.i.lgs8913_read_signal_strength.exit_crit_edge, %if.end26.i, %do.end3.i.lgs8913_read_signal_strength.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end26.i ], [ -5, %do.end3.i.lgs8913_read_signal_strength.exit_crit_edge ], [ 0, %do.end84.i ], [ 0, %do.end77.i.lgs8913_read_signal_strength.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %str.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i) #7
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i17) #7
  %30 = ptrtoint ptr %t.i17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %t.i17, align 1, !annotation !221
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i18 = icmp eq i32 %31, 0
  br i1 %tobool.not.i18, label %if.then7.do.end3.i22_crit_edge, label %do.end.i20

if.then7.do.end3.i22_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i22

do.end.i20:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.88) #10
  br label %do.end3.i22

do.end3.i22:                                      ; preds = %do.end.i20, %if.then7.do.end3.i22_crit_edge
  %call4.i21 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -79, ptr noundef nonnull %t.i17) #7
  %32 = ptrtoint ptr %t.i17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %t.i17, align 1
  %34 = zext i8 %33 to i16
  %shl.i = shl nuw i16 %34, 8
  %call9.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext -80, ptr noundef nonnull %t.i17) #7
  %35 = ptrtoint ptr %t.i17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %t.i17, align 1
  %conv10.i = zext i8 %36 to i16
  %or12.i = or i16 %shl.i, %conv10.i
  %37 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or12.i, ptr %signal, align 2
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not.i = icmp eq i32 %38, 0
  br i1 %tobool15.not.i, label %do.end3.i22.lgs8g75_read_signal_strength.exit_crit_edge, label %do.end19.i

do.end3.i22.lgs8g75_read_signal_strength.exit_crit_edge: ; preds = %do.end3.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8g75_read_signal_strength.exit

do.end19.i:                                       ; preds = %do.end3.i22
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i16 %or12.i to i32
  %call22.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.88, i32 noundef %conv21.i) #10
  br label %lgs8g75_read_signal_strength.exit

lgs8g75_read_signal_strength.exit:                ; preds = %do.end19.i, %do.end3.i22.lgs8g75_read_signal_strength.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i17) #7
  br label %cleanup

if.else9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %agc_lvl.i) #7
  %39 = ptrtoint ptr %agc_lvl.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %agc_lvl.i, align 1, !annotation !221
  %40 = getelementptr inbounds [2 x i8], ptr %agc_lvl.i, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %40, align 1, !annotation !221
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i24 = icmp eq i32 %42, 0
  br i1 %tobool.not.i24, label %if.else9.do.end3.i30_crit_edge, label %do.end.i26

if.else9.do.end3.i30_crit_edge:                   ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i30

do.end.i26:                                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.91) #10
  br label %do.end3.i30

do.end3.i30:                                      ; preds = %do.end.i26, %if.else9.do.end3.i30_crit_edge
  %call4.i27 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 63, ptr noundef nonnull %agc_lvl.i) #7
  %call6.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext 62, ptr noundef %40) #7
  %43 = ptrtoint ptr %agc_lvl.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %agc_lvl.i, align 1
  %conv8.i = zext i8 %44 to i16
  %shl.i28 = shl nuw i16 %conv8.i, 8
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %40, align 1
  %conv11.i = zext i8 %46 to i16
  %or.i = or i16 %shl.i28, %conv11.i
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not.i29 = icmp eq i32 %47, 0
  br i1 %tobool15.not.i29, label %do.end3.i30.do.end25.i_crit_edge, label %do.end19.i33

do.end3.i30.do.end25.i_crit_edge:                 ; preds = %do.end3.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

do.end19.i33:                                     ; preds = %do.end3.i30
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i31 = zext i16 %or.i to i32
  %call22.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv21.i31) #10
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end19.i33, %do.end3.i30.do.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %or.i)
  %cmp.i = icmp ult i16 %or.i, 256
  br i1 %cmp.i, label %do.end25.i.lgs8gxx_read_signal_agc.exit_crit_edge, label %if.else.i

do.end25.i.lgs8gxx_read_signal_agc.exit_crit_edge: ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_read_signal_agc.exit

if.else.i:                                        ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 400, i16 %or.i)
  %cmp30.i = icmp ult i16 %or.i, 400
  br i1 %cmp30.i, label %if.else.i.lgs8gxx_read_signal_agc.exit_crit_edge, label %if.else33.i

if.else.i.lgs8gxx_read_signal_agc.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_read_signal_agc.exit

if.else33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 680, i16 %or.i)
  %cmp35.i = icmp ult i16 %or.i, 680
  br i1 %cmp35.i, label %if.else33.i.lgs8gxx_read_signal_agc.exit_crit_edge, label %if.else38.i

if.else33.i.lgs8gxx_read_signal_agc.exit_crit_edge: ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_read_signal_agc.exit

if.else38.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 897, i16 %or.i)
  %cmp40.i = icmp ult i16 %or.i, 897
  br i1 %cmp40.i, label %if.else38.i.lgs8gxx_read_signal_agc.exit_crit_edge, label %if.else43.i

if.else38.i.lgs8gxx_read_signal_agc.exit_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_read_signal_agc.exit

if.else43.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %or.i)
  %cmp45.i = icmp ult i16 %or.i, 1024
  br i1 %cmp45.i, label %if.else43.i.lgs8gxx_read_signal_agc.exit_crit_edge, label %if.else48.i

if.else43.i.lgs8gxx_read_signal_agc.exit_crit_edge: ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lgs8gxx_read_signal_agc.exit

if.else48.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %or.i)
  %cmp50.i = icmp eq i16 %or.i, 1024
  %..i = select i1 %cmp50.i, i16 13107, i16 0
  br label %lgs8gxx_read_signal_agc.exit

lgs8gxx_read_signal_agc.exit:                     ; preds = %if.else48.i, %if.else43.i.lgs8gxx_read_signal_agc.exit_crit_edge, %if.else38.i.lgs8gxx_read_signal_agc.exit_crit_edge, %if.else33.i.lgs8gxx_read_signal_agc.exit_crit_edge, %if.else.i.lgs8gxx_read_signal_agc.exit_crit_edge, %do.end25.i.lgs8gxx_read_signal_agc.exit_crit_edge
  %cat.0.i = phi i16 [ 0, %do.end25.i.lgs8gxx_read_signal_agc.exit_crit_edge ], [ -1, %if.else.i.lgs8gxx_read_signal_agc.exit_crit_edge ], [ -13108, %if.else33.i.lgs8gxx_read_signal_agc.exit_crit_edge ], [ -26215, %if.else38.i.lgs8gxx_read_signal_agc.exit_crit_edge ], [ 26214, %if.else43.i.lgs8gxx_read_signal_agc.exit_crit_edge ], [ %..i, %if.else48.i ]
  %48 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %cat.0.i, ptr %signal, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %agc_lvl.i) #7
  br label %cleanup

cleanup:                                          ; preds = %lgs8gxx_read_signal_agc.exit, %lgs8g75_read_signal_strength.exit, %lgs8913_read_signal_strength.exit
  %retval.0 = phi i32 [ %retval.0.i, %lgs8913_read_signal_strength.exit ], [ 0, %lgs8g75_read_signal_strength.exit ], [ 0, %lgs8gxx_read_signal_agc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #7
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %t, align 1, !annotation !221
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %snr, align 2
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp eq i8 %7, 6
  %. = select i1 %cmp, i8 52, i8 -107
  %call = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %1, i8 noundef zeroext %., ptr noundef nonnull %t)
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %t, align 1
  %conv5 = zext i8 %10 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv5) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %11 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %t, align 1
  %conv10 = zext i8 %12 to i16
  %.neg = mul i16 %conv10, -256
  %13 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.neg, ptr %snr, align 2
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %do.end9.do.end25_crit_edge, label %do.end19

do.end9.do.end25_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i16 %.neg to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %conv21) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.end9.do.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 0) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gxx_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %tuner_address = getelementptr inbounds %struct.lgs8gxx_config, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %tuner_address to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_address, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %6 = or i8 %5, -128
  %.sink = select i1 %tobool.not, i8 0, i8 %6
  %call8 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %.sink)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgs8gxx_write_reg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
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
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %demod_address, align 1
  %conv = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %msg, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %cmp.not = icmp ne i8 %14, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %reg)
  %cmp7 = icmp ugt i8 %reg, -65
  %or.cond = and i1 %cmp7, %cmp.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i16 %conv, 2
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp12 = icmp sgt i32 %16, 1
  br i1 %cmp12, label %do.end, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i8 %reg to i32
  %conv18 = zext i8 %data to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, i32 noundef %conv17, i32 noundef %conv18) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %call23 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 1
  br i1 %cmp24.not, label %if.end22.if.end40_crit_edge, label %do.body27

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body27:                                        ; preds = %if.end22
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %do.body27.if.end40_crit_edge, label %do.end32

do.body27.if.end40_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %conv34 = zext i8 %reg to i32
  %conv35 = zext i8 %data to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %call23) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end32, %do.body27.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %not.cmp24.not = xor i1 %cmp24.not, true
  %cond = sext i1 %not.cmp24.not to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lgs8gxx_autolock_gi(ptr nocapture noundef readonly %priv, i8 noundef zeroext %gi, i8 noundef zeroext %cpn, ptr nocapture noundef %locked) unnamed_addr #0 align 64 {
entry:
  %t.i.i2 = alloca i8, align 1
  %t.i.i = alloca i8, align 1
  %t1 = alloca i8, align 1
  %t2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t1) #7
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %t1, align 1, !annotation !221
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t2) #7
  %1 = ptrtoint ptr %t2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %t2, align 1, !annotation !221
  %2 = zext i8 %gi to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %gi, label %do.body26 [
    i8 2, label %do.body
    i8 1, label %do.body10
  ]

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.if.end39_crit_edge, label %do.body.if.end39.sink.split_crit_edge

do.body.if.end39.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.body10:                                        ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %do.body10.if.end39_crit_edge, label %do.body10.if.end39.sink.split_crit_edge

do.body10.if.end39.sink.split_crit_edge:          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split

do.body10.if.end39_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.body26:                                        ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool27.not = icmp eq i32 %5, 0
  br i1 %tobool27.not, label %do.body26.if.end39_crit_edge, label %do.body26.if.end39.sink.split_crit_edge

do.body26.if.end39.sink.split_crit_edge:          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split

do.body26.if.end39_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39.sink.split:                              ; preds = %do.body26.if.end39.sink.split_crit_edge, %do.body10.if.end39.sink.split_crit_edge, %do.body.if.end39.sink.split_crit_edge
  %.str.51.sink = phi ptr [ @.str.48, %do.body.if.end39.sink.split_crit_edge ], [ @.str.51, %do.body10.if.end39.sink.split_crit_edge ], [ @.str.54, %do.body26.if.end39.sink.split_crit_edge ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51.sink) #10
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %do.body26.if.end39_crit_edge, %do.body10.if.end39_crit_edge, %do.body.if.end39_crit_edge
  %config = getelementptr inbounds %struct.lgs8gxx_state, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp41 = icmp eq i8 %9, 6
  br i1 %cmp41, label %if.then43, label %if.else61

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %t1)
  %call45 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %priv, i8 noundef zeroext 24, ptr noundef nonnull %t2)
  %10 = ptrtoint ptr %t1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %t1, align 1
  %12 = and i8 %11, -4
  %or1 = or i8 %12, %gi
  store i8 %or1, ptr %t1, align 1
  %13 = ptrtoint ptr %t2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %t2, align 1
  %15 = and i8 %14, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cpn)
  %tobool55.not = icmp ne i8 %cpn, 0
  %cond = zext i1 %tobool55.not to i8
  %or57 = or i8 %15, %cond
  %16 = ptrtoint ptr %t2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or57, ptr %t2, align 1
  %call59 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %priv, i8 noundef zeroext 12, i8 noundef zeroext %or1)
  %call60 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %priv, i8 noundef zeroext 24, i8 noundef zeroext %or57)
  br label %if.end63

if.else61:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %priv, i8 noundef zeroext 4, i8 noundef zeroext %gi)
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %if.then43
  %call.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  tail call void @msleep(i32 noundef 1) #7
  %call1.i = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 1) #7
  tail call void @msleep(i32 noundef 100) #7
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.i = icmp eq i8 %20, 6
  %..i = select i1 %cmp.i, i8 19, i8 75
  %.1.i = select i1 %cmp.i, i8 -128, i8 -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i.i) #7
  %21 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %t.i.i, align 1, !annotation !221
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end63
  %i.012.i.i = phi i32 [ 0, %if.end63 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %call.i.i = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %priv, i8 noundef zeroext %..i, ptr noundef nonnull %t.i.i) #7
  %22 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %t.i.i, align 1
  %and10.i.i = and i8 %23, %.1.i
  call void @__sanitizer_cov_trace_cmp1(i8 %and10.i.i, i8 %.1.i)
  %cmp5.i.i = icmp eq i8 %and10.i.i, %.1.i
  br i1 %cmp5.i.i, label %if.end69, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 50) #7
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 40
  br i1 %exitcond.not.i.i, label %lgs8gxx_wait_ca_lock.exit.thread, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

lgs8gxx_wait_ca_lock.exit.thread:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i) #7
  %24 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %locked, align 1
  br label %cleanup

if.end69:                                         ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i) #7
  %25 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %locked, align 1
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp.i4 = icmp eq i8 %29, 6
  %..i5 = select i1 %cmp.i4, i8 31, i8 -92
  %.1.i6 = select i1 %cmp.i4, i8 -64, i8 3
  %.2.i = select i1 %cmp.i4, i8 -128, i8 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t.i.i2) #7
  %30 = ptrtoint ptr %t.i.i2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %t.i.i2, align 1, !annotation !221
  br label %for.body.i.i11

for.body.i.i11:                                   ; preds = %if.end.i.i14.for.body.i.i11_crit_edge, %if.end69
  %i.012.i.i7 = phi i32 [ 0, %if.end69 ], [ %inc.i.i12, %if.end.i.i14.for.body.i.i11_crit_edge ]
  %call.i.i8 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %priv, i8 noundef zeroext %..i5, ptr noundef nonnull %t.i.i2) #7
  %31 = ptrtoint ptr %t.i.i2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %t.i.i2, align 1
  %and10.i.i9 = and i8 %32, %.1.i6
  call void @__sanitizer_cov_trace_cmp1(i8 %and10.i.i9, i8 %.2.i)
  %cmp5.i.i10 = icmp eq i8 %and10.i.i9, %.2.i
  br i1 %cmp5.i.i10, label %do.body77, label %if.end.i.i14

if.end.i.i14:                                     ; preds = %for.body.i.i11
  tail call void @msleep(i32 noundef 10) #7
  %inc.i.i12 = add nuw nsw i32 %i.012.i.i7, 1
  %exitcond.not.i.i13 = icmp eq i32 %inc.i.i12, 20
  br i1 %exitcond.not.i.i13, label %if.else88, label %if.end.i.i14.for.body.i.i11_crit_edge

if.end.i.i14.for.body.i.i11_crit_edge:            ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i11

do.body77:                                        ; preds = %for.body.i.i11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i2) #7
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool78.not = icmp eq i32 %33, 0
  br i1 %tobool78.not, label %do.body77.cleanup_crit_edge, label %do.end82

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end82:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.else88:                                        ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t.i.i2) #7
  %34 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %locked, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else88, %do.end82, %do.body77.cleanup_crit_edge, %lgs8gxx_wait_ca_lock.exit.thread
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 32, i32 1}
!5 = !{ptr @__param_fake_signal_str, !6, !"__param_fake_signal_str", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_fake_signal_strtype292, !6, !"__UNIQUE_ID_fake_signal_strtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_fake_signal_str293, !9, !"__UNIQUE_ID_fake_signal_str293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 35, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1010, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lgs8gxx_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @lgs8gxx_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1024, i32 3}
!18 = !{ptr @lgs8gxx_attach._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lgs8gxx_attach._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1041, i32 2}
!22 = !{ptr @lgs8gxx_attach._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lgs8gxx_attach._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_lgs8gxx_attach, !25, !"__ksymtab_lgs8gxx_attach", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1046, i32 1}
!26 = !{ptr @__UNIQUE_ID_description294, !27, !"__UNIQUE_ID_description294", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1048, i32 1}
!28 = !{ptr @__UNIQUE_ID_author295, !29, !"__UNIQUE_ID_author295", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1049, i32 1}
!30 = !{ptr @__UNIQUE_ID_file296, !31, !"__UNIQUE_ID_file296", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1050, i32 1}
!32 = !{ptr @__UNIQUE_ID_license297, !31, !"__UNIQUE_ID_license297", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_firmware298, !34, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 1051, i32 1}
!35 = !{ptr @debug, !36, !"debug", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 26, i32 12}
!37 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!38 = !{ptr @__param_str_fake_signal_str, !6, !"__param_str_fake_signal_str", i1 false, i1 false}
!39 = !{ptr @fake_signal_str, !40, !"fake_signal_str", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 27, i32 12}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 81, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lgs8gxx_read_reg._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @lgs8gxx_read_reg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 87, i32 3}
!48 = !{ptr @lgs8gxx_read_reg._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lgs8gxx_read_reg._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @lgs8gxx_ops, !51, !"lgs8gxx_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 974, i32 38}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 643, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lgs8gxx_release._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @lgs8gxx_release._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 617, i32 2}
!59 = !{ptr @lgs8gxx_init._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lgs8gxx_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 620, i32 2}
!63 = !{ptr @lgs8gxx_init._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lgs8gxx_init._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 51, i32 3}
!67 = !{ptr @lgs8gxx_write_reg._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lgs8gxx_write_reg._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 56, i32 3}
!71 = !{ptr @lgs8gxx_write_reg._entry.21, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lgs8gxx_write_reg._entry_ptr.23, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 156, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lgs8gxx_set_if_freq._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @lgs8gxx_set_if_freq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 159, i32 3}
!80 = !{ptr @lgs8gxx_set_if_freq._entry.26, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lgs8gxx_set_if_freq._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 161, i32 2}
!84 = !{ptr @lgs8gxx_set_if_freq._entry.29, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lgs8gxx_set_if_freq._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 664, i32 2}
!88 = !{ptr @lgs8gxx_set_fe._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lgs8gxx_set_fe._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 477, i32 3}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @lgs8gxx_auto_lock._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @lgs8gxx_auto_lock._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 479, i32 3}
!97 = !{ptr @lgs8gxx_auto_lock._entry.35, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lgs8gxx_auto_lock._entry_ptr.37, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 405, i32 2}
!101 = !{ptr @lgs8gxx_auto_detect._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lgs8gxx_auto_detect._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 454, i32 4}
!105 = !{ptr @lgs8gxx_auto_detect._entry.39, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lgs8gxx_auto_detect._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 456, i32 4}
!109 = !{ptr @lgs8gxx_auto_detect._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lgs8gxx_auto_detect._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 458, i32 4}
!113 = !{ptr @lgs8gxx_auto_detect._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lgs8gxx_auto_detect._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 366, i32 3}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @lgs8gxx_autolock_gi._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @lgs8gxx_autolock_gi._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 368, i32 3}
!122 = !{ptr @lgs8gxx_autolock_gi._entry.50, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @lgs8gxx_autolock_gi._entry_ptr.52, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 370, i32 3}
!126 = !{ptr @lgs8gxx_autolock_gi._entry.53, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @lgs8gxx_autolock_gi._entry_ptr.55, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 391, i32 3}
!130 = !{ptr @lgs8gxx_autolock_gi._entry.56, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lgs8gxx_autolock_gi._entry_ptr.58, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 718, i32 2}
!134 = !{ptr @lgs8gxx_read_status._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @lgs8gxx_read_status._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 734, i32 2}
!138 = !{ptr @lgs8gxx_read_status._entry.60, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @lgs8gxx_read_status._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 750, i32 2}
!142 = !{ptr @lgs8gxx_read_status._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @lgs8gxx_read_status._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 200, i32 2}
!146 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @lgs8gxx_get_afc_phase._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @lgs8gxx_get_afc_phase._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 928, i32 2}
!151 = !{ptr @lgs8gxx_read_ber._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @lgs8gxx_read_ber._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 950, i32 2}
!155 = !{ptr @lgs8gxx_read_ber._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @lgs8gxx_read_ber._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 957, i32 2}
!159 = !{ptr @lgs8gxx_read_ber._entry.72, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lgs8gxx_read_ber._entry_ptr.74, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 796, i32 2}
!163 = !{ptr @lgs8913_read_signal_strength._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @lgs8913_read_signal_strength._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 804, i32 4}
!167 = !{ptr @lgs8913_read_signal_strength._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @lgs8913_read_signal_strength._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 811, i32 2}
!171 = !{ptr @lgs8913_read_signal_strength._entry.79, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @lgs8913_read_signal_strength._entry_ptr.81, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 824, i32 2}
!175 = !{ptr @lgs8913_read_signal_strength._entry.82, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @lgs8913_read_signal_strength._entry_ptr.84, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 827, i32 2}
!179 = !{ptr @lgs8913_read_signal_strength._entry.85, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @lgs8913_read_signal_strength._entry_ptr.87, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 837, i32 2}
!183 = !{ptr @lgs8g75_read_signal_strength._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @lgs8g75_read_signal_strength._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @lgs8g75_read_signal_strength._entry.89, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 846, i32 2}
!187 = !{ptr @lgs8g75_read_signal_strength._entry_ptr.90, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 759, i32 2}
!190 = !{ptr @lgs8gxx_read_signal_agc._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @lgs8gxx_read_signal_agc._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 767, i32 2}
!194 = !{ptr @lgs8gxx_read_signal_agc._entry.92, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @lgs8gxx_read_signal_agc._entry_ptr.94, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 873, i32 2}
!198 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @lgs8gxx_read_snr._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @lgs8gxx_read_snr._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 876, i32 2}
!203 = !{ptr @lgs8gxx_read_snr._entry.97, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @lgs8gxx_read_snr._entry_ptr.99, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 884, i32 2}
!207 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @lgs8gxx_read_ucblocks._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @lgs8gxx_read_ucblocks._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/lgs8gxx.c", i32 583, i32 29}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i64 2147996050, i64 2147996330, i64 2147996664, i64 2147996998}
