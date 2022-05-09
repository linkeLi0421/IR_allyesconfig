; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/fc0011.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0011.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc0011_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_fc0011_attach\09\09\09\09"
module asm "\09.long\09__crc_fc0011_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0011_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0011_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0011_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fc0011_priv = type { ptr, i8, i32, i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@fc0011_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 1000000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0011_release, ptr @fc0011_init, ptr null, ptr null, ptr null, ptr @fc0011_set_params, ptr null, ptr null, ptr @fc0011_get_frequency, ptr @fc0011_get_bandwidth, ptr @fc0011_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fc0011_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fitipower FC0011 tuner attached\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc0011_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/fc0011.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fc0011_attach._entry_ptr = internal global ptr @fc0011_attach._entry, section ".printk_index", align 4
@__kstrtab_fc0011_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0011_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0011_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0011_attach to i32), ptr @__kstrtab_fc0011_attach, ptr @__kstrtabns_fc0011_attach }, section "___ksymtab+fc0011_attach", align 4
@__UNIQUE_ID_description295 = internal constant [57 x i8] c"fc0011.description=Fitipower FC0011 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [41 x i8] c"fc0011.author=Michael Buesch <m@bues.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [40 x i8] c"fc0011.file=drivers/media/tuners/fc0011\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"fc0011.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fc0011_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 119, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power-on callback failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc0011_init\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fc0011_init._entry_ptr = internal global ptr @fc0011_init._entry, section ".printk_index", align 4
@fc0011_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 125, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reset callback failed\0A\00", [41 x i8] zeroinitializer }, align 32
@fc0011_init._entry_ptr.10 = internal global ptr @fc0011_init._entry.8, section ".printk_index", align 4
@fc0011_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 237, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fa %02X >= fp %02X, but trying to continue\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fc0011_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fc0011_set_params._entry_ptr = internal global ptr @fc0011_set_params._entry, section ".printk_index", align 4
@fc0011_set_params._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 251, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported bandwidth %u kHz. Using 6000 kHz.\0A\00", [49 x i8] zeroinitializer }, align 32
@fc0011_set_params._entry_ptr.16 = internal global ptr @fc0011_set_params._entry.14, section ".printk_index", align 4
@fc0011_set_params._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 302, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to reset tuner\0A\00", [41 x i8] zeroinitializer }, align 32
@fc0011_set_params._entry_ptr.19 = internal global ptr @fc0011_set_params._entry.17, section ".printk_index", align 4
@fc0011_set_params._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 328, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to read VCO calibration value (got %02X)\0A\00", [47 x i8] zeroinitializer }, align 32
@fc0011_set_params._entry_ptr.22 = internal global ptr @fc0011_set_params._entry.20, section ".printk_index", align 4
@fc0011_set_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.12, ptr @.str.2, ptr @.str.24, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc0011\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Tuned to fa=%02X fp=%02X xin=%02X%02X vco=%02X vcosel=%02X vcocal=%02X(%u) bw=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@fc0011_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 76, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"I2C write reg failed, reg: %02x, val: %02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc0011_writereg\00", [16 x i8] zeroinitializer }, align 32
@fc0011_writereg._entry_ptr = internal global ptr @fc0011_writereg._entry, section ".printk_index", align 4
@fc0011_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 95, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C read failed, reg: %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc0011_readreg\00", [17 x i8] zeroinitializer }, align 32
@fc0011_readreg._entry_ptr = internal global ptr @fc0011_readreg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000, i64 7000, i64 8000]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"fc0011_tuner_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 464, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 498, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 119, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 125, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 235, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 250, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 302, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 326, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 423, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 74, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [33 x i8] c"../drivers/media/tuners/fc0011.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 94, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_fc0011_attach, ptr @fc0011_attach._entry, ptr @fc0011_attach._entry_ptr, ptr @fc0011_init._entry, ptr @fc0011_init._entry.8, ptr @fc0011_init._entry_ptr, ptr @fc0011_init._entry_ptr.10, ptr @fc0011_readreg._entry, ptr @fc0011_readreg._entry_ptr, ptr @fc0011_set_params._entry, ptr @fc0011_set_params._entry.14, ptr @fc0011_set_params._entry.17, ptr @fc0011_set_params._entry.20, ptr @fc0011_set_params._entry_ptr, ptr @fc0011_set_params._entry_ptr.16, ptr @fc0011_set_params._entry_ptr.19, ptr @fc0011_set_params._entry_ptr.22, ptr @fc0011_writereg._entry, ptr @fc0011_writereg._entry_ptr, ptr @fc0011_tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_set_params._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_set_params._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_set_params._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc0011_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc0011_attach(ptr noundef writeonly %fe, ptr noundef %i2c, ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  %addr = getelementptr inbounds %struct.fc0011_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %addr, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %6 = call ptr @memcpy(ptr %tuner_ops, ptr @fc0011_tuner_ops, i32 220)
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc0011_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0011_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %2 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 4
  %conv = zext i8 %7 to i32
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr, align 4
  %conv35 = zext i8 %15 to i32
  %call36 = tail call i32 %11(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef %conv35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end31.cleanup_crit_edge, label %do.end41

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev43 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end31.cleanup_crit_edge, %do.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end29 ], [ %call36, %do.end41 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc0011_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i781 = alloca [2 x i8], align 1
  %msg.i782 = alloca %struct.i2c_msg, align 4
  %buf.i767 = alloca [2 x i8], align 1
  %msg.i768 = alloca %struct.i2c_msg, align 4
  %buf.i753 = alloca [2 x i8], align 1
  %msg.i754 = alloca %struct.i2c_msg, align 4
  %buf.i739 = alloca [2 x i8], align 1
  %msg.i740 = alloca %struct.i2c_msg, align 4
  %buf.i725 = alloca [2 x i8], align 1
  %msg.i726 = alloca %struct.i2c_msg, align 4
  %buf.i710 = alloca [2 x i8], align 1
  %msg.i711 = alloca %struct.i2c_msg, align 4
  %buf.i696 = alloca [2 x i8], align 1
  %msg.i697 = alloca %struct.i2c_msg, align 4
  %buf.i682 = alloca [2 x i8], align 1
  %msg.i683 = alloca %struct.i2c_msg, align 4
  %buf.i668 = alloca [2 x i8], align 1
  %msg.i669 = alloca %struct.i2c_msg, align 4
  %buf.i654 = alloca [2 x i8], align 1
  %msg.i655 = alloca %struct.i2c_msg, align 4
  %buf.i640 = alloca [2 x i8], align 1
  %msg.i641 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %vco_cal = alloca i8, align 1
  %regs = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %3, 1000
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth_hz, align 4
  %div1 = udiv i32 %5, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vco_cal) #8
  %6 = ptrtoint ptr %vco_cal to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %vco_cal, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %regs) #8
  %7 = call ptr @memset(ptr %regs, i32 0, i32 18)
  %arrayidx = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 62, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 10
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -72, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 11
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 13
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %arrayidx5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %buf.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  %addr1.i = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.i, ptr %buf2.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.fc0011_writereg.exit_crit_edge, label %do.end.i

entry.fc0011_writereg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef 15) #12
  br label %fc0011_writereg.exit

fc0011_writereg.exit:                             ; preds = %do.end.i, %entry.fc0011_writereg.exit_crit_edge
  %retval.0.i639 = phi i32 [ -5, %do.end.i ], [ 0, %entry.fc0011_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %27 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i640) #8
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i640, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i640 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %buf.i640, align 1
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i641) #8
  %32 = getelementptr inbounds i8, ptr %msg.i641, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %34 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr1.i, align 4
  %conv.i643 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i641 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i643, ptr %msg.i641, align 4
  %flags.i644 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i641, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i644 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i644, align 2
  %buf2.i646 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i641, i32 0, i32 3
  %38 = ptrtoint ptr %buf2.i646 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i640, ptr %buf2.i646, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i647 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i641, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i647)
  %cmp.not.i648 = icmp eq i32 %call.i647, 1
  br i1 %cmp.not.i648, label %fc0011_writereg.exit.fc0011_writereg.exit653_crit_edge, label %do.end.i651

fc0011_writereg.exit.fc0011_writereg.exit653_crit_edge: ; preds = %fc0011_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit653

do.end.i651:                                      ; preds = %fc0011_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev.i649 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 9
  %conv6.i650 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i649, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %conv6.i650) #12
  br label %fc0011_writereg.exit653

