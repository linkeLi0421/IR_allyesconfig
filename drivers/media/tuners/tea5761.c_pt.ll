; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tea5761.c_pt.bc'
source_filename = "../drivers/media/tuners/tea5761.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tea5761_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tea5761_attach\09\09\09\09"
module asm "\09.long\09__crc_tea5761_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5761_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5761_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tea5761_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tea5761_autodetection\22, \22a\22\09"
module asm "\09.weak\09__crc_tea5761_autodetection\09\09\09\09"
module asm "\09.long\09__crc_tea5761_autodetection\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5761_autodetection:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5761_autodetection\22\09\09\09\09\09"
module asm "__kstrtabns_tea5761_autodetection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.tea5761_priv = type { %struct.tuner_i2c_props, i32, i8 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [14 x i8] c"tea5761.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"tea5761.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [49 x i8] c"tea5761.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@tea5761_autodetection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014it is not a TEA5761. Received %i chars.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tea5761_autodetection\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tea5761.c\00", [33 x i8] zeroinitializer }, align 32
@tea5761_autodetection._entry_ptr = internal global ptr @tea5761_autodetection._entry, section ".printk_index", align 4
@tea5761_autodetection._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014Manufacturer ID= 0x%02x, Chip ID = %02x%02x. It is not a TEA5761\0A\00", [60 x i8] zeroinitializer }, align 32
@tea5761_autodetection._entry_ptr.5 = internal global ptr @tea5761_autodetection._entry.3, section ".printk_index", align 4
@tea5761_autodetection._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014tea5761: TEA%02x%02x detected. Manufacturer ID= 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@tea5761_autodetection._entry_ptr.8 = internal global ptr @tea5761_autodetection._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea5761\00", [24 x i8] zeroinitializer }, align 32
@tea5761_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"tea5761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @tea5761_release, ptr null, ptr @set_radio_sleep, ptr null, ptr null, ptr null, ptr @set_radio_freq, ptr null, ptr @tea5761_get_frequency, ptr null, ptr null, ptr @tea5761_get_status, ptr @tea5761_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tea5761_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5761_attach\00", [17 x i8] zeroinitializer }, align 32
@tea5761_attach._entry_ptr = internal global ptr @tea5761_attach._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Philips TEA5761HN FM Radio\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_tea5761_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5761_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5761_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5761_attach to i32), ptr @__kstrtab_tea5761_attach, ptr @__kstrtabns_tea5761_attach }, section "___ksymtab_gpl+tea5761_attach", align 4
@__kstrtab_tea5761_autodetection = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5761_autodetection = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5761_autodetection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5761_autodetection to i32), ptr @__kstrtab_tea5761_autodetection, ptr @__kstrtabns_tea5761_autodetection }, section "___ksymtab_gpl+tea5761_autodetection", align 4
@__UNIQUE_ID_description294 = internal constant [52 x i8] c"tea5761.description=Philips TEA5761 FM tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [58 x i8] c"tea5761.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"tea5761.file=drivers/media/tuners/tea5761\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"tea5761.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__set_radio_freq._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 146, ptr null, ptr null }, align 1
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: radio freq counter %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__set_radio_freq\00", [47 x i8] zeroinitializer }, align 32
@__set_radio_freq._entry_ptr = internal global ptr @__set_radio_freq._entry, section ".printk_index", align 4
@__set_radio_freq._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 149, ptr null, ptr null }, align 1
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: TEA5761 set to standby mode\0A\00", [53 x i8] zeroinitializer }, align 32
@__set_radio_freq._entry_ptr.17 = internal global ptr @__set_radio_freq._entry.15, section ".printk_index", align 4
@__set_radio_freq._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 157, ptr null, ptr null }, align 1
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: TEA5761 set to mono\0A\00", [61 x i8] zeroinitializer }, align 32
@__set_radio_freq._entry_ptr.20 = internal global ptr @__set_radio_freq._entry.18, section ".printk_index", align 4
@__set_radio_freq._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 160, ptr null, ptr null }, align 1
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: TEA5761 set to stereo\0A\00", [59 x i8] zeroinitializer }, align 32
@__set_radio_freq._entry_ptr.23 = internal global ptr @__set_radio_freq._entry.21, section ".printk_index", align 4
@__set_radio_freq._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 171, ptr null, ptr null }, align 1
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 5)\0A\00", [43 x i8] zeroinitializer }, align 32
@__set_radio_freq._entry_ptr.26 = internal global ptr @__set_radio_freq._entry.24, section ".printk_index", align 4
@tea5761_status_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016tea5761: Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tea5761_status_dump\00", [44 x i8] zeroinitializer }, align 32
@tea5761_status_dump._entry_ptr = internal global ptr @tea5761_status_dump._entry, section ".printk_index", align 4
@tea5761_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 16)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tea5761_read_status\00", [44 x i8] zeroinitializer }, align 32
@tea5761_read_status._entry_ptr = internal global ptr @tea5761_read_status._entry, section ".printk_index", align 4
@tea5761_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5761_signal\00", [17 x i8] zeroinitializer }, align 32
@tea5761_signal._entry_ptr = internal global ptr @tea5761_signal._entry, section ".printk_index", align 4
@tea5761_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: Radio ST GET = %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5761_stereo\00", [17 x i8] zeroinitializer }, align 32
@tea5761_stereo._entry_ptr = internal global ptr @tea5761_stereo._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 15, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 269, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 274, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 278, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 325, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"tea5761_tuner_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 330, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 146, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 149, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 157, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 160, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 171, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 131, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 205, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 218, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [34 x i8] c"../drivers/media/tuners/tea5761.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 229, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_tea5761_attach, ptr @__ksymtab_tea5761_autodetection, ptr @__param_debug, ptr @__set_radio_freq._entry, ptr @__set_radio_freq._entry.15, ptr @__set_radio_freq._entry.18, ptr @__set_radio_freq._entry.21, ptr @__set_radio_freq._entry.24, ptr @__set_radio_freq._entry_ptr, ptr @__set_radio_freq._entry_ptr.17, ptr @__set_radio_freq._entry_ptr.20, ptr @__set_radio_freq._entry_ptr.23, ptr @__set_radio_freq._entry_ptr.26, ptr @tea5761_attach._entry, ptr @tea5761_attach._entry_ptr, ptr @tea5761_autodetection._entry, ptr @tea5761_autodetection._entry.3, ptr @tea5761_autodetection._entry.6, ptr @tea5761_autodetection._entry_ptr, ptr @tea5761_autodetection._entry_ptr.5, ptr @tea5761_autodetection._entry_ptr.8, ptr @tea5761_read_status._entry, ptr @tea5761_read_status._entry_ptr, ptr @tea5761_signal._entry, ptr @tea5761_signal._entry_ptr, ptr @tea5761_status_dump._entry, ptr @tea5761_status_dump._entry_ptr, ptr @tea5761_stereo._entry, ptr @tea5761_stereo._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @tea5761_tuner_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_autodetection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_autodetection._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_autodetection._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_status_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5761_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tea5761_autodetection(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #6
  %0 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 14
  %1 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 15
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1114111, ptr %3, align 4
  %conv.i = zext i8 %i2c_addr to i16
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buffer, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end [
    i32 16, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge41
  ]

entry.if.end_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge41
  %9 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %11)
  %cmp2.not = icmp eq i8 %11, 43
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.do.end16_crit_edge

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %13)
  %cmp6.not = icmp eq i8 %13, 87
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %15)
  %cmp11.not = icmp eq i8 %15, 97
  br i1 %cmp11.not, label %do.end28, label %lor.lhs.false8.do.end16_crit_edge

