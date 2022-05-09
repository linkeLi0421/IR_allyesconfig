; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tea5767.c_pt.bc'
source_filename = "../drivers/media/tuners/tea5767.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tea5767_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tea5767_attach\09\09\09\09"
module asm "\09.long\09__crc_tea5767_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5767_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5767_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tea5767_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tea5767_autodetection\22, \22a\22\09"
module asm "\09.weak\09__crc_tea5767_autodetection\09\09\09\09"
module asm "\09.long\09__crc_tea5767_autodetection\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tea5767_autodetection:\09\09\09\09\09"
module asm "\09.asciz \09\22tea5767_autodetection\22\09\09\09\09\09"
module asm "__kstrtabns_tea5767_autodetection:\09\09\09\09\09"
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
%struct.tea5767_priv = type { %struct.tuner_i2c_props, i32, %struct.tea5767_ctrl }
%struct.tea5767_ctrl = type { i8, i32 }
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
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [14 x i8] c"tea5767.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"tea5767.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"tea5767.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@tea5767_autodetection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014tea5767: It is not a TEA5767. Received %i bytes.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tea5767_autodetection\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tea5767.c\00", [33 x i8] zeroinitializer }, align 32
@tea5767_autodetection._entry_ptr = internal global ptr @tea5767_autodetection._entry, section ".printk_index", align 4
@tea5767_autodetection._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014tea5767: All bytes are equal. It is not a TEA5767\0A\00", [43 x i8] zeroinitializer }, align 32
@tea5767_autodetection._entry_ptr.5 = internal global ptr @tea5767_autodetection._entry.3, section ".printk_index", align 4
@tea5767_autodetection._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014tea5767: Chip ID is not zero. It is not a TEA5767\0A\00", [43 x i8] zeroinitializer }, align 32
@tea5767_autodetection._entry_ptr.8 = internal global ptr @tea5767_autodetection._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea5767\00", [24 x i8] zeroinitializer }, align 32
@tea5767_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"tea5767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @tea5767_release, ptr null, ptr @tea5767_standby, ptr null, ptr null, ptr null, ptr @set_radio_freq, ptr @tea5767_set_config, ptr @tea5767_get_frequency, ptr null, ptr null, ptr @tea5767_get_status, ptr @tea5767_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tea5767_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5767_attach\00", [17 x i8] zeroinitializer }, align 32
@tea5767_attach._entry_ptr = internal global ptr @tea5767_attach._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Philips TEA5767HN FM Radio\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_tea5767_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5767_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5767_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5767_attach to i32), ptr @__kstrtab_tea5767_attach, ptr @__kstrtabns_tea5767_attach }, section "___ksymtab_gpl+tea5767_attach", align 4
@__kstrtab_tea5767_autodetection = external dso_local constant [0 x i8], align 1
@__kstrtabns_tea5767_autodetection = external dso_local constant [0 x i8], align 1
@__ksymtab_tea5767_autodetection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tea5767_autodetection to i32), ptr @__kstrtab_tea5767_autodetection, ptr @__kstrtabns_tea5767_autodetection }, section "___ksymtab_gpl+tea5767_autodetection", align 4
@__UNIQUE_ID_description292 = internal constant [52 x i8] c"tea5767.description=Philips TEA5767 FM tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [58 x i8] c"tea5767.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [42 x i8] c"tea5767.file=drivers/media/tuners/tea5767\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"tea5767.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tea5767_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 5)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tea5767_standby\00", [16 x i8] zeroinitializer }, align 32
@tea5767_standby._entry_ptr = internal global ptr @tea5767_standby._entry, section ".printk_index", align 4
@set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s %d-%04x: radio freq = %d.%03d MHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_radio_freq\00", [17 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr = internal global ptr @set_radio_freq._entry, section ".printk_index", align 4
@set_radio_freq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: TEA5767 set to mono\0A\00", [61 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.19 = internal global ptr @set_radio_freq._entry.17, section ".printk_index", align 4
@set_radio_freq._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: TEA5767 set to stereo\0A\00", [59 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.22 = internal global ptr @set_radio_freq._entry.20, section ".printk_index", align 4
@set_radio_freq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 13 MHz\0A\00", [46 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.25 = internal global ptr @set_radio_freq._entry.23, section ".printk_index", align 4
@set_radio_freq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 13 MHz\0A\00", [47 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.28 = internal global ptr @set_radio_freq._entry.26, section ".printk_index", align 4
@set_radio_freq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 32,768 MHz\0A\00", [43 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.31 = internal global ptr @set_radio_freq._entry.29, section ".printk_index", align 4
@set_radio_freq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 32,768 MHz\0A\00", [42 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.34 = internal global ptr @set_radio_freq._entry.32, section ".printk_index", align 4
@set_radio_freq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.16, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.36 = internal global ptr @set_radio_freq._entry.35, section ".printk_index", align 4
@set_radio_freq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.16, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.38 = internal global ptr @set_radio_freq._entry.37, section ".printk_index", align 4
@tea5767_status_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s %d-%04x: Ready Flag ON\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tea5767_status_dump\00", [44 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr = internal global ptr @tea5767_status_dump._entry, section ".printk_index", align 4
@tea5767_status_dump._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: Ready Flag OFF\0A\00", [34 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.43 = internal global ptr @tea5767_status_dump._entry.41, section ".printk_index", align 4
@tea5767_status_dump._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: Tuner at band limit\0A\00", [61 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.46 = internal global ptr @tea5767_status_dump._entry.44, section ".printk_index", align 4
@tea5767_status_dump._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s %d-%04x: Tuner not at band limit\0A\00", [57 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.49 = internal global ptr @tea5767_status_dump._entry.47, section ".printk_index", align 4
@tea5767_status_dump._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s %d-%04x: Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", [40 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.52 = internal global ptr @tea5767_status_dump._entry.50, section ".printk_index", align 4
@tea5767_status_dump._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s %d-%04x: Stereo\0A\00", [42 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.55 = internal global ptr @tea5767_status_dump._entry.53, section ".printk_index", align 4
@tea5767_status_dump._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s %d-%04x: Mono\0A\00", [44 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.58 = internal global ptr @tea5767_status_dump._entry.56, section ".printk_index", align 4
@tea5767_status_dump._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s %d-%04x: IF Counter = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.61 = internal global ptr @tea5767_status_dump._entry.59, section ".printk_index", align 4
@tea5767_status_dump._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.40, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: ADC Level = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.64 = internal global ptr @tea5767_status_dump._entry.62, section ".printk_index", align 4
@tea5767_status_dump._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.40, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s %d-%04x: Chip ID = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.67 = internal global ptr @tea5767_status_dump._entry.65, section ".printk_index", align 4
@tea5767_status_dump._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.40, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s %d-%04x: Reserved = 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@tea5767_status_dump._entry_ptr.70 = internal global ptr @tea5767_status_dump._entry.68, section ".printk_index", align 4
@tea5767_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.71, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tea5767_read_status\00", [44 x i8] zeroinitializer }, align 32
@tea5767_read_status._entry_ptr = internal global ptr @tea5767_read_status._entry, section ".printk_index", align 4
@tea5767_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5767_signal\00", [17 x i8] zeroinitializer }, align 32
@tea5767_signal._entry_ptr = internal global ptr @tea5767_signal._entry, section ".printk_index", align 4
@tea5767_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: Radio ST GET = %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5767_stereo\00", [17 x i8] zeroinitializer }, align 32
@tea5767_stereo._entry_ptr = internal global ptr @tea5767_stereo._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 19, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 376, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 383, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 393, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 451, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"tea5767_tuner_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 424, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 463, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 363, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 196, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 204, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 207, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 242, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 247, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 252, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 259, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 270, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 274, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 138, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 140, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 143, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 145, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 167, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 171, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 173, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 175, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 177, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 180, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 182, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 291, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 304, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [34 x i8] c"../drivers/media/tuners/tea5767.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 315, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tea5767_attach, ptr @__ksymtab_tea5767_autodetection, ptr @__param_debug, ptr @set_radio_freq._entry, ptr @set_radio_freq._entry.17, ptr @set_radio_freq._entry.20, ptr @set_radio_freq._entry.23, ptr @set_radio_freq._entry.26, ptr @set_radio_freq._entry.29, ptr @set_radio_freq._entry.32, ptr @set_radio_freq._entry.35, ptr @set_radio_freq._entry.37, ptr @set_radio_freq._entry_ptr, ptr @set_radio_freq._entry_ptr.19, ptr @set_radio_freq._entry_ptr.22, ptr @set_radio_freq._entry_ptr.25, ptr @set_radio_freq._entry_ptr.28, ptr @set_radio_freq._entry_ptr.31, ptr @set_radio_freq._entry_ptr.34, ptr @set_radio_freq._entry_ptr.36, ptr @set_radio_freq._entry_ptr.38, ptr @tea5767_attach._entry, ptr @tea5767_attach._entry_ptr, ptr @tea5767_autodetection._entry, ptr @tea5767_autodetection._entry.3, ptr @tea5767_autodetection._entry.6, ptr @tea5767_autodetection._entry_ptr, ptr @tea5767_autodetection._entry_ptr.5, ptr @tea5767_autodetection._entry_ptr.8, ptr @tea5767_read_status._entry, ptr @tea5767_read_status._entry_ptr, ptr @tea5767_signal._entry, ptr @tea5767_signal._entry_ptr, ptr @tea5767_standby._entry, ptr @tea5767_standby._entry_ptr, ptr @tea5767_status_dump._entry, ptr @tea5767_status_dump._entry.41, ptr @tea5767_status_dump._entry.44, ptr @tea5767_status_dump._entry.47, ptr @tea5767_status_dump._entry.50, ptr @tea5767_status_dump._entry.53, ptr @tea5767_status_dump._entry.56, ptr @tea5767_status_dump._entry.59, ptr @tea5767_status_dump._entry.62, ptr @tea5767_status_dump._entry.65, ptr @tea5767_status_dump._entry.68, ptr @tea5767_status_dump._entry_ptr, ptr @tea5767_status_dump._entry_ptr.43, ptr @tea5767_status_dump._entry_ptr.46, ptr @tea5767_status_dump._entry_ptr.49, ptr @tea5767_status_dump._entry_ptr.52, ptr @tea5767_status_dump._entry_ptr.55, ptr @tea5767_status_dump._entry_ptr.58, ptr @tea5767_status_dump._entry_ptr.61, ptr @tea5767_status_dump._entry_ptr.64, ptr @tea5767_status_dump._entry_ptr.67, ptr @tea5767_status_dump._entry_ptr.70, ptr @tea5767_stereo._entry, ptr @tea5767_stereo._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @tea5767_tuner_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_autodetection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_autodetection._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_autodetection._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_status_dump._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea5767_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tea5767_autodetection(ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buffer) #7
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 524287, ptr %1, align 4
  %conv.i = zext i8 %i2c_addr to i16
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer, ptr %buf4.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i, i32 7, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len.call.i)
  %cmp = icmp slt i32 %len.call.i, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %len.call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer, align 1
  %arrayidx2 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp4 = icmp eq i8 %7, %9
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %arrayidx8 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %11)
  %cmp10 = icmp eq i8 %7, %11
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx15 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %13)
  %cmp17 = icmp eq i8 %7, %13
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true12.if.end32_crit_edge