fc0011_writereg.exit653:                          ; preds = %do.end.i651, %fc0011_writereg.exit.fc0011_writereg.exit653_crit_edge
  %retval.0.i652 = phi i32 [ -5, %do.end.i651 ], [ 0, %fc0011_writereg.exit.fc0011_writereg.exit653_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i641) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i640) #8
  %or = or i32 %retval.0.i652, %retval.0.i639
  %43 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i654) #8
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i654, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i654 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %buf.i654, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %44, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i655) #8
  %48 = getelementptr inbounds i8, ptr %msg.i655, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 196607, ptr %48, align 4
  %50 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %addr1.i, align 4
  %conv.i657 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i655 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i657, ptr %msg.i655, align 4
  %flags.i658 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i655, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i658 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i658, align 2
  %buf2.i660 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i655, i32 0, i32 3
  %54 = ptrtoint ptr %buf2.i660 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i654, ptr %buf2.i660, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i661 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i655, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i661)
  %cmp.not.i662 = icmp eq i32 %call.i661, 1
  br i1 %cmp.not.i662, label %fc0011_writereg.exit653.fc0011_writereg.exit667_crit_edge, label %do.end.i665

fc0011_writereg.exit653.fc0011_writereg.exit667_crit_edge: ; preds = %fc0011_writereg.exit653
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit667

do.end.i665:                                      ; preds = %fc0011_writereg.exit653
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %dev.i663 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 9
  %conv6.i664 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i663, ptr noundef nonnull @.str.25, i32 noundef 10, i32 noundef %conv6.i664) #12
  br label %fc0011_writereg.exit667

fc0011_writereg.exit667:                          ; preds = %do.end.i665, %fc0011_writereg.exit653.fc0011_writereg.exit667_crit_edge
  %retval.0.i666 = phi i32 [ -5, %do.end.i665 ], [ 0, %fc0011_writereg.exit653.fc0011_writereg.exit667_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i655) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i654) #8
  %or11 = or i32 %or, %retval.0.i666
  %59 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i668) #8
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i668, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i668 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 11, ptr %buf.i668, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i669) #8
  %64 = getelementptr inbounds i8, ptr %msg.i669, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %66 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr1.i, align 4
  %conv.i671 = zext i8 %67 to i16
  %68 = ptrtoint ptr %msg.i669 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i671, ptr %msg.i669, align 4
  %flags.i672 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i669, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i672 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i672, align 2
  %buf2.i674 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i669, i32 0, i32 3
  %70 = ptrtoint ptr %buf2.i674 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i668, ptr %buf2.i674, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i675 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i669, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i675)
  %cmp.not.i676 = icmp eq i32 %call.i675, 1
  br i1 %cmp.not.i676, label %fc0011_writereg.exit667.fc0011_writereg.exit681_crit_edge, label %do.end.i679

fc0011_writereg.exit667.fc0011_writereg.exit681_crit_edge: ; preds = %fc0011_writereg.exit667
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit681

do.end.i679:                                      ; preds = %fc0011_writereg.exit667
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %dev.i677 = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 9
  %conv6.i678 = zext i8 %60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i677, ptr noundef nonnull @.str.25, i32 noundef 11, i32 noundef %conv6.i678) #12
  br label %fc0011_writereg.exit681

fc0011_writereg.exit681:                          ; preds = %do.end.i679, %fc0011_writereg.exit667.fc0011_writereg.exit681_crit_edge
  %retval.0.i680 = phi i32 [ -5, %do.end.i679 ], [ 0, %fc0011_writereg.exit667.fc0011_writereg.exit681_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i669) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i668) #8
  %or14 = or i32 %or11, %retval.0.i680
  %75 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i682) #8
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i682, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i682 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 13, ptr %buf.i682, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i683) #8
  %80 = getelementptr inbounds i8, ptr %msg.i683, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %80, align 4
  %82 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %addr1.i, align 4
  %conv.i685 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i683 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i685, ptr %msg.i683, align 4
  %flags.i686 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i683, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i686 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i686, align 2
  %buf2.i688 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i683, i32 0, i32 3
  %86 = ptrtoint ptr %buf2.i688 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i682, ptr %buf2.i688, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call.i689 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i683, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i689)
  %cmp.not.i690 = icmp eq i32 %call.i689, 1
  br i1 %cmp.not.i690, label %fc0011_writereg.exit681.fc0011_writereg.exit695_crit_edge, label %do.end.i693

fc0011_writereg.exit681.fc0011_writereg.exit695_crit_edge: ; preds = %fc0011_writereg.exit681
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit695

do.end.i693:                                      ; preds = %fc0011_writereg.exit681
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %dev.i691 = getelementptr inbounds %struct.i2c_adapter, ptr %90, i32 0, i32 9
  %conv6.i692 = zext i8 %76 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i691, ptr noundef nonnull @.str.25, i32 noundef 13, i32 noundef %conv6.i692) #12
  br label %fc0011_writereg.exit695

fc0011_writereg.exit695:                          ; preds = %do.end.i693, %fc0011_writereg.exit681.fc0011_writereg.exit695_crit_edge
  %retval.0.i694 = phi i32 [ -5, %do.end.i693 ], [ 0, %fc0011_writereg.exit681.fc0011_writereg.exit695_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i683) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i682) #8
  %or17 = or i32 %or14, %retval.0.i694
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or17)
  %tobool.not = icmp eq i32 %or17, 0
  br i1 %tobool.not, label %if.end, label %fc0011_writereg.exit695.cleanup_crit_edge

fc0011_writereg.exit695.cleanup_crit_edge:        ; preds = %fc0011_writereg.exit695
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %fc0011_writereg.exit695
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000000, i32 %3)
  %cmp = icmp ult i32 %3, 54000000
  br i1 %cmp, label %if.end.if.end40_crit_edge, label %if.else

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000000, i32 %3)
  %cmp20 = icmp ult i32 %3, 108000000
  br i1 %cmp20, label %if.else.if.end40_crit_edge, label %if.else24

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 216000000, i32 %3)
  %cmp25 = icmp ult i32 %3, 216000000
  br i1 %cmp25, label %if.else24.if.end40_crit_edge, label %if.else29

if.else24.if.end40_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 432000000, i32 %3)
  %cmp30 = icmp ult i32 %3, 432000000
  %. = select i1 %cmp30, i32 3, i32 2
  %.826 = select i1 %cmp30, i8 18, i8 10
  br label %if.end40

if.end40:                                         ; preds = %if.else29, %if.else24.if.end40_crit_edge, %if.else.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %.sink821 = phi i32 [ 6, %if.end.if.end40_crit_edge ], [ 5, %if.else.if.end40_crit_edge ], [ 4, %if.else24.if.end40_crit_edge ], [ %., %if.else29 ]
  %.sink = phi i8 [ -126, %if.end.if.end40_crit_edge ], [ 66, %if.else.if.end40_crit_edge ], [ 34, %if.else24.if.end40_crit_edge ], [ %.826, %if.else29 ]
  %mul22 = shl nuw nsw i32 %div, %.sink821
  %arrayidx23 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 5
  %91 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %.sink, ptr %arrayidx23, align 1
  %div41 = udiv i32 %mul22, 18000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4607999, i32 %mul22)
  %cmp42 = icmp ugt i32 %mul22, 4607999
  br i1 %cmp42, label %do.end, label %if.end40.if.end57_crit_edge, !prof !70

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 208, i32 noundef 9, ptr noundef null) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end, %if.end40.if.end57_crit_edge
  %mul64.neg = mul nsw i32 %div41, -18000
  %sub = add nsw i32 %mul64.neg, %mul22
  %shl = shl i32 %sub, 15
  %div65 = udiv i32 %shl, 18000
  call void @__sanitizer_cov_trace_const_cmp4(i32 294911999, i32 %shl)
  %cmp66 = icmp ugt i32 %shl, 294911999
  %add = add nuw nsw i32 %div65, 32786
  %spec.select = select i1 %cmp66, i32 %add, i32 %div65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool69.not = icmp eq i32 %spec.select, 0
  %92 = call i32 @llvm.umax.i32(i32 %spec.select, i32 512)
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 65024)
  %xin.0 = select i1 %tobool69.not, i32 0, i32 %93
  %shr = lshr i32 %xin.0, 8
  %conv = trunc i32 %shr to i8
  %arrayidx81 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 3
  %94 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv, ptr %arrayidx81, align 1
  %conv82 = trunc i32 %xin.0 to i8
  %arrayidx83 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 4
  %95 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv82, ptr %arrayidx83, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8999, i32 %sub)
  %cmp86 = icmp ugt i32 %sub, 8999
  %add89 = zext i1 %cmp86 to i32
  %spec.select638 = add nuw nsw i32 %div41, %add89
  %div91637 = lshr i32 %spec.select638, 3
  %mul94.neg = mul nuw nsw i32 %div91637, 248
  %sub95 = add nuw nsw i32 %mul94.neg, %spec.select638
  %conv97 = and i32 %sub95, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv97)
  %cmp98 = icmp eq i32 %conv97, 0
  %conv93 = and i32 %div91637, 255
  %sub102 = add nsw i32 %conv93, -1
  %add105 = add nuw nsw i32 %sub95, 8
  %fa.0.in = select i1 %cmp98, i32 %add105, i32 %sub95
  %fp.0.in = select i1 %cmp98, i32 %sub102, i32 %div91637
  %fp.0 = trunc i32 %fp.0.in to i8
  %fa.0 = trunc i32 %fa.0.in to i8
  %conv108 = and i32 %fp.0.in, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv108)
  %cmp109.not = icmp eq i32 %conv108, 0
  %fa.1 = select i1 %cmp109.not, i8 %fa.0, i8 15
  %fp.1 = select i1 %cmp109.not, i8 %fp.0, i8 31
  call void @__sanitizer_cov_trace_cmp1(i8 %fa.1, i8 %fp.1)
  %cmp115.not = icmp ult i8 %fa.1, %fp.1
  br i1 %cmp115.not, label %if.end57.if.end123_crit_edge, label %do.end120

