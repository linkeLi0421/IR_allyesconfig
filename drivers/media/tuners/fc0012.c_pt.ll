; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/fc0012.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0012.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc0012_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_fc0012_attach\09\09\09\09"
module asm "\09.long\09__crc_fc0012_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0012_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0012_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0012_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.fc0012_priv = type { ptr, ptr, i32, i32 }
%struct.fc0012_config = type { i8, i32, i8, i8, i8 }

@fc0012_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: kzalloc() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0012_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/fc0012.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fc0012_attach._entry_ptr = internal global ptr @fc0012_attach._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc0012\00", [25 x i8] zeroinitializer }, align 32
@fc0012_attach.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: chip_id=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@fc0012_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 464, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Fitipower FC0012 successfully identified\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fc0012_attach._entry_ptr.10 = internal global ptr @fc0012_attach._entry.7, section ".printk_index", align 4
@fc0012_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0012\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0012_release, ptr @fc0012_init, ptr null, ptr null, ptr null, ptr @fc0012_set_params, ptr null, ptr null, ptr @fc0012_get_frequency, ptr @fc0012_get_bandwidth, ptr @fc0012_get_if_frequency, ptr null, ptr @fc0012_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fc0012_attach.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: failed: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_fc0012_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0012_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0012_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0012_attach to i32), ptr @__kstrtab_fc0012_attach, ptr @__kstrtabns_fc0012_attach }, section "___ksymtab+fc0012_attach", align 4
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"fc0012.description=Fitipower FC0012 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [49 x i8] c"fc0012.author=Hans-Frieder Vogt <hfvogt@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [40 x i8] c"fc0012.file=drivers/media/tuners/fc0012\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"fc0012.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [19 x i8] c"fc0012.version=0.6\00", section ".modinfo", align 1
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.6\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.5, ptr @.str.13 }, section "__modver", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fc0012_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: I2C read reg failed, reg: %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc0012_readreg\00", [17 x i8] zeroinitializer }, align 32
@fc0012_readreg._entry_ptr = internal global ptr @fc0012_readreg._entry, section ".printk_index", align 4
@fc0012_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 21, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: I2C write reg failed, reg: %02x, val: %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc0012_writereg\00", [16 x i8] zeroinitializer }, align 32
@fc0012_writereg._entry_ptr = internal global ptr @fc0012_writereg._entry, section ".printk_index", align 4
@__const.fc0012_init.reg = private unnamed_addr constant [22 x i8] c"\00\05\10\00\00\0F\00\00\FFn\B8\82\FC\02\00\00\00\00\1F\08\00\04", align 1
@fc0012_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: fc0012_writereg failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc0012_init\00", [20 x i8] zeroinitializer }, align 32
@fc0012_init._entry_ptr = internal global ptr @fc0012_init._entry, section ".printk_index", align 4
@fc0012_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: modulation type not supported!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fc0012_set_params\00", [46 x i8] zeroinitializer }, align 32
@fc0012_set_params._entry_ptr = internal global ptr @fc0012_set_params._entry, section ".printk_index", align 4
@fc0012_set_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 313, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fc0012_set_params._entry_ptr.25 = internal global ptr @fc0012_set_params._entry.22, section ".printk_index", align 4
@fc0012_get_rf_strength.fc0012_lna_gain_table = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 -63, i32 -58, i32 -99, i32 -73, i32 -63, i32 -65, i32 -54, i32 -60, i32 71, i32 70, i32 68, i32 67, i32 65, i32 63, i32 61, i32 58, i32 197, i32 191, i32 188, i32 186, i32 184, i32 182, i32 181, i32 179], [32 x i8] zeroinitializer }, align 32
@fc0012_get_rf_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.26, ptr @.str.2, i32 403, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fc0012_get_rf_strength\00", [41 x i8] zeroinitializer }, align 32
@fc0012_get_rf_strength._entry_ptr = internal global ptr @fc0012_get_rf_strength._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6000000, i64 7000000]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 441, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 453, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 463, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"fc0012_tuner_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 407, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 491, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 503, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 37, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 19, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 112, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 249, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 312, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"fc0012_lna_gain_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 345, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [33 x i8] c"../drivers/media/tuners/fc0012.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 402, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__ksymtab_fc0012_attach, ptr @__modver_attr, ptr @fc0012_attach._entry, ptr @fc0012_attach._entry.7, ptr @fc0012_attach._entry_ptr, ptr @fc0012_attach._entry_ptr.10, ptr @fc0012_get_rf_strength._entry, ptr @fc0012_get_rf_strength._entry_ptr, ptr @fc0012_init._entry, ptr @fc0012_init._entry_ptr, ptr @fc0012_readreg._entry, ptr @fc0012_readreg._entry_ptr, ptr @fc0012_set_params._entry, ptr @fc0012_set_params._entry.22, ptr @fc0012_set_params._entry_ptr, ptr @fc0012_set_params._entry_ptr.25, ptr @fc0012_writereg._entry, ptr @fc0012_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @fc0012_tuner_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @fc0012_get_rf_strength.fc0012_lna_gain_table, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_set_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_get_rf_strength.fc0012_lna_gain_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0012_get_rf_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc0012_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %buf.i106 = alloca [2 x i8], align 1
  %msg.i107 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %chip_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chip_id) #7
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %chip_id, align 1, !annotation !76
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %1 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %2(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #11
  br label %err

if.end6:                                          ; preds = %if.end
  %cfg7 = getelementptr inbounds %struct.fc0012_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cfg7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cfg, ptr %cfg7, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cfg, align 4
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %chip_id, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.body12, label %fc0012_readreg.exit.thread

fc0012_readreg.exit.thread:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %err

do.body12:                                        ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc0012_attach.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc0012_attach, %if.then17)) #7
          to label %do.end21 [label %if.then17], !srcloc !77

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  %23 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_id, align 1
  %conv = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc0012_attach.__UNIQUE_ID_ddebug290, ptr noundef %dev18, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12
  %25 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %26)
  %cond = icmp eq i8 %26, -95
  br i1 %cond, label %do.end25, label %do.end21.err_crit_edge

