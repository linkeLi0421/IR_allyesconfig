; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/ms5611_core.c_pt.bc'
source_filename = "../drivers/iio/pressure/ms5611_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ms5611_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ms5611_probe\09\09\09\09"
module asm "\09.long\09__crc_ms5611_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ms5611_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ms5611_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ms5611_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ms5611_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_ms5611_remove\09\09\09\09"
module asm "\09.long\09__crc_ms5611_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ms5611_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ms5611_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ms5611_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ms5611_chip_info = type { [8 x i16], ptr }
%struct.ms5611_osr = type { i32, i8, i16 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ms5611_state = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.85 = type { [2 x i32], i64 }

@ms5611_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@chip_info_tbl = internal global { [2 x %struct.ms5611_chip_info], [56 x i8] } { [2 x %struct.ms5611_chip_info] [%struct.ms5611_chip_info { [8 x i16] zeroinitializer, ptr @ms5611_temp_and_pressure_compensate }, %struct.ms5611_chip_info { [8 x i16] zeroinitializer, ptr @ms5607_temp_and_pressure_compensate }], [56 x i8] zeroinitializer }, align 32
@ms5611_avail_temp_osr = internal constant { [5 x %struct.ms5611_osr], [56 x i8] } { [5 x %struct.ms5611_osr] [%struct.ms5611_osr { i32 600, i8 80, i16 256 }, %struct.ms5611_osr { i32 1170, i8 82, i16 512 }, %struct.ms5611_osr { i32 2280, i8 84, i16 1024 }, %struct.ms5611_osr { i32 4540, i8 86, i16 2048 }, %struct.ms5611_osr { i32 9040, i8 88, i16 4096 }], [56 x i8] zeroinitializer }, align 32
@ms5611_avail_pressure_osr = internal constant { [5 x %struct.ms5611_osr], [56 x i8] } { [5 x %struct.ms5611_osr] [%struct.ms5611_osr { i32 600, i8 64, i16 256 }, %struct.ms5611_osr { i32 1170, i8 66, i16 512 }, %struct.ms5611_osr { i32 2280, i8 68, i16 1024 }, %struct.ms5611_osr { i32 4540, i8 70, i16 2048 }, %struct.ms5611_osr { i32 9040, i8 72, i16 4096 }], [56 x i8] zeroinitializer }, align 32
@ms5611_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ms5611_attribute_group, ptr @ms5611_read_raw, ptr null, ptr null, ptr @ms5611_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ms5611_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.78 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 33554438, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 1, %struct.anon.78 { i8 115, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 33554438, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@ms5611_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@ms5611_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms5611_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/pressure/ms5611_core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ms5611_probe._entry_ptr = internal global ptr @ms5611_probe._entry, section ".printk_index", align 4
@ms5611_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@ms5611_probe._entry_ptr.8 = internal global ptr @ms5611_probe._entry.6, section ".printk_index", align 4
@__kstrtab_ms5611_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ms5611_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ms5611_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ms5611_probe to i32), ptr @__kstrtab_ms5611_probe, ptr @__kstrtabns_ms5611_probe }, section "___ksymtab+ms5611_probe", align 4
@__kstrtab_ms5611_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ms5611_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ms5611_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ms5611_remove to i32), ptr @__kstrtab_ms5611_remove, ptr @__kstrtabns_ms5611_remove }, section "___ksymtab+ms5611_remove", align 4
@__UNIQUE_ID_author288 = internal constant [57 x i8] c"ms5611_core.author=Tomasz Duszynski <tduszyns@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [43 x i8] c"ms5611_core.description=MS5611 core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [50 x i8] c"ms5611_core.file=drivers/iio/pressure/ms5611_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [27 x i8] c"ms5611_core.license=GPL v2\00", section ".modinfo", align 1
@ms5611_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ms5611_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ms5611_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_oversampling_ratio_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_oversampling_ratio_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @ms5611_show_osr, %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@ms5611_show_osr = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"256 512 1024 2048 4096\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"oversampling_ratio_available\00", [35 x i8] zeroinitializer }, align 32
@ms5611_read_temp_and_pressure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read temperature and pressure\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ms5611_read_temp_and_pressure\00", [34 x i8] zeroinitializer }, align 32
@ms5611_read_temp_and_pressure._entry_ptr = internal global ptr @ms5611_read_temp_and_pressure._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@ms5611_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable Vdd supply: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ms5611_init\00", [20 x i8] zeroinitializer }, align 32
@ms5611_init._entry_ptr = internal global ptr @ms5611_init._entry, section ".printk_index", align 4
@ms5611_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms5611_reset\00", [19 x i8] zeroinitializer }, align 32
@ms5611_reset._entry_ptr = internal global ptr @ms5611_reset._entry, section ".printk_index", align 4
@ms5611_read_prom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read prom at %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ms5611_read_prom\00", [47 x i8] zeroinitializer }, align 32
@ms5611_read_prom._entry_ptr = internal global ptr @ms5611_read_prom._entry, section ".printk_index", align 4
@ms5611_read_prom._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PROM integrity check failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ms5611_read_prom._entry_ptr.21 = internal global ptr @ms5611_read_prom._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 25]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 435, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"chip_info_tbl\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 345, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"ms5611_avail_temp_osr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 35, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"ms5611_avail_pressure_osr\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 27, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"ms5611_info\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 384, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"ms5611_channels\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 354, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"ms5611_scan_masks\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 343, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 456, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 462, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"ms5611_attribute_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 52, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"ms5611_attributes\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 47, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [44 x i8] c"iio_const_attr_oversampling_ratio_available\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"ms5611_show_osr\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 43, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 45, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 112, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 396, i32 54 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 402, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 200, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 90, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [38 x i8] c"../drivers/iio/pressure/ms5611_core.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 97, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_ms5611_probe, ptr @__ksymtab_ms5611_remove, ptr @ms5611_init._entry, ptr @ms5611_init._entry_ptr, ptr @ms5611_probe._entry, ptr @ms5611_probe._entry.6, ptr @ms5611_probe._entry_ptr, ptr @ms5611_probe._entry_ptr.8, ptr @ms5611_read_prom._entry, ptr @ms5611_read_prom._entry.19, ptr @ms5611_read_prom._entry_ptr, ptr @ms5611_read_prom._entry_ptr.21, ptr @ms5611_read_temp_and_pressure._entry, ptr @ms5611_read_temp_and_pressure._entry_ptr, ptr @ms5611_reset._entry, ptr @ms5611_reset._entry_ptr, ptr @ms5611_probe.__key, ptr @.str, ptr @chip_info_tbl, ptr @ms5611_avail_temp_osr, ptr @ms5611_avail_pressure_osr, ptr @ms5611_info, ptr @ms5611_channels, ptr @ms5611_scan_masks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ms5611_attribute_group, ptr @ms5611_attributes, ptr @iio_const_attr_oversampling_ratio_available, ptr @ms5611_show_osr, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_info_tbl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_avail_temp_osr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_avail_pressure_osr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_oversampling_ratio_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_show_osr to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_read_temp_and_pressure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_read_prom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms5611_read_prom._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ms5611_probe(ptr noundef %indio_dev, ptr noundef %dev, ptr noundef %name, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ms5611_probe.__key) #5
  %arrayidx = getelementptr [2 x %struct.ms5611_chip_info], ptr @chip_info_tbl, i32 0, i32 %type
  %chip_info = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %chip_info, align 4
  %temp_osr = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %temp_osr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr getelementptr inbounds ([5 x %struct.ms5611_osr], ptr @ms5611_avail_temp_osr, i32 0, i32 4), ptr %temp_osr, align 4
  %pressure_osr = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pressure_osr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds ([5 x %struct.ms5611_osr], ptr @ms5611_avail_pressure_osr, i32 0, i32 4), ptr %pressure_osr, align 4
  %name1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %5 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ms5611_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ms5611_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %num_channels, align 4
  %9 = ptrtoint ptr %indio_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %indio_dev, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 6
  %10 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ms5611_scan_masks, ptr %available_scan_masks, align 4
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %call1.i = tail call ptr @devm_regulator_get(ptr noundef %14, ptr noundef nonnull @.str.12) #5
  %vdd.i = getelementptr inbounds %struct.ms5611_state, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %vdd.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call1.i to i32
  br label %ms5611_init.exit