lor.lhs.false8.do.end16_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false8.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %conv19 = zext i8 %11 to i32
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %conv21 = zext i8 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %conv23 = zext i8 %19 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #9
  br label %cleanup

do.end28:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 87, i32 noundef 97, i32 noundef 43) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ 0, %do.end28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tea5761_attach(ptr noundef writeonly %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tea5761_autodetection(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #10
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i2c_addr, ptr %call7.i.i, align 8
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c_adap, ptr %adap, align 4
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.9, ptr %name, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %5 = call ptr @memcpy(ptr %tuner_ops, ptr @tea5761_tuner_ops, i32 220)
  %tobool.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.end4.cond.end_crit_edge ]
  %conv = zext i8 %i2c_addr to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.12) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %cond.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tea5761_release(ptr nocapture noundef %fe) #0 align 64 {
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
define internal i32 @set_radio_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %standby = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %standby, align 4
  %frequency = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frequency, align 4
  tail call fastcc void @__set_radio_freq(ptr noundef %fe, i32 noundef %4, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_radio_freq(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %standby = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %standby, align 4
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %params, align 8
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  tail call fastcc void @__set_radio_freq(ptr noundef %fe, i32 noundef %4, i1 noundef zeroext %cmp)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea5761_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5761_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #6
  %0 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 9
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %status, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv.i, align 4
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1114111, ptr %5, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  %conv.i.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  %14 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call.i.i, label %do.end.i [
    i32 16, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge39
  ]

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %17 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.i.tea5761_read_status.exit_crit_edge, label %cond.true.i

do.end.i.tea5761_read_status.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tea5761_read_status.exit

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i.i, align 4
  br label %tea5761_read_status.exit

tea5761_read_status.exit:                         ; preds = %cond.true.i, %do.end.i.tea5761_read_status.exit_crit_edge
  %cond.i = phi i32 [ %20, %cond.true.i ], [ -1, %do.end.i.tea5761_read_status.exit_crit_edge ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 4
  %conv.i = zext i8 %22 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %16, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %call.i.i) #9
  br label %if.end9

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge39
  %23 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tuner_priv.i, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  %27 = and i8 %26, -16
  %and.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %and.i, 9
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i15 = icmp eq i32 %28, 0
  br i1 %tobool.not.i15, label %if.then.tea5761_signal.exit_crit_edge, label %do.end.i17

if.then.tea5761_signal.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tea5761_signal.exit

do.end.i17:                                       ; preds = %if.then
  %name.i16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %name.i16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i16, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %do.end.i17.cond.end.i22_crit_edge, label %cond.true.i19

do.end.i17.cond.end.i22_crit_edge:                ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i22

cond.true.i19:                                    ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i18 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i.i18, align 4
  br label %cond.end.i22

cond.end.i22:                                     ; preds = %cond.true.i19, %do.end.i17.cond.end.i22_crit_edge
  %cond.i20 = phi i32 [ %34, %cond.true.i19 ], [ -1, %do.end.i17.cond.end.i22_crit_edge ]
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %24, align 4
  %conv8.i = zext i8 %36 to i32
  %call9.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %30, i32 noundef %cond.i20, i32 noundef %conv8.i, i32 noundef %shl.i) #9
  br label %tea5761_signal.exit

tea5761_signal.exit:                              ; preds = %cond.end.i22, %if.then.tea5761_signal.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %tea5761_signal.exit.if.end_crit_edge, label %if.then3

tea5761_signal.exit.if.end_crit_edge:             ; preds = %tea5761_signal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %tea5761_signal.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %tea5761_signal.exit.if.end_crit_edge
  %38 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tuner_priv.i, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %0, align 1
  %42 = and i8 %41, 4
  %and.i25 = zext i8 %42 to i32
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i26 = icmp eq i32 %43, 0
  br i1 %tobool.not.i26, label %if.end.tea5761_stereo.exit_crit_edge, label %do.end.i30

if.end.tea5761_stereo.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tea5761_stereo.exit

do.end.i30:                                       ; preds = %if.end
  %name.i27 = getelementptr inbounds %struct.tuner_i2c_props, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %name.i27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i27, align 4
  %adap.i28 = getelementptr inbounds %struct.tuner_i2c_props, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %adap.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap.i28, align 4
  %tobool4.not.i29 = icmp eq ptr %47, null
  br i1 %tobool4.not.i29, label %do.end.i30.cond.end.i36_crit_edge, label %cond.true.i32

do.end.i30.cond.end.i36_crit_edge:                ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i36

cond.true.i32:                                    ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i31 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %nr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr.i.i31, align 4
  br label %cond.end.i36

cond.end.i36:                                     ; preds = %cond.true.i32, %do.end.i30.cond.end.i36_crit_edge
  %cond.i33 = phi i32 [ %49, %cond.true.i32 ], [ -1, %do.end.i30.cond.end.i36_crit_edge ]
  %50 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %39, align 4
  %conv8.i34 = zext i8 %51 to i32
  %call9.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %45, i32 noundef %cond.i33, i32 noundef %conv8.i34, i32 noundef %and.i25) #9
  br label %tea5761_stereo.exit