do.end21.err_crit_edge:                           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end25:                                         ; preds = %do.end21
  %dev26 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #11
  %27 = ptrtoint ptr %cfg7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg7, align 4
  %loop_through = getelementptr inbounds %struct.fc0012_config, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %loop_through to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %loop_through, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  br i1 %tobool28.not, label %do.end25.if.end35_crit_edge, label %if.then29

do.end25.if.end35_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then29:                                        ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i106) #7
  %31 = getelementptr inbounds [2 x i8], ptr %buf.i106, i32 0, i32 1
  %32 = ptrtoint ptr %buf.i106 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %buf.i106, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 111, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i107) #7
  %34 = getelementptr inbounds i8, ptr %msg.i107, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %28, align 4
  %conv.i109 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i109, ptr %msg.i107, align 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i110, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 3
  %40 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i106, ptr %buf1.i, align 4
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %call.i112 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i107, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112)
  %cmp.not.i113 = icmp eq i32 %call.i112, 1
  br i1 %cmp.not.i113, label %fc0012_writereg.exit, label %fc0012_writereg.exit.thread

fc0012_writereg.exit.thread:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %dev.i114 = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef 111) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i106) #7
  br label %err

fc0012_writereg.exit:                             ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i106) #7
  br label %if.end35

if.end35:                                         ; preds = %fc0012_writereg.exit, %do.end25.if.end35_crit_edge
  %45 = ptrtoint ptr %cfg7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg7, align 4
  %clock_out = getelementptr inbounds %struct.fc0012_config, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %clock_out to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %clock_out, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool37.not = icmp eq i8 %48, 0
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %if.then38

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then38:                                        ; preds = %if.end35
  %call39 = call fastcc i32 @fc0012_writereg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 11, i8 noundef zeroext -126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then38.err_crit_edge, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then38.err_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %49 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %50 = call ptr @memcpy(ptr %tuner_ops, ptr @fc0012_tuner_ops, i32 220)
  br label %err

err:                                              ; preds = %if.end44, %if.then38.err_crit_edge, %fc0012_writereg.exit.thread, %do.end21.err_crit_edge, %fc0012_readreg.exit.thread, %if.then5
  %ret.2 = phi i32 [ %call39, %if.then38.err_crit_edge ], [ 0, %if.end44 ], [ -12, %if.then5 ], [ -19, %do.end21.err_crit_edge ], [ -121, %fc0012_readreg.exit.thread ], [ -121, %fc0012_writereg.exit.thread ]
  %51 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool48.not = icmp eq ptr %52, null
  br i1 %tobool48.not, label %err.if.end53_crit_edge, label %if.then49

err.if.end53_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 %52(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %err.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool54.not = icmp eq i32 %ret.2, 0
  br i1 %tobool54.not, label %if.end53.cleanup_crit_edge, label %do.body56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body56:                                        ; preds = %if.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc0012_attach.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc0012_attach, %if.then68)) #7
          to label %do.end72 [label %if.then68], !srcloc !77

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %dev69 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc0012_attach.__UNIQUE_ID_ddebug291, ptr noundef %dev69, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %ret.2) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body56
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.end53.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end72 ], [ %fe, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chip_id) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0012_writereg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
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
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %cfg = getelementptr inbounds %struct.fc0012_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %conv4 = zext i8 %reg to i32
  %conv5 = zext i8 %val to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %conv4, i32 noundef %conv5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc0012_release(ptr nocapture noundef %fe) #0 align 64 {
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
define internal i32 @fc0012_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %reg = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %reg) #7
  %2 = call ptr @memcpy(ptr %reg, ptr @__const.fc0012_init.reg, i32 22)
  %cfg = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %xtal_freq = getelementptr inbounds %struct.fc0012_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = or i8 %8, 32
  store i8 %9, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %dual_master = getelementptr inbounds %struct.fc0012_config, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %dual_master to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dual_master, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4 = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 12
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %14 = or i8 %13, 2
  store i8 %14, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %loop_through = getelementptr inbounds %struct.fc0012_config, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %loop_through to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %loop_through, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr inbounds [22 x i8], ptr %reg, i32 0, i32 9
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11, align 1
  %19 = or i8 %18, 1
  store i8 %19, ptr %arrayidx11, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %21(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %23 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20
  %cmp62 = phi i1 [ true, %if.end20 ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.061 = phi i32 [ 1, %if.end20 ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv22 = trunc i32 %i.061 to i8
  %arrayidx23 = getelementptr [22 x i8], ptr %reg, i32 0, i32 %i.061
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv22, ptr %buf.i, align 1
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %23, align 4
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %msg.i, align 4
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %23, align 4
  %35 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i, ptr %buf1.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.inc, label %fc0012_writereg.exit

fc0012_writereg.exit:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %conv4.i = and i32 %i.061, 255
  %conv5.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %conv4.i, i32 noundef %conv5.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %inc = add nuw nsw i32 %i.061, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %i.061)
  %cmp = icmp ult i32 %i.061, 21
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %fc0012_writereg.exit
  %cmp59 = phi i1 [ %cmp62, %fc0012_writereg.exit ], [ %cmp, %for.inc.for.end_crit_edge ]
  %ret.1 = phi i32 [ -121, %fc0012_writereg.exit ], [ 0, %for.inc.for.end_crit_edge ]
  %40 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool30.not = icmp eq ptr %41, null
  br i1 %tobool30.not, label %for.end.if.end35_crit_edge, label %if.then31

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 %41(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %for.end.if.end35_crit_edge
  br i1 %cmp59, label %do.end, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef %ret.1) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.end35.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %reg) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0012_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i422 = alloca [2 x i8], align 1
  %msg.i423 = alloca %struct.i2c_msg, align 4
  %buf.i408 = alloca [2 x i8], align 1
  %msg.i409 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i396 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i383 = alloca [2 x i8], align 1
  %msg.i384 = alloca %struct.i2c_msg, align 4
  %buf.i370 = alloca [2 x i8], align 1
  %msg.i371 = alloca %struct.i2c_msg, align 4
  %buf.i357 = alloca [2 x i8], align 1
  %msg.i358 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %3, 1000
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %tmp, align 1, !annotation !76
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %7 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300001000, i32 %3)
  %cmp = icmp ult i32 %3, 300001000
  %cond = zext i1 %cmp to i32
  %call = tail call i32 %8(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.exit_crit_edge

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %cfg = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  %xtal_freq = getelementptr inbounds %struct.fc0012_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 2
  %switch.select = select i1 %switch.selectcmp, i32 18000, i32 14400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %switch.selectcmp354 = icmp eq i32 %14, 0
  %switch.select355 = select i1 %switch.selectcmp354, i32 13500, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 37084000, i32 %3)
  %cmp7 = icmp ult i32 %3, 37084000
  br i1 %cmp7, label %if.end4.if.end60_crit_edge, label %if.else