if.end.i:                                         ; preds = %entry
  %call7.i = tail call i32 @regulator_enable(ptr noundef %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef %call7.i) #8
  br label %ms5611_init.exit

if.end11.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %reset.i.i = getelementptr inbounds %struct.ms5611_state, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset.i.i, align 4
  %call1.i.i = tail call i32 %22(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i35.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i35.i, label %ms5611_reset.exit.thread.i, label %if.end14.i

ms5611_reset.exit.thread.i:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15) #8
  br label %cleanup.sink.split

if.end14.i:                                       ; preds = %if.end11.i
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #5
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %read_prom_word.i.i = getelementptr inbounds %struct.ms5611_state, ptr %24, i32 0, i32 5
  %chip_info.i.i = getelementptr inbounds %struct.ms5611_state, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_prom_word.i.i, align 4
  %27 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_info.i.i, align 4
  %call1.i37.i = tail call i32 %26(ptr noundef %24, i32 noundef 0, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %cmp2.i.i = icmp slt i32 %call1.i37.i, 0
  br i1 %cmp2.i.i, label %if.end14.i.do.end.i39.i_crit_edge, label %for.inc.i.i

if.end14.i.do.end.i39.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

do.end.i39.i:                                     ; preds = %for.inc.6.i.i.do.end.i39.i_crit_edge, %for.inc.5.i.i.do.end.i39.i_crit_edge, %for.inc.4.i.i.do.end.i39.i_crit_edge, %for.inc.3.i.i.do.end.i39.i_crit_edge, %for.inc.2.i.i.do.end.i39.i_crit_edge, %for.inc.1.i.i.do.end.i39.i_crit_edge, %for.inc.i.i.do.end.i39.i_crit_edge, %if.end14.i.do.end.i39.i_crit_edge
  %i.025.lcssa.i.i = phi i32 [ 0, %if.end14.i.do.end.i39.i_crit_edge ], [ 1, %for.inc.i.i.do.end.i39.i_crit_edge ], [ 2, %for.inc.1.i.i.do.end.i39.i_crit_edge ], [ 3, %for.inc.2.i.i.do.end.i39.i_crit_edge ], [ 4, %for.inc.3.i.i.do.end.i39.i_crit_edge ], [ 5, %for.inc.4.i.i.do.end.i39.i_crit_edge ], [ 6, %for.inc.5.i.i.do.end.i39.i_crit_edge ], [ 7, %for.inc.6.i.i.do.end.i39.i_crit_edge ]
  %call1.lcssa.i.i = phi i32 [ %call1.i37.i, %if.end14.i.do.end.i39.i_crit_edge ], [ %call1.1.i.i, %for.inc.i.i.do.end.i39.i_crit_edge ], [ %call1.2.i.i, %for.inc.1.i.i.do.end.i39.i_crit_edge ], [ %call1.3.i.i, %for.inc.2.i.i.do.end.i39.i_crit_edge ], [ %call1.4.i.i, %for.inc.3.i.i.do.end.i39.i_crit_edge ], [ %call1.5.i.i, %for.inc.4.i.i.do.end.i39.i_crit_edge ], [ %call1.6.i.i, %for.inc.5.i.i.do.end.i39.i_crit_edge ], [ %call1.7.i.i, %for.inc.6.i.i.do.end.i39.i_crit_edge ]
  %dev.i38.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38.i, ptr noundef nonnull @.str.17, i32 noundef %i.025.lcssa.i.i) #8
  br label %cleanup.sink.split