land.lhs.true12.if.end32_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %arrayidx22 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %15)
  %cmp24 = icmp eq i8 %7, %15
  br i1 %cmp24, label %do.end29, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end29:                                         ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true19.if.end32_crit_edge, %land.lhs.true12.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %arrayidx33 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx33, align 1
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp35.not = icmp eq i8 %18, 0
  br i1 %cmp35.not, label %lor.lhs.false, label %if.end32.do.end44_crit_edge

if.end32.do.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false:                                    ; preds = %if.end32
  %arrayidx37 = getelementptr inbounds [7 x i8], ptr %buffer, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp39.not = icmp eq i8 %20, 0
  br i1 %cmp39.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end44_crit_edge

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %lor.lhs.false.do.end44_crit_edge, %if.end32.do.end44_crit_edge
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %lor.lhs.false.cleanup_crit_edge, %do.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end29 ], [ -22, %do.end44 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tea5767_attach(ptr noundef writeonly %fe, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %ctrl = getelementptr inbounds %struct.tea5767_priv, ptr %call7.i.i, i32 0, i32 2
  %xtal_freq = getelementptr inbounds %struct.tea5767_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %xtal_freq, align 8
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ctrl, align 4
  %bf.set19 = or i8 %bf.load, -12
  store i8 %bf.set19, ptr %ctrl, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %7 = call ptr @memcpy(ptr %tuner_ops, ptr @tea5767_tuner_ops, i32 220)
  %tobool.not = icmp eq ptr %i2c_adap, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %conv = zext i8 %i2c_addr to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %cond.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tea5767_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5767_standby(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #7
  %0 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 27, ptr %buffer, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 107, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -26, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 393215, ptr %11, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 4
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffer, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %20 = and i32 %call.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %24 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap.i, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %27, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 4
  %conv16 = zext i8 %29 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %23, i32 noundef %cond, i32 noundef %conv16, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_radio_freq(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %msg.i477 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #7
  %4 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 4
  %8 = call ptr @memset(ptr %buffer, i32 255, i32 5)
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %conv = zext i8 %17 to i32
  %div8 = udiv i32 %3, 16000
  %div9467 = lshr i32 %3, 4
  %rem = urem i32 %div9467, 1000
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %11, i32 noundef %cond, i32 noundef %conv, i32 noundef %div8, i32 noundef %rem) #10
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %entry.do.end14_crit_edge
  %ctrl = getelementptr inbounds %struct.tea5767_priv, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ctrl, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.load.lobit, ptr %5, align 1
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %20 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %cmp, label %do.body23, label %do.body56

do.body23:                                        ; preds = %do.end14
  br i1 %tobool24.not, label %do.body23.do.end51_crit_edge, label %do.end29

do.body23.do.end51_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

do.end29:                                         ; preds = %do.body23
  %name32 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name32, align 4
  %adap34 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %adap34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap34, align 4
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %do.end29.cond.end41_crit_edge, label %cond.true36

do.end29.cond.end41_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end41

cond.true36:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i470 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %nr.i470 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i470, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true36, %do.end29.cond.end41_crit_edge
  %cond42 = phi i32 [ %28, %cond.true36 ], [ -1, %do.end29.cond.end41_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %conv45 = zext i8 %30 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %24, i32 noundef %cond42, i32 noundef %conv45) #10
  br label %do.end51

do.end51:                                         ; preds = %cond.end41, %do.body23.do.end51_crit_edge
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 1
  %33 = or i8 %32, 8
  store i8 %33, ptr %5, align 1
  br label %if.end85

do.body56:                                        ; preds = %do.end14
  br i1 %tobool24.not, label %do.body56.if.end85_crit_edge, label %do.end62

do.body56.if.end85_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end62:                                         ; preds = %do.body56
  %name65 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %name65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name65, align 4
  %adap67 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %adap67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap67, align 4
  %tobool68.not = icmp eq ptr %37, null
  br i1 %tobool68.not, label %do.end62.cond.end74_crit_edge, label %cond.true69

do.end62.cond.end74_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end74

cond.true69:                                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i471 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %nr.i471 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i471, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true69, %do.end62.cond.end74_crit_edge
  %cond75 = phi i32 [ %39, %cond.true69 ], [ -1, %do.end62.cond.end74_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 4
  %conv78 = zext i8 %41 to i32
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %35, i32 noundef %cond75, i32 noundef %conv78) #10
  br label %if.end85

if.end85:                                         ; preds = %cond.end74, %do.body56.if.end85_crit_edge, %do.end51
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load88 = load i8, ptr %ctrl, align 4
  %43 = shl i8 %bf.load88, 1
  %44 = and i8 %43, -128
  %45 = lshr i8 %bf.load88, 3
  %46 = and i8 %45, 4
  %47 = or i8 %46, %44
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %6, align 1
  %49 = and i8 %bf.load88, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool115.not = icmp eq i8 %49, 0
  br i1 %tobool115.not, label %if.end85.if.end121_crit_edge, label %if.then116

if.end85.if.end121_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then116:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %6, align 1
  %52 = or i8 %51, 2
  store i8 %52, ptr %6, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %if.end85.if.end121_crit_edge
  %53 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load123 = load i8, ptr %ctrl, align 4
  %54 = and i8 %bf.load123, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool127.not = icmp eq i8 %54, 0
  br i1 %tobool127.not, label %if.end121.if.end133_crit_edge, label %if.then128

if.end121.if.end133_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %57 = or i8 %56, 8
  store i8 %57, ptr %6, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.end121.if.end133_crit_edge
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load135 = load i8, ptr %ctrl, align 4
  %59 = and i8 %bf.load135, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool139.not = icmp eq i8 %59, 0
  br i1 %tobool139.not, label %if.end133.if.end145_crit_edge, label %if.then140

if.end133.if.end145_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then140:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %6, align 1
  %62 = or i8 %61, 32
  store i8 %62, ptr %6, align 1
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end133.if.end145_crit_edge
  %63 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load148 = load i8, ptr %ctrl, align 4
  %rev = call i8 @llvm.bitreverse.i8(i8 %bf.load148)
  %64 = and i8 %rev, -64
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %7, align 1
  %xtal_freq = getelementptr inbounds %struct.tea5767_priv, ptr %1, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xtal_freq, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %do.body280 [
    i32 3, label %do.body171
    i32 2, label %do.body208
    i32 0, label %do.body242
  ]

do.body171:                                       ; preds = %if.end145
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool172.not = icmp eq i32 %69, 0
  br i1 %tobool172.not, label %do.body171.do.end199_crit_edge, label %do.end177

do.body171.do.end199_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end199

do.end177:                                        ; preds = %do.body171
  %name180 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %name180 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name180, align 4
  %adap182 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %adap182 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap182, align 4
  %tobool183.not = icmp eq ptr %73, null
  br i1 %tobool183.not, label %do.end177.cond.end189_crit_edge, label %cond.true184

do.end177.cond.end189_crit_edge:                  ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end189

cond.true184:                                     ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i472 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %nr.i472 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr.i472, align 4
  br label %cond.end189

cond.end189:                                      ; preds = %cond.true184, %do.end177.cond.end189_crit_edge
  %cond190 = phi i32 [ %75, %cond.true184 ], [ -1, %do.end177.cond.end189_crit_edge ]
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %1, align 4
  %conv193 = zext i8 %77 to i32
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %71, i32 noundef %cond190, i32 noundef %conv193) #10
  br label %do.end199

do.end199:                                        ; preds = %cond.end189, %do.body171.do.end199_crit_edge
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %5, align 1
  %80 = or i8 %79, 16
  store i8 %80, ptr %5, align 1
  %mul = mul i32 %3, 250
  %add205 = add i32 %mul, 950000
  %div206 = udiv i32 %add205, 50000
  br label %sw.epilog

do.body208:                                       ; preds = %if.end145
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool209.not = icmp eq i32 %81, 0
  br i1 %tobool209.not, label %do.body208.do.end236_crit_edge, label %do.end214

do.body208.do.end236_crit_edge:                   ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end236

do.end214:                                        ; preds = %do.body208
  %name217 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %name217 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name217, align 4
  %adap219 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %adap219 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adap219, align 4
  %tobool220.not = icmp eq ptr %85, null
  br i1 %tobool220.not, label %do.end214.cond.end226_crit_edge, label %cond.true221

do.end214.cond.end226_crit_edge:                  ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end226

cond.true221:                                     ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i473 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %nr.i473 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr.i473, align 4
  br label %cond.end226

cond.end226:                                      ; preds = %cond.true221, %do.end214.cond.end226_crit_edge
  %cond227 = phi i32 [ %87, %cond.true221 ], [ -1, %do.end214.cond.end226_crit_edge ]
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %1, align 4
  %conv230 = zext i8 %89 to i32
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %83, i32 noundef %cond227, i32 noundef %conv230) #10
  br label %do.end236

do.end236:                                        ; preds = %cond.end226, %do.body208.do.end236_crit_edge
  %mul237 = mul i32 %3, 250
  %add239 = add i32 %mul237, -900000
  %div240 = udiv i32 %add239, 50000
  br label %sw.epilog

do.body242:                                       ; preds = %if.end145
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool243.not = icmp eq i32 %90, 0
  br i1 %tobool243.not, label %do.body242.do.end270_crit_edge, label %do.end248

do.body242.do.end270_crit_edge:                   ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end270

do.end248:                                        ; preds = %do.body242
  %name251 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %91 = ptrtoint ptr %name251 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name251, align 4
  %adap253 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %93 = ptrtoint ptr %adap253 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adap253, align 4
  %tobool254.not = icmp eq ptr %94, null
  br i1 %tobool254.not, label %do.end248.cond.end260_crit_edge, label %cond.true255

do.end248.cond.end260_crit_edge:                  ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end260

cond.true255:                                     ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i474 = getelementptr inbounds %struct.i2c_adapter, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %nr.i474 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr.i474, align 4
  br label %cond.end260

cond.end260:                                      ; preds = %cond.true255, %do.end248.cond.end260_crit_edge
  %cond261 = phi i32 [ %96, %cond.true255 ], [ -1, %do.end248.cond.end260_crit_edge ]
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %1, align 4
  %conv264 = zext i8 %98 to i32
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %92, i32 noundef %cond261, i32 noundef %conv264) #10
  br label %do.end270