tea5761_stereo.exit:                              ; preds = %cond.end.i36, %if.end.tea5761_stereo.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool6.not = icmp eq i8 %42, 0
  br i1 %tobool6.not, label %tea5761_stereo.exit.if.end9_crit_edge, label %if.then7

tea5761_stereo.exit.if.end9_crit_edge:            ; preds = %tea5761_stereo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %tea5761_stereo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %or = or i32 %53, 2
  store i32 %or, ptr %status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %tea5761_stereo.exit.if.end9_crit_edge, %tea5761_read_status.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5761_get_rf_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #6
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %strength, align 2
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv.i, align 4
  %3 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1114111, ptr %4, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %2, align 4
  %conv.i.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  %13 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call.i.i, label %do.end.i [
    i32 16, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge16
  ]

entry.if.then_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %16 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap.i.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end.i.tea5761_read_status.exit_crit_edge, label %cond.true.i

do.end.i.tea5761_read_status.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tea5761_read_status.exit

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr.i.i, align 4
  br label %tea5761_read_status.exit

tea5761_read_status.exit:                         ; preds = %cond.true.i, %do.end.i.tea5761_read_status.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.true.i ], [ -1, %do.end.i.tea5761_read_status.exit_crit_edge ]
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 4
  %conv.i = zext i8 %21 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %15, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %call.i.i) #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge16
  %22 = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 9
  %23 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tuner_priv.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %22, align 1
  %27 = and i8 %26, -16
  %and.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %and.i, 9
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i6 = icmp eq i32 %28, 0
  br i1 %tobool.not.i6, label %if.then.tea5761_signal.exit_crit_edge, label %do.end.i8