if.end4.if.end60_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55625000, i32 %3)
  %cmp10 = icmp ult i32 %3, 55625000
  br i1 %cmp10, label %if.else.if.end60_crit_edge, label %if.else14

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 74167000, i32 %3)
  %cmp15 = icmp ult i32 %3, 74167000
  br i1 %cmp15, label %if.else14.if.end60_crit_edge, label %if.else19

if.else14.if.end60_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else19:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 111250000, i32 %3)
  %cmp20 = icmp ult i32 %3, 111250000
  br i1 %cmp20, label %if.else19.if.end60_crit_edge, label %if.else24

if.else19.if.end60_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else24:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 148334000, i32 %3)
  %cmp25 = icmp ult i32 %3, 148334000
  br i1 %cmp25, label %if.else24.if.end60_crit_edge, label %if.else29

if.else24.if.end60_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp4(i32 222500000, i32 %3)
  %cmp30 = icmp ult i32 %3, 222500000
  br i1 %cmp30, label %if.else29.if.end60_crit_edge, label %if.else34

if.else29.if.end60_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 296667000, i32 %3)
  %cmp35 = icmp ult i32 %3, 296667000
  br i1 %cmp35, label %if.else34.if.end60_crit_edge, label %if.else39

if.else34.if.end60_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else39:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 445000000, i32 %3)
  %cmp40 = icmp ult i32 %3, 445000000
  br i1 %cmp40, label %if.else39.if.end60_crit_edge, label %if.else44

if.else39.if.end60_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.else44:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 593334000, i32 %3)
  %cmp45 = icmp ult i32 %3, 593334000
  %spec.select472 = select i1 %cmp45, i8 0, i8 2
  %spec.select473 = select i1 %cmp45, i32 6, i32 4
  br label %if.end60

if.end60:                                         ; preds = %if.else44, %if.else39.if.end60_crit_edge, %if.else34.if.end60_crit_edge, %if.else29.if.end60_crit_edge, %if.else24.if.end60_crit_edge, %if.else19.if.end60_crit_edge, %if.else14.if.end60_crit_edge, %if.else.if.end60_crit_edge, %if.end4.if.end60_crit_edge
  %reg.sroa.19.0 = phi i8 [ -121, %if.end4.if.end60_crit_edge ], [ -121, %if.else.if.end60_crit_edge ], [ 71, %if.else14.if.end60_crit_edge ], [ 71, %if.else19.if.end60_crit_edge ], [ 39, %if.else24.if.end60_crit_edge ], [ 39, %if.else29.if.end60_crit_edge ], [ 23, %if.else34.if.end60_crit_edge ], [ 23, %if.else39.if.end60_crit_edge ], [ 15, %if.else44 ]
  %reg.sroa.33.0 = phi i8 [ 0, %if.end4.if.end60_crit_edge ], [ 2, %if.else.if.end60_crit_edge ], [ 0, %if.else14.if.end60_crit_edge ], [ 2, %if.else19.if.end60_crit_edge ], [ 0, %if.else24.if.end60_crit_edge ], [ 2, %if.else29.if.end60_crit_edge ], [ 0, %if.else34.if.end60_crit_edge ], [ 2, %if.else39.if.end60_crit_edge ], [ %spec.select472, %if.else44 ]
  %multi.0 = phi i32 [ 96, %if.end4.if.end60_crit_edge ], [ 64, %if.else.if.end60_crit_edge ], [ 48, %if.else14.if.end60_crit_edge ], [ 32, %if.else19.if.end60_crit_edge ], [ 24, %if.else24.if.end60_crit_edge ], [ 16, %if.else29.if.end60_crit_edge ], [ 12, %if.else34.if.end60_crit_edge ], [ 8, %if.else39.if.end60_crit_edge ], [ %spec.select473, %if.else44 ]
  %mul = mul nuw nsw i32 %multi.0, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 3059999, i32 %mul)
  %cmp61 = icmp ugt i32 %mul, 3059999
  %15 = or i8 %reg.sroa.33.0, 8
  %spec.select474 = select i1 %cmp61, i8 %15, i8 %reg.sroa.33.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44999999, i32 %3)
  %cmp68 = icmp ugt i32 %3, 44999999
  br i1 %cmp68, label %if.then70, label %if.end60.if.end109_crit_edge