for.inc.i.i:                                      ; preds = %if.end14.i
  %29 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_prom_word.i.i, align 4
  %31 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.1.i.i = getelementptr [8 x i16], ptr %32, i32 0, i32 1
  %call1.1.i.i = tail call i32 %30(ptr noundef %24, i32 noundef 1, ptr noundef %arrayidx.1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp slt i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.inc.i.i.do.end.i39.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.do.end.i39.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %33 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_prom_word.i.i, align 4
  %35 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.2.i.i = getelementptr [8 x i16], ptr %36, i32 0, i32 2
  %call1.2.i.i = tail call i32 %34(ptr noundef %24, i32 noundef 2, ptr noundef %arrayidx.2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp slt i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.do.end.i39.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %37 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_prom_word.i.i, align 4
  %39 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.3.i.i = getelementptr [8 x i16], ptr %40, i32 0, i32 3
  %call1.3.i.i = tail call i32 %38(ptr noundef %24, i32 noundef 3, ptr noundef %arrayidx.3.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i.i)
  %cmp2.3.i.i = icmp slt i32 %call1.3.i.i, 0
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.do.end.i39.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %41 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_prom_word.i.i, align 4
  %43 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.4.i.i = getelementptr [8 x i16], ptr %44, i32 0, i32 4
  %call1.4.i.i = tail call i32 %42(ptr noundef %24, i32 noundef 4, ptr noundef %arrayidx.4.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i.i)
  %cmp2.4.i.i = icmp slt i32 %call1.4.i.i, 0
  br i1 %cmp2.4.i.i, label %for.inc.3.i.i.do.end.i39.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %45 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_prom_word.i.i, align 4
  %47 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.5.i.i = getelementptr [8 x i16], ptr %48, i32 0, i32 5
  %call1.5.i.i = tail call i32 %46(ptr noundef %24, i32 noundef 5, ptr noundef %arrayidx.5.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i.i)
  %cmp2.5.i.i = icmp slt i32 %call1.5.i.i, 0
  br i1 %cmp2.5.i.i, label %for.inc.4.i.i.do.end.i39.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %49 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_prom_word.i.i, align 4
  %51 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.6.i.i = getelementptr [8 x i16], ptr %52, i32 0, i32 6
  %call1.6.i.i = tail call i32 %50(ptr noundef %24, i32 noundef 6, ptr noundef %arrayidx.6.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6.i.i)
  %cmp2.6.i.i = icmp slt i32 %call1.6.i.i, 0
  br i1 %cmp2.6.i.i, label %for.inc.5.i.i.do.end.i39.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %53 = ptrtoint ptr %read_prom_word.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_prom_word.i.i, align 4
  %55 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.7.i.i = getelementptr [8 x i16], ptr %56, i32 0, i32 7
  %call1.7.i.i = tail call i32 %54(ptr noundef %24, i32 noundef 7, ptr noundef %arrayidx.7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7.i.i)
  %cmp2.7.i.i = icmp slt i32 %call1.7.i.i, 0
  br i1 %cmp2.7.i.i, label %for.inc.6.i.i.do.end.i39.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.do.end.i39.i_crit_edge:             ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i39.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %57 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_info.i.i, align 4
  %arrayidx.i.i.i = getelementptr i16, ptr %58, i32 7
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.i.i, align 2
  %61 = and i16 %60, -256
  store i16 %61, ptr %arrayidx.i.i.i, align 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.inc.7.i.i
  %crc.010.i.i.i = phi i16 [ 0, %for.inc.7.i.i ], [ %crc.3.7.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %i.08.i.i.i = phi i32 [ 0, %for.inc.7.i.i ], [ %inc37.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %62 = and i32 %i.08.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp7.not.i.i.i = icmp eq i32 %62, 0
  %shr144.i.i.i = lshr i32 %i.08.i.i.i, 1
  %arrayidx15.i.i.i = getelementptr i16, ptr %58, i32 %shr144.i.i.i
  %63 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx15.i.i.i, align 2
  %65 = and i16 %64, 255
  %66 = lshr i16 %64, 8
  %.pn.i.i.i = select i1 %cmp7.not.i.i.i, i16 %66, i16 %65
  %crc.1.i.i.i = xor i16 %.pn.i.i.i, %crc.010.i.i.i
  %shl.i.i.i = shl i16 %crc.1.i.i.i, 1
  %xor29.i.i.i = xor i16 %shl.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.1.i.i.i)
  %tobool.not5.i.i.i = icmp slt i16 %crc.1.i.i.i, 0
  %crc.3.i.i.i = select i1 %tobool.not5.i.i.i, i16 %xor29.i.i.i, i16 %shl.i.i.i
  %shl.1.i.i.i = shl i16 %crc.3.i.i.i, 1
  %xor29.1.i.i.i = xor i16 %shl.1.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.i.i.i)
  %tobool.not5.1.i.i.i = icmp slt i16 %crc.3.i.i.i, 0
  %crc.3.1.i.i.i = select i1 %tobool.not5.1.i.i.i, i16 %xor29.1.i.i.i, i16 %shl.1.i.i.i
  %shl.2.i.i.i = shl i16 %crc.3.1.i.i.i, 1
  %xor29.2.i.i.i = xor i16 %shl.2.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.1.i.i.i)
  %tobool.not5.2.i.i.i = icmp slt i16 %crc.3.1.i.i.i, 0
  %crc.3.2.i.i.i = select i1 %tobool.not5.2.i.i.i, i16 %xor29.2.i.i.i, i16 %shl.2.i.i.i
  %shl.3.i.i.i = shl i16 %crc.3.2.i.i.i, 1
  %xor29.3.i.i.i = xor i16 %shl.3.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.2.i.i.i)
  %tobool.not5.3.i.i.i = icmp slt i16 %crc.3.2.i.i.i, 0
  %crc.3.3.i.i.i = select i1 %tobool.not5.3.i.i.i, i16 %xor29.3.i.i.i, i16 %shl.3.i.i.i
  %shl.4.i.i.i = shl i16 %crc.3.3.i.i.i, 1
  %xor29.4.i.i.i = xor i16 %shl.4.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.3.i.i.i)
  %tobool.not5.4.i.i.i = icmp slt i16 %crc.3.3.i.i.i, 0
  %crc.3.4.i.i.i = select i1 %tobool.not5.4.i.i.i, i16 %xor29.4.i.i.i, i16 %shl.4.i.i.i
  %shl.5.i.i.i = shl i16 %crc.3.4.i.i.i, 1
  %xor29.5.i.i.i = xor i16 %shl.5.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.4.i.i.i)
  %tobool.not5.5.i.i.i = icmp slt i16 %crc.3.4.i.i.i, 0
  %crc.3.5.i.i.i = select i1 %tobool.not5.5.i.i.i, i16 %xor29.5.i.i.i, i16 %shl.5.i.i.i
  %shl.6.i.i.i = shl i16 %crc.3.5.i.i.i, 1
  %xor29.6.i.i.i = xor i16 %shl.6.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.5.i.i.i)
  %tobool.not5.6.i.i.i = icmp slt i16 %crc.3.5.i.i.i, 0
  %crc.3.6.i.i.i = select i1 %tobool.not5.6.i.i.i, i16 %xor29.6.i.i.i, i16 %shl.6.i.i.i
  %shl.7.i.i.i = shl i16 %crc.3.6.i.i.i, 1
  %xor29.7.i.i.i = xor i16 %shl.7.i.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %crc.3.6.i.i.i)
  %tobool.not5.7.i.i.i = icmp slt i16 %crc.3.6.i.i.i, 0
  %crc.3.7.i.i.i = select i1 %tobool.not5.7.i.i.i, i16 %xor29.7.i.i.i, i16 %shl.7.i.i.i
  %inc37.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc37.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %ms5611_prom_is_valid.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

