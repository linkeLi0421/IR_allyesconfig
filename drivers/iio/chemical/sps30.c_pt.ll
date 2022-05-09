; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/sps30.c_pt.bc'
source_filename = "../drivers/iio/chemical/sps30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sps30_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sps30_probe\09\09\09\09"
module asm "\09.long\09__crc_sps30_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sps30_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sps30_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sps30_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sps30_state = type { %struct.mutex, ptr, i32, ptr, ptr }
%struct.sps30_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.85 = type { [4 x i32], i64 }

@sps30_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@sps30_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @sps30_attr_group, ptr @sps30_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sps30_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 34, i32 0, i32 38, i32 0, i32 0, %struct.anon.84 { i8 117, i8 19, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 34, i32 0, i32 39, i32 1, i32 1, %struct.anon.84 { i8 117, i8 19, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 34, i32 0, i32 40, i32 2, i32 2, %struct.anon.84 { i8 117, i8 19, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 34, i32 0, i32 41, i32 3, i32 3, %struct.anon.84 { i8 117, i8 19, i8 32, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@sps30_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@sps30_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sps30_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/chemical/sps30.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sps30_probe._entry_ptr = internal global ptr @sps30_probe._entry, section ".printk_index", align 4
@sps30_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read device info\0A\00", [36 x i8] zeroinitializer }, align 32
@sps30_probe._entry_ptr.8 = internal global ptr @sps30_probe._entry.6, section ".printk_index", align 4
@__kstrtab_sps30_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sps30_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sps30_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sps30_probe to i32), ptr @__kstrtab_sps30_probe, ptr @__kstrtabns_sps30_probe }, section "___ksymtab_gpl+sps30_probe", align 4
@__UNIQUE_ID_author288 = internal constant [51 x i8] c"sps30.author=Tomasz Duszynski <tduszyns@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [67 x i8] c"sps30.description=Sensirion SPS30 particulate matter sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [38 x i8] c"sps30.file=drivers/iio/chemical/sps30\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"sps30.license=GPL v2\00", section ".modinfo", align 1
@sps30_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sps30_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sps30_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_start_cleaning, ptr @iio_dev_attr_cleaning_period, ptr @iio_dev_attr_cleaning_period_available, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_start_cleaning = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @start_cleaning_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_cleaning_period = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cleaning_period_show, ptr @cleaning_period_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_cleaning_period_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cleaning_period_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_cleaning\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cleaning_period\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@cleaning_period_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 257, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"period changed but reads will return the old value\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cleaning_period_store\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cleaning_period_store._entry_ptr = internal global ptr @cleaning_period_store._entry, section ".printk_index", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cleaning_period_available\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[%d %d %d]\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 38, i64 39, i64 40, i64 41]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 343, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"sps30_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 288, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"sps30_channels\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 309, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"sps30_scan_masks\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 325, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 354, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 360, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"sps30_attr_group\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 284, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"sps30_attrs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 277, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_start_cleaning\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_cleaning_period\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [39 x i8] c"iio_dev_attr_cleaning_period_available\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 273, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 274, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 224, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 256, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 275, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [32 x i8] c"../drivers/iio/chemical/sps30.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 268, i32 25 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_sps30_probe, ptr @cleaning_period_store._entry, ptr @cleaning_period_store._entry_ptr, ptr @sps30_probe._entry, ptr @sps30_probe._entry.6, ptr @sps30_probe._entry_ptr, ptr @sps30_probe._entry_ptr.8, ptr @sps30_probe.__key, ptr @.str, ptr @sps30_info, ptr @sps30_channels, ptr @sps30_scan_masks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @sps30_attr_group, ptr @sps30_attrs, ptr @iio_dev_attr_start_cleaning, ptr @iio_dev_attr_cleaning_period, ptr @iio_dev_attr_cleaning_period_available, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps30_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_start_cleaning to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_cleaning_period to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_cleaning_period_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleaning_period_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sps30_probe(ptr noundef %dev, ptr noundef %name, ptr noundef %priv, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %dev2 = getelementptr inbounds %struct.sps30_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 4
  %priv3 = getelementptr inbounds %struct.sps30_state, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv3, align 4
  %ops4 = getelementptr inbounds %struct.sps30_state, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops4, align 4
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @sps30_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sps30_info, ptr %info, align 8
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name5, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sps30_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %num_channels, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sps30_scan_masks, ptr %available_scan_masks, align 4
  %12 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops4, align 4
  %reset.i = getelementptr inbounds %struct.sps30_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 %15(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %state1.i = getelementptr inbounds %struct.sps30_state, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state1.i, align 4
  %17 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops4, align 4
  %show_info = getelementptr inbounds %struct.sps30_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %show_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %show_info, align 4
  %call14 = tail call i32 %20(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call.i63 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @sps30_devm_stop_meas, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end24, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops4, align 4
  %stop_meas.i.i = getelementptr inbounds %struct.sps30_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stop_meas.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stop_meas.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %2) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @sps30_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.then.i.i, %if.then.i.cleanup_crit_edge, %do.end19, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end11 ], [ %call14, %do.end19 ], [ %call29, %if.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call.i63, %if.then.i.cleanup_crit_edge ], [ %call.i63, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sps30_devm_stop_meas(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.sps30_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ops = getelementptr inbounds %struct.sps30_state, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %stop_meas = getelementptr inbounds %struct.sps30_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stop_meas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_meas, align 4
  %call = tail call i32 %5(ptr noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %scan = alloca %struct.anon.85, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scan) #5
  %4 = getelementptr inbounds [4 x i32], ptr %scan, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %scan, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %scan, i32 0, i32 3
  %7 = call ptr @memset(ptr %scan, i32 255, i32 24)
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %state1.i = getelementptr inbounds %struct.sps30_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sps30_state, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = tail call i32 %13(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.sps30_do_meas.exit.thread_crit_edge

if.then.i.sps30_do_meas.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_do_meas.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state1.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %entry.if.end4.i_crit_edge
  %ops5.i = getelementptr inbounds %struct.sps30_state, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops5.i, align 4
  %read_meas.i = getelementptr inbounds %struct.sps30_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read_meas.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_meas.i, align 4
  %call6.i = call i32 %18(ptr noundef %3, ptr noundef nonnull %scan, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.preheader, label %if.end4.i.sps30_do_meas.exit.thread_crit_edge

if.end4.i.sps30_do_meas.exit.thread_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_do_meas.exit.thread

for.body.i.preheader:                             ; preds = %if.end4.i
  %19 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scan, align 8
  %and.i.i = and i32 %20, 8388607
  %shr.i.i = ashr i32 %20, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge, label %if.end.i.i

for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i

if.end.i.i:                                       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %20)
  %cmp.i.i = icmp slt i32 %20, 1065353216
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = or i32 %and.i.i, 8388608
  %mul.i.i = mul nuw nsw i32 %add.i.i, 100
  %22 = lshr i32 %mul.i.i, 23
  %sub4.i.i = sub nsw i32 127, %shr.i.i
  %shr5.i.i = lshr i32 %22, %sub4.i.i
  br label %sps30_float_to_int_clamped.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %shr.i.i, -127
  %sub7.i.i = sub nsw i32 150, %shr.i.i
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %shr8.i.i = lshr i32 %and.i.i, %sub7.i.i
  %add9.i.i = add i32 %shl.i.i, %shr8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i)
  %cmp10.i.i = icmp sgt i32 %add9.i.i, 2999
  br i1 %cmp10.i.i, label %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge, label %if.end12.i.i

if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i = add nsw i32 %shr.i.i, -118
  %shr15.i.i = lshr i32 -1, %sub14.i.i
  %and18.i.i = and i32 %shr15.i.i, %and.i.i
  %mul19.i.i = mul i32 %add9.i.i, 100
  %mul20.i.i = mul nuw nsw i32 %and18.i.i, 100
  %shr21.i.i = lshr i32 %mul20.i.i, %sub7.i.i
  %add22.i.i = add i32 %shr21.i.i, %mul19.i.i
  br label %sps30_float_to_int_clamped.exit.i

sps30_float_to_int_clamped.exit.i:                ; preds = %if.end12.i.i, %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge, %if.then2.i.i, %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr5.i.i, %if.then2.i.i ], [ %add22.i.i, %if.end12.i.i ], [ 0, %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge ], [ 300000, %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge ]
  %23 = ptrtoint ptr %scan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %scan, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %and.i.i.1 = and i32 %25, 8388607
  %shr.i.i.1 = ashr i32 %25, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %sps30_float_to_int_clamped.exit.i.sps30_float_to_int_clamped.exit.i.1_crit_edge, label %if.end.i.i.1

sps30_float_to_int_clamped.exit.i.sps30_float_to_int_clamped.exit.i.1_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.1

if.end.i.i.1:                                     ; preds = %sps30_float_to_int_clamped.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %25)
  %cmp.i.i.1 = icmp slt i32 %25, 1065353216
  br i1 %cmp.i.i.1, label %if.then2.i.i.1, label %if.end6.i.i.1

if.end6.i.i.1:                                    ; preds = %if.end.i.i.1
  %sub.i.i.1 = add nsw i32 %shr.i.i.1, -127
  %sub7.i.i.1 = sub nsw i32 150, %shr.i.i.1
  %shl.i.i.1 = shl nuw i32 1, %sub.i.i.1
  %shr8.i.i.1 = lshr i32 %and.i.i.1, %sub7.i.i.1
  %add9.i.i.1 = add i32 %shl.i.i.1, %shr8.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i.1)
  %cmp10.i.i.1 = icmp sgt i32 %add9.i.i.1, 2999
  br i1 %cmp10.i.i.1, label %if.end6.i.i.1.sps30_float_to_int_clamped.exit.i.1_crit_edge, label %if.end12.i.i.1

if.end6.i.i.1.sps30_float_to_int_clamped.exit.i.1_crit_edge: ; preds = %if.end6.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.1

if.end12.i.i.1:                                   ; preds = %if.end6.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i.1 = add nsw i32 %shr.i.i.1, -118
  %shr15.i.i.1 = lshr i32 -1, %sub14.i.i.1
  %and18.i.i.1 = and i32 %shr15.i.i.1, %and.i.i.1
  %mul19.i.i.1 = mul i32 %add9.i.i.1, 100
  %mul20.i.i.1 = mul nuw nsw i32 %and18.i.i.1, 100
  %shr21.i.i.1 = lshr i32 %mul20.i.i.1, %sub7.i.i.1
  %add22.i.i.1 = add i32 %shr21.i.i.1, %mul19.i.i.1
  br label %sps30_float_to_int_clamped.exit.i.1

if.then2.i.i.1:                                   ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i.1 = or i32 %and.i.i.1, 8388608
  %mul.i.i.1 = mul nuw nsw i32 %add.i.i.1, 100
  %27 = lshr i32 %mul.i.i.1, 23
  %sub4.i.i.1 = sub nsw i32 127, %shr.i.i.1
  %shr5.i.i.1 = lshr i32 %27, %sub4.i.i.1
  br label %sps30_float_to_int_clamped.exit.i.1

sps30_float_to_int_clamped.exit.i.1:              ; preds = %if.then2.i.i.1, %if.end12.i.i.1, %if.end6.i.i.1.sps30_float_to_int_clamped.exit.i.1_crit_edge, %sps30_float_to_int_clamped.exit.i.sps30_float_to_int_clamped.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ %shr5.i.i.1, %if.then2.i.i.1 ], [ %add22.i.i.1, %if.end12.i.i.1 ], [ 0, %sps30_float_to_int_clamped.exit.i.sps30_float_to_int_clamped.exit.i.1_crit_edge ], [ 300000, %if.end6.i.i.1.sps30_float_to_int_clamped.exit.i.1_crit_edge ]
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i.i.1, ptr %4, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 8
  %and.i.i.2 = and i32 %30, 8388607
  %shr.i.i.2 = ashr i32 %30, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %sps30_float_to_int_clamped.exit.i.1.sps30_float_to_int_clamped.exit.i.2_crit_edge, label %if.end.i.i.2

sps30_float_to_int_clamped.exit.i.1.sps30_float_to_int_clamped.exit.i.2_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.2

if.end.i.i.2:                                     ; preds = %sps30_float_to_int_clamped.exit.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %30)
  %cmp.i.i.2 = icmp slt i32 %30, 1065353216
  br i1 %cmp.i.i.2, label %if.then2.i.i.2, label %if.end6.i.i.2