do.end270:                                        ; preds = %cond.end260, %do.body242.do.end270_crit_edge
  %99 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %6, align 1
  %101 = or i8 %100, 16
  store i8 %101, ptr %6, align 1
  %mul275 = mul i32 %3, 250
  %add278 = add i32 %mul275, -908616
  %shr = lshr i32 %add278, 15
  br label %sw.epilog

do.body280:                                       ; preds = %if.end145
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool281.not = icmp eq i32 %102, 0
  br i1 %tobool281.not, label %do.body280.do.end308_crit_edge, label %do.end286

do.body280.do.end308_crit_edge:                   ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end308

do.end286:                                        ; preds = %do.body280
  %name289 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %name289 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name289, align 4
  %adap291 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %adap291 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adap291, align 4
  %tobool292.not = icmp eq ptr %106, null
  br i1 %tobool292.not, label %do.end286.cond.end298_crit_edge, label %cond.true293

do.end286.cond.end298_crit_edge:                  ; preds = %do.end286
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end298

cond.true293:                                     ; preds = %do.end286
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i475 = getelementptr inbounds %struct.i2c_adapter, ptr %106, i32 0, i32 11
  %107 = ptrtoint ptr %nr.i475 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr.i475, align 4
  br label %cond.end298

cond.end298:                                      ; preds = %cond.true293, %do.end286.cond.end298_crit_edge
  %cond299 = phi i32 [ %108, %cond.true293 ], [ -1, %do.end286.cond.end298_crit_edge ]
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %1, align 4
  %conv302 = zext i8 %110 to i32
  %call303 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %104, i32 noundef %cond299, i32 noundef %conv302) #10
  br label %do.end308