if.end60.if.end109_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then70:                                        ; preds = %if.end60
  %div72 = udiv i32 %mul, %switch.select355
  %mul76 = mul nuw nsw i32 %div72, %switch.select355
  %sub = sub nsw i32 %mul, %mul76
  %div78352 = lshr exact i32 %switch.select355, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div78352)
  %cmp79.not = icmp uge i32 %sub, %div78352
  %inc = zext i1 %cmp79.not to i32
  %spec.select = add nuw nsw i32 %div72, %inc
  %div84353 = lshr i32 %spec.select, 3
  %mul88.neg = mul nuw nsw i32 %div84353, 248
  %sub89 = add nuw nsw i32 %mul88.neg, %spec.select
  %conv91 = and i32 %sub89, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv91)
  %cmp92 = icmp eq i32 %conv91, 0
  %16 = trunc i32 %sub89 to i8
  br i1 %cmp92, label %if.then94, label %if.else102

if.then94:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %conv96 = add i8 %16, 8
  %17 = trunc i32 %div84353 to i8
  %conv100 = add i8 %17, -1
  br label %if.end109

if.else102:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %conv85 = trunc i32 %div84353 to i8
  br label %if.end109

if.end109:                                        ; preds = %if.else102, %if.then94, %if.end60.if.end109_crit_edge
  %reg.sroa.8.0 = phi i8 [ %conv100, %if.then94 ], [ %conv85, %if.else102 ], [ 17, %if.end60.if.end109_crit_edge ]
  %reg.sroa.3.0 = phi i8 [ %conv96, %if.then94 ], [ %16, %if.else102 ], [ 6, %if.end60.if.end109_crit_edge ]
  %18 = urem i32 %mul, %switch.select355
  %shl = shl nuw nsw i32 %18, 15
  %div122 = udiv i32 %shl, %switch.select355
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %div122)
  %cmp125 = icmp ugt i32 %div122, 16383
  %add129 = add nuw nsw i32 %div122, 32768
  %spec.select356 = select i1 %cmp125, i32 %add129, i32 %div122
  %19 = lshr i32 %spec.select356, 8
  %conv133 = trunc i32 %19 to i8
  %conv136 = trunc i32 %spec.select356 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp138 = icmp eq i32 %5, 3
  br i1 %cmp138, label %if.then140, label %do.end

if.then140:                                       ; preds = %if.end109
  %20 = or i8 %spec.select474, 32
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %21 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bandwidth_hz, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.then140.if.end160_crit_edge [
    i32 6000000, label %sw.bb145
    i32 7000000, label %sw.bb150
  ]

if.then140.if.end160_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

sw.bb145:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i8 %spec.select474, -96
  br label %if.end160

sw.bb150:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  %25 = or i8 %spec.select474, 96
  br label %if.end160

do.end:                                           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end160:                                        ; preds = %sw.bb150, %sw.bb145, %if.then140.if.end160_crit_edge
  %reg.sroa.33.2 = phi i8 [ %20, %if.then140.if.end160_crit_edge ], [ %25, %sw.bb150 ], [ %24, %sw.bb145 ]
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool165.not = icmp eq ptr %29, null
  br i1 %tobool165.not, label %if.end160.if.end170_crit_edge, label %if.then166