if.then.tea5761_signal.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tea5761_signal.exit

do.end.i8:                                        ; preds = %if.then
  %name.i7 = getelementptr inbounds %struct.tuner_i2c_props, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %name.i7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i7, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %do.end.i8.cond.end.i13_crit_edge, label %cond.true.i10

do.end.i8.cond.end.i13_crit_edge:                 ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i13

cond.true.i10:                                    ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i.i9 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i.i9, align 4
  br label %cond.end.i13

cond.end.i13:                                     ; preds = %cond.true.i10, %do.end.i8.cond.end.i13_crit_edge
  %cond.i11 = phi i32 [ %34, %cond.true.i10 ], [ -1, %do.end.i8.cond.end.i13_crit_edge ]
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %24, align 4
  %conv8.i = zext i8 %36 to i32
  %call9.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %30, i32 noundef %cond.i11, i32 noundef %conv8.i, i32 noundef %shl.i) #9
  br label %tea5761_signal.exit

tea5761_signal.exit:                              ; preds = %cond.end.i13, %if.then.tea5761_signal.exit_crit_edge
  %conv = trunc i32 %shl.i to i16
  %37 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv, ptr %strength, align 2
  br label %if.end

if.end:                                           ; preds = %tea5761_signal.exit, %tea5761_read_status.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_radio_freq(ptr nocapture noundef readonly %fe, i32 noundef %freq, i1 noundef zeroext %mono) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buffer) #6
  %2 = call ptr @memset(ptr %buffer, i32 0, i32 7)
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %conv = zext i8 %11 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %5, i32 noundef %cond, i32 noundef %conv, i32 noundef %freq) #9
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %standby = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %standby, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %do.end12.if.end50_crit_edge, label %do.body15

do.end12.if.end50_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body15:                                        ; preds = %do.end12
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %do.body15.if.end50_crit_edge, label %do.end21

do.body15.if.end50_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end21:                                         ; preds = %do.body15
  %name24 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name24, align 4
  %adap26 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %adap26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap26, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %do.end21.cond.end33_crit_edge, label %cond.true28

do.end21.cond.end33_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end33

cond.true28:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i3 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i3, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true28, %do.end21.cond.end33_crit_edge
  %cond34 = phi i32 [ %20, %cond.true28 ], [ -1, %do.end21.cond.end33_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %conv37 = zext i8 %22 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %16, i32 noundef %cond34, i32 noundef %conv37) #9
  br label %if.end50