do.end308:                                        ; preds = %cond.end298, %do.body280.do.end308_crit_edge
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %5, align 1
  %113 = or i8 %112, 16
  store i8 %113, ptr %5, align 1
  %114 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %6, align 1
  %116 = or i8 %115, 16
  store i8 %116, ptr %6, align 1
  %mul317 = mul i32 %3, 250
  %add320 = add i32 %mul317, 941384
  %shr321 = lshr i32 %add320, 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end308, %do.end270, %do.end236, %do.end199
  %div.0 = phi i32 [ %shr321, %do.end308 ], [ %shr, %do.end270 ], [ %div240, %do.end236 ], [ %div206, %do.end199 ]
  %shr322 = lshr i32 %div.0, 8
  %117 = trunc i32 %shr322 to i8
  %conv323 = and i8 %117, 63
  %118 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv323, ptr %buffer, align 1
  %conv326 = trunc i32 %div.0 to i8
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv326, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %120 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 393215, ptr %120, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %1, align 4
  %conv.i = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %126 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %buffer, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %129 = and i32 %call.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %sw.epilog.if.end359_crit_edge, label %do.end337

sw.epilog.if.end359_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end359

do.end337:                                        ; preds = %sw.epilog
  %name340 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %131 = ptrtoint ptr %name340 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name340, align 4
  %133 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adap.i, align 4
  %tobool343.not = icmp eq ptr %134, null
  br i1 %tobool343.not, label %do.end337.cond.end349_crit_edge, label %cond.true344

do.end337.cond.end349_crit_edge:                  ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end349

cond.true344:                                     ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i476 = getelementptr inbounds %struct.i2c_adapter, ptr %134, i32 0, i32 11
  %135 = ptrtoint ptr %nr.i476 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nr.i476, align 4
  br label %cond.end349

cond.end349:                                      ; preds = %cond.true344, %do.end337.cond.end349_crit_edge
  %cond350 = phi i32 [ %136, %cond.true344 ], [ -1, %do.end337.cond.end349_crit_edge ]
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %1, align 4
  %conv353 = zext i8 %138 to i32
  %call354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %132, i32 noundef %cond350, i32 noundef %conv353, i32 noundef %call.i) #10
  br label %if.end359

if.end359:                                        ; preds = %cond.end349, %sw.epilog.if.end359_crit_edge
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool360.not = icmp eq i32 %139, 0
  br i1 %tobool360.not, label %if.end359.if.end397_crit_edge, label %if.then361

if.end359.if.end397_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end397

if.then361:                                       ; preds = %if.end359
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i477) #7
  %140 = getelementptr inbounds i8, ptr %msg.i477, i32 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 393215, ptr %140, align 4
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %1, align 4
  %conv.i478 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i477 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i478, ptr %msg.i477, align 4
  %flags.i479 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i479 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %flags.i479, align 2
  %buf4.i481 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477, i32 0, i32 3
  %146 = ptrtoint ptr %buf4.i481 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buffer, ptr %buf4.i481, align 4
  %147 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %adap.i, align 4
  %call.i483 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i477, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i477) #7
  %149 = and i32 %call.i483, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %if.else394, label %do.end372