if.end57.if.end123_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

do.end120:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %conv114 = zext i8 %fp.1 to i32
  %conv113 = zext i8 %fa.1 to i32
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %97, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv113, i32 noundef %conv114) #12
  br label %if.end123

if.end123:                                        ; preds = %do.end120, %if.end57.if.end123_crit_edge
  %arrayidx124 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %fa.1, ptr %arrayidx124, align 1
  %arrayidx125 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %fp.1, ptr %arrayidx125, align 1
  %100 = zext i32 %div1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div1, label %do.end132 [
    i32 8000, label %if.end123.sw.epilog_crit_edge
    i32 7000, label %if.end123.sw.epilog.sink.split_crit_edge
    i32 6000, label %if.end123.sw.bb135_crit_edge
  ]

if.end123.sw.bb135_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb135

if.end123.sw.epilog.sink.split_crit_edge:         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end123.sw.epilog_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end132:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %dev134 = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev134, ptr noundef nonnull @.str.15, i32 noundef %div1) #12
  br label %sw.bb135

sw.bb135:                                         ; preds = %do.end132, %if.end123.sw.bb135_crit_edge
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb135, %if.end123.sw.epilog.sink.split_crit_edge
  %.sink824 = phi i8 [ -128, %sw.bb135 ], [ 64, %if.end123.sw.epilog.sink.split_crit_edge ]
  %bandwidth.1.ph = phi i32 [ 6000, %sw.bb135 ], [ %div1, %if.end123.sw.epilog.sink.split_crit_edge ]
  %arrayidx126 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 6
  %103 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx126, align 1
  %105 = or i8 %104, %.sink824
  store i8 %105, ptr %arrayidx126, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end123.sw.epilog_crit_edge
  %bandwidth.1 = phi i32 [ %div1, %if.end123.sw.epilog_crit_edge ], [ %bandwidth.1.ph, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2320000, i32 %mul22)
  %cmp140 = icmp ult i32 %mul22, 2320000
  br i1 %cmp140, label %if.then142, label %if.else146

if.then142:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx143 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 6
  %106 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx143, align 1
  %108 = and i8 %107, -25
  store i8 %108, ptr %arrayidx143, align 1
  br label %if.end168

if.else146:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 3080000, i32 %mul22)
  %cmp147 = icmp ult i32 %mul22, 3080000
  %arrayidx150 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 6
  %109 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx150, align 1
  %111 = and i8 %110, -25
  br i1 %cmp147, label %if.then149, label %if.else158

if.then149:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  %112 = or i8 %111, 16
  %113 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx150, align 1
  br label %if.end168

if.else158:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  %114 = or i8 %111, 8
  %115 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx150, align 1
  br label %if.end168

if.end168:                                        ; preds = %if.else158, %if.then149, %if.then142
  %vco_sel.0 = phi i32 [ 0, %if.then142 ], [ 1, %if.then149 ], [ 2, %if.else158 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %3)
  %cmp169 = icmp ult i32 %3, 45000000
  br i1 %cmp169, label %if.then171, label %if.end168.if.end174_crit_edge

if.end168.if.end174_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 6, ptr %arrayidx124, align 1
  %117 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 17, ptr %arrayidx125, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end168.if.end174_crit_edge
  %arrayidx175 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 6
  %118 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx175, align 1
  %120 = or i8 %119, 32
  store i8 %120, ptr %arrayidx175, align 1
  %121 = getelementptr inbounds [2 x i8], ptr %buf.i696, i32 0, i32 1
  %122 = getelementptr inbounds i8, ptr %msg.i697, i32 4
  %flags.i700 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i697, i32 0, i32 1
  %buf2.i702 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i697, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx124, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %125 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %buf.i696, align 1
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %124, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %122, align 4
  %128 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %addr1.i, align 4
  %conv.i699 = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i699, ptr %msg.i697, align 4
  %131 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %132 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i703 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703)
  %cmp.not.i704 = icmp eq i32 %call.i703, 1
  br i1 %cmp.not.i704, label %for.inc, label %if.end174.fc0011_writereg.exit709_crit_edge

if.end174.fc0011_writereg.exit709_crit_edge:      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

fc0011_writereg.exit709:                          ; preds = %for.inc.4.fc0011_writereg.exit709_crit_edge, %for.inc.3.fc0011_writereg.exit709_crit_edge, %for.inc.2.fc0011_writereg.exit709_crit_edge, %for.inc.1.fc0011_writereg.exit709_crit_edge, %for.inc.fc0011_writereg.exit709_crit_edge, %if.end174.fc0011_writereg.exit709_crit_edge
  %i.0805.lcssa = phi i32 [ 1, %if.end174.fc0011_writereg.exit709_crit_edge ], [ 2, %for.inc.fc0011_writereg.exit709_crit_edge ], [ 3, %for.inc.1.fc0011_writereg.exit709_crit_edge ], [ 4, %for.inc.2.fc0011_writereg.exit709_crit_edge ], [ 5, %for.inc.3.fc0011_writereg.exit709_crit_edge ], [ 6, %for.inc.4.fc0011_writereg.exit709_crit_edge ]
  %.lcssa815 = phi i8 [ %124, %if.end174.fc0011_writereg.exit709_crit_edge ], [ %138, %for.inc.fc0011_writereg.exit709_crit_edge ], [ %150, %for.inc.1.fc0011_writereg.exit709_crit_edge ], [ %162, %for.inc.2.fc0011_writereg.exit709_crit_edge ], [ %174, %for.inc.3.fc0011_writereg.exit709_crit_edge ], [ %186, %for.inc.4.fc0011_writereg.exit709_crit_edge ]
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %dev.i705 = getelementptr inbounds %struct.i2c_adapter, ptr %136, i32 0, i32 9
  %conv6.i706 = zext i8 %.lcssa815 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i705, ptr noundef nonnull @.str.25, i32 noundef %i.0805.lcssa, i32 noundef %conv6.i706) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end174
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %137 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx125, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %139 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %buf.i696, align 1
  %140 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %138, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %141 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %122, align 4
  %142 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %addr1.i, align 4
  %conv.i699.1 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i699.1, ptr %msg.i697, align 4
  %145 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %146 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call.i703.1 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703.1)
  %cmp.not.i704.1 = icmp eq i32 %call.i703.1, 1
  br i1 %cmp.not.i704.1, label %for.inc.1, label %for.inc.fc0011_writereg.exit709_crit_edge

for.inc.fc0011_writereg.exit709_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %149 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx81, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %151 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 3, ptr %buf.i696, align 1
  %152 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %150, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %153 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %122, align 4
  %154 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %addr1.i, align 4
  %conv.i699.2 = zext i8 %155 to i16
  %156 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i699.2, ptr %msg.i697, align 4
  %157 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %158 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %call.i703.2 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703.2)
  %cmp.not.i704.2 = icmp eq i32 %call.i703.2, 1
  br i1 %cmp.not.i704.2, label %for.inc.2, label %for.inc.1.fc0011_writereg.exit709_crit_edge