if.end50:                                         ; preds = %cond.end33, %do.body15.if.end50_crit_edge, %do.end12.if.end50_crit_edge
  %.sink = phi i32 [ 5, %cond.end33 ], [ 5, %do.body15.if.end50_crit_edge ], [ 4, %do.end12.if.end50_crit_edge ]
  %.sink10 = phi i8 [ -128, %cond.end33 ], [ -128, %do.body15.if.end50_crit_edge ], [ 64, %do.end12.if.end50_crit_edge ]
  %arrayidx46 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 %.sink
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx46, align 1
  %25 = or i8 %24, %.sink10
  store i8 %25, ptr %arrayidx46, align 1
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %mono, label %do.body53, label %do.body87

do.body53:                                        ; preds = %if.end50
  br i1 %tobool54.not, label %do.body53.do.end81_crit_edge, label %do.end59

do.body53.do.end81_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.end59:                                         ; preds = %do.body53
  %name62 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name62, align 4
  %adap64 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %adap64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap64, align 4
  %tobool65.not = icmp eq ptr %30, null
  br i1 %tobool65.not, label %do.end59.cond.end71_crit_edge, label %cond.true66

do.end59.cond.end71_crit_edge:                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end71

cond.true66:                                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i4 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %nr.i4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i4, align 4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true66, %do.end59.cond.end71_crit_edge
  %cond72 = phi i32 [ %32, %cond.true66 ], [ -1, %do.end59.cond.end71_crit_edge ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 4
  %conv75 = zext i8 %34 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %28, i32 noundef %cond72, i32 noundef %conv75) #9
  br label %do.end81

do.end81:                                         ; preds = %cond.end71, %do.body53.do.end81_crit_edge
  %arrayidx82 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx82, align 1
  %37 = or i8 %36, 8
  store i8 %37, ptr %arrayidx82, align 1
  br label %if.end116

do.body87:                                        ; preds = %if.end50
  br i1 %tobool54.not, label %do.body87.if.end116_crit_edge, label %do.end93

do.body87.if.end116_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end93:                                         ; preds = %do.body87
  %name96 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name96, align 4
  %adap98 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %adap98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap98, align 4
  %tobool99.not = icmp eq ptr %41, null
  br i1 %tobool99.not, label %do.end93.cond.end105_crit_edge, label %cond.true100

do.end93.cond.end105_crit_edge:                   ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end105

cond.true100:                                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i5 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %nr.i5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr.i5, align 4
  br label %cond.end105

cond.end105:                                      ; preds = %cond.true100, %do.end93.cond.end105_crit_edge
  %cond106 = phi i32 [ %43, %cond.true100 ], [ -1, %do.end93.cond.end105_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %1, align 4
  %conv109 = zext i8 %45 to i32
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %39, i32 noundef %cond106, i32 noundef %conv109) #9
  br label %if.end116

if.end116:                                        ; preds = %cond.end105, %do.body87.if.end116_crit_edge, %do.end81
  %46 = lshr i32 %freq, 2
  %div1171 = and i32 %46, 268435455
  %47 = mul i32 %div1171, 1000
  %mul119 = add i32 %47, 925000
  %shr = lshr i32 %mul119, 15
  %shr120 = lshr i32 %mul119, 23
  %48 = trunc i32 %shr120 to i8
  %conv121 = and i8 %48, 63
  %arrayidx122 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv121, ptr %arrayidx122, align 1
  %conv124 = trunc i32 %shr to i8
  %arrayidx125 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv124, ptr %arrayidx125, align 1
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool126.not = icmp eq i32 %51, 0
  br i1 %tobool126.not, label %if.end116.if.end128_crit_edge, label %if.then127

if.end116.if.end128_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then127:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx125, align 1
  %54 = and i8 %53, 63
  %and.i = zext i8 %54 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %arrayidx1.i = getelementptr inbounds i8, ptr %buffer, i32 3
  %55 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %56 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %mul.i = shl nuw nsw i32 %or.i, 15
  %57 = urem i32 %mul.i, 1000
  %58 = sub nsw i32 %mul.i, %57
  %mul5.i = add nsw i32 %58, 225000
  %div611.i = lshr i32 %mul5.i, 2
  %div7.i = udiv i32 %mul5.i, 4000
  %rem.i = urem i32 %div611.i, 1000
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %div7.i, i32 noundef %rem.i, i32 noundef %or.i) #9
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end116.if.end128_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %59 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 524287, ptr %59, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 4
  %conv.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buffer, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adap.i, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  %68 = zext i32 %call.i6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call.i6, label %do.end138 [
    i32 7, label %if.end128.if.end160_crit_edge
    i32 1, label %if.end128.if.end160_crit_edge12
  ]