do.end372:                                        ; preds = %if.then361
  %name375 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %151 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name375, align 4
  %153 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adap.i, align 4
  %tobool378.not = icmp eq ptr %154, null
  br i1 %tobool378.not, label %do.end372.cond.end384_crit_edge, label %cond.true379

do.end372.cond.end384_crit_edge:                  ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end384

cond.true379:                                     ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i485 = getelementptr inbounds %struct.i2c_adapter, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %nr.i485 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nr.i485, align 4
  br label %cond.end384

cond.end384:                                      ; preds = %cond.true379, %do.end372.cond.end384_crit_edge
  %cond385 = phi i32 [ %156, %cond.true379 ], [ -1, %do.end372.cond.end384_crit_edge ]
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %1, align 4
  %conv388 = zext i8 %158 to i32
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %152, i32 noundef %cond385, i32 noundef %conv388, i32 noundef %call.i483) #10
  br label %if.end397

if.else394:                                       ; preds = %if.then361
  %159 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %160)
  %tobool.not.i = icmp sgt i8 %160, -1
  %name21.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %161 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %name21.i, align 4
  %163 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %adap.i, align 4
  %tobool24.not.i = icmp eq ptr %164, null
  br i1 %tobool.not.i, label %do.end18.i, label %do.end.i

do.end.i:                                         ; preds = %if.else394
  br i1 %tobool24.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 11
  %165 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %166, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %1, align 4
  %conv8.i = zext i8 %168 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %162, i32 noundef %cond.i, i32 noundef %conv8.i) #10
  br label %if.end.i

do.end18.i:                                       ; preds = %if.else394
  br i1 %tobool24.not.i, label %do.end18.i.cond.end30.i_crit_edge, label %cond.true25.i

do.end18.i.cond.end30.i_crit_edge:                ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30.i

cond.true25.i:                                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i404.i = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 11
  %169 = ptrtoint ptr %nr.i404.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nr.i404.i, align 4
  br label %cond.end30.i

cond.end30.i:                                     ; preds = %cond.true25.i, %do.end18.i.cond.end30.i_crit_edge
  %cond31.i = phi i32 [ %170, %cond.true25.i ], [ -1, %do.end18.i.cond.end30.i_crit_edge ]
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %1, align 4
  %conv34.i = zext i8 %172 to i32
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %162, i32 noundef %cond31.i, i32 noundef %conv34.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end30.i, %cond.end.i
  %173 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %buffer, align 1
  %175 = and i8 %174, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool43.not.i = icmp eq i8 %175, 0
  %176 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name21.i, align 4
  %178 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %adap.i, align 4
  %tobool82.not.i = icmp eq ptr %179, null
  br i1 %tobool43.not.i, label %do.end76.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end.i
  br i1 %tobool82.not.i, label %do.end49.i.cond.end61.i_crit_edge, label %cond.true56.i

do.end49.i.cond.end61.i_crit_edge:                ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end61.i

cond.true56.i:                                    ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i405.i = getelementptr inbounds %struct.i2c_adapter, ptr %179, i32 0, i32 11
  %180 = ptrtoint ptr %nr.i405.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nr.i405.i, align 4
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true56.i, %do.end49.i.cond.end61.i_crit_edge
  %cond62.i = phi i32 [ %181, %cond.true56.i ], [ -1, %do.end49.i.cond.end61.i_crit_edge ]
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %1, align 4
  %conv65.i = zext i8 %183 to i32
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %177, i32 noundef %cond62.i, i32 noundef %conv65.i) #10
  br label %if.end98.i

do.end76.i:                                       ; preds = %if.end.i
  br i1 %tobool82.not.i, label %do.end76.i.cond.end88.i_crit_edge, label %cond.true83.i

do.end76.i.cond.end88.i_crit_edge:                ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end88.i

cond.true83.i:                                    ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i406.i = getelementptr inbounds %struct.i2c_adapter, ptr %179, i32 0, i32 11
  %184 = ptrtoint ptr %nr.i406.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nr.i406.i, align 4
  br label %cond.end88.i

cond.end88.i:                                     ; preds = %cond.true83.i, %do.end76.i.cond.end88.i_crit_edge
  %cond89.i = phi i32 [ %185, %cond.true83.i ], [ -1, %do.end76.i.cond.end88.i_crit_edge ]
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %1, align 4
  %conv92.i = zext i8 %187 to i32
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %177, i32 noundef %cond89.i, i32 noundef %conv92.i) #10
  br label %if.end98.i

if.end98.i:                                       ; preds = %cond.end88.i, %cond.end61.i
  %188 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %buffer, align 1
  %190 = and i8 %189, 63
  %and101.i = zext i8 %190 to i32
  %shl.i = shl nuw nsw i32 %and101.i, 8
  %191 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %4, align 1
  %conv103.i = zext i8 %192 to i32
  %or.i = or i32 %shl.i, %conv103.i
  %193 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %xtal_freq, align 4
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %194, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb106.i
    i32 0, label %sw.bb110.i
  ]

sw.bb.i:                                          ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nuw nsw i32 %or.i, 50000
  %sub104.i = add nsw i32 %mul.i, -925000
  br label %sw.epilog.i

sw.bb106.i:                                       ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul107.i = mul nuw nsw i32 %or.i, 50000
  %add108.i = add nuw nsw i32 %mul107.i, 925000
  br label %sw.epilog.i

sw.bb110.i:                                       ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul111.i = shl nuw nsw i32 %or.i, 15
  %add113.i = add nuw nsw i32 %mul111.i, 925000
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul116.i = shl nuw nsw i32 %or.i, 15
  %sub118.i = add nsw i32 %mul116.i, -925000
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb110.i, %sw.bb106.i, %sw.bb.i
  %frq.0.in.i = phi i32 [ %sub118.i, %sw.default.i ], [ %add113.i, %sw.bb110.i ], [ %add108.i, %sw.bb106.i ], [ %sub104.i, %sw.bb.i ]
  %frq.0.i = lshr exact i32 %frq.0.in.i, 2
  %196 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %190, ptr %buffer, align 1
  %197 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name21.i, align 4
  %199 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adap.i, align 4
  %tobool136.not.i = icmp eq ptr %200, null
  br i1 %tobool136.not.i, label %sw.epilog.i.cond.end142.i_crit_edge, label %cond.true137.i

sw.epilog.i.cond.end142.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end142.i

cond.true137.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i407.i = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 11
  %201 = ptrtoint ptr %nr.i407.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nr.i407.i, align 4
  br label %cond.end142.i