if.end6.i.i.2:                                    ; preds = %if.end.i.i.2
  %sub.i.i.2 = add nsw i32 %shr.i.i.2, -127
  %sub7.i.i.2 = sub nsw i32 150, %shr.i.i.2
  %shl.i.i.2 = shl nuw i32 1, %sub.i.i.2
  %shr8.i.i.2 = lshr i32 %and.i.i.2, %sub7.i.i.2
  %add9.i.i.2 = add i32 %shl.i.i.2, %shr8.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i.2)
  %cmp10.i.i.2 = icmp sgt i32 %add9.i.i.2, 2999
  br i1 %cmp10.i.i.2, label %if.end6.i.i.2.sps30_float_to_int_clamped.exit.i.2_crit_edge, label %if.end12.i.i.2

if.end6.i.i.2.sps30_float_to_int_clamped.exit.i.2_crit_edge: ; preds = %if.end6.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.2

if.end12.i.i.2:                                   ; preds = %if.end6.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i.2 = add nsw i32 %shr.i.i.2, -118
  %shr15.i.i.2 = lshr i32 -1, %sub14.i.i.2
  %and18.i.i.2 = and i32 %shr15.i.i.2, %and.i.i.2
  %mul19.i.i.2 = mul i32 %add9.i.i.2, 100
  %mul20.i.i.2 = mul nuw nsw i32 %and18.i.i.2, 100
  %shr21.i.i.2 = lshr i32 %mul20.i.i.2, %sub7.i.i.2
  %add22.i.i.2 = add i32 %shr21.i.i.2, %mul19.i.i.2
  br label %sps30_float_to_int_clamped.exit.i.2

if.then2.i.i.2:                                   ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i.2 = or i32 %and.i.i.2, 8388608
  %mul.i.i.2 = mul nuw nsw i32 %add.i.i.2, 100
  %32 = lshr i32 %mul.i.i.2, 23
  %sub4.i.i.2 = sub nsw i32 127, %shr.i.i.2
  %shr5.i.i.2 = lshr i32 %32, %sub4.i.i.2
  br label %sps30_float_to_int_clamped.exit.i.2

sps30_float_to_int_clamped.exit.i.2:              ; preds = %if.then2.i.i.2, %if.end12.i.i.2, %if.end6.i.i.2.sps30_float_to_int_clamped.exit.i.2_crit_edge, %sps30_float_to_int_clamped.exit.i.1.sps30_float_to_int_clamped.exit.i.2_crit_edge
  %retval.0.i.i.2 = phi i32 [ %shr5.i.i.2, %if.then2.i.i.2 ], [ %add22.i.i.2, %if.end12.i.i.2 ], [ 0, %sps30_float_to_int_clamped.exit.i.1.sps30_float_to_int_clamped.exit.i.2_crit_edge ], [ 300000, %if.end6.i.i.2.sps30_float_to_int_clamped.exit.i.2_crit_edge ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i.2, ptr %5, align 8
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %6, align 4
  %and.i.i.3 = and i32 %35, 8388607
  %shr.i.i.3 = ashr i32 %35, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %sps30_float_to_int_clamped.exit.i.2.sps30_float_to_int_clamped.exit.i.3_crit_edge, label %if.end.i.i.3

sps30_float_to_int_clamped.exit.i.2.sps30_float_to_int_clamped.exit.i.3_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.3

if.end.i.i.3:                                     ; preds = %sps30_float_to_int_clamped.exit.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %35)
  %cmp.i.i.3 = icmp slt i32 %35, 1065353216
  br i1 %cmp.i.i.3, label %if.then2.i.i.3, label %if.end6.i.i.3

if.end6.i.i.3:                                    ; preds = %if.end.i.i.3
  %sub.i.i.3 = add nsw i32 %shr.i.i.3, -127
  %sub7.i.i.3 = sub nsw i32 150, %shr.i.i.3
  %shl.i.i.3 = shl nuw i32 1, %sub.i.i.3
  %shr8.i.i.3 = lshr i32 %and.i.i.3, %sub7.i.i.3
  %add9.i.i.3 = add i32 %shl.i.i.3, %shr8.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i.3)
  %cmp10.i.i.3 = icmp sgt i32 %add9.i.i.3, 2999
  br i1 %cmp10.i.i.3, label %if.end6.i.i.3.sps30_float_to_int_clamped.exit.i.3_crit_edge, label %if.end12.i.i.3