if.end160.if.end170_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then166:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = tail call i32 %29(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.end160.if.end170_crit_edge
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %buf.i, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %reg.sroa.3.0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %31, align 4
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %msg.i, align 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %41 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i, ptr %buf1.i, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.inc, label %if.end170.fc0012_writereg.exit_crit_edge

if.end170.fc0012_writereg.exit_crit_edge:         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

fc0012_writereg.exit:                             ; preds = %for.inc.4.fc0012_writereg.exit_crit_edge, %for.inc.3.fc0012_writereg.exit_crit_edge, %for.inc.2.fc0012_writereg.exit_crit_edge, %for.inc.1.fc0012_writereg.exit_crit_edge, %for.inc.fc0012_writereg.exit_crit_edge, %if.end170.fc0012_writereg.exit_crit_edge
  %i.0464.lcssa = phi i32 [ 1, %if.end170.fc0012_writereg.exit_crit_edge ], [ 2, %for.inc.fc0012_writereg.exit_crit_edge ], [ 3, %for.inc.1.fc0012_writereg.exit_crit_edge ], [ 4, %for.inc.2.fc0012_writereg.exit_crit_edge ], [ 5, %for.inc.3.fc0012_writereg.exit_crit_edge ], [ 6, %for.inc.4.fc0012_writereg.exit_crit_edge ]
  %.lcssa = phi i8 [ %reg.sroa.3.0, %if.end170.fc0012_writereg.exit_crit_edge ], [ %reg.sroa.8.0, %for.inc.fc0012_writereg.exit_crit_edge ], [ %conv133, %for.inc.1.fc0012_writereg.exit_crit_edge ], [ %conv136, %for.inc.2.fc0012_writereg.exit_crit_edge ], [ %reg.sroa.19.0, %for.inc.3.fc0012_writereg.exit_crit_edge ], [ %reg.sroa.33.2, %for.inc.4.fc0012_writereg.exit_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  %conv5.i = zext i8 %.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %i.0464.lcssa, i32 noundef %conv5.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %exit

for.inc:                                          ; preds = %if.end170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %46 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %buf.i, align 1
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %reg.sroa.8.0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %31, align 4
  %49 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %conv.i.1 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.1, ptr %msg.i, align 4
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %55 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i, ptr %buf1.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i.1 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 1
  br i1 %cmp.not.i.1, label %for.inc.1, label %for.inc.fc0012_writereg.exit_crit_edge

for.inc.fc0012_writereg.exit_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %58 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %buf.i, align 1
  %59 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv133, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %60 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %31, align 4
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  %conv.i.2 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.2, ptr %msg.i, align 4
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %67 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i, ptr %buf1.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i.2 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.2)
  %cmp.not.i.2 = icmp eq i32 %call.i.2, 1
  br i1 %cmp.not.i.2, label %for.inc.2, label %for.inc.1.fc0012_writereg.exit_crit_edge

for.inc.1.fc0012_writereg.exit_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %70 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %buf.i, align 1
  %71 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv136, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %72 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %31, align 4
  %73 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %conv.i.3 = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i.3, ptr %msg.i, align 4
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %79 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf.i, ptr %buf1.i, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i.3 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.3)
  %cmp.not.i.3 = icmp eq i32 %call.i.3, 1
  br i1 %cmp.not.i.3, label %for.inc.3, label %for.inc.2.fc0012_writereg.exit_crit_edge

for.inc.2.fc0012_writereg.exit_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %82 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 5, ptr %buf.i, align 1
  %83 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %reg.sroa.19.0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %84 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %31, align 4
  %85 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 4
  %conv.i.4 = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i.4, ptr %msg.i, align 4
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %91 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf.i, ptr %buf1.i, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call.i.4 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.4)
  %cmp.not.i.4 = icmp eq i32 %call.i.4, 1
  br i1 %cmp.not.i.4, label %for.inc.4, label %for.inc.3.fc0012_writereg.exit_crit_edge

for.inc.3.fc0012_writereg.exit_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %94 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 6, ptr %buf.i, align 1
  %95 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %reg.sroa.33.2, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %96 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %31, align 4
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  %conv.i.5 = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i.5, ptr %msg.i, align 4
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %31, align 4
  %103 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %buf.i, ptr %buf1.i, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %call.i.5 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.5)
  %cmp.not.i.5 = icmp eq i32 %call.i.5, 1
  br i1 %cmp.not.i.5, label %for.inc.5, label %for.inc.4.fc0012_writereg.exit_crit_edge

for.inc.4.fc0012_writereg.exit_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fc0012_writereg.exit

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i357) #7
  %106 = getelementptr inbounds [2 x i8], ptr %buf.i357, i32 0, i32 1
  %107 = ptrtoint ptr %buf.i357 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 14, ptr %buf.i357, align 1
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -128, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i358) #7
  %109 = getelementptr inbounds i8, ptr %msg.i358, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 196607, ptr %109, align 4
  %111 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cfg, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 4
  %conv.i360 = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i358 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i360, ptr %msg.i358, align 4
  %flags.i361 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i361 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i361, align 2
  %buf1.i363 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358, i32 0, i32 3
  %117 = ptrtoint ptr %buf1.i363 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i357, ptr %buf1.i363, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i364 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i358, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i364)
  %cmp.not.i365 = icmp eq i32 %call.i364, 1
  br i1 %cmp.not.i365, label %if.then182, label %if.end184.thread

if.end184.thread:                                 ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %dev.i366 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i366, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 14, i32 noundef 128) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i358) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i357) #7
  br label %exit

if.then182:                                       ; preds = %for.inc.5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i358) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i357) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i370) #7
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i370, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i370 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 14, ptr %buf.i370, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i371) #7
  %125 = getelementptr inbounds i8, ptr %msg.i371, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 196607, ptr %125, align 4
  %127 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 4
  %conv.i373 = zext i8 %130 to i16
  %131 = ptrtoint ptr %msg.i371 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i373, ptr %msg.i371, align 4
  %flags.i374 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i371, i32 0, i32 1
  %132 = ptrtoint ptr %flags.i374 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i374, align 2
  %buf1.i376 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i371, i32 0, i32 3
  %133 = ptrtoint ptr %buf1.i376 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %buf.i370, ptr %buf1.i376, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i377 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i371, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i377)
  %cmp.not.i378 = icmp eq i32 %call.i377, 1
  br i1 %cmp.not.i378, label %if.then186, label %if.end184

if.end184:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %dev.i379 = getelementptr inbounds %struct.i2c_adapter, ptr %137, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i379, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 14, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i371) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i370) #7
  br label %exit