for.inc.1.fc0011_writereg.exit709_crit_edge:      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %161 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx83, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %163 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 4, ptr %buf.i696, align 1
  %164 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %162, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %165 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %122, align 4
  %166 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %addr1.i, align 4
  %conv.i699.3 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i699.3, ptr %msg.i697, align 4
  %169 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %170 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call.i703.3 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703.3)
  %cmp.not.i704.3 = icmp eq i32 %call.i703.3, 1
  br i1 %cmp.not.i704.3, label %for.inc.3, label %for.inc.2.fc0011_writereg.exit709_crit_edge

for.inc.2.fc0011_writereg.exit709_crit_edge:      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %arrayidx182.4 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 5
  %173 = ptrtoint ptr %arrayidx182.4 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx182.4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %175 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 5, ptr %buf.i696, align 1
  %176 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %174, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %177 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %122, align 4
  %178 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %addr1.i, align 4
  %conv.i699.4 = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i699.4, ptr %msg.i697, align 4
  %181 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %182 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %call.i703.4 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703.4)
  %cmp.not.i704.4 = icmp eq i32 %call.i703.4, 1
  br i1 %cmp.not.i704.4, label %for.inc.4, label %for.inc.3.fc0011_writereg.exit709_crit_edge

for.inc.3.fc0011_writereg.exit709_crit_edge:      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %185 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx175, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i696) #8
  %187 = ptrtoint ptr %buf.i696 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 6, ptr %buf.i696, align 1
  %188 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %186, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i697) #8
  %189 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %122, align 4
  %190 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %addr1.i, align 4
  %conv.i699.5 = zext i8 %191 to i16
  %192 = ptrtoint ptr %msg.i697 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv.i699.5, ptr %msg.i697, align 4
  %193 = ptrtoint ptr %flags.i700 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %flags.i700, align 2
  store i16 2, ptr %122, align 4
  %194 = ptrtoint ptr %buf2.i702 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %buf.i696, ptr %buf2.i702, align 4
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  %call.i703.5 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %msg.i697, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i703.5)
  %cmp.not.i704.5 = icmp eq i32 %call.i703.5, 1
  br i1 %cmp.not.i704.5, label %for.inc.5, label %for.inc.4.fc0011_writereg.exit709_crit_edge

for.inc.4.fc0011_writereg.exit709_crit_edge:      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit709

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i697) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i696) #8
  %call187 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end190:                                        ; preds = %for.inc.5
  %call191 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %1, ptr noundef nonnull %vco_cal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %while.cond.preheader, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end190
  %197 = ptrtoint ptr %vco_cal to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %vco_cal, align 1
  %199 = and i8 %198, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool197.not809 = icmp eq i8 %199, 0
  br i1 %tobool197.not809, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %200 = getelementptr inbounds [2 x i8], ptr %buf.i710, i32 0, i32 1
  %201 = getelementptr inbounds i8, ptr %msg.i711, i32 4
  %flags.i714 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711, i32 0, i32 1
  %buf2.i716 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711, i32 0, i32 3
  %202 = getelementptr inbounds [2 x i8], ptr %buf.i725, i32 0, i32 1
  %203 = getelementptr inbounds i8, ptr %msg.i726, i32 4
  %flags.i729 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i726, i32 0, i32 1
  %buf2.i731 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i726, i32 0, i32 3
  %204 = getelementptr inbounds [2 x i8], ptr %buf.i739, i32 0, i32 1
  %205 = getelementptr inbounds i8, ptr %msg.i740, i32 4
  %flags.i743 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i740, i32 0, i32 1
  %buf2.i745 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i740, i32 0, i32 3
  %206 = getelementptr inbounds [2 x i8], ptr %buf.i753, i32 0, i32 1
  %207 = getelementptr inbounds i8, ptr %msg.i754, i32 4
  %flags.i757 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i754, i32 0, i32 1
  %buf2.i759 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i754, i32 0, i32 3
  %208 = getelementptr inbounds [2 x i8], ptr %buf.i767, i32 0, i32 1
  %209 = getelementptr inbounds i8, ptr %msg.i768, i32 4
  %flags.i771 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i768, i32 0, i32 1
  %buf2.i773 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i768, i32 0, i32 3
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i781, i32 0, i32 1
  %211 = getelementptr inbounds i8, ptr %msg.i782, i32 4
  %flags.i785 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i782, i32 0, i32 1
  %buf2.i787 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i782, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end247.while.body_crit_edge, %while.body.lr.ph
  %vco_retries.0810 = phi i32 [ 0, %while.body.lr.ph ], [ %inc248, %if.end247.while.body_crit_edge ]
  %212 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %callback, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %216 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %addr1.i, align 4
  %conv201 = zext i8 %217 to i32
  %call202 = call i32 %213(ptr noundef %215, i32 noundef 0, i32 noundef 1, i32 noundef %conv201) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %for.body214.preheader, label %do.end207

for.body214.preheader:                            ; preds = %while.body
  %218 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx124, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %220 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %buf.i710, align 1
  %221 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %219, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %222 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 -1, ptr %201, align 4
  %223 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %addr1.i, align 4
  %conv.i713 = zext i8 %224 to i16
  %225 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i713, ptr %msg.i711, align 4
  %226 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %227 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %call.i717 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717)
  %cmp.not.i718 = icmp eq i32 %call.i717, 1
  br i1 %cmp.not.i718, label %for.body214.preheader.fc0011_writereg.exit724_crit_edge, label %do.end.i722

for.body214.preheader.fc0011_writereg.exit724_crit_edge: ; preds = %for.body214.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724

do.end207:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 4
  %dev209 = getelementptr inbounds %struct.i2c_adapter, ptr %231, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev209, ptr noundef nonnull @.str.18) #12
  br label %cleanup

do.end.i722:                                      ; preds = %for.body214.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %1, align 4
  %dev.i719 = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 9
  %conv6.i721 = zext i8 %219 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %conv6.i721) #12
  br label %fc0011_writereg.exit724

fc0011_writereg.exit724:                          ; preds = %do.end.i722, %for.body214.preheader.fc0011_writereg.exit724_crit_edge
  %retval.0.i723 = phi i32 [ -5, %do.end.i722 ], [ 0, %for.body214.preheader.fc0011_writereg.exit724_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %234 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx125, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %236 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 2, ptr %buf.i710, align 1
  %237 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %235, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %238 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 -1, ptr %201, align 4
  %239 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %addr1.i, align 4
  %conv.i713.1 = zext i8 %240 to i16
  %241 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %conv.i713.1, ptr %msg.i711, align 4
  %242 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %243 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 4
  %call.i717.1 = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717.1)
  %cmp.not.i718.1 = icmp eq i32 %call.i717.1, 1
  br i1 %cmp.not.i718.1, label %fc0011_writereg.exit724.fc0011_writereg.exit724.1_crit_edge, label %do.end.i722.1

fc0011_writereg.exit724.fc0011_writereg.exit724.1_crit_edge: ; preds = %fc0011_writereg.exit724
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724.1

do.end.i722.1:                                    ; preds = %fc0011_writereg.exit724
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %1, align 4
  %dev.i719.1 = getelementptr inbounds %struct.i2c_adapter, ptr %247, i32 0, i32 9
  %conv6.i721.1 = zext i8 %235 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719.1, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef %conv6.i721.1) #12
  br label %fc0011_writereg.exit724.1

fc0011_writereg.exit724.1:                        ; preds = %do.end.i722.1, %fc0011_writereg.exit724.fc0011_writereg.exit724.1_crit_edge
  %retval.0.i723.1 = phi i32 [ -5, %do.end.i722.1 ], [ 0, %fc0011_writereg.exit724.fc0011_writereg.exit724.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %or218.1 = or i32 %retval.0.i723.1, %retval.0.i723
  %248 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx81, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %250 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 3, ptr %buf.i710, align 1
  %251 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %249, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %252 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 -1, ptr %201, align 4
  %253 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %addr1.i, align 4
  %conv.i713.2 = zext i8 %254 to i16
  %255 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv.i713.2, ptr %msg.i711, align 4
  %256 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %257 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %call.i717.2 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717.2)
  %cmp.not.i718.2 = icmp eq i32 %call.i717.2, 1
  br i1 %cmp.not.i718.2, label %fc0011_writereg.exit724.1.fc0011_writereg.exit724.2_crit_edge, label %do.end.i722.2