ms5611_prom_is_valid.exit.i.i:                    ; preds = %for.body.i.i.i
  %and.i.i.i = and i16 %60, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i.i.i)
  %cmp44.not.i.i.i = icmp ne i16 %and.i.i.i, 0
  %67 = lshr i16 %crc.3.7.i.i.i, 12
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %and.i.i.i)
  %cmp48.i.i.i = icmp eq i16 %67, %and.i.i.i
  %68 = select i1 %cmp44.not.i.i.i, i1 %cmp48.i.i.i, i1 false
  br i1 %68, label %ms5611_prom_is_valid.exit.i.i.if.end_crit_edge, label %do.end9.i.i

ms5611_prom_is_valid.exit.i.i.if.end_crit_edge:   ; preds = %ms5611_prom_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end9.i.i:                                      ; preds = %ms5611_prom_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.20) #8
  br label %cleanup.sink.split

ms5611_init.exit:                                 ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %16, %if.then.i ], [ %call7.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ms5611_init.exit.cleanup_crit_edge, label %ms5611_init.exit.if.end_crit_edge

ms5611_init.exit.if.end_crit_edge:                ; preds = %ms5611_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

ms5611_init.exit.cleanup_crit_edge:               ; preds = %ms5611_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ms5611_init.exit.if.end_crit_edge, %ms5611_prom_is_valid.exit.i.i.if.end_crit_edge
  %call3 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef null, ptr noundef nonnull @ms5611_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %err_fini

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @__iio_device_register(ptr noundef %indio_dev, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #5
  br label %err_fini

err_fini:                                         ; preds = %do.end15, %do.end8
  %ret.0 = phi i32 [ %call3, %do.end8 ], [ %call10, %do.end15 ]
  %69 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i, align 8
  %vdd.i38 = getelementptr inbounds %struct.ms5611_state, ptr %70, i32 0, i32 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_fini, %do.end9.i.i, %do.end.i39.i, %ms5611_reset.exit.thread.i
  %vdd.i.sink = phi ptr [ %vdd.i38, %err_fini ], [ %vdd.i, %ms5611_reset.exit.thread.i ], [ %vdd.i, %do.end.i39.i ], [ %vdd.i, %do.end9.i.i ]
  %retval.0.ph = phi i32 [ %ret.0, %err_fini ], [ %call1.i.i, %ms5611_reset.exit.thread.i ], [ %call1.lcssa.i.i, %do.end.i39.i ], [ -19, %do.end9.i.i ]
  %71 = ptrtoint ptr %vdd.i.sink to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdd.i.sink, align 4
  %call20.i = tail call i32 @regulator_disable(ptr noundef %72) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %ms5611_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ms5611_init.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #5
  %4 = getelementptr inbounds [2 x i32], ptr %scan, i32 0, i32 1
  %lock = getelementptr inbounds %struct.ms5611_state, ptr %3, i32 0, i32 1
  %5 = call ptr @memset(ptr %scan, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %read_adc_temp_and_pressure.i = getelementptr inbounds %struct.ms5611_state, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %read_adc_temp_and_pressure.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_adc_temp_and_pressure.i, align 4
  %call1.i = call i32 %9(ptr noundef %7, ptr noundef %4, ptr noundef nonnull %scan) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %ms5611_read_temp_and_pressure.exit.thread, label %ms5611_read_temp_and_pressure.exit

ms5611_read_temp_and_pressure.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #8
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %err

ms5611_read_temp_and_pressure.exit:               ; preds = %entry
  %chip_info.i = getelementptr inbounds %struct.ms5611_state, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_info.i, align 4
  %temp_and_pressure_compensate.i = getelementptr inbounds %struct.ms5611_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %temp_and_pressure_compensate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %temp_and_pressure_compensate.i, align 4
  %call3.i = call i32 %13(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %scan) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %ms5611_read_temp_and_pressure.exit.err_crit_edge, label %if.end

ms5611_read_temp_and_pressure.exit.err_crit_edge: ; preds = %ms5611_read_temp_and_pressure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %ms5611_read_temp_and_pressure.exit
  %call6 = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scan_timestamp.i, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %17, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call6, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %ms5611_read_temp_and_pressure.exit.err_crit_edge, %ms5611_read_temp_and_pressure.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %20) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ms5611_remove(ptr noundef %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_device_unregister(ptr noundef %indio_dev) #5
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #5
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %vdd.i = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd.i, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ms5611_temp_and_pressure_compensate(ptr nocapture noundef readonly %chip_info, ptr nocapture noundef %temp, ptr nocapture noundef %pressure) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temp, align 4
  %2 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pressure, align 4
  %arrayidx = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %shl.neg = mul nsw i32 %conv, -256
  %sub = add i32 %shl.neg, %1
  %conv1 = sext i32 %sub to i64
  %arrayidx3 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 4
  %conv4 = zext i16 %7 to i64
  %shl5 = shl nuw nsw i64 %conv4, 16
  %arrayidx7 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 4
  %conv8 = zext i16 %9 to i64
  %mul = mul nsw i64 %conv1, %conv8
  %shr = ashr i64 %mul, 7
  %add = add nsw i64 %shr, %shl5
  %arrayidx10 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %11 to i64
  %shl12 = shl nuw nsw i64 %conv11, 15
  %arrayidx14 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %13 to i64
  %mul16 = mul nsw i64 %conv15, %conv1
  %shr17 = ashr i64 %mul16, 8
  %add18 = add nsw i64 %shr17, %shl12
  %arrayidx20 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx20, align 4
  %conv21 = zext i16 %15 to i64
  %mul22 = mul nsw i64 %conv21, %conv1
  %shr23 = ashr i64 %mul22, 23
  %16 = trunc i64 %shr23 to i32
  %conv25 = add nsw i32 %16, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147481647, i32 %16)
  %cmp = icmp ugt i32 %16, 2147481647
  br i1 %cmp, label %if.then, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then:                                          ; preds = %entry
  %mul27 = mul nsw i64 %conv1, %conv1
  %17 = lshr i64 %mul27, 31
  %mul30 = mul nsw i32 %16, 5
  %mul32 = mul i32 %mul30, %16
  %shr33 = ashr i32 %mul32, 1
  %conv34 = sext i32 %shr33 to i64
  %shr35 = ashr i64 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3500, i32 %16)
  %cmp36 = icmp ult i32 %16, -3500
  br i1 %cmp36, label %if.then38, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add39 = add nuw nsw i32 %16, 3500
  %mul41 = mul i32 %add39, %add39
  %conv42 = sext i32 %mul41 to i64
  %mul43 = mul nsw i64 %conv42, 7
  %add44 = add nsw i64 %mul43, %conv34
  %mul45 = mul nsw i64 %conv42, 11
  %shr46 = ashr i64 %mul45, 1
  %add47 = add nsw i64 %shr35, %shr46
  br label %if.end

if.end:                                           ; preds = %if.then38, %if.then.if.end_crit_edge
  %off2.0 = phi i64 [ %add44, %if.then38 ], [ %conv34, %if.then.if.end_crit_edge ]
  %sens2.0 = phi i64 [ %add47, %if.then38 ], [ %shr35, %if.then.if.end_crit_edge ]
  %18 = trunc i64 %17 to i32
  %conv50 = sub i32 %conv25, %18
  %sub51 = sub nsw i64 %add, %off2.0
  %sub52 = sub nsw i64 %add18, %sens2.0
  br label %if.end53

if.end53:                                         ; preds = %if.end, %entry.if.end53_crit_edge
  %off.0 = phi i64 [ %sub51, %if.end ], [ %add, %entry.if.end53_crit_edge ]
  %sens.0 = phi i64 [ %sub52, %if.end ], [ %add18, %entry.if.end53_crit_edge ]
  %t.0 = phi i32 [ %conv50, %if.end ], [ %conv25, %entry.if.end53_crit_edge ]
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %t.0, ptr %temp, align 4
  %conv54 = sext i32 %3 to i64
  %mul55 = mul i64 %sens.0, %conv54
  %shr56 = ashr i64 %mul55, 21
  %sub57 = sub nsw i64 %shr56, %off.0
  %20 = lshr i64 %sub57, 15
  %conv59 = trunc i64 %20 to i32
  %21 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv59, ptr %pressure, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ms5607_temp_and_pressure_compensate(ptr nocapture noundef readonly %chip_info, ptr nocapture noundef %temp, ptr nocapture noundef %pressure) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temp, align 4
  %2 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pressure, align 4
  %arrayidx = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %shl.neg = mul nsw i32 %conv, -256
  %sub = add i32 %shl.neg, %1
  %conv1 = sext i32 %sub to i64
  %arrayidx3 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 4
  %conv4 = zext i16 %7 to i64
  %shl5 = shl nuw nsw i64 %conv4, 17
  %arrayidx7 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 4
  %conv8 = zext i16 %9 to i64
  %mul = mul nsw i64 %conv1, %conv8
  %shr = ashr i64 %mul, 6
  %add = add nsw i64 %shr, %shl5
  %arrayidx10 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %11 to i64
  %shl12 = shl nuw nsw i64 %conv11, 16
  %arrayidx14 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %13 to i64
  %mul16 = mul nsw i64 %conv15, %conv1
  %shr17 = ashr i64 %mul16, 7
  %add18 = add nsw i64 %shr17, %shl12
  %arrayidx20 = getelementptr [8 x i16], ptr %chip_info, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx20, align 4
  %conv21 = zext i16 %15 to i64
  %mul22 = mul nsw i64 %conv21, %conv1
  %shr23 = ashr i64 %mul22, 23
  %16 = trunc i64 %shr23 to i32
  %conv25 = add nsw i32 %16, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147481647, i32 %16)
  %cmp = icmp ugt i32 %16, 2147481647
  br i1 %cmp, label %if.then, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then:                                          ; preds = %entry
  %mul27 = mul nsw i64 %conv1, %conv1
  %17 = lshr i64 %mul27, 31
  %mul31 = mul i32 %16, %16
  %conv32 = sext i32 %mul31 to i64
  %mul33 = mul nsw i64 %conv32, 61
  %shr34 = ashr i64 %mul33, 4
  %shl35 = shl nsw i64 %conv32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3500, i32 %16)
  %cmp36 = icmp ult i32 %16, -3500
  br i1 %cmp36, label %if.then38, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add39 = add nuw nsw i32 %16, 3500
  %mul41 = mul i32 %add39, %add39
  %conv42 = sext i32 %mul41 to i64
  %mul43 = mul nsw i64 %conv42, 15
  %add44 = add nsw i64 %shr34, %mul43
  %mul45 = shl nsw i64 %conv42, 3
  %add46 = add nsw i64 %mul45, %shl35
  br label %if.end