if.end128.if.end160_crit_edge12:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.end128.if.end160_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

do.end138:                                        ; preds = %if.end128
  %name141 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name141, align 4
  %71 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adap.i, align 4
  %tobool144.not = icmp eq ptr %72, null
  br i1 %tobool144.not, label %do.end138.cond.end150_crit_edge, label %cond.true145

do.end138.cond.end150_crit_edge:                  ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end150

cond.true145:                                     ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i7 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %nr.i7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr.i7, align 4
  br label %cond.end150

cond.end150:                                      ; preds = %cond.true145, %do.end138.cond.end150_crit_edge
  %cond151 = phi i32 [ %74, %cond.true145 ], [ -1, %do.end138.cond.end150_crit_edge ]
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 4
  %conv154 = zext i8 %76 to i32
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %70, i32 noundef %cond151, i32 noundef %conv154, i32 noundef %call.i6) #9
  br label %if.end160

if.end160:                                        ; preds = %cond.end150, %if.end128.if.end160_crit_edge, %if.end128.if.end160_crit_edge12
  %mul161 = mul i32 %freq, 125
  %div1622 = lshr i32 %mul161, 1
  %frequency = getelementptr inbounds %struct.tea5761_priv, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div1622, ptr %frequency, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buffer) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tea5761.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tea5761.c", i32 17, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tea5761.c", i32 269, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tea5761_autodetection._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @tea5761_autodetection._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/tea5761.c", i32 274, i32 3}
!13 = !{ptr @tea5761_autodetection._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tea5761_autodetection._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/tea5761.c", i32 278, i32 2}
!17 = !{ptr @tea5761_autodetection._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tea5761_autodetection._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/tea5761.c", i32 325, i32 25}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/tea5761.c", i32 330, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tea5761_attach._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tea5761_attach._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__ksymtab_tea5761_attach, !28, !"__ksymtab_tea5761_attach", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/tea5761.c", i32 336, i32 1}
!29 = !{ptr @__ksymtab_tea5761_autodetection, !30, !"__ksymtab_tea5761_autodetection", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/tea5761.c", i32 337, i32 1}
!31 = !{ptr @__UNIQUE_ID_description294, !32, !"__UNIQUE_ID_description294", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/tea5761.c", i32 339, i32 1}
!33 = !{ptr @__UNIQUE_ID_author295, !34, !"__UNIQUE_ID_author295", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/tea5761.c", i32 340, i32 1}
!35 = !{ptr @__UNIQUE_ID_file296, !36, !"__UNIQUE_ID_file296", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/tea5761.c", i32 341, i32 1}
!37 = !{ptr @__UNIQUE_ID_license297, !36, !"__UNIQUE_ID_license297", i1 false, i1 false}
!38 = !{ptr @debug, !39, !"debug", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tea5761.c", i32 15, i32 12}
!40 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!41 = !{ptr @tea5761_tuner_ops, !42, !"tea5761_tuner_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/tea5761.c", i32 297, i32 35}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tea5761.c", i32 146, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__set_radio_freq._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @__set_radio_freq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tea5761.c", i32 149, i32 3}
!50 = !{ptr @__set_radio_freq._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @__set_radio_freq._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tea5761.c", i32 157, i32 3}
!54 = !{ptr @__set_radio_freq._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @__set_radio_freq._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/tea5761.c", i32 160, i32 3}
!58 = !{ptr @__set_radio_freq._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__set_radio_freq._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/tea5761.c", i32 171, i32 3}
!62 = !{ptr @__set_radio_freq._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @__set_radio_freq._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/tea5761.c", i32 131, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tea5761_status_dump._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @tea5761_status_dump._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tea5761.c", i32 205, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tea5761_read_status._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tea5761_read_status._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/tea5761.c", i32 218, i32 2}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tea5761_signal._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tea5761_signal._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tea5761.c", i32 229, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tea5761_stereo._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tea5761_stereo._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