fc0011_writereg.exit724.1.fc0011_writereg.exit724.2_crit_edge: ; preds = %fc0011_writereg.exit724.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724.2

do.end.i722.2:                                    ; preds = %fc0011_writereg.exit724.1
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 4
  %dev.i719.2 = getelementptr inbounds %struct.i2c_adapter, ptr %261, i32 0, i32 9
  %conv6.i721.2 = zext i8 %249 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719.2, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef %conv6.i721.2) #12
  br label %fc0011_writereg.exit724.2

fc0011_writereg.exit724.2:                        ; preds = %do.end.i722.2, %fc0011_writereg.exit724.1.fc0011_writereg.exit724.2_crit_edge
  %retval.0.i723.2 = phi i32 [ -5, %do.end.i722.2 ], [ 0, %fc0011_writereg.exit724.1.fc0011_writereg.exit724.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %or218.2 = or i32 %retval.0.i723.2, %or218.1
  %262 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx83, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %264 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 4, ptr %buf.i710, align 1
  %265 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %263, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %266 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -1, ptr %201, align 4
  %267 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %addr1.i, align 4
  %conv.i713.3 = zext i8 %268 to i16
  %269 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv.i713.3, ptr %msg.i711, align 4
  %270 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %271 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %272 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %1, align 4
  %call.i717.3 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717.3)
  %cmp.not.i718.3 = icmp eq i32 %call.i717.3, 1
  br i1 %cmp.not.i718.3, label %fc0011_writereg.exit724.2.fc0011_writereg.exit724.3_crit_edge, label %do.end.i722.3

fc0011_writereg.exit724.2.fc0011_writereg.exit724.3_crit_edge: ; preds = %fc0011_writereg.exit724.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724.3

do.end.i722.3:                                    ; preds = %fc0011_writereg.exit724.2
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %1, align 4
  %dev.i719.3 = getelementptr inbounds %struct.i2c_adapter, ptr %275, i32 0, i32 9
  %conv6.i721.3 = zext i8 %263 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719.3, ptr noundef nonnull @.str.25, i32 noundef 4, i32 noundef %conv6.i721.3) #12
  br label %fc0011_writereg.exit724.3

fc0011_writereg.exit724.3:                        ; preds = %do.end.i722.3, %fc0011_writereg.exit724.2.fc0011_writereg.exit724.3_crit_edge
  %retval.0.i723.3 = phi i32 [ -5, %do.end.i722.3 ], [ 0, %fc0011_writereg.exit724.2.fc0011_writereg.exit724.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %or218.3 = or i32 %retval.0.i723.3, %or218.2
  %276 = ptrtoint ptr %arrayidx182.4 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx182.4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %278 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 5, ptr %buf.i710, align 1
  %279 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %277, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %280 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 -1, ptr %201, align 4
  %281 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %addr1.i, align 4
  %conv.i713.4 = zext i8 %282 to i16
  %283 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 %conv.i713.4, ptr %msg.i711, align 4
  %284 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %285 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %1, align 4
  %call.i717.4 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717.4)
  %cmp.not.i718.4 = icmp eq i32 %call.i717.4, 1
  br i1 %cmp.not.i718.4, label %fc0011_writereg.exit724.3.fc0011_writereg.exit724.4_crit_edge, label %do.end.i722.4

fc0011_writereg.exit724.3.fc0011_writereg.exit724.4_crit_edge: ; preds = %fc0011_writereg.exit724.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724.4

do.end.i722.4:                                    ; preds = %fc0011_writereg.exit724.3
  call void @__sanitizer_cov_trace_pc() #10
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %1, align 4
  %dev.i719.4 = getelementptr inbounds %struct.i2c_adapter, ptr %289, i32 0, i32 9
  %conv6.i721.4 = zext i8 %277 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719.4, ptr noundef nonnull @.str.25, i32 noundef 5, i32 noundef %conv6.i721.4) #12
  br label %fc0011_writereg.exit724.4

fc0011_writereg.exit724.4:                        ; preds = %do.end.i722.4, %fc0011_writereg.exit724.3.fc0011_writereg.exit724.4_crit_edge
  %retval.0.i723.4 = phi i32 [ -5, %do.end.i722.4 ], [ 0, %fc0011_writereg.exit724.3.fc0011_writereg.exit724.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %or218.4 = or i32 %retval.0.i723.4, %or218.3
  %290 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx175, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i710) #8
  %292 = ptrtoint ptr %buf.i710 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 6, ptr %buf.i710, align 1
  %293 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %291, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711) #8
  %294 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 -1, ptr %201, align 4
  %295 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %addr1.i, align 4
  %conv.i713.5 = zext i8 %296 to i16
  %297 = ptrtoint ptr %msg.i711 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %conv.i713.5, ptr %msg.i711, align 4
  %298 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %201, align 4
  %299 = ptrtoint ptr %buf2.i716 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %buf.i710, ptr %buf2.i716, align 4
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 4
  %call.i717.5 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %msg.i711, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i717.5)
  %cmp.not.i718.5 = icmp eq i32 %call.i717.5, 1
  br i1 %cmp.not.i718.5, label %fc0011_writereg.exit724.4.fc0011_writereg.exit724.5_crit_edge, label %do.end.i722.5

fc0011_writereg.exit724.4.fc0011_writereg.exit724.5_crit_edge: ; preds = %fc0011_writereg.exit724.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit724.5

do.end.i722.5:                                    ; preds = %fc0011_writereg.exit724.4
  call void @__sanitizer_cov_trace_pc() #10
  %302 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %1, align 4
  %dev.i719.5 = getelementptr inbounds %struct.i2c_adapter, ptr %303, i32 0, i32 9
  %conv6.i721.5 = zext i8 %291 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i719.5, ptr noundef nonnull @.str.25, i32 noundef 6, i32 noundef %conv6.i721.5) #12
  br label %fc0011_writereg.exit724.5

fc0011_writereg.exit724.5:                        ; preds = %do.end.i722.5, %fc0011_writereg.exit724.4.fc0011_writereg.exit724.5_crit_edge
  %retval.0.i723.5 = phi i32 [ -5, %do.end.i722.5 ], [ 0, %fc0011_writereg.exit724.4.fc0011_writereg.exit724.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i710) #8
  %or218.5 = or i32 %retval.0.i723.5, %or218.4
  %304 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i725) #8
  %306 = ptrtoint ptr %buf.i725 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 7, ptr %buf.i725, align 1
  %307 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %305, ptr %202, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i726) #8
  %308 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 196607, ptr %203, align 4
  %309 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %addr1.i, align 4
  %conv.i728 = zext i8 %310 to i16
  %311 = ptrtoint ptr %msg.i726 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv.i728, ptr %msg.i726, align 4
  %312 = ptrtoint ptr %flags.i729 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i729, align 2
  %313 = ptrtoint ptr %buf2.i731 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf.i725, ptr %buf2.i731, align 4
  %314 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %1, align 4
  %call.i732 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %msg.i726, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i732)
  %cmp.not.i733 = icmp eq i32 %call.i732, 1
  br i1 %cmp.not.i733, label %fc0011_writereg.exit724.5.fc0011_writereg.exit738_crit_edge, label %do.end.i736

fc0011_writereg.exit724.5.fc0011_writereg.exit738_crit_edge: ; preds = %fc0011_writereg.exit724.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit738

do.end.i736:                                      ; preds = %fc0011_writereg.exit724.5
  call void @__sanitizer_cov_trace_pc() #10
  %316 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %1, align 4
  %dev.i734 = getelementptr inbounds %struct.i2c_adapter, ptr %317, i32 0, i32 9
  %conv6.i735 = zext i8 %305 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i734, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef %conv6.i735) #12
  br label %fc0011_writereg.exit738

fc0011_writereg.exit738:                          ; preds = %do.end.i736, %fc0011_writereg.exit724.5.fc0011_writereg.exit738_crit_edge
  %retval.0.i737 = phi i32 [ -5, %do.end.i736 ], [ 0, %fc0011_writereg.exit724.5.fc0011_writereg.exit738_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i726) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i725) #8
  %or224 = or i32 %retval.0.i737, %or218.5
  %318 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i739) #8
  %320 = ptrtoint ptr %buf.i739 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 8, ptr %buf.i739, align 1
  %321 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %319, ptr %204, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i740) #8
  %322 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 196607, ptr %205, align 4
  %323 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %addr1.i, align 4
  %conv.i742 = zext i8 %324 to i16
  %325 = ptrtoint ptr %msg.i740 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %conv.i742, ptr %msg.i740, align 4
  %326 = ptrtoint ptr %flags.i743 to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 0, ptr %flags.i743, align 2
  %327 = ptrtoint ptr %buf2.i745 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %buf.i739, ptr %buf2.i745, align 4
  %328 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %1, align 4
  %call.i746 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %msg.i740, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i746)
  %cmp.not.i747 = icmp eq i32 %call.i746, 1
  br i1 %cmp.not.i747, label %fc0011_writereg.exit738.fc0011_writereg.exit752_crit_edge, label %do.end.i750