if.end:                                           ; preds = %if.then38, %if.then.if.end_crit_edge
  %off2.0 = phi i64 [ %add44, %if.then38 ], [ %shr34, %if.then.if.end_crit_edge ]
  %sens2.0 = phi i64 [ %add46, %if.then38 ], [ %shl35, %if.then.if.end_crit_edge ]
  %18 = trunc i64 %17 to i32
  %conv49 = sub i32 %conv25, %18
  %sub50 = sub nsw i64 %add, %off2.0
  %sub51 = sub nsw i64 %add18, %sens2.0
  br label %if.end52

if.end52:                                         ; preds = %if.end, %entry.if.end52_crit_edge
  %t.0 = phi i32 [ %conv49, %if.end ], [ %conv25, %entry.if.end52_crit_edge ]
  %off.0 = phi i64 [ %sub50, %if.end ], [ %add, %entry.if.end52_crit_edge ]
  %sens.0 = phi i64 [ %sub51, %if.end ], [ %add18, %entry.if.end52_crit_edge ]
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %t.0, ptr %temp, align 4
  %conv53 = sext i32 %3 to i64
  %mul54 = mul i64 %sens.0, %conv53
  %shr55 = ashr i64 %mul54, 21
  %sub56 = sub nsw i64 %shr55, %off.0
  %20 = lshr i64 %sub56, 15
  %conv58 = trunc i64 %20 to i32
  %21 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv58, ptr %pressure, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %pressure = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #5
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pressure) #5
  %1 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pressure, align 4, !annotation !83
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 25, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ms5611_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %read_adc_temp_and_pressure.i = getelementptr inbounds %struct.ms5611_state, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %read_adc_temp_and_pressure.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_adc_temp_and_pressure.i, align 4
  %call1.i = call i32 %8(ptr noundef %6, ptr noundef nonnull %temp, ptr noundef nonnull %pressure) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %ms5611_read_temp_and_pressure.exit.thread, label %ms5611_read_temp_and_pressure.exit