cond.end142.i:                                    ; preds = %cond.true137.i, %sw.epilog.i.cond.end142.i_crit_edge
  %cond143.i = phi i32 [ %202, %cond.true137.i ], [ -1, %sw.epilog.i.cond.end142.i_crit_edge ]
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %1, align 4
  %conv146.i = zext i8 %204 to i32
  %div147.i = udiv i32 %frq.0.in.i, 4000
  %rem.i = urem i32 %frq.0.i, 1000
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %198, i32 noundef %cond143.i, i32 noundef %conv146.i, i32 noundef %div147.i, i32 noundef %rem.i, i32 noundef %or.i) #10
  %205 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %206)
  %tobool156.not.i = icmp sgt i8 %206, -1
  %207 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name21.i, align 4
  %209 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %adap.i, align 4
  %tobool195.not.i = icmp eq ptr %210, null
  br i1 %tobool156.not.i, label %do.end189.i, label %do.end162.i

do.end162.i:                                      ; preds = %cond.end142.i
  br i1 %tobool195.not.i, label %do.end162.i.cond.end174.i_crit_edge, label %cond.true169.i

do.end162.i.cond.end174.i_crit_edge:              ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end174.i

cond.true169.i:                                   ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i408.i = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 11
  %211 = ptrtoint ptr %nr.i408.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nr.i408.i, align 4
  br label %cond.end174.i

cond.end174.i:                                    ; preds = %cond.true169.i, %do.end162.i.cond.end174.i_crit_edge
  %cond175.i = phi i32 [ %212, %cond.true169.i ], [ -1, %do.end162.i.cond.end174.i_crit_edge ]
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %1, align 4
  %conv178.i = zext i8 %214 to i32
  %call179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %208, i32 noundef %cond175.i, i32 noundef %conv178.i) #10
  br label %do.end216.i

do.end189.i:                                      ; preds = %cond.end142.i
  br i1 %tobool195.not.i, label %do.end189.i.cond.end201.i_crit_edge, label %cond.true196.i

do.end189.i.cond.end201.i_crit_edge:              ; preds = %do.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end201.i

cond.true196.i:                                   ; preds = %do.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i409.i = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 11
  %215 = ptrtoint ptr %nr.i409.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %nr.i409.i, align 4
  br label %cond.end201.i

cond.end201.i:                                    ; preds = %cond.true196.i, %do.end189.i.cond.end201.i_crit_edge
  %cond202.i = phi i32 [ %216, %cond.true196.i ], [ -1, %do.end189.i.cond.end201.i_crit_edge ]
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %1, align 4
  %conv205.i = zext i8 %218 to i32
  %call206.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %208, i32 noundef %cond202.i, i32 noundef %conv205.i) #10
  br label %do.end216.i

do.end216.i:                                      ; preds = %cond.end201.i, %cond.end174.i
  %219 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name21.i, align 4
  %221 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %adap.i, align 4
  %tobool222.not.i = icmp eq ptr %222, null
  br i1 %tobool222.not.i, label %do.end216.i.cond.end228.i_crit_edge, label %cond.true223.i

do.end216.i.cond.end228.i_crit_edge:              ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end228.i

cond.true223.i:                                   ; preds = %do.end216.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i410.i = getelementptr inbounds %struct.i2c_adapter, ptr %222, i32 0, i32 11
  %223 = ptrtoint ptr %nr.i410.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nr.i410.i, align 4
  br label %cond.end228.i

cond.end228.i:                                    ; preds = %cond.true223.i, %do.end216.i.cond.end228.i_crit_edge
  %cond229.i = phi i32 [ %224, %cond.true223.i ], [ -1, %do.end216.i.cond.end228.i_crit_edge ]
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %1, align 4
  %conv232.i = zext i8 %226 to i32
  %227 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %5, align 1
  %229 = and i8 %228, 127
  %and235.i = zext i8 %229 to i32
  %call236.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %220, i32 noundef %cond229.i, i32 noundef %conv232.i, i32 noundef %and235.i) #10
  %230 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name21.i, align 4
  %232 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %adap.i, align 4
  %tobool251.not.i = icmp eq ptr %233, null
  br i1 %tobool251.not.i, label %cond.end228.i.cond.end257.i_crit_edge, label %cond.true252.i

cond.end228.i.cond.end257.i_crit_edge:            ; preds = %cond.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end257.i

cond.true252.i:                                   ; preds = %cond.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i411.i = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 11
  %234 = ptrtoint ptr %nr.i411.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %nr.i411.i, align 4
  br label %cond.end257.i

cond.end257.i:                                    ; preds = %cond.true252.i, %cond.end228.i.cond.end257.i_crit_edge
  %cond258.i = phi i32 [ %235, %cond.true252.i ], [ -1, %cond.end228.i.cond.end257.i_crit_edge ]
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %1, align 4
  %conv261.i = zext i8 %237 to i32
  %238 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %6, align 1
  %240 = lshr i8 %239, 4
  %241 = zext i8 %240 to i32
  %call266.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %231, i32 noundef %cond258.i, i32 noundef %conv261.i, i32 noundef %241) #10
  %242 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %name21.i, align 4
  %244 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %adap.i, align 4
  %tobool281.not.i = icmp eq ptr %245, null
  br i1 %tobool281.not.i, label %cond.end257.i.cond.end287.i_crit_edge, label %cond.true282.i

cond.end257.i.cond.end287.i_crit_edge:            ; preds = %cond.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end287.i

cond.true282.i:                                   ; preds = %cond.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i412.i = getelementptr inbounds %struct.i2c_adapter, ptr %245, i32 0, i32 11
  %246 = ptrtoint ptr %nr.i412.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %nr.i412.i, align 4
  br label %cond.end287.i

cond.end287.i:                                    ; preds = %cond.true282.i, %cond.end257.i.cond.end287.i_crit_edge
  %cond288.i = phi i32 [ %247, %cond.true282.i ], [ -1, %cond.end257.i.cond.end287.i_crit_edge ]
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %1, align 4
  %conv291.i = zext i8 %249 to i32
  %250 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %6, align 1
  %252 = and i8 %251, 15
  %and294.i = zext i8 %252 to i32
  %call295.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %243, i32 noundef %cond288.i, i32 noundef %conv291.i, i32 noundef %and294.i) #10
  %253 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %name21.i, align 4
  %255 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %adap.i, align 4
  %tobool310.not.i = icmp eq ptr %256, null
  br i1 %tobool310.not.i, label %cond.end287.i.tea5767_status_dump.exit_crit_edge, label %cond.true311.i