if.end6.i.i.3.sps30_float_to_int_clamped.exit.i.3_crit_edge: ; preds = %if.end6.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i.3

if.end12.i.i.3:                                   ; preds = %if.end6.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i.3 = add nsw i32 %shr.i.i.3, -118
  %shr15.i.i.3 = lshr i32 -1, %sub14.i.i.3
  %and18.i.i.3 = and i32 %shr15.i.i.3, %and.i.i.3
  %mul19.i.i.3 = mul i32 %add9.i.i.3, 100
  %mul20.i.i.3 = mul nuw nsw i32 %and18.i.i.3, 100
  %shr21.i.i.3 = lshr i32 %mul20.i.i.3, %sub7.i.i.3
  %add22.i.i.3 = add i32 %shr21.i.i.3, %mul19.i.i.3
  br label %sps30_float_to_int_clamped.exit.i.3

if.then2.i.i.3:                                   ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i.3 = or i32 %and.i.i.3, 8388608
  %mul.i.i.3 = mul nuw nsw i32 %add.i.i.3, 100
  %37 = lshr i32 %mul.i.i.3, 23
  %sub4.i.i.3 = sub nsw i32 127, %shr.i.i.3
  %shr5.i.i.3 = lshr i32 %37, %sub4.i.i.3
  br label %sps30_float_to_int_clamped.exit.i.3

sps30_float_to_int_clamped.exit.i.3:              ; preds = %if.then2.i.i.3, %if.end12.i.i.3, %if.end6.i.i.3.sps30_float_to_int_clamped.exit.i.3_crit_edge, %sps30_float_to_int_clamped.exit.i.2.sps30_float_to_int_clamped.exit.i.3_crit_edge
  %retval.0.i.i.3 = phi i32 [ %shr5.i.i.3, %if.then2.i.i.3 ], [ %add22.i.i.3, %if.end12.i.i.3 ], [ 0, %sps30_float_to_int_clamped.exit.i.2.sps30_float_to_int_clamped.exit.i.3_crit_edge ], [ 300000, %if.end6.i.i.3.sps30_float_to_int_clamped.exit.i.3_crit_edge ]
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i.3, ptr %6, align 4
  call void @mutex_unlock(ptr noundef %3) #5
  %call4 = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scan_timestamp.i, align 8, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i11 = icmp eq i8 %40, 0
  br i1 %tobool.not.i11, label %sps30_float_to_int_clamped.exit.i.3.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i13

sps30_float_to_int_clamped.exit.i.3.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

sps30_do_meas.exit.thread:                        ; preds = %if.end4.i.sps30_do_meas.exit.thread_crit_edge, %if.then.i.sps30_do_meas.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %3) #5
  br label %err

if.then.i13:                                      ; preds = %sps30_float_to_int_clamped.exit.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %42, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i12 = getelementptr i64, ptr %scan, i32 %sub.i
  %43 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call4, ptr %arrayidx.i12, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i13, %sps30_float_to_int_clamped.exit.i.3.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i14 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %sps30_do_meas.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %45) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sps30_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %data = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #5
  %2 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 3
  %5 = call ptr @memset(ptr %data, i32 255, i32 16)
  %6 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %8)
  %cond26 = icmp eq i32 %8, 34
  br i1 %cond26, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel2, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %10, label %sw.bb1.sw.epilog.thread_crit_edge [
    i32 38, label %sw.bb2
    i32 39, label %sw.bb4
    i32 40, label %sw.bb7
    i32 41, label %sw.bb10
  ]

sw.bb1.sw.epilog.thread_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb2:                                           ; preds = %sw.bb1
  %state1.i = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb2.if.end4.i_crit_edge

sw.bb2.if.end4.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %sw.bb2
  %ops.i = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = tail call i32 %17(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.sw.epilog.thread_crit_edge

if.then.i.sw.epilog.thread_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state1.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i, %sw.bb2.if.end4.i_crit_edge
  %ops5.i = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops5.i, align 4
  %read_meas.i = getelementptr inbounds %struct.sps30_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_meas.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_meas.i, align 4
  %call6.i = call i32 %22(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.preheader, label %if.end4.i.sw.epilog.thread_crit_edge

if.end4.i.sw.epilog.thread_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

for.body.i.preheader:                             ; preds = %if.end4.i
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %and.i.i = and i32 %24, 8388607
  %shr.i.i = ashr i32 %24, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge, label %if.end.i.i

for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i

if.end.i.i:                                       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %24)
  %cmp.i.i = icmp slt i32 %24, 1065353216
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = or i32 %and.i.i, 8388608
  %mul.i.i = mul nuw nsw i32 %add.i.i, 100
  %26 = lshr i32 %mul.i.i, 23
  %sub4.i.i = sub nsw i32 127, %shr.i.i
  %shr5.i.i = lshr i32 %26, %sub4.i.i
  br label %sps30_float_to_int_clamped.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %shr.i.i, -127
  %sub7.i.i = sub nsw i32 150, %shr.i.i
  %shl.i.i = shl nuw i32 1, %sub.i.i
  %shr8.i.i = lshr i32 %and.i.i, %sub7.i.i
  %add9.i.i = add i32 %shl.i.i, %shr8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i)
  %cmp10.i.i = icmp sgt i32 %add9.i.i, 2999
  br i1 %cmp10.i.i, label %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge, label %if.end12.i.i

if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i = add nsw i32 %shr.i.i, -118
  %shr15.i.i = lshr i32 -1, %sub14.i.i
  %and18.i.i = and i32 %shr15.i.i, %and.i.i
  %mul19.i.i = mul i32 %add9.i.i, 100
  %mul20.i.i = mul nuw nsw i32 %and18.i.i, 100
  %shr21.i.i = lshr i32 %mul20.i.i, %sub7.i.i
  %add22.i.i = add i32 %shr21.i.i, %mul19.i.i
  br label %sps30_float_to_int_clamped.exit.i

sps30_float_to_int_clamped.exit.i:                ; preds = %if.end12.i.i, %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge, %if.then2.i.i, %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr5.i.i, %if.then2.i.i ], [ %add22.i.i, %if.end12.i.i ], [ 0, %for.body.i.preheader.sps30_float_to_int_clamped.exit.i_crit_edge ], [ 300000, %if.end6.i.i.sps30_float_to_int_clamped.exit.i_crit_edge ]
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i.i, ptr %data, align 4
  br label %if.end

sw.bb4:                                           ; preds = %sw.bb1
  %state1.i40 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %state1.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state1.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i41 = icmp eq i32 %29, 0
  br i1 %cmp.i41, label %if.then.i45, label %sw.bb4.if.end4.i51_crit_edge

sw.bb4.if.end4.i51_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i51

if.then.i45:                                      ; preds = %sw.bb4
  %ops.i42 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i42, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i43 = tail call i32 %33(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i46, label %if.then.i45.sw.epilog.thread_crit_edge

if.then.i45.sw.epilog.thread_crit_edge:           ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.i46:                                       ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %state1.i40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state1.i40, align 4
  br label %if.end4.i51

if.end4.i51:                                      ; preds = %if.end.i46, %sw.bb4.if.end4.i51_crit_edge
  %ops5.i47 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %ops5.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops5.i47, align 4
  %read_meas.i48 = getelementptr inbounds %struct.sps30_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_meas.i48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_meas.i48, align 4
  %call6.i49 = call i32 %38(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i49)
  %tobool7.not.i50 = icmp eq i32 %call6.i49, 0
  br i1 %tobool7.not.i50, label %for.body.i57.preheader, label %if.end4.i51.sw.epilog.thread_crit_edge

if.end4.i51.sw.epilog.thread_crit_edge:           ; preds = %if.end4.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

for.body.i57.preheader:                           ; preds = %if.end4.i51
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %and.i.i55 = and i32 %40, 8388607
  %shr.i.i56 = ashr i32 %40, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %for.body.i57.preheader.sps30_float_to_int_clamped.exit.i83_crit_edge, label %if.end.i.i59

for.body.i57.preheader.sps30_float_to_int_clamped.exit.i83_crit_edge: ; preds = %for.body.i57.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i83

if.end.i.i59:                                     ; preds = %for.body.i57.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %40)
  %cmp.i.i58 = icmp slt i32 %40, 1065353216
  br i1 %cmp.i.i58, label %if.then2.i.i64, label %if.end6.i.i71