if.then186:                                       ; preds = %if.then182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i371) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i370) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i383) #7
  %138 = getelementptr inbounds [2 x i8], ptr %buf.i383, i32 0, i32 1
  %139 = ptrtoint ptr %buf.i383 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 14, ptr %buf.i383, align 1
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i384) #7
  %141 = getelementptr inbounds i8, ptr %msg.i384, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 196607, ptr %141, align 4
  %143 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4
  %conv.i386 = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i384 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i386, ptr %msg.i384, align 4
  %flags.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i387 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i387, align 2
  %buf1.i389 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 3
  %149 = ptrtoint ptr %buf1.i389 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %buf.i383, ptr %buf1.i389, align 4
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %call.i390 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i384, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i390)
  %cmp.not.i391 = icmp eq i32 %call.i390, 1
  br i1 %cmp.not.i391, label %if.then190, label %if.end188

if.end188:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %dev.i392 = getelementptr inbounds %struct.i2c_adapter, ptr %153, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i392, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 14, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i383) #7
  br label %exit

if.then190:                                       ; preds = %if.then186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i383) #7
  call void @msleep(i32 noundef 10) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %154 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 14, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i396) #7
  %155 = getelementptr inbounds i8, ptr %msg.i396, i32 4
  %156 = call ptr @memset(ptr %155, i32 255, i32 16)
  %157 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 4
  %conv.i398 = zext i8 %160 to i16
  %161 = ptrtoint ptr %msg.i396 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv.i398, ptr %msg.i396, align 4
  %flags.i399 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i399 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i399, align 2
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 1, ptr %155, align 4
  %buf.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 0, i32 3
  %164 = ptrtoint ptr %buf.i401 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %reg.addr.i, ptr %buf.i401, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 1
  %165 = load i8, ptr %158, align 4
  %conv4.i402 = zext i8 %165 to i16
  %166 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv4.i402, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 1, i32 1
  %167 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 1, i32 2
  %168 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 1, i32 3
  %169 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %tmp, ptr %buf7.i, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %call.i403 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i396, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i403)
  %cmp.not.i404 = icmp eq i32 %call.i403, 2
  br i1 %cmp.not.i404, label %if.end195, label %if.end192

if.end192:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %dev.i405 = getelementptr inbounds %struct.i2c_adapter, ptr %173, i32 0, i32 9
  %174 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %175 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i405, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i396) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %exit

if.end195:                                        ; preds = %if.then190
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i396) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %176 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tmp, align 1
  %178 = and i8 %177, 63
  store i8 %178, ptr %tmp, align 1
  br i1 %cmp61, label %if.then200, label %if.else220

if.then200:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %178)
  %cmp202 = icmp ugt i8 %178, 60
  br i1 %cmp202, label %if.then204, label %if.then200.if.end240_crit_edge

if.then200.if.end240_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then204:                                       ; preds = %if.then200
  %179 = and i8 %reg.sroa.33.2, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i408) #7
  %180 = getelementptr inbounds [2 x i8], ptr %buf.i408, i32 0, i32 1
  %181 = ptrtoint ptr %buf.i408 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 6, ptr %buf.i408, align 1
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %179, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i409) #7
  %183 = getelementptr inbounds i8, ptr %msg.i409, i32 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 196607, ptr %183, align 4
  %185 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cfg, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 4
  %conv.i411 = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i409 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i411, ptr %msg.i409, align 4
  %flags.i412 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i409, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i412 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i412, align 2
  %buf1.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i409, i32 0, i32 3
  %191 = ptrtoint ptr %buf1.i414 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %buf.i408, ptr %buf1.i414, align 4
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 4
  %call.i415 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %msg.i409, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i415)
  %cmp.not.i416 = icmp eq i32 %call.i415, 1
  br i1 %cmp.not.i416, label %if.end214, label %if.end214.thread

if.end214.thread:                                 ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %dev.i417 = getelementptr inbounds %struct.i2c_adapter, ptr %195, i32 0, i32 9
  %conv5.i418 = zext i8 %179 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i417, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef %conv5.i418) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i409) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i408) #7
  br label %if.end240

if.end214:                                        ; preds = %if.then204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i409) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i408) #7
  %call213 = call fastcc i32 @fc0012_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool215.not = icmp eq i32 %call213, 0
  br i1 %tobool215.not, label %if.then216, label %if.end214.if.end240_crit_edge

if.end214.if.end240_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %call217 = call fastcc i32 @fc0012_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %if.end240

if.else220:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %178)
  %cmp222 = icmp ult i8 %178, 2
  br i1 %cmp222, label %if.then224, label %if.else220.if.end240_crit_edge

if.else220.if.end240_crit_edge:                   ; preds = %if.else220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then224:                                       ; preds = %if.else220
  %196 = or i8 %reg.sroa.33.2, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i422) #7
  %197 = getelementptr inbounds [2 x i8], ptr %buf.i422, i32 0, i32 1
  %198 = ptrtoint ptr %buf.i422 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 6, ptr %buf.i422, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %196, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i423) #7
  %200 = getelementptr inbounds i8, ptr %msg.i423, i32 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 196607, ptr %200, align 4
  %202 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cfg, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 4
  %conv.i425 = zext i8 %205 to i16
  %206 = ptrtoint ptr %msg.i423 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv.i425, ptr %msg.i423, align 4
  %flags.i426 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i426 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %flags.i426, align 2
  %buf1.i428 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423, i32 0, i32 3
  %208 = ptrtoint ptr %buf1.i428 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %buf.i422, ptr %buf1.i428, align 4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  %call.i429 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i423, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i429)
  %cmp.not.i430 = icmp eq i32 %call.i429, 1
  br i1 %cmp.not.i430, label %if.end234, label %if.end234.thread