cond.end287.i.tea5767_status_dump.exit_crit_edge: ; preds = %cond.end287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_status_dump.exit

cond.true311.i:                                   ; preds = %cond.end287.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i413.i = getelementptr inbounds %struct.i2c_adapter, ptr %256, i32 0, i32 11
  %257 = ptrtoint ptr %nr.i413.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %nr.i413.i, align 4
  br label %tea5767_status_dump.exit

tea5767_status_dump.exit:                         ; preds = %cond.true311.i, %cond.end287.i.tea5767_status_dump.exit_crit_edge
  %cond317.i = phi i32 [ %258, %cond.true311.i ], [ -1, %cond.end287.i.tea5767_status_dump.exit_crit_edge ]
  %259 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %1, align 4
  %conv320.i = zext i8 %260 to i32
  %261 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %7, align 1
  %conv322.i = zext i8 %262 to i32
  %call324.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %254, i32 noundef %cond317.i, i32 noundef %conv320.i, i32 noundef %conv322.i) #10
  br label %if.end397

if.end397:                                        ; preds = %tea5767_status_dump.exit, %cond.end384, %if.end359.if.end397_crit_edge
  %mul398 = mul i32 %3, 125
  %div399466 = lshr i32 %mul398, 1
  %frequency400 = getelementptr inbounds %struct.tea5767_priv, ptr %1, i32 0, i32 1
  %263 = ptrtoint ptr %frequency400 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %div399466, ptr %frequency400, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea5767_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %ctrl = getelementptr inbounds %struct.tea5767_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %priv_cfg, align 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %ctrl, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea5767_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tea5767_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5767_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #7
  %0 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %status, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv.i, align 4
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 393215, ptr %5, align 4
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
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %14 = and i32 %call.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %if.then, label %do.end.i

do.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  %18 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap.i.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end.i.tea5767_read_status.exit_crit_edge, label %cond.true.i

do.end.i.tea5767_read_status.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_read_status.exit

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i.i, align 4
  br label %tea5767_read_status.exit

tea5767_read_status.exit:                         ; preds = %cond.true.i, %do.end.i.tea5767_read_status.exit_crit_edge
  %cond.i = phi i32 [ %21, %cond.true.i ], [ -1, %do.end.i.tea5767_read_status.exit_crit_edge ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 4
  %conv.i = zext i8 %23 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %17, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %call.i.i) #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %24 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %25 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tuner_priv.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %24, align 1
  %29 = and i8 %28, -16
  %and.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i15 = icmp eq i32 %30, 0
  br i1 %tobool.not.i15, label %if.then.tea5767_signal.exit_crit_edge, label %do.end.i17

if.then.tea5767_signal.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_signal.exit

do.end.i17:                                       ; preds = %if.then
  %name.i16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %name.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i16, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap.i, align 4
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %do.end.i17.cond.end.i22_crit_edge, label %cond.true.i19

do.end.i17.cond.end.i22_crit_edge:                ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i22

cond.true.i19:                                    ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i18 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %nr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr.i.i18, align 4
  br label %cond.end.i22

cond.end.i22:                                     ; preds = %cond.true.i19, %do.end.i17.cond.end.i22_crit_edge
  %cond.i20 = phi i32 [ %36, %cond.true.i19 ], [ -1, %do.end.i17.cond.end.i22_crit_edge ]
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %26, align 4
  %conv8.i = zext i8 %38 to i32
  %call9.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %32, i32 noundef %cond.i20, i32 noundef %conv8.i, i32 noundef %shl.i) #10
  br label %tea5767_signal.exit

tea5767_signal.exit:                              ; preds = %cond.end.i22, %if.then.tea5767_signal.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %tea5767_signal.exit.if.end_crit_edge, label %if.then3

tea5767_signal.exit.if.end_crit_edge:             ; preds = %tea5767_signal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %tea5767_signal.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %tea5767_signal.exit.if.end_crit_edge
  %40 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tuner_priv.i, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  %44 = and i8 %43, -128
  %and.i25 = zext i8 %44 to i32
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i26 = icmp eq i32 %45, 0
  br i1 %tobool.not.i26, label %if.end.tea5767_stereo.exit_crit_edge, label %do.end.i30

if.end.tea5767_stereo.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_stereo.exit

do.end.i30:                                       ; preds = %if.end
  %name.i27 = getelementptr inbounds %struct.tuner_i2c_props, ptr %41, i32 0, i32 3
  %46 = ptrtoint ptr %name.i27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i27, align 4
  %adap.i28 = getelementptr inbounds %struct.tuner_i2c_props, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %adap.i28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adap.i28, align 4
  %tobool4.not.i29 = icmp eq ptr %49, null
  br i1 %tobool4.not.i29, label %do.end.i30.cond.end.i36_crit_edge, label %cond.true.i32

do.end.i30.cond.end.i36_crit_edge:                ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i36

cond.true.i32:                                    ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i31 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %nr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr.i.i31, align 4
  br label %cond.end.i36

cond.end.i36:                                     ; preds = %cond.true.i32, %do.end.i30.cond.end.i36_crit_edge
  %cond.i33 = phi i32 [ %51, %cond.true.i32 ], [ -1, %do.end.i30.cond.end.i36_crit_edge ]
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %41, align 4
  %conv8.i34 = zext i8 %53 to i32
  %call9.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %47, i32 noundef %cond.i33, i32 noundef %conv8.i34, i32 noundef %and.i25) #10
  br label %tea5767_stereo.exit

tea5767_stereo.exit:                              ; preds = %cond.end.i36, %if.end.tea5767_stereo.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool6.not = icmp eq i8 %44, 0
  br i1 %tobool6.not, label %tea5767_stereo.exit.if.end9_crit_edge, label %if.then7

tea5767_stereo.exit.if.end9_crit_edge:            ; preds = %tea5767_stereo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %tea5767_stereo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %or = or i32 %55, 2
  store i32 %or, ptr %status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %tea5767_stereo.exit.if.end9_crit_edge, %tea5767_read_status.exit
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea5767_get_rf_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #7
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %strength, align 2
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %1 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tuner_priv.i, align 4
  %3 = call ptr @memset(ptr %buffer, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 393215, ptr %4, align 4
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
  %call.i.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %13 = and i32 %call.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %if.then, label %do.end.i

do.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %17 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.i.tea5767_read_status.exit_crit_edge, label %cond.true.i

do.end.i.tea5767_read_status.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_read_status.exit

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i.i, align 4
  br label %tea5767_read_status.exit

tea5767_read_status.exit:                         ; preds = %cond.true.i, %do.end.i.tea5767_read_status.exit_crit_edge
  %cond.i = phi i32 [ %20, %cond.true.i ], [ -1, %do.end.i.tea5767_read_status.exit_crit_edge ]
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 4
  %conv.i = zext i8 %22 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %16, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %call.i.i) #10
  br label %if.end