if.then2.i.i64:                                   ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i60 = or i32 %and.i.i55, 8388608
  %mul.i.i61 = mul nuw nsw i32 %add.i.i60, 100
  %42 = lshr i32 %mul.i.i61, 23
  %sub4.i.i62 = sub nsw i32 127, %shr.i.i56
  %shr5.i.i63 = lshr i32 %42, %sub4.i.i62
  br label %sps30_float_to_int_clamped.exit.i83

if.end6.i.i71:                                    ; preds = %if.end.i.i59
  %sub.i.i65 = add nsw i32 %shr.i.i56, -127
  %sub7.i.i66 = sub nsw i32 150, %shr.i.i56
  %shl.i.i67 = shl nuw i32 1, %sub.i.i65
  %shr8.i.i68 = lshr i32 %and.i.i55, %sub7.i.i66
  %add9.i.i69 = add i32 %shl.i.i67, %shr8.i.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i69)
  %cmp10.i.i70 = icmp sgt i32 %add9.i.i69, 2999
  br i1 %cmp10.i.i70, label %if.end6.i.i71.sps30_float_to_int_clamped.exit.i83_crit_edge, label %if.end12.i.i79

if.end6.i.i71.sps30_float_to_int_clamped.exit.i83_crit_edge: ; preds = %if.end6.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i83

if.end12.i.i79:                                   ; preds = %if.end6.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i72 = add nsw i32 %shr.i.i56, -118
  %shr15.i.i73 = lshr i32 -1, %sub14.i.i72
  %and18.i.i74 = and i32 %shr15.i.i73, %and.i.i55
  %mul19.i.i75 = mul i32 %add9.i.i69, 100
  %mul20.i.i76 = mul nuw nsw i32 %and18.i.i74, 100
  %shr21.i.i77 = lshr i32 %mul20.i.i76, %sub7.i.i66
  %add22.i.i78 = add i32 %shr21.i.i77, %mul19.i.i75
  br label %sps30_float_to_int_clamped.exit.i83

sps30_float_to_int_clamped.exit.i83:              ; preds = %if.end12.i.i79, %if.end6.i.i71.sps30_float_to_int_clamped.exit.i83_crit_edge, %if.then2.i.i64, %for.body.i57.preheader.sps30_float_to_int_clamped.exit.i83_crit_edge
  %retval.0.i.i80 = phi i32 [ %shr5.i.i63, %if.then2.i.i64 ], [ %add22.i.i78, %if.end12.i.i79 ], [ 0, %for.body.i57.preheader.sps30_float_to_int_clamped.exit.i83_crit_edge ], [ 300000, %if.end6.i.i71.sps30_float_to_int_clamped.exit.i83_crit_edge ]
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i.i80, ptr %data, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  %and.i.i55.1 = and i32 %45, 8388607
  %shr.i.i56.1 = ashr i32 %45, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %sps30_float_to_int_clamped.exit.i83.sps30_float_to_int_clamped.exit.i83.1_crit_edge, label %if.end.i.i59.1

sps30_float_to_int_clamped.exit.i83.sps30_float_to_int_clamped.exit.i83.1_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i83.1

if.end.i.i59.1:                                   ; preds = %sps30_float_to_int_clamped.exit.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %45)
  %cmp.i.i58.1 = icmp slt i32 %45, 1065353216
  br i1 %cmp.i.i58.1, label %if.then2.i.i64.1, label %if.end6.i.i71.1

if.end6.i.i71.1:                                  ; preds = %if.end.i.i59.1
  %sub.i.i65.1 = add nsw i32 %shr.i.i56.1, -127
  %sub7.i.i66.1 = sub nsw i32 150, %shr.i.i56.1
  %shl.i.i67.1 = shl nuw i32 1, %sub.i.i65.1
  %shr8.i.i68.1 = lshr i32 %and.i.i55.1, %sub7.i.i66.1
  %add9.i.i69.1 = add i32 %shl.i.i67.1, %shr8.i.i68.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i69.1)
  %cmp10.i.i70.1 = icmp sgt i32 %add9.i.i69.1, 2999
  br i1 %cmp10.i.i70.1, label %if.end6.i.i71.1.sps30_float_to_int_clamped.exit.i83.1_crit_edge, label %if.end12.i.i79.1

if.end6.i.i71.1.sps30_float_to_int_clamped.exit.i83.1_crit_edge: ; preds = %if.end6.i.i71.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i83.1

if.end12.i.i79.1:                                 ; preds = %if.end6.i.i71.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i72.1 = add nsw i32 %shr.i.i56.1, -118
  %shr15.i.i73.1 = lshr i32 -1, %sub14.i.i72.1
  %and18.i.i74.1 = and i32 %shr15.i.i73.1, %and.i.i55.1
  %mul19.i.i75.1 = mul i32 %add9.i.i69.1, 100
  %mul20.i.i76.1 = mul nuw nsw i32 %and18.i.i74.1, 100
  %shr21.i.i77.1 = lshr i32 %mul20.i.i76.1, %sub7.i.i66.1
  %add22.i.i78.1 = add i32 %shr21.i.i77.1, %mul19.i.i75.1
  br label %sps30_float_to_int_clamped.exit.i83.1

if.then2.i.i64.1:                                 ; preds = %if.end.i.i59.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i60.1 = or i32 %and.i.i55.1, 8388608
  %mul.i.i61.1 = mul nuw nsw i32 %add.i.i60.1, 100
  %47 = lshr i32 %mul.i.i61.1, 23
  %sub4.i.i62.1 = sub nsw i32 127, %shr.i.i56.1
  %shr5.i.i63.1 = lshr i32 %47, %sub4.i.i62.1
  br label %sps30_float_to_int_clamped.exit.i83.1

sps30_float_to_int_clamped.exit.i83.1:            ; preds = %if.then2.i.i64.1, %if.end12.i.i79.1, %if.end6.i.i71.1.sps30_float_to_int_clamped.exit.i83.1_crit_edge, %sps30_float_to_int_clamped.exit.i83.sps30_float_to_int_clamped.exit.i83.1_crit_edge
  %retval.0.i.i80.1 = phi i32 [ %shr5.i.i63.1, %if.then2.i.i64.1 ], [ %add22.i.i78.1, %if.end12.i.i79.1 ], [ 0, %sps30_float_to_int_clamped.exit.i83.sps30_float_to_int_clamped.exit.i83.1_crit_edge ], [ 300000, %if.end6.i.i71.1.sps30_float_to_int_clamped.exit.i83.1_crit_edge ]
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i80.1, ptr %2, align 4
  br label %if.end

sw.bb7:                                           ; preds = %sw.bb1
  %state1.i86 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %state1.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state1.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i87 = icmp eq i32 %50, 0
  br i1 %cmp.i87, label %if.then.i91, label %sw.bb7.if.end4.i97_crit_edge

sw.bb7.if.end4.i97_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i97

if.then.i91:                                      ; preds = %sw.bb7
  %ops.i88 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i88, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i89 = tail call i32 %54(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end.i92, label %if.then.i91.sw.epilog.thread_crit_edge

if.then.i91.sw.epilog.thread_crit_edge:           ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.i92:                                       ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %state1.i86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %state1.i86, align 4
  br label %if.end4.i97

if.end4.i97:                                      ; preds = %if.end.i92, %sw.bb7.if.end4.i97_crit_edge
  %ops5.i93 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %ops5.i93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops5.i93, align 4
  %read_meas.i94 = getelementptr inbounds %struct.sps30_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read_meas.i94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_meas.i94, align 4
  %call6.i95 = call i32 %59(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i95)
  %tobool7.not.i96 = icmp eq i32 %call6.i95, 0
  br i1 %tobool7.not.i96, label %for.body.i103.preheader, label %if.end4.i97.sw.epilog.thread_crit_edge

if.end4.i97.sw.epilog.thread_crit_edge:           ; preds = %if.end4.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

for.body.i103.preheader:                          ; preds = %if.end4.i97
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data, align 4
  %and.i.i101 = and i32 %61, 8388607
  %shr.i.i102 = ashr i32 %61, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %for.body.i103.preheader.sps30_float_to_int_clamped.exit.i129_crit_edge, label %if.end.i.i105

for.body.i103.preheader.sps30_float_to_int_clamped.exit.i129_crit_edge: ; preds = %for.body.i103.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129

if.end.i.i105:                                    ; preds = %for.body.i103.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %61)
  %cmp.i.i104 = icmp slt i32 %61, 1065353216
  br i1 %cmp.i.i104, label %if.then2.i.i110, label %if.end6.i.i117