if.end234.thread:                                 ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 4
  %dev.i431 = getelementptr inbounds %struct.i2c_adapter, ptr %212, i32 0, i32 9
  %conv5.i432 = zext i8 %196 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i431, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef %conv5.i432) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i423) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i422) #7
  br label %if.end240

if.end234:                                        ; preds = %if.then224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i423) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i422) #7
  %call233 = call fastcc i32 @fc0012_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool235.not = icmp eq i32 %call233, 0
  br i1 %tobool235.not, label %if.then236, label %if.end234.if.end240_crit_edge

if.end234.if.end240_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then236:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #9
  %call237 = call fastcc i32 @fc0012_writereg(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %if.end240

if.end240:                                        ; preds = %if.then236, %if.end234.if.end240_crit_edge, %if.end234.thread, %if.else220.if.end240_crit_edge, %if.then216, %if.end214.if.end240_crit_edge, %if.end214.thread, %if.then200.if.end240_crit_edge
  %ret.5 = phi i32 [ %call213, %if.end214.if.end240_crit_edge ], [ %call217, %if.then216 ], [ 0, %if.then200.if.end240_crit_edge ], [ %call233, %if.end234.if.end240_crit_edge ], [ %call237, %if.then236 ], [ 0, %if.else220.if.end240_crit_edge ], [ -121, %if.end214.thread ], [ -121, %if.end234.thread ]
  %213 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dtv_property_cache, align 4
  %frequency242 = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 2
  %215 = ptrtoint ptr %frequency242 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %frequency242, align 4
  %216 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 3
  %218 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %bandwidth, align 4
  br label %exit

exit:                                             ; preds = %if.end240, %if.end192, %if.end188, %if.end184, %if.end184.thread, %fc0012_writereg.exit, %if.then.exit_crit_edge
  %ret.6 = phi i32 [ %call, %if.then.exit_crit_edge ], [ -121, %fc0012_writereg.exit ], [ -121, %if.end192 ], [ %ret.5, %if.end240 ], [ -121, %if.end188 ], [ -121, %if.end184 ], [ -121, %if.end184.thread ]
  %i2c_gate_ctrl245 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %219 = ptrtoint ptr %i2c_gate_ctrl245 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %i2c_gate_ctrl245, align 4
  %tobool246.not = icmp eq ptr %220, null
  br i1 %tobool246.not, label %exit.if.end251_crit_edge, label %if.then247

exit.if.end251_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.then247:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %call250 = call i32 %220(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end251

if.end251:                                        ; preds = %if.then247, %exit.if.end251_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6)
  %tobool252.not = icmp eq i32 %ret.6, 0
  br i1 %tobool252.not, label %if.end251.cleanup_crit_edge, label %do.end256

if.end251.cleanup_crit_edge:                      ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end256:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 4
  %dev258 = getelementptr inbounds %struct.i2c_adapter, ptr %222, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev258, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.21, i32 noundef %ret.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end256, %if.end251.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.6, %do.end256 ], [ 0, %if.end251.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0012_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0012_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0012_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0012_get_rf_strength(ptr noundef %fe, ptr nocapture noundef %strength) #0 align 64 {
entry:
  %reg.addr.i103 = alloca i8, align 1
  %msg.i104 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i92 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !76
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %4(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 18, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %cfg.i = getelementptr inbounds %struct.fc0012_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end6, label %fc0012_writereg.exit

fc0012_writereg.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 18, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %err

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 18, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i92) #7
  %22 = getelementptr inbounds i8, ptr %msg.i92, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv.i94 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i92 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i94, ptr %msg.i92, align 4
  %flags.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i95, align 2
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %22, align 4
  %buf.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i, ptr %buf.i97, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1
  %32 = load i8, ptr %25, align 4
  %conv4.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 1
  %34 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 2
  %35 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 1, i32 3
  %36 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tmp, ptr %buf7.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i98 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i92, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i98)
  %cmp.not.i99 = icmp eq i32 %call.i98, 2
  br i1 %cmp.not.i99, label %if.end10, label %fc0012_readreg.exit

fc0012_readreg.exit:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %dev.i100 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i100, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv10.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i92) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %err

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i92) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmp, align 1
  %conv = zext i8 %44 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i103)
  %45 = ptrtoint ptr %reg.addr.i103 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 19, ptr %reg.addr.i103, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i104) #7
  %46 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i106 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i106, ptr %msg.i104, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i107, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %reg.addr.i103, ptr %buf.i109, align 4
  %arrayinit.element.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1
  %56 = load i8, ptr %49, align 4
  %conv4.i111 = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i110 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv4.i111, ptr %arrayinit.element.i110, align 4
  %flags5.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 1
  %58 = ptrtoint ptr %flags5.i112 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags5.i112, align 2
  %len6.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 2
  %59 = ptrtoint ptr %len6.i113 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len6.i113, align 4
  %buf7.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 3
  %60 = ptrtoint ptr %buf7.i114 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tmp, ptr %buf7.i114, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i115 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i104, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i115)
  %cmp.not.i116 = icmp eq i32 %call.i115, 2
  br i1 %cmp.not.i116, label %if.end14, label %fc0012_readreg.exit121