ms5611_read_temp_and_pressure.exit.thread:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #8
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

ms5611_read_temp_and_pressure.exit:               ; preds = %sw.bb
  %chip_info.i = getelementptr inbounds %struct.ms5611_state, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_info.i, align 4
  %temp_and_pressure_compensate.i = getelementptr inbounds %struct.ms5611_chip_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %temp_and_pressure_compensate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %temp_and_pressure_compensate.i, align 4
  %call3.i = call i32 %12(ptr noundef %10, ptr noundef nonnull %temp, ptr noundef nonnull %pressure) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %ms5611_read_temp_and_pressure.exit.cleanup_crit_edge, label %if.end

ms5611_read_temp_and_pressure.exit.cleanup_crit_edge: ; preds = %ms5611_read_temp_and_pressure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ms5611_read_temp_and_pressure.exit
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 9, label %sw.bb3
    i32 17, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp, align 4
  %mul = mul i32 %17, 10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pressure, align 4
  %.frozen = freeze i32 %20
  %div = sdiv i32 %.frozen, 1000
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %val, align 4
  %22 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %22
  %mul5 = mul nsw i32 %rem.decomposed, 1000
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul5, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %25, label %sw.bb6.cleanup_crit_edge [
    i32 9, label %sw.bb8
    i32 17, label %sw.bb9
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %31, label %sw.bb11.cleanup_crit_edge [
    i32 9, label %sw.bb11.if.end17_crit_edge
    i32 17, label %sw.bb11.if.end17_crit_edge48
  ]

sw.bb11.if.end17_crit_edge48:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sw.bb11.if.end17_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %sw.bb11.if.end17_crit_edge, %sw.bb11.if.end17_crit_edge48
  %lock18 = getelementptr inbounds %struct.ms5611_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock18, i32 noundef 0) #5
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %34)
  %cmp20 = icmp eq i32 %34, 9
  %pressure_osr = getelementptr inbounds %struct.ms5611_state, ptr %3, i32 0, i32 2
  %temp_osr = getelementptr inbounds %struct.ms5611_state, ptr %3, i32 0, i32 3
  %.pn.in = select i1 %cmp20, ptr %temp_osr, ptr %pressure_osr
  %35 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn.in, align 4
  %storemerge.in.in = getelementptr inbounds %struct.ms5611_osr, ptr %.pn, i32 0, i32 2
  %36 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %36)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %sw.bb11.cleanup_crit_edge, %sw.bb9, %sw.bb8, %sw.bb6.cleanup_crit_edge, %sw.bb4, %sw.bb3, %if.end.cleanup_crit_edge, %ms5611_read_temp_and_pressure.exit.cleanup_crit_edge, %ms5611_read_temp_and_pressure.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 2, %sw.bb9 ], [ 1, %sw.bb8 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ %call3.i, %ms5611_read_temp_and_pressure.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %ms5611_read_temp_and_pressure.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pressure) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms5611_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 25
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 9, label %if.then2
    i32 17, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %5 = trunc i32 %val to i16
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %5, label %if.then2.cleanup_crit_edge [
    i16 256, label %if.then2.for.end.thread.i_crit_edge
    i16 512, label %for.end.thread.i.fold.split
    i16 1024, label %for.end.thread.i.fold.split50
    i16 2048, label %for.end.thread.i.fold.split51
    i16 4096, label %for.end.thread.i.fold.split52
  ]