fc0011_writereg.exit738.fc0011_writereg.exit752_crit_edge: ; preds = %fc0011_writereg.exit738
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit752

do.end.i750:                                      ; preds = %fc0011_writereg.exit738
  call void @__sanitizer_cov_trace_pc() #10
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %1, align 4
  %dev.i748 = getelementptr inbounds %struct.i2c_adapter, ptr %331, i32 0, i32 9
  %conv6.i749 = zext i8 %319 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i748, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %conv6.i749) #12
  br label %fc0011_writereg.exit752

fc0011_writereg.exit752:                          ; preds = %do.end.i750, %fc0011_writereg.exit738.fc0011_writereg.exit752_crit_edge
  %retval.0.i751 = phi i32 [ -5, %do.end.i750 ], [ 0, %fc0011_writereg.exit738.fc0011_writereg.exit752_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i740) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i739) #8
  %or227 = or i32 %or224, %retval.0.i751
  %332 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i753) #8
  %334 = ptrtoint ptr %buf.i753 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 10, ptr %buf.i753, align 1
  %335 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %333, ptr %206, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i754) #8
  %336 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 196607, ptr %207, align 4
  %337 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %addr1.i, align 4
  %conv.i756 = zext i8 %338 to i16
  %339 = ptrtoint ptr %msg.i754 to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 %conv.i756, ptr %msg.i754, align 4
  %340 = ptrtoint ptr %flags.i757 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 0, ptr %flags.i757, align 2
  %341 = ptrtoint ptr %buf2.i759 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %buf.i753, ptr %buf2.i759, align 4
  %342 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %1, align 4
  %call.i760 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %msg.i754, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i760)
  %cmp.not.i761 = icmp eq i32 %call.i760, 1
  br i1 %cmp.not.i761, label %fc0011_writereg.exit752.fc0011_writereg.exit766_crit_edge, label %do.end.i764

fc0011_writereg.exit752.fc0011_writereg.exit766_crit_edge: ; preds = %fc0011_writereg.exit752
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit766

do.end.i764:                                      ; preds = %fc0011_writereg.exit752
  call void @__sanitizer_cov_trace_pc() #10
  %344 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %1, align 4
  %dev.i762 = getelementptr inbounds %struct.i2c_adapter, ptr %345, i32 0, i32 9
  %conv6.i763 = zext i8 %333 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i762, ptr noundef nonnull @.str.25, i32 noundef 10, i32 noundef %conv6.i763) #12
  br label %fc0011_writereg.exit766

fc0011_writereg.exit766:                          ; preds = %do.end.i764, %fc0011_writereg.exit752.fc0011_writereg.exit766_crit_edge
  %retval.0.i765 = phi i32 [ -5, %do.end.i764 ], [ 0, %fc0011_writereg.exit752.fc0011_writereg.exit766_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i754) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i753) #8
  %or230 = or i32 %or227, %retval.0.i765
  %346 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i767) #8
  %348 = ptrtoint ptr %buf.i767 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 11, ptr %buf.i767, align 1
  %349 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %347, ptr %208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i768) #8
  %350 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 196607, ptr %209, align 4
  %351 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %addr1.i, align 4
  %conv.i770 = zext i8 %352 to i16
  %353 = ptrtoint ptr %msg.i768 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv.i770, ptr %msg.i768, align 4
  %354 = ptrtoint ptr %flags.i771 to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %flags.i771, align 2
  %355 = ptrtoint ptr %buf2.i773 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %buf.i767, ptr %buf2.i773, align 4
  %356 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %1, align 4
  %call.i774 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %msg.i768, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i774)
  %cmp.not.i775 = icmp eq i32 %call.i774, 1
  br i1 %cmp.not.i775, label %fc0011_writereg.exit766.fc0011_writereg.exit780_crit_edge, label %do.end.i778

fc0011_writereg.exit766.fc0011_writereg.exit780_crit_edge: ; preds = %fc0011_writereg.exit766
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit780

do.end.i778:                                      ; preds = %fc0011_writereg.exit766
  call void @__sanitizer_cov_trace_pc() #10
  %358 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %1, align 4
  %dev.i776 = getelementptr inbounds %struct.i2c_adapter, ptr %359, i32 0, i32 9
  %conv6.i777 = zext i8 %347 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i776, ptr noundef nonnull @.str.25, i32 noundef 11, i32 noundef %conv6.i777) #12
  br label %fc0011_writereg.exit780

fc0011_writereg.exit780:                          ; preds = %do.end.i778, %fc0011_writereg.exit766.fc0011_writereg.exit780_crit_edge
  %retval.0.i779 = phi i32 [ -5, %do.end.i778 ], [ 0, %fc0011_writereg.exit766.fc0011_writereg.exit780_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i768) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i767) #8
  %or233 = or i32 %or230, %retval.0.i779
  %360 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i781) #8
  %362 = ptrtoint ptr %buf.i781 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 13, ptr %buf.i781, align 1
  %363 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %361, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i782) #8
  %364 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 196607, ptr %211, align 4
  %365 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %addr1.i, align 4
  %conv.i784 = zext i8 %366 to i16
  %367 = ptrtoint ptr %msg.i782 to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv.i784, ptr %msg.i782, align 4
  %368 = ptrtoint ptr %flags.i785 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 0, ptr %flags.i785, align 2
  %369 = ptrtoint ptr %buf2.i787 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %buf.i781, ptr %buf2.i787, align 4
  %370 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %1, align 4
  %call.i788 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %msg.i782, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i788)
  %cmp.not.i789 = icmp eq i32 %call.i788, 1
  br i1 %cmp.not.i789, label %fc0011_writereg.exit780.fc0011_writereg.exit794_crit_edge, label %do.end.i792

fc0011_writereg.exit780.fc0011_writereg.exit794_crit_edge: ; preds = %fc0011_writereg.exit780
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit794

do.end.i792:                                      ; preds = %fc0011_writereg.exit780
  call void @__sanitizer_cov_trace_pc() #10
  %372 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %1, align 4
  %dev.i790 = getelementptr inbounds %struct.i2c_adapter, ptr %373, i32 0, i32 9
  %conv6.i791 = zext i8 %361 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i790, ptr noundef nonnull @.str.25, i32 noundef 13, i32 noundef %conv6.i791) #12
  br label %fc0011_writereg.exit794

fc0011_writereg.exit794:                          ; preds = %do.end.i792, %fc0011_writereg.exit780.fc0011_writereg.exit794_crit_edge
  %retval.0.i793 = phi i32 [ -5, %do.end.i792 ], [ 0, %fc0011_writereg.exit780.fc0011_writereg.exit794_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i782) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i781) #8
  %or236 = or i32 %or233, %retval.0.i793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or236)
  %tobool237.not = icmp eq i32 %or236, 0
  br i1 %tobool237.not, label %if.end239, label %fc0011_writereg.exit794.cleanup_crit_edge

fc0011_writereg.exit794.cleanup_crit_edge:        ; preds = %fc0011_writereg.exit794
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end239:                                        ; preds = %fc0011_writereg.exit794
  %call240 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %if.end239.cleanup_crit_edge

if.end239.cleanup_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end243:                                        ; preds = %if.end239
  %call244 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %1, ptr noundef nonnull %vco_cal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end243.cleanup_crit_edge

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end247:                                        ; preds = %if.end243
  %inc248 = add nuw nsw i32 %vco_retries.0810, 1
  %374 = ptrtoint ptr %vco_cal to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %vco_cal, align 1
  %376 = and i8 %375, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool197.not = icmp eq i8 %376, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vco_retries.0810)
  %cmp198 = icmp ult i32 %vco_retries.0810, 2
  %or.cond = select i1 %tobool197.not, i1 %cmp198, i1 false
  br i1 %or.cond, label %if.end247.while.body_crit_edge, label %if.end247.while.end_crit_edge