if.then2.i.i110:                                  ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i106 = or i32 %and.i.i101, 8388608
  %mul.i.i107 = mul nuw nsw i32 %add.i.i106, 100
  %63 = lshr i32 %mul.i.i107, 23
  %sub4.i.i108 = sub nsw i32 127, %shr.i.i102
  %shr5.i.i109 = lshr i32 %63, %sub4.i.i108
  br label %sps30_float_to_int_clamped.exit.i129

if.end6.i.i117:                                   ; preds = %if.end.i.i105
  %sub.i.i111 = add nsw i32 %shr.i.i102, -127
  %sub7.i.i112 = sub nsw i32 150, %shr.i.i102
  %shl.i.i113 = shl nuw i32 1, %sub.i.i111
  %shr8.i.i114 = lshr i32 %and.i.i101, %sub7.i.i112
  %add9.i.i115 = add i32 %shl.i.i113, %shr8.i.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i115)
  %cmp10.i.i116 = icmp sgt i32 %add9.i.i115, 2999
  br i1 %cmp10.i.i116, label %if.end6.i.i117.sps30_float_to_int_clamped.exit.i129_crit_edge, label %if.end12.i.i125

if.end6.i.i117.sps30_float_to_int_clamped.exit.i129_crit_edge: ; preds = %if.end6.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129

if.end12.i.i125:                                  ; preds = %if.end6.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i118 = add nsw i32 %shr.i.i102, -118
  %shr15.i.i119 = lshr i32 -1, %sub14.i.i118
  %and18.i.i120 = and i32 %shr15.i.i119, %and.i.i101
  %mul19.i.i121 = mul i32 %add9.i.i115, 100
  %mul20.i.i122 = mul nuw nsw i32 %and18.i.i120, 100
  %shr21.i.i123 = lshr i32 %mul20.i.i122, %sub7.i.i112
  %add22.i.i124 = add i32 %shr21.i.i123, %mul19.i.i121
  br label %sps30_float_to_int_clamped.exit.i129

sps30_float_to_int_clamped.exit.i129:             ; preds = %if.end12.i.i125, %if.end6.i.i117.sps30_float_to_int_clamped.exit.i129_crit_edge, %if.then2.i.i110, %for.body.i103.preheader.sps30_float_to_int_clamped.exit.i129_crit_edge
  %retval.0.i.i126 = phi i32 [ %shr5.i.i109, %if.then2.i.i110 ], [ %add22.i.i124, %if.end12.i.i125 ], [ 0, %for.body.i103.preheader.sps30_float_to_int_clamped.exit.i129_crit_edge ], [ 300000, %if.end6.i.i117.sps30_float_to_int_clamped.exit.i129_crit_edge ]
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i.i126, ptr %data, align 4
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %2, align 4
  %and.i.i101.1 = and i32 %66, 8388607
  %shr.i.i102.1 = ashr i32 %66, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %sps30_float_to_int_clamped.exit.i129.sps30_float_to_int_clamped.exit.i129.1_crit_edge, label %if.end.i.i105.1

sps30_float_to_int_clamped.exit.i129.sps30_float_to_int_clamped.exit.i129.1_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129.1

if.end.i.i105.1:                                  ; preds = %sps30_float_to_int_clamped.exit.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %66)
  %cmp.i.i104.1 = icmp slt i32 %66, 1065353216
  br i1 %cmp.i.i104.1, label %if.then2.i.i110.1, label %if.end6.i.i117.1

if.end6.i.i117.1:                                 ; preds = %if.end.i.i105.1
  %sub.i.i111.1 = add nsw i32 %shr.i.i102.1, -127
  %sub7.i.i112.1 = sub nsw i32 150, %shr.i.i102.1
  %shl.i.i113.1 = shl nuw i32 1, %sub.i.i111.1
  %shr8.i.i114.1 = lshr i32 %and.i.i101.1, %sub7.i.i112.1
  %add9.i.i115.1 = add i32 %shl.i.i113.1, %shr8.i.i114.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i115.1)
  %cmp10.i.i116.1 = icmp sgt i32 %add9.i.i115.1, 2999
  br i1 %cmp10.i.i116.1, label %if.end6.i.i117.1.sps30_float_to_int_clamped.exit.i129.1_crit_edge, label %if.end12.i.i125.1

if.end6.i.i117.1.sps30_float_to_int_clamped.exit.i129.1_crit_edge: ; preds = %if.end6.i.i117.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129.1

if.end12.i.i125.1:                                ; preds = %if.end6.i.i117.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i118.1 = add nsw i32 %shr.i.i102.1, -118
  %shr15.i.i119.1 = lshr i32 -1, %sub14.i.i118.1
  %and18.i.i120.1 = and i32 %shr15.i.i119.1, %and.i.i101.1
  %mul19.i.i121.1 = mul i32 %add9.i.i115.1, 100
  %mul20.i.i122.1 = mul nuw nsw i32 %and18.i.i120.1, 100
  %shr21.i.i123.1 = lshr i32 %mul20.i.i122.1, %sub7.i.i112.1
  %add22.i.i124.1 = add i32 %shr21.i.i123.1, %mul19.i.i121.1
  br label %sps30_float_to_int_clamped.exit.i129.1

if.then2.i.i110.1:                                ; preds = %if.end.i.i105.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i106.1 = or i32 %and.i.i101.1, 8388608
  %mul.i.i107.1 = mul nuw nsw i32 %add.i.i106.1, 100
  %68 = lshr i32 %mul.i.i107.1, 23
  %sub4.i.i108.1 = sub nsw i32 127, %shr.i.i102.1
  %shr5.i.i109.1 = lshr i32 %68, %sub4.i.i108.1
  br label %sps30_float_to_int_clamped.exit.i129.1

sps30_float_to_int_clamped.exit.i129.1:           ; preds = %if.then2.i.i110.1, %if.end12.i.i125.1, %if.end6.i.i117.1.sps30_float_to_int_clamped.exit.i129.1_crit_edge, %sps30_float_to_int_clamped.exit.i129.sps30_float_to_int_clamped.exit.i129.1_crit_edge
  %retval.0.i.i126.1 = phi i32 [ %shr5.i.i109.1, %if.then2.i.i110.1 ], [ %add22.i.i124.1, %if.end12.i.i125.1 ], [ 0, %sps30_float_to_int_clamped.exit.i129.sps30_float_to_int_clamped.exit.i129.1_crit_edge ], [ 300000, %if.end6.i.i117.1.sps30_float_to_int_clamped.exit.i129.1_crit_edge ]
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i.i126.1, ptr %2, align 4
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %3, align 4
  %and.i.i101.2 = and i32 %71, 8388607
  %shr.i.i102.2 = ashr i32 %71, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %sps30_float_to_int_clamped.exit.i129.1.sps30_float_to_int_clamped.exit.i129.2_crit_edge, label %if.end.i.i105.2

sps30_float_to_int_clamped.exit.i129.1.sps30_float_to_int_clamped.exit.i129.2_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i129.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129.2

if.end.i.i105.2:                                  ; preds = %sps30_float_to_int_clamped.exit.i129.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %71)
  %cmp.i.i104.2 = icmp slt i32 %71, 1065353216
  br i1 %cmp.i.i104.2, label %if.then2.i.i110.2, label %if.end6.i.i117.2

if.end6.i.i117.2:                                 ; preds = %if.end.i.i105.2
  %sub.i.i111.2 = add nsw i32 %shr.i.i102.2, -127
  %sub7.i.i112.2 = sub nsw i32 150, %shr.i.i102.2
  %shl.i.i113.2 = shl nuw i32 1, %sub.i.i111.2
  %shr8.i.i114.2 = lshr i32 %and.i.i101.2, %sub7.i.i112.2
  %add9.i.i115.2 = add i32 %shl.i.i113.2, %shr8.i.i114.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i115.2)
  %cmp10.i.i116.2 = icmp sgt i32 %add9.i.i115.2, 2999
  br i1 %cmp10.i.i116.2, label %if.end6.i.i117.2.sps30_float_to_int_clamped.exit.i129.2_crit_edge, label %if.end12.i.i125.2

if.end6.i.i117.2.sps30_float_to_int_clamped.exit.i129.2_crit_edge: ; preds = %if.end6.i.i117.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i129.2