if.then:                                          ; preds = %entry
  %23 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %24 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tuner_priv.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %23, align 1
  %28 = and i8 %27, -16
  %and.i = zext i8 %28 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i6 = icmp eq i32 %29, 0
  br i1 %tobool.not.i6, label %if.then.tea5767_signal.exit_crit_edge, label %do.end.i8

if.then.tea5767_signal.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %tea5767_signal.exit

do.end.i8:                                        ; preds = %if.then
  %name.i7 = getelementptr inbounds %struct.tuner_i2c_props, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %name.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i7, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %do.end.i8.cond.end.i13_crit_edge, label %cond.true.i10

do.end.i8.cond.end.i13_crit_edge:                 ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i13

cond.true.i10:                                    ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i9 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %nr.i.i9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr.i.i9, align 4
  br label %cond.end.i13

cond.end.i13:                                     ; preds = %cond.true.i10, %do.end.i8.cond.end.i13_crit_edge
  %cond.i11 = phi i32 [ %35, %cond.true.i10 ], [ -1, %do.end.i8.cond.end.i13_crit_edge ]
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %25, align 4
  %conv8.i = zext i8 %37 to i32
  %call9.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %31, i32 noundef %cond.i11, i32 noundef %conv8.i, i32 noundef %shl.i) #10
  br label %tea5767_signal.exit

tea5767_signal.exit:                              ; preds = %cond.end.i13, %if.then.tea5767_signal.exit_crit_edge
  %conv = trunc i32 %shl.i to i16
  %38 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %strength, align 2
  br label %if.end

if.end:                                           ; preds = %tea5767_signal.exit, %tea5767_read_status.exit
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tea5767.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tea5767.c", i32 21, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tea5767.c", i32 376, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tea5767_autodetection._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @tea5767_autodetection._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/tea5767.c", i32 383, i32 3}
!13 = !{ptr @tea5767_autodetection._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tea5767_autodetection._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/tea5767.c", i32 393, i32 3}
!17 = !{ptr @tea5767_autodetection._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tea5767_autodetection._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/tea5767.c", i32 451, i32 26}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/tea5767.c", i32 463, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tea5767_attach._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tea5767_attach._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__ksymtab_tea5767_attach, !28, !"__ksymtab_tea5767_attach", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/tea5767.c", i32 468, i32 1}
!29 = !{ptr @__ksymtab_tea5767_autodetection, !30, !"__ksymtab_tea5767_autodetection", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/tea5767.c", i32 469, i32 1}
!31 = !{ptr @__UNIQUE_ID_description292, !32, !"__UNIQUE_ID_description292", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/tea5767.c", i32 471, i32 1}
!33 = !{ptr @__UNIQUE_ID_author293, !34, !"__UNIQUE_ID_author293", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/tea5767.c", i32 472, i32 1}
!35 = !{ptr @__UNIQUE_ID_file294, !36, !"__UNIQUE_ID_file294", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/tea5767.c", i32 473, i32 1}
!37 = !{ptr @__UNIQUE_ID_license295, !36, !"__UNIQUE_ID_license295", i1 false, i1 false}
!38 = !{ptr @debug, !39, !"debug", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tea5767.c", i32 19, i32 12}
!40 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!41 = !{ptr @tea5767_tuner_ops, !42, !"tea5767_tuner_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/tea5767.c", i32 424, i32 35}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tea5767.c", i32 363, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tea5767_standby._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tea5767_standby._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tea5767.c", i32 196, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @set_radio_freq._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @set_radio_freq._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/tea5767.c", i32 204, i32 3}
!55 = !{ptr @set_radio_freq._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @set_radio_freq._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tea5767.c", i32 207, i32 3}
!59 = !{ptr @set_radio_freq._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @set_radio_freq._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/tea5767.c", i32 242, i32 3}
!63 = !{ptr @set_radio_freq._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @set_radio_freq._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/tea5767.c", i32 247, i32 3}
!67 = !{ptr @set_radio_freq._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @set_radio_freq._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tea5767.c", i32 252, i32 3}
!71 = !{ptr @set_radio_freq._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @set_radio_freq._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/tea5767.c", i32 259, i32 3}
!75 = !{ptr @set_radio_freq._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @set_radio_freq._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @set_radio_freq._entry.35, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/tuners/tea5767.c", i32 270, i32 3}
!79 = !{ptr @set_radio_freq._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @set_radio_freq._entry.37, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/tea5767.c", i32 274, i32 4}
!82 = !{ptr @set_radio_freq._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/tea5767.c", i32 138, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tea5767_status_dump._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tea5767_status_dump._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/tea5767.c", i32 140, i32 3}
!90 = !{ptr @tea5767_status_dump._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tea5767_status_dump._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/tea5767.c", i32 143, i32 3}
!94 = !{ptr @tea5767_status_dump._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tea5767_status_dump._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/tea5767.c", i32 145, i32 3}
!98 = !{ptr @tea5767_status_dump._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tea5767_status_dump._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/tea5767.c", i32 167, i32 2}
!102 = !{ptr @tea5767_status_dump._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tea5767_status_dump._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/tea5767.c", i32 171, i32 3}
!106 = !{ptr @tea5767_status_dump._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tea5767_status_dump._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/tea5767.c", i32 173, i32 3}
!110 = !{ptr @tea5767_status_dump._entry.56, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tea5767_status_dump._entry_ptr.58, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/tuners/tea5767.c", i32 175, i32 2}
!114 = !{ptr @tea5767_status_dump._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tea5767_status_dump._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/tuners/tea5767.c", i32 177, i32 2}
!118 = !{ptr @tea5767_status_dump._entry.62, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tea5767_status_dump._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/tuners/tea5767.c", i32 180, i32 2}
!122 = !{ptr @tea5767_status_dump._entry.65, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @tea5767_status_dump._entry_ptr.67, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/tuners/tea5767.c", i32 182, i32 2}
!126 = !{ptr @tea5767_status_dump._entry.68, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tea5767_status_dump._entry_ptr.70, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/tuners/tea5767.c", i32 291, i32 3}
!130 = !{ptr @tea5767_read_status._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @tea5767_read_status._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/tuners/tea5767.c", i32 304, i32 2}
!134 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tea5767_signal._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @tea5767_signal._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/tuners/tea5767.c", i32 315, i32 2}
!139 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tea5767_stereo._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @tea5767_stereo._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