if.end247.while.end_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end247.while.body_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end247.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %vco_retries.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc248, %if.end247.while.end_crit_edge ]
  %.lcssa = phi i8 [ %198, %while.cond.preheader.while.end_crit_edge ], [ %375, %if.end247.while.end_crit_edge ]
  %conv249 = zext i8 %.lcssa to i32
  %and250 = and i32 %conv249, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %do.end255, label %if.end259

do.end255:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %377 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %1, align 4
  %dev257 = getelementptr inbounds %struct.i2c_adapter, ptr %378, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev257, ptr noundef nonnull @.str.21, i32 noundef %conv249) #12
  br label %cleanup

if.end259:                                        ; preds = %while.end
  %and261 = and i8 %.lcssa, 63
  %379 = ptrtoint ptr %vco_cal to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %and261, ptr %vco_cal, align 1
  %380 = zext i32 %vco_sel.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %380, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %vco_sel.0, label %do.end277 [
    i32 0, label %sw.bb291
    i32 1, label %sw.bb324
    i32 2, label %sw.bb380
  ]

do.end277:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 335, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

sw.bb291:                                         ; preds = %if.end259
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and261)
  %cmp293 = icmp ult i8 %and261, 8
  %381 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx175, align 1
  %383 = and i8 %382, -25
  br i1 %cmp293, label %if.then295, label %if.else313

if.then295:                                       ; preds = %sw.bb291
  %384 = or i8 %383, 16
  %385 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %384, ptr %arrayidx175, align 1
  %call305 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.end308, label %if.then295.cleanup_crit_edge

if.then295.cleanup_crit_edge:                     ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end308:                                        ; preds = %if.then295
  %call309 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %if.end308.sw.epilog417_crit_edge, label %if.end308.cleanup_crit_edge

if.end308.cleanup_crit_edge:                      ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end308.sw.epilog417_crit_edge:                 ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

if.else313:                                       ; preds = %sw.bb291
  %386 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %383, ptr %arrayidx175, align 1
  %call319 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %383)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.else313.sw.epilog417_crit_edge, label %if.else313.cleanup_crit_edge

if.else313.cleanup_crit_edge:                     ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else313.sw.epilog417_crit_edge:                ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

sw.bb324:                                         ; preds = %if.end259
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %and261)
  %cmp326 = icmp ult i8 %and261, 5
  br i1 %cmp326, label %if.then328, label %if.else346

if.then328:                                       ; preds = %sw.bb324
  %387 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx175, align 1
  %389 = and i8 %388, -25
  %390 = or i8 %389, 8
  store i8 %390, ptr %arrayidx175, align 1
  %call338 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %390)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %if.end341, label %if.then328.cleanup_crit_edge

if.then328.cleanup_crit_edge:                     ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end341:                                        ; preds = %if.then328
  %call342 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end341.sw.epilog417_crit_edge, label %if.end341.cleanup_crit_edge

if.end341.cleanup_crit_edge:                      ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end341.sw.epilog417_crit_edge:                 ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

if.else346:                                       ; preds = %sw.bb324
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %and261)
  %cmp348 = icmp ult i8 %and261, 49
  %391 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx175, align 1
  %393 = and i8 %392, -25
  br i1 %cmp348, label %if.then350, label %if.else364

if.then350:                                       ; preds = %if.else346
  %394 = or i8 %393, 16
  %395 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %394, ptr %arrayidx175, align 1
  %call360 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %394)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360)
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %if.then350.sw.epilog417_crit_edge, label %if.then350.cleanup_crit_edge

if.then350.cleanup_crit_edge:                     ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then350.sw.epilog417_crit_edge:                ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

if.else364:                                       ; preds = %if.else346
  %396 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %393, ptr %arrayidx175, align 1
  %call370 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %393)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %if.end373, label %if.else364.cleanup_crit_edge

if.else364.cleanup_crit_edge:                     ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end373:                                        ; preds = %if.else364
  %call374 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %if.end373.sw.epilog417_crit_edge, label %if.end373.cleanup_crit_edge

if.end373.cleanup_crit_edge:                      ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end373.sw.epilog417_crit_edge:                 ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

sw.bb380:                                         ; preds = %if.end259
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %and261)
  %cmp382 = icmp ugt i8 %and261, 53
  %397 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx175, align 1
  %399 = and i8 %398, -25
  br i1 %cmp382, label %if.then384, label %if.else402

if.then384:                                       ; preds = %sw.bb380
  %400 = or i8 %399, 16
  %401 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %arrayidx175, align 1
  %call394 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %400)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.end397, label %if.then384.cleanup_crit_edge

if.then384.cleanup_crit_edge:                     ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end397:                                        ; preds = %if.then384
  %call398 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.end397.sw.epilog417_crit_edge, label %if.end397.cleanup_crit_edge

if.end397.cleanup_crit_edge:                      ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end397.sw.epilog417_crit_edge:                 ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

if.else402:                                       ; preds = %sw.bb380
  %402 = or i8 %399, 8
  %403 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %402, ptr %arrayidx175, align 1
  %call412 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %402)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %if.else402.sw.epilog417_crit_edge, label %if.else402.cleanup_crit_edge

if.else402.cleanup_crit_edge:                     ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else402.sw.epilog417_crit_edge:                ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog417

sw.epilog417:                                     ; preds = %if.else402.sw.epilog417_crit_edge, %if.end397.sw.epilog417_crit_edge, %if.end373.sw.epilog417_crit_edge, %if.then350.sw.epilog417_crit_edge, %if.end341.sw.epilog417_crit_edge, %if.else313.sw.epilog417_crit_edge, %if.end308.sw.epilog417_crit_edge
  %call418 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call418)
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %if.end421, label %sw.epilog417.cleanup_crit_edge

sw.epilog417.cleanup_crit_edge:                   ; preds = %sw.epilog417
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end421:                                        ; preds = %sw.epilog417
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #8
  %call423 = call fastcc i32 @fc0011_readreg(ptr noundef %1, i8 noundef zeroext 13, ptr noundef %arrayidx5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call423)
  %tobool424.not = icmp eq i32 %call423, 0
  br i1 %tobool424.not, label %if.end426, label %if.end421.cleanup_crit_edge

if.end421.cleanup_crit_edge:                      ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end426:                                        ; preds = %if.end421
  %404 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx5, align 1
  %406 = or i8 %405, 16
  store i8 %406, ptr %arrayidx5, align 1
  %call432 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %406)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call432)
  %tobool433.not = icmp eq i32 %call432, 0
  br i1 %tobool433.not, label %if.end435, label %if.end426.cleanup_crit_edge

if.end426.cleanup_crit_edge:                      ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end435:                                        ; preds = %if.end426
  %arrayidx436 = getelementptr inbounds [18 x i8], ptr %regs, i32 0, i32 16
  %407 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 11, ptr %arrayidx436, align 1
  %call438 = call fastcc i32 @fc0011_writereg(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438)
  %tobool439.not = icmp eq i32 %call438, 0
  br i1 %tobool439.not, label %do.body442, label %if.end435.cleanup_crit_edge

if.end435.cleanup_crit_edge:                      ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body442:                                       ; preds = %if.end435
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc0011_set_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc0011_set_params, %if.then452)) #8
          to label %do.end470 [label %if.then452], !srcloc !72

if.then452:                                       ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #10
  %408 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %1, align 4
  %dev454 = getelementptr inbounds %struct.i2c_adapter, ptr %409, i32 0, i32 9
  %410 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx124, align 1
  %conv456 = zext i8 %411 to i32
  %412 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx125, align 1
  %conv458 = zext i8 %413 to i32
  %414 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx81, align 1
  %conv460 = zext i8 %415 to i32
  %416 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx83, align 1
  %conv462 = zext i8 %417 to i32
  %418 = ptrtoint ptr %arrayidx182.4 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx182.4, align 1
  %conv464 = zext i8 %419 to i32
  %420 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx175, align 1
  %conv466 = zext i8 %421 to i32
  %422 = ptrtoint ptr %vco_cal to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %vco_cal, align 1
  %conv467 = zext i8 %423 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc0011_set_params.__UNIQUE_ID_ddebug294, ptr noundef %dev454, ptr noundef nonnull @.str.24, i32 noundef %conv456, i32 noundef %conv458, i32 noundef %conv460, i32 noundef %conv462, i32 noundef %conv464, i32 noundef %conv466, i32 noundef %conv467, i32 noundef %vco_retries.0.lcssa, i32 noundef %bandwidth.1) #8
  br label %do.end470