if.end12.i.i125.2:                                ; preds = %if.end6.i.i117.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i118.2 = add nsw i32 %shr.i.i102.2, -118
  %shr15.i.i119.2 = lshr i32 -1, %sub14.i.i118.2
  %and18.i.i120.2 = and i32 %shr15.i.i119.2, %and.i.i101.2
  %mul19.i.i121.2 = mul i32 %add9.i.i115.2, 100
  %mul20.i.i122.2 = mul nuw nsw i32 %and18.i.i120.2, 100
  %shr21.i.i123.2 = lshr i32 %mul20.i.i122.2, %sub7.i.i112.2
  %add22.i.i124.2 = add i32 %shr21.i.i123.2, %mul19.i.i121.2
  br label %sps30_float_to_int_clamped.exit.i129.2

if.then2.i.i110.2:                                ; preds = %if.end.i.i105.2
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i106.2 = or i32 %and.i.i101.2, 8388608
  %mul.i.i107.2 = mul nuw nsw i32 %add.i.i106.2, 100
  %73 = lshr i32 %mul.i.i107.2, 23
  %sub4.i.i108.2 = sub nsw i32 127, %shr.i.i102.2
  %shr5.i.i109.2 = lshr i32 %73, %sub4.i.i108.2
  br label %sps30_float_to_int_clamped.exit.i129.2

sps30_float_to_int_clamped.exit.i129.2:           ; preds = %if.then2.i.i110.2, %if.end12.i.i125.2, %if.end6.i.i117.2.sps30_float_to_int_clamped.exit.i129.2_crit_edge, %sps30_float_to_int_clamped.exit.i129.1.sps30_float_to_int_clamped.exit.i129.2_crit_edge
  %retval.0.i.i126.2 = phi i32 [ %shr5.i.i109.2, %if.then2.i.i110.2 ], [ %add22.i.i124.2, %if.end12.i.i125.2 ], [ 0, %sps30_float_to_int_clamped.exit.i129.1.sps30_float_to_int_clamped.exit.i129.2_crit_edge ], [ 300000, %if.end6.i.i117.2.sps30_float_to_int_clamped.exit.i129.2_crit_edge ]
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i126.2, ptr %3, align 4
  br label %if.end

sw.bb10:                                          ; preds = %sw.bb1
  %state1.i132 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %state1.i132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state1.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i133 = icmp eq i32 %76, 0
  br i1 %cmp.i133, label %if.then.i137, label %sw.bb10.if.end4.i143_crit_edge

sw.bb10.if.end4.i143_crit_edge:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i143

if.then.i137:                                     ; preds = %sw.bb10
  %ops.i134 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i134 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i134, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call.i135 = tail call i32 %80(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end.i138, label %if.then.i137.sw.epilog.thread_crit_edge

if.then.i137.sw.epilog.thread_crit_edge:          ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.i138:                                      ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %state1.i132 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %state1.i132, align 4
  br label %if.end4.i143

if.end4.i143:                                     ; preds = %if.end.i138, %sw.bb10.if.end4.i143_crit_edge
  %ops5.i139 = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %ops5.i139 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops5.i139, align 4
  %read_meas.i140 = getelementptr inbounds %struct.sps30_ops, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %read_meas.i140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_meas.i140, align 4
  %call6.i141 = call i32 %85(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i141)
  %tobool7.not.i142 = icmp eq i32 %call6.i141, 0
  br i1 %tobool7.not.i142, label %for.body.i149.preheader, label %if.end4.i143.sw.epilog.thread_crit_edge

if.end4.i143.sw.epilog.thread_crit_edge:          ; preds = %if.end4.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

for.body.i149.preheader:                          ; preds = %if.end4.i143
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data, align 4
  %and.i.i147 = and i32 %87, 8388607
  %shr.i.i148 = ashr i32 %87, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %for.body.i149.preheader.sps30_float_to_int_clamped.exit.i175_crit_edge, label %if.end.i.i151

for.body.i149.preheader.sps30_float_to_int_clamped.exit.i175_crit_edge: ; preds = %for.body.i149.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175

if.end.i.i151:                                    ; preds = %for.body.i149.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %87)
  %cmp.i.i150 = icmp slt i32 %87, 1065353216
  br i1 %cmp.i.i150, label %if.then2.i.i156, label %if.end6.i.i163

if.then2.i.i156:                                  ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i152 = or i32 %and.i.i147, 8388608
  %mul.i.i153 = mul nuw nsw i32 %add.i.i152, 100
  %89 = lshr i32 %mul.i.i153, 23
  %sub4.i.i154 = sub nsw i32 127, %shr.i.i148
  %shr5.i.i155 = lshr i32 %89, %sub4.i.i154
  br label %sps30_float_to_int_clamped.exit.i175

if.end6.i.i163:                                   ; preds = %if.end.i.i151
  %sub.i.i157 = add nsw i32 %shr.i.i148, -127
  %sub7.i.i158 = sub nsw i32 150, %shr.i.i148
  %shl.i.i159 = shl nuw i32 1, %sub.i.i157
  %shr8.i.i160 = lshr i32 %and.i.i147, %sub7.i.i158
  %add9.i.i161 = add i32 %shl.i.i159, %shr8.i.i160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i161)
  %cmp10.i.i162 = icmp sgt i32 %add9.i.i161, 2999
  br i1 %cmp10.i.i162, label %if.end6.i.i163.sps30_float_to_int_clamped.exit.i175_crit_edge, label %if.end12.i.i171

if.end6.i.i163.sps30_float_to_int_clamped.exit.i175_crit_edge: ; preds = %if.end6.i.i163
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175

if.end12.i.i171:                                  ; preds = %if.end6.i.i163
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i164 = add nsw i32 %shr.i.i148, -118
  %shr15.i.i165 = lshr i32 -1, %sub14.i.i164
  %and18.i.i166 = and i32 %shr15.i.i165, %and.i.i147
  %mul19.i.i167 = mul i32 %add9.i.i161, 100
  %mul20.i.i168 = mul nuw nsw i32 %and18.i.i166, 100
  %shr21.i.i169 = lshr i32 %mul20.i.i168, %sub7.i.i158
  %add22.i.i170 = add i32 %shr21.i.i169, %mul19.i.i167
  br label %sps30_float_to_int_clamped.exit.i175

sps30_float_to_int_clamped.exit.i175:             ; preds = %if.end12.i.i171, %if.end6.i.i163.sps30_float_to_int_clamped.exit.i175_crit_edge, %if.then2.i.i156, %for.body.i149.preheader.sps30_float_to_int_clamped.exit.i175_crit_edge
  %retval.0.i.i172 = phi i32 [ %shr5.i.i155, %if.then2.i.i156 ], [ %add22.i.i170, %if.end12.i.i171 ], [ 0, %for.body.i149.preheader.sps30_float_to_int_clamped.exit.i175_crit_edge ], [ 300000, %if.end6.i.i163.sps30_float_to_int_clamped.exit.i175_crit_edge ]
  %90 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i.i172, ptr %data, align 4
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %2, align 4
  %and.i.i147.1 = and i32 %92, 8388607
  %shr.i.i148.1 = ashr i32 %92, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %sps30_float_to_int_clamped.exit.i175.sps30_float_to_int_clamped.exit.i175.1_crit_edge, label %if.end.i.i151.1

sps30_float_to_int_clamped.exit.i175.sps30_float_to_int_clamped.exit.i175.1_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.1

if.end.i.i151.1:                                  ; preds = %sps30_float_to_int_clamped.exit.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %92)
  %cmp.i.i150.1 = icmp slt i32 %92, 1065353216
  br i1 %cmp.i.i150.1, label %if.then2.i.i156.1, label %if.end6.i.i163.1

if.end6.i.i163.1:                                 ; preds = %if.end.i.i151.1
  %sub.i.i157.1 = add nsw i32 %shr.i.i148.1, -127
  %sub7.i.i158.1 = sub nsw i32 150, %shr.i.i148.1
  %shl.i.i159.1 = shl nuw i32 1, %sub.i.i157.1
  %shr8.i.i160.1 = lshr i32 %and.i.i147.1, %sub7.i.i158.1
  %add9.i.i161.1 = add i32 %shl.i.i159.1, %shr8.i.i160.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i161.1)
  %cmp10.i.i162.1 = icmp sgt i32 %add9.i.i161.1, 2999
  br i1 %cmp10.i.i162.1, label %if.end6.i.i163.1.sps30_float_to_int_clamped.exit.i175.1_crit_edge, label %if.end12.i.i171.1