fc0012_readreg.exit121:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %dev.i117 = getelementptr inbounds %struct.i2c_adapter, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %reg.addr.i103 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reg.addr.i103, align 1
  %conv10.i118 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv10.i118) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i103)
  br label %err

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i103)
  %67 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tmp, align 1
  %69 = and i8 %68, 31
  %and = zext i8 %69 to i32
  %70 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool18.not = icmp eq ptr %71, null
  br i1 %tobool18.not, label %if.end14.if.end23_crit_edge, label %if.then19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 %71(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %69)
  %cmp = icmp ult i8 %69, 24
  br i1 %cmp, label %if.then25, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then25:                                        ; preds = %if.end23
  %arrayidx = getelementptr [24 x i32], ptr @fc0012_get_rf_strength.fc0012_lna_gain_table, i32 0, i32 %and
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %74 = lshr i32 %conv, 5
  %phi.bo.neg = add nsw i32 %74, -5
  %and31 = and i32 %conv, 31
  %add.neg = sub nsw i32 %phi.bo.neg, %and31
  %mul.neg = shl nsw i32 %add.neg, 1
  %sub32 = add nsw i32 %mul.neg, -8
  %div.neg = sdiv i32 %73, -10
  %sub33 = add i32 %sub32, %div.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sub33)
  %cmp34 = icmp sgt i32 %sub33, 44
  br i1 %cmp34, label %if.then25.exit_crit_edge, label %if.else

if.then25.exit_crit_edge:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %sub33)
  %cmp37 = icmp slt i32 %sub33, -95
  br i1 %cmp37, label %if.else.exit_crit_edge, label %if.else40

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.else40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %75 = trunc i32 %sub33 to i16
  %76 = mul nsw i16 %75, 255
  %div43132.lhs.trunc = add i16 %76, 24225
  %div43132133 = udiv i16 %div43132.lhs.trunc, 140
  br label %exit

err:                                              ; preds = %fc0012_readreg.exit121, %fc0012_readreg.exit, %fc0012_writereg.exit
  %77 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool54.not = icmp eq ptr %78, null
  br i1 %tobool54.not, label %err.do.end_crit_edge, label %if.then55

err.do.end_crit_edge:                             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then55:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 %78(ptr noundef %fe, i32 noundef 0) #7
  br label %do.end

exit:                                             ; preds = %if.else40, %if.else.exit_crit_edge, %if.then25.exit_crit_edge
  %.sink = phi i16 [ %div43132133, %if.else40 ], [ 255, %if.then25.exit_crit_edge ], [ 0, %if.else.exit_crit_edge ]
  %shl = shl i16 %.sink, 8
  %or = or i16 %shl, %.sink
  %79 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %or, ptr %strength, align 2
  br label %if.end62

do.end:                                           ; preds = %if.then55, %err.do.end_crit_edge, %if.end23.do.end_crit_edge
  %ret.1.ph = phi i32 [ -1, %if.end23.do.end_crit_edge ], [ -121, %err.do.end_crit_edge ], [ -121, %if.then55 ]
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %81, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.26, i32 noundef %ret.1.ph) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end, %exit
  %ret.1131 = phi i32 [ %ret.1.ph, %do.end ], [ 0, %exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %ret.1131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/fc0012.c", i32 441, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fc0012_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fc0012_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/tuners/fc0012.c", i32 453, i32 2}
!11 = !{ptr @fc0012_attach.__UNIQUE_ID_ddebug290, !10, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/fc0012.c", i32 463, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fc0012_attach._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @fc0012_attach._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/fc0012.c", i32 491, i32 3}
!19 = !{ptr @fc0012_attach.__UNIQUE_ID_ddebug291, !18, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!20 = !{ptr @__ksymtab_fc0012_attach, !21, !"__ksymtab_fc0012_attach", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/fc0012.c", i32 498, i32 1}
!22 = !{ptr @__UNIQUE_ID_description292, !23, !"__UNIQUE_ID_description292", i1 false, i1 false}
!23 = !{!"../drivers/media/tuners/fc0012.c", i32 500, i32 1}
!24 = !{ptr @__UNIQUE_ID_author293, !25, !"__UNIQUE_ID_author293", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/fc0012.c", i32 501, i32 1}
!26 = !{ptr @__UNIQUE_ID_file294, !27, !"__UNIQUE_ID_file294", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/fc0012.c", i32 502, i32 1}
!28 = !{ptr @__UNIQUE_ID_license295, !27, !"__UNIQUE_ID_license295", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_version296, !30, !"__UNIQUE_ID_version296", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/fc0012.c", i32 503, i32 1}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__modver_attr, !30, !"__modver_attr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/fc0012.c", i32 37, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fc0012_readreg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @fc0012_readreg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/fc0012.c", i32 19, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fc0012_writereg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @fc0012_writereg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @fc0012_tuner_ops, !45, !"fc0012_tuner_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/fc0012.c", i32 407, i32 35}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/fc0012.c", i32 112, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fc0012_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @fc0012_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/fc0012.c", i32 249, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fc0012_set_params._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fc0012_set_params._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/fc0012.c", i32 312, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fc0012_set_params._entry.22, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fc0012_set_params._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @fc0012_get_rf_strength.fc0012_lna_gain_table, !62, !"fc0012_lna_gain_table", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/fc0012.c", i32 345, i32 19}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/fc0012.c", i32 402, i32 3}
!65 = !{ptr @fc0012_get_rf_strength._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fc0012_get_rf_strength._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 2148274150, i64 2148274155, i64 2148274168, i64 2148274212, i64 2148274246, i64 2148274267}
!78 = !{i8 0, i8 2}