do.end470:                                        ; preds = %if.then452, %do.body442
  %424 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %dtv_property_cache, align 4
  %frequency472 = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 2
  %426 = ptrtoint ptr %frequency472 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %425, ptr %frequency472, align 4
  %427 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth474 = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 3
  %429 = ptrtoint ptr %bandwidth474 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %bandwidth474, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end470, %if.end435.cleanup_crit_edge, %if.end426.cleanup_crit_edge, %if.end421.cleanup_crit_edge, %sw.epilog417.cleanup_crit_edge, %if.else402.cleanup_crit_edge, %if.end397.cleanup_crit_edge, %if.then384.cleanup_crit_edge, %if.end373.cleanup_crit_edge, %if.else364.cleanup_crit_edge, %if.then350.cleanup_crit_edge, %if.end341.cleanup_crit_edge, %if.then328.cleanup_crit_edge, %if.else313.cleanup_crit_edge, %if.end308.cleanup_crit_edge, %if.then295.cleanup_crit_edge, %do.end277, %do.end255, %if.end243.cleanup_crit_edge, %if.end239.cleanup_crit_edge, %fc0011_writereg.exit794.cleanup_crit_edge, %do.end207, %if.end190.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %fc0011_writereg.exit709, %fc0011_writereg.exit695.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end277 ], [ 0, %do.end470 ], [ -5, %do.end255 ], [ %call202, %do.end207 ], [ -5, %fc0011_writereg.exit695.cleanup_crit_edge ], [ -5, %fc0011_writereg.exit709 ], [ %call187, %for.inc.5.cleanup_crit_edge ], [ %call191, %if.end190.cleanup_crit_edge ], [ %call305, %if.then295.cleanup_crit_edge ], [ %call309, %if.end308.cleanup_crit_edge ], [ %call319, %if.else313.cleanup_crit_edge ], [ %call338, %if.then328.cleanup_crit_edge ], [ %call342, %if.end341.cleanup_crit_edge ], [ %call360, %if.then350.cleanup_crit_edge ], [ %call370, %if.else364.cleanup_crit_edge ], [ %call374, %if.end373.cleanup_crit_edge ], [ %call394, %if.then384.cleanup_crit_edge ], [ %call398, %if.end397.cleanup_crit_edge ], [ %call412, %if.else402.cleanup_crit_edge ], [ %call418, %sw.epilog417.cleanup_crit_edge ], [ %call423, %if.end421.cleanup_crit_edge ], [ %call432, %if.end426.cleanup_crit_edge ], [ %call438, %if.end435.cleanup_crit_edge ], [ %call244, %if.end243.cleanup_crit_edge ], [ %call240, %if.end239.cleanup_crit_edge ], [ -5, %fc0011_writereg.exit794.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %regs) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vco_cal) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0011_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fc0011_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth1 = getelementptr inbounds %struct.fc0011_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth1, align 4
  %4 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bandwidth, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0011_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_writereg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %addr1 = getelementptr inbounds %struct.fc0011_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr1, align 4
  %conv = zext i8 %6 to i16
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
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 9
  %conv5 = zext i8 %reg to i32
  %conv6 = zext i8 %val to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv5, i32 noundef %conv6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_vcocal_trigger(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %buf.i9 = alloca [2 x i8], align 1
  %msg.i10 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 14, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.fc0011_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %buf2.i, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %fc0011_writereg.exit

fc0011_writereg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 14, i32 noundef 128) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9) #8
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i9, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 14, ptr %buf.i9, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10) #8
  %17 = getelementptr inbounds i8, ptr %msg.i10, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196607, ptr %17, align 4
  %19 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr1.i, align 4
  %conv.i12 = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i12, ptr %msg.i10, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i13, align 2
  %buf2.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 3
  %23 = ptrtoint ptr %buf2.i15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i9, ptr %buf2.i15, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i10, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 1
  br i1 %cmp.not.i17, label %if.end.fc0011_writereg.exit21_crit_edge, label %do.end.i19

if.end.fc0011_writereg.exit21_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_writereg.exit21

do.end.i19:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %dev.i18 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.25, i32 noundef 14, i32 noundef 0) #12
  br label %fc0011_writereg.exit21

fc0011_writereg.exit21:                           ; preds = %do.end.i19, %if.end.fc0011_writereg.exit21_crit_edge
  %retval.0.i20 = phi i32 [ -5, %do.end.i19 ], [ 0, %if.end.fc0011_writereg.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9) #8
  br label %cleanup

cleanup:                                          ; preds = %fc0011_writereg.exit21, %fc0011_writereg.exit
  %retval.0 = phi i32 [ -5, %fc0011_writereg.exit ], [ %retval.0.i20, %fc0011_writereg.exit21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_vcocal_read(ptr nocapture noundef readonly %priv, ptr noundef %value) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %dummy.i = alloca i8, align 1
  %msg.i9 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 14, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.fc0011_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr1.i, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %buf2.i, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %fc0011_writereg.exit

fc0011_writereg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 14, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %14 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 14, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #8
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %dummy.i, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i9) #8
  %16 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %18 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr1.i, align 4
  %conv.i11 = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i11, ptr %msg.i9, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i12, align 2
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %16, align 4
  %buf.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %reg.addr.i, ptr %buf.i14, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1
  %24 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i11, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 1
  %25 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 2
  %26 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 1, i32 3
  %tobool.not.i = icmp eq ptr %value, null
  %.dummy.i = select i1 %tobool.not.i, ptr %dummy.i, ptr %value
  %27 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.dummy.i, ptr %buf7.i, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i9, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 2
  br i1 %cmp.not.i16, label %if.end.fc0011_readreg.exit_crit_edge, label %do.end.i18

if.end.fc0011_readreg.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc0011_readreg.exit

do.end.i18:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %dev.i17 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i17, ptr noundef nonnull @.str.27, i32 noundef %conv10.i) #12
  br label %fc0011_readreg.exit

fc0011_readreg.exit:                              ; preds = %do.end.i18, %if.end.fc0011_readreg.exit_crit_edge
  %retval.0.i19 = phi i32 [ -5, %do.end.i18 ], [ 0, %if.end.fc0011_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %fc0011_readreg.exit, %fc0011_writereg.exit
  %retval.0 = phi i32 [ -5, %fc0011_writereg.exit ], [ %retval.0.i19, %fc0011_readreg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_readreg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %dummy = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.fc0011_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr1, align 4
  %conv = zext i8 %5 to i16
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
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %tobool.not = icmp eq ptr %val, null
  %.dummy = select i1 %tobool.not, ptr %dummy, ptr %val
  %13 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.dummy, ptr %buf7, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.addr, align 1
  %conv10 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/fc0011.c", i32 498, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fc0011_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fc0011_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_fc0011_attach, !9, !"__ksymtab_fc0011_attach", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/fc0011.c", i32 502, i32 1}
!10 = !{ptr @__UNIQUE_ID_description295, !11, !"__UNIQUE_ID_description295", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/fc0011.c", i32 504, i32 1}
!12 = !{ptr @__UNIQUE_ID_author296, !13, !"__UNIQUE_ID_author296", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/fc0011.c", i32 505, i32 1}
!14 = !{ptr @__UNIQUE_ID_file297, !15, !"__UNIQUE_ID_file297", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/fc0011.c", i32 506, i32 1}
!16 = !{ptr @__UNIQUE_ID_license298, !15, !"__UNIQUE_ID_license298", i1 false, i1 false}
!17 = !{ptr @fc0011_tuner_ops, !18, !"fc0011_tuner_ops", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/fc0011.c", i32 464, i32 35}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/fc0011.c", i32 119, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fc0011_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @fc0011_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/fc0011.c", i32 125, i32 3}
!27 = !{ptr @fc0011_init._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fc0011_init._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/fc0011.c", i32 235, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @fc0011_set_params._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @fc0011_set_params._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/fc0011.c", i32 250, i32 3}
!37 = !{ptr @fc0011_set_params._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fc0011_set_params._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/fc0011.c", i32 302, i32 4}
!41 = !{ptr @fc0011_set_params._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fc0011_set_params._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/fc0011.c", i32 326, i32 3}
!45 = !{ptr @fc0011_set_params._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fc0011_set_params._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/fc0011.c", i32 423, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fc0011_set_params.__UNIQUE_ID_ddebug294, !48, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/fc0011.c", i32 74, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fc0011_writereg._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fc0011_writereg._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/fc0011.c", i32 94, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fc0011_readreg._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fc0011_readreg._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"auto-init"}
!72 = !{i64 2148275106, i64 2148275111, i64 2148275124, i64 2148275168, i64 2148275202, i64 2148275223}