if.end6.i.i163.1.sps30_float_to_int_clamped.exit.i175.1_crit_edge: ; preds = %if.end6.i.i163.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.1

if.end12.i.i171.1:                                ; preds = %if.end6.i.i163.1
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i164.1 = add nsw i32 %shr.i.i148.1, -118
  %shr15.i.i165.1 = lshr i32 -1, %sub14.i.i164.1
  %and18.i.i166.1 = and i32 %shr15.i.i165.1, %and.i.i147.1
  %mul19.i.i167.1 = mul i32 %add9.i.i161.1, 100
  %mul20.i.i168.1 = mul nuw nsw i32 %and18.i.i166.1, 100
  %shr21.i.i169.1 = lshr i32 %mul20.i.i168.1, %sub7.i.i158.1
  %add22.i.i170.1 = add i32 %shr21.i.i169.1, %mul19.i.i167.1
  br label %sps30_float_to_int_clamped.exit.i175.1

if.then2.i.i156.1:                                ; preds = %if.end.i.i151.1
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i152.1 = or i32 %and.i.i147.1, 8388608
  %mul.i.i153.1 = mul nuw nsw i32 %add.i.i152.1, 100
  %94 = lshr i32 %mul.i.i153.1, 23
  %sub4.i.i154.1 = sub nsw i32 127, %shr.i.i148.1
  %shr5.i.i155.1 = lshr i32 %94, %sub4.i.i154.1
  br label %sps30_float_to_int_clamped.exit.i175.1

sps30_float_to_int_clamped.exit.i175.1:           ; preds = %if.then2.i.i156.1, %if.end12.i.i171.1, %if.end6.i.i163.1.sps30_float_to_int_clamped.exit.i175.1_crit_edge, %sps30_float_to_int_clamped.exit.i175.sps30_float_to_int_clamped.exit.i175.1_crit_edge
  %retval.0.i.i172.1 = phi i32 [ %shr5.i.i155.1, %if.then2.i.i156.1 ], [ %add22.i.i170.1, %if.end12.i.i171.1 ], [ 0, %sps30_float_to_int_clamped.exit.i175.sps30_float_to_int_clamped.exit.i175.1_crit_edge ], [ 300000, %if.end6.i.i163.1.sps30_float_to_int_clamped.exit.i175.1_crit_edge ]
  %95 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i.i172.1, ptr %2, align 4
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %3, align 4
  %and.i.i147.2 = and i32 %97, 8388607
  %shr.i.i148.2 = ashr i32 %97, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %sps30_float_to_int_clamped.exit.i175.1.sps30_float_to_int_clamped.exit.i175.2_crit_edge, label %if.end.i.i151.2

sps30_float_to_int_clamped.exit.i175.1.sps30_float_to_int_clamped.exit.i175.2_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i175.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.2

if.end.i.i151.2:                                  ; preds = %sps30_float_to_int_clamped.exit.i175.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %97)
  %cmp.i.i150.2 = icmp slt i32 %97, 1065353216
  br i1 %cmp.i.i150.2, label %if.then2.i.i156.2, label %if.end6.i.i163.2

if.end6.i.i163.2:                                 ; preds = %if.end.i.i151.2
  %sub.i.i157.2 = add nsw i32 %shr.i.i148.2, -127
  %sub7.i.i158.2 = sub nsw i32 150, %shr.i.i148.2
  %shl.i.i159.2 = shl nuw i32 1, %sub.i.i157.2
  %shr8.i.i160.2 = lshr i32 %and.i.i147.2, %sub7.i.i158.2
  %add9.i.i161.2 = add i32 %shl.i.i159.2, %shr8.i.i160.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i161.2)
  %cmp10.i.i162.2 = icmp sgt i32 %add9.i.i161.2, 2999
  br i1 %cmp10.i.i162.2, label %if.end6.i.i163.2.sps30_float_to_int_clamped.exit.i175.2_crit_edge, label %if.end12.i.i171.2

if.end6.i.i163.2.sps30_float_to_int_clamped.exit.i175.2_crit_edge: ; preds = %if.end6.i.i163.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.2

if.end12.i.i171.2:                                ; preds = %if.end6.i.i163.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i164.2 = add nsw i32 %shr.i.i148.2, -118
  %shr15.i.i165.2 = lshr i32 -1, %sub14.i.i164.2
  %and18.i.i166.2 = and i32 %shr15.i.i165.2, %and.i.i147.2
  %mul19.i.i167.2 = mul i32 %add9.i.i161.2, 100
  %mul20.i.i168.2 = mul nuw nsw i32 %and18.i.i166.2, 100
  %shr21.i.i169.2 = lshr i32 %mul20.i.i168.2, %sub7.i.i158.2
  %add22.i.i170.2 = add i32 %shr21.i.i169.2, %mul19.i.i167.2
  br label %sps30_float_to_int_clamped.exit.i175.2

if.then2.i.i156.2:                                ; preds = %if.end.i.i151.2
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i152.2 = or i32 %and.i.i147.2, 8388608
  %mul.i.i153.2 = mul nuw nsw i32 %add.i.i152.2, 100
  %99 = lshr i32 %mul.i.i153.2, 23
  %sub4.i.i154.2 = sub nsw i32 127, %shr.i.i148.2
  %shr5.i.i155.2 = lshr i32 %99, %sub4.i.i154.2
  br label %sps30_float_to_int_clamped.exit.i175.2

sps30_float_to_int_clamped.exit.i175.2:           ; preds = %if.then2.i.i156.2, %if.end12.i.i171.2, %if.end6.i.i163.2.sps30_float_to_int_clamped.exit.i175.2_crit_edge, %sps30_float_to_int_clamped.exit.i175.1.sps30_float_to_int_clamped.exit.i175.2_crit_edge
  %retval.0.i.i172.2 = phi i32 [ %shr5.i.i155.2, %if.then2.i.i156.2 ], [ %add22.i.i170.2, %if.end12.i.i171.2 ], [ 0, %sps30_float_to_int_clamped.exit.i175.1.sps30_float_to_int_clamped.exit.i175.2_crit_edge ], [ 300000, %if.end6.i.i163.2.sps30_float_to_int_clamped.exit.i175.2_crit_edge ]
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i.i172.2, ptr %3, align 4
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %4, align 4
  %and.i.i147.3 = and i32 %102, 8388607
  %shr.i.i148.3 = ashr i32 %102, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %sps30_float_to_int_clamped.exit.i175.2.sps30_float_to_int_clamped.exit.i175.3_crit_edge, label %if.end.i.i151.3

sps30_float_to_int_clamped.exit.i175.2.sps30_float_to_int_clamped.exit.i175.3_crit_edge: ; preds = %sps30_float_to_int_clamped.exit.i175.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.3

if.end.i.i151.3:                                  ; preds = %sps30_float_to_int_clamped.exit.i175.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1065353216, i32 %102)
  %cmp.i.i150.3 = icmp slt i32 %102, 1065353216
  br i1 %cmp.i.i150.3, label %if.then2.i.i156.3, label %if.end6.i.i163.3

if.end6.i.i163.3:                                 ; preds = %if.end.i.i151.3
  %sub.i.i157.3 = add nsw i32 %shr.i.i148.3, -127
  %sub7.i.i158.3 = sub nsw i32 150, %shr.i.i148.3
  %shl.i.i159.3 = shl nuw i32 1, %sub.i.i157.3
  %shr8.i.i160.3 = lshr i32 %and.i.i147.3, %sub7.i.i158.3
  %add9.i.i161.3 = add i32 %shl.i.i159.3, %shr8.i.i160.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add9.i.i161.3)
  %cmp10.i.i162.3 = icmp sgt i32 %add9.i.i161.3, 2999
  br i1 %cmp10.i.i162.3, label %if.end6.i.i163.3.sps30_float_to_int_clamped.exit.i175.3_crit_edge, label %if.end12.i.i171.3

if.end6.i.i163.3.sps30_float_to_int_clamped.exit.i175.3_crit_edge: ; preds = %if.end6.i.i163.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sps30_float_to_int_clamped.exit.i175.3