if.then2.for.end.thread.i_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.thread.i.fold.split:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i.fold.split50:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i.fold.split51:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i.fold.split52:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.thread.i.fold.split52, %for.end.thread.i.fold.split51, %for.end.thread.i.fold.split50, %for.end.thread.i.fold.split, %if.then2.for.end.thread.i_crit_edge
  %r.0.lcssa.ph.i = phi i32 [ 0, %if.then2.for.end.thread.i_crit_edge ], [ 1, %for.end.thread.i.fold.split ], [ 2, %for.end.thread.i.fold.split50 ], [ 3, %for.end.thread.i.fold.split51 ], [ 4, %for.end.thread.i.fold.split52 ]
  %arrayidx104.i = getelementptr %struct.ms5611_osr, ptr @ms5611_avail_temp_osr, i32 %r.0.lcssa.ph.i
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %7 = trunc i32 %val to i16
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %7, label %if.then6.cleanup_crit_edge [
    i16 256, label %if.then6.for.end.thread.i46_crit_edge
    i16 512, label %for.end.thread.i46.fold.split
    i16 1024, label %for.end.thread.i46.fold.split53
    i16 2048, label %for.end.thread.i46.fold.split54
    i16 4096, label %for.end.thread.i46.fold.split55
  ]

if.then6.for.end.thread.i46_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i46

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.thread.i46.fold.split:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i46