if.end12.i.i171.3:                                ; preds = %if.end6.i.i163.3
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i164.3 = add nsw i32 %shr.i.i148.3, -118
  %shr15.i.i165.3 = lshr i32 -1, %sub14.i.i164.3
  %and18.i.i166.3 = and i32 %shr15.i.i165.3, %and.i.i147.3
  %mul19.i.i167.3 = mul i32 %add9.i.i161.3, 100
  %mul20.i.i168.3 = mul nuw nsw i32 %and18.i.i166.3, 100
  %shr21.i.i169.3 = lshr i32 %mul20.i.i168.3, %sub7.i.i158.3
  %add22.i.i170.3 = add i32 %shr21.i.i169.3, %mul19.i.i167.3
  br label %sps30_float_to_int_clamped.exit.i175.3

if.then2.i.i156.3:                                ; preds = %if.end.i.i151.3
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i152.3 = or i32 %and.i.i147.3, 8388608
  %mul.i.i153.3 = mul nuw nsw i32 %add.i.i152.3, 100
  %104 = lshr i32 %mul.i.i153.3, 23
  %sub4.i.i154.3 = sub nsw i32 127, %shr.i.i148.3
  %shr5.i.i155.3 = lshr i32 %104, %sub4.i.i154.3
  br label %sps30_float_to_int_clamped.exit.i175.3

sps30_float_to_int_clamped.exit.i175.3:           ; preds = %if.then2.i.i156.3, %if.end12.i.i171.3, %if.end6.i.i163.3.sps30_float_to_int_clamped.exit.i175.3_crit_edge, %sps30_float_to_int_clamped.exit.i175.2.sps30_float_to_int_clamped.exit.i175.3_crit_edge
  %retval.0.i.i172.3 = phi i32 [ %shr5.i.i155.3, %if.then2.i.i156.3 ], [ %add22.i.i170.3, %if.end12.i.i171.3 ], [ 0, %sps30_float_to_int_clamped.exit.i175.2.sps30_float_to_int_clamped.exit.i175.3_crit_edge ], [ 300000, %if.end6.i.i163.3.sps30_float_to_int_clamped.exit.i175.3_crit_edge ]
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i.i172.3, ptr %4, align 4
  br label %if.end

sw.epilog.thread:                                 ; preds = %if.end4.i143.sw.epilog.thread_crit_edge, %if.then.i137.sw.epilog.thread_crit_edge, %if.end4.i97.sw.epilog.thread_crit_edge, %if.then.i91.sw.epilog.thread_crit_edge, %if.end4.i51.sw.epilog.thread_crit_edge, %if.then.i45.sw.epilog.thread_crit_edge, %if.end4.i.sw.epilog.thread_crit_edge, %if.then.i.sw.epilog.thread_crit_edge, %sw.bb1.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ %call6.i141, %if.end4.i143.sw.epilog.thread_crit_edge ], [ %call.i135, %if.then.i137.sw.epilog.thread_crit_edge ], [ %call6.i95, %if.end4.i97.sw.epilog.thread_crit_edge ], [ %call.i89, %if.then.i91.sw.epilog.thread_crit_edge ], [ %call6.i49, %if.end4.i51.sw.epilog.thread_crit_edge ], [ %call.i43, %if.then.i45.sw.epilog.thread_crit_edge ], [ %call6.i, %if.end4.i.sw.epilog.thread_crit_edge ], [ %call.i, %if.then.i.sw.epilog.thread_crit_edge ], [ -22, %sw.bb1.sw.epilog.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

if.end:                                           ; preds = %sps30_float_to_int_clamped.exit.i175.3, %sps30_float_to_int_clamped.exit.i129.2, %sps30_float_to_int_clamped.exit.i83.1, %sps30_float_to_int_clamped.exit.i
  call void @mutex_unlock(ptr noundef %1) #5
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %106 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %address, align 4
  %arrayidx = getelementptr [4 x i32], ptr %data, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 %109, 100
  %110 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div, ptr %val, align 4
  %111 = load i32, ptr %address, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr %data, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx15, align 4
  %rem = srem i32 %113, 100
  %mul = mul nsw i32 %rem, 10000
  %114 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %115 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %116)
  %cond = icmp eq i32 %116, 34
  br i1 %cond, label %sw.bb18, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb16
  %channel219 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %117 = ptrtoint ptr %channel219 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %channel219, align 4
  %.off = add i32 %118, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb20, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %val, align 4
  %120 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 10000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb18.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end, %sw.epilog.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb20 ], [ 2, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_cleaning_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !63
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %clean_fan = getelementptr inbounds %struct.sps30_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %clean_fan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clean_fan, align 4
  %call3 = call i32 %8(ptr noundef %1) #5
  call void @mutex_unlock(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %len.call3 = select i1 %tobool5.not, i32 %len, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %len.call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cleaning_period_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !63
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %read_cleaning_period = getelementptr inbounds %struct.sps30_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %read_cleaning_period to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_cleaning_period, align 4
  %call2 = call i32 %6(ptr noundef %1, ptr noundef nonnull %val) #5
  call void @mutex_unlock(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cleaning_period_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !63
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 604800, i32 %4)
  %5 = icmp ugt i32 %4, 604800
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_cleaning_period = getelementptr inbounds %struct.sps30_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %write_cleaning_period to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_cleaning_period, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %call6 = call i32 %9(ptr noundef %1, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end5
  call void @msleep(i32 noundef 20) #5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %reset.i = getelementptr inbounds %struct.sps30_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset.i, align 4
  %call.i = call i32 %15(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sps30_do_reset.exit.thread, label %do.end

sps30_do_reset.exit.thread:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %state1.i = getelementptr inbounds %struct.sps30_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state1.i, align 4
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %sps30_do_reset.exit.thread, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call6, %if.end5.cleanup.sink.split_crit_edge ], [ %len, %sps30_do_reset.exit.thread ], [ %len, %do.end ]
  call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cleaning_period_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 1, i32 noundef 604800) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @sps30_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/sps30.c", i32 343, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/sps30.c", i32 354, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sps30_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @sps30_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/chemical/sps30.c", i32 360, i32 3}
!13 = !{ptr @sps30_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @sps30_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_sps30_probe, !16, !"__ksymtab_sps30_probe", i1 false, i1 false}
!16 = !{!"../drivers/iio/chemical/sps30.c", i32 375, i32 1}
!17 = !{ptr @__UNIQUE_ID_author288, !18, !"__UNIQUE_ID_author288", i1 false, i1 false}
!18 = !{!"../drivers/iio/chemical/sps30.c", i32 377, i32 1}
!19 = !{ptr @__UNIQUE_ID_description289, !20, !"__UNIQUE_ID_description289", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/sps30.c", i32 378, i32 1}
!21 = !{ptr @__UNIQUE_ID_file290, !22, !"__UNIQUE_ID_file290", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/sps30.c", i32 379, i32 1}
!23 = !{ptr @__UNIQUE_ID_license291, !22, !"__UNIQUE_ID_license291", i1 false, i1 false}
!24 = !{ptr @sps30_info, !25, !"sps30_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/chemical/sps30.c", i32 288, i32 30}
!26 = !{ptr @sps30_attr_group, !27, !"sps30_attr_group", i1 false, i1 false}
!27 = !{!"../drivers/iio/chemical/sps30.c", i32 284, i32 37}
!28 = !{ptr @sps30_attrs, !29, !"sps30_attrs", i1 false, i1 false}
!29 = !{!"../drivers/iio/chemical/sps30.c", i32 277, i32 26}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/chemical/sps30.c", i32 273, i32 8}
!32 = !{ptr @iio_dev_attr_start_cleaning, !31, !"iio_dev_attr_start_cleaning", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/chemical/sps30.c", i32 274, i32 8}
!35 = !{ptr @iio_dev_attr_cleaning_period, !34, !"iio_dev_attr_cleaning_period", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/chemical/sps30.c", i32 224, i32 22}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/chemical/sps30.c", i32 256, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cleaning_period_store._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @cleaning_period_store._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/chemical/sps30.c", i32 275, i32 8}
!46 = !{ptr @iio_dev_attr_cleaning_period_available, !45, !"iio_dev_attr_cleaning_period_available", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/chemical/sps30.c", i32 268, i32 25}
!49 = !{ptr @sps30_channels, !50, !"sps30_channels", i1 false, i1 false}
!50 = !{!"../drivers/iio/chemical/sps30.c", i32 309, i32 35}
!51 = !{ptr @sps30_scan_masks, !52, !"sps30_scan_masks", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/sps30.c", i32 325, i32 28}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{!"auto-init"}