for.end.thread.i46.fold.split53:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i46

for.end.thread.i46.fold.split54:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i46

for.end.thread.i46.fold.split55:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i46

for.end.thread.i46:                               ; preds = %for.end.thread.i46.fold.split55, %for.end.thread.i46.fold.split54, %for.end.thread.i46.fold.split53, %for.end.thread.i46.fold.split, %if.then6.for.end.thread.i46_crit_edge
  %r.0.lcssa.ph.i44 = phi i32 [ 0, %if.then6.for.end.thread.i46_crit_edge ], [ 1, %for.end.thread.i46.fold.split ], [ 2, %for.end.thread.i46.fold.split53 ], [ 3, %for.end.thread.i46.fold.split54 ], [ 4, %for.end.thread.i46.fold.split55 ]
  %arrayidx104.i45 = getelementptr %struct.ms5611_osr, ptr @ms5611_avail_pressure_osr, i32 %r.0.lcssa.ph.i44
  br label %if.end9

if.end9:                                          ; preds = %for.end.thread.i46, %for.end.thread.i
  %osr.0 = phi ptr [ %arrayidx104.i, %for.end.thread.i ], [ %arrayidx104.i45, %for.end.thread.i46 ]
  %tobool.not = icmp eq ptr %osr.0, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  %call12 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp17 = icmp eq i32 %10, 9
  %pressure_osr = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 2
  %temp_osr = getelementptr inbounds %struct.ms5611_state, ptr %1, i32 0, i32 3
  %pressure_osr.sink = select i1 %cmp17, ptr %temp_osr, ptr %pressure_osr
  %11 = ptrtoint ptr %pressure_osr.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %osr.0, ptr %pressure_osr.sink, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @ms5611_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 435, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 456, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ms5611_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @ms5611_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 462, i32 3}
!13 = !{ptr @ms5611_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ms5611_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_ms5611_probe, !16, !"__ksymtab_ms5611_probe", i1 false, i1 false}
!16 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 474, i32 1}
!17 = !{ptr @__ksymtab_ms5611_remove, !18, !"__ksymtab_ms5611_remove", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 482, i32 1}
!19 = !{ptr @__UNIQUE_ID_author288, !20, !"__UNIQUE_ID_author288", i1 false, i1 false}
!20 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 484, i32 1}
!21 = !{ptr @__UNIQUE_ID_description289, !22, !"__UNIQUE_ID_description289", i1 false, i1 false}
!22 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 485, i32 1}
!23 = !{ptr @__UNIQUE_ID_file290, !24, !"__UNIQUE_ID_file290", i1 false, i1 false}
!24 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 486, i32 1}
!25 = !{ptr @__UNIQUE_ID_license291, !24, !"__UNIQUE_ID_license291", i1 false, i1 false}
!26 = !{ptr @chip_info_tbl, !27, !"chip_info_tbl", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 345, i32 32}
!28 = !{ptr @ms5611_avail_temp_osr, !29, !"ms5611_avail_temp_osr", i1 false, i1 false}
!29 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 35, i32 32}
!30 = !{ptr @ms5611_avail_pressure_osr, !31, !"ms5611_avail_pressure_osr", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 27, i32 32}
!32 = !{ptr @ms5611_info, !33, !"ms5611_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 384, i32 30}
!34 = !{ptr @ms5611_attribute_group, !35, !"ms5611_attribute_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 52, i32 37}
!36 = !{ptr @ms5611_attributes, !37, !"ms5611_attributes", i1 false, i1 false}
!37 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 47, i32 26}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 45, i32 8}
!40 = !{ptr @iio_const_attr_oversampling_ratio_available, !39, !"iio_const_attr_oversampling_ratio_available", i1 false, i1 false}
!41 = !{ptr @ms5611_show_osr, !42, !"ms5611_show_osr", i1 false, i1 false}
!42 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 43, i32 19}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 112, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ms5611_read_temp_and_pressure._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ms5611_read_temp_and_pressure._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ms5611_channels, !49, !"ms5611_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 354, i32 35}
!50 = !{ptr @ms5611_scan_masks, !51, !"ms5611_scan_masks", i1 false, i1 false}
!51 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 343, i32 28}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 396, i32 54}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 402, i32 3}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ms5611_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ms5611_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 200, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ms5611_reset._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ms5611_reset._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 90, i32 4}
!66 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ms5611_read_prom._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ms5611_read_prom._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/pressure/ms5611_core.c", i32 97, i32 3}
!71 = !{ptr @ms5611_read_prom._entry.19, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ms5611_read_prom._entry_ptr.21, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
!83 = !{!"auto-init"}
