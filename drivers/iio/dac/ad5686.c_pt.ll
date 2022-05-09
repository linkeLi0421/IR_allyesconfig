; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5686.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5686.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ad5686_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad5686_probe\09\09\09\09"
module asm "\09.long\09__crc_ad5686_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad5686_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad5686_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad5686_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ad5686_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_ad5686_remove\09\09\09\09"
module asm "\09.long\09__crc_ad5686_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad5686_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ad5686_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ad5686_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ad5686_chip_info = type { i16, i32, ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.ad5686_state = type { ptr, ptr, ptr, i16, i32, i32, ptr, ptr, i8, %struct.mutex, [3 x %union.anon.85], [116 x i8] }
%union.anon.85 = type { i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@ad5686_chip_info_tbl = internal constant { [30 x %struct.ad5686_chip_info], [96 x i8] } { [30 x %struct.ad5686_chip_info] [%struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5310r_channels, i32 0 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5311r_channels, i32 3 }, %struct.ad5686_chip_info { i16 2500, i32 2, ptr @ad5338r_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 8, ptr @ad5672_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 8, ptr @ad5672_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 16, ptr @ad5674r_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 16, ptr @ad5674r_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 8, ptr @ad5676_channels, i32 2 }, %struct.ad5686_chip_info { i16 0, i32 8, ptr @ad5676_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 8, ptr @ad5676_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 16, ptr @ad5679r_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 16, ptr @ad5679r_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5691r_channels, i32 1 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5692r_channels, i32 1 }, %struct.ad5686_chip_info { i16 0, i32 1, ptr @ad5693_channels, i32 1 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5693_channels, i32 1 }, %struct.ad5686_chip_info { i16 0, i32 4, ptr @ad5684_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 4, ptr @ad5684_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 4, ptr @ad5685r_channels, i32 2 }, %struct.ad5686_chip_info { i16 0, i32 4, ptr @ad5686_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 4, ptr @ad5686_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5691r_channels, i32 3 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5692r_channels, i32 3 }, %struct.ad5686_chip_info { i16 0, i32 1, ptr @ad5693_channels, i32 3 }, %struct.ad5686_chip_info { i16 2500, i32 1, ptr @ad5693_channels, i32 3 }, %struct.ad5686_chip_info { i16 0, i32 4, ptr @ad5684_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 4, ptr @ad5684_channels, i32 2 }, %struct.ad5686_chip_info zeroinitializer, %struct.ad5686_chip_info { i16 0, i32 4, ptr @ad5686_channels, i32 2 }, %struct.ad5686_chip_info { i16 2500, i32 4, ptr @ad5686_channels, i32 2 }], [96 x i8] zeroinitializer }, align 32
@ad5686_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5686_read_raw, ptr null, ptr null, ptr @ad5686_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5686_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_ad5686_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad5686_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad5686_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad5686_probe to i32), ptr @__kstrtab_ad5686_probe, ptr @__kstrtabns_ad5686_probe }, section "___ksymtab_gpl+ad5686_probe", align 4
@__kstrtab_ad5686_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad5686_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ad5686_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad5686_remove to i32), ptr @__kstrtab_ad5686_remove, ptr @__kstrtabns_ad5686_remove }, section "___ksymtab_gpl+ad5686_remove", align 4
@__UNIQUE_ID_author288 = internal constant [63 x i8] c"ad5686.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [51 x i8] c"ad5686.description=Analog Devices AD5686/85/84 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [35 x i8] c"ad5686.file=drivers/iio/dac/ad5686\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [22 x i8] c"ad5686.license=GPL v2\00", section ".modinfo", align 1
@ad5310r_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5311r_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5338r_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5672_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5674r_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [352 x i8] zeroinitializer }, align 32
@ad5676_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5679r_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [352 x i8] zeroinitializer }, align 32
@ad5691r_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5692r_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5693_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5684_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ad5685r_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ad5686_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 8, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5686_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ad5686_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.2, i32 0, ptr @ad5686_read_dac_powerdown, ptr @ad5686_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5686_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.4, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5686_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ad5686_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5686_powerdown_modes, i32 3, ptr @ad5686_set_powerdown_mode, ptr @ad5686_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5686_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1kohm_to_gnd\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 465, i32 45 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"ad5686_chip_info_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 273, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"ad5686_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 174, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 495, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ad5310r_channels\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 259, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"ad5311r_channels\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 260, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"ad5338r_channels\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 261, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"ad5672_channels\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 262, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"ad5674r_channels\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 263, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ad5676_channels\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 264, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"ad5679r_channels\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 265, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"ad5691r_channels\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 271, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"ad5692r_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 270, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"ad5693_channels\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 269, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"ad5684_channels\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 266, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"ad5685r_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 267, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"ad5686_channels\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 268, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"ad5686_ext_info\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 179, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 181, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 186, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"ad5686_powerdown_mode_enum\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 48, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 187, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 60, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"ad5686_powerdown_modes\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 22, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 23, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 24, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [28 x i8] c"../drivers/iio/dac/ad5686.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 25, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_ad5686_probe, ptr @__ksymtab_ad5686_remove, ptr @.str, ptr @ad5686_chip_info_tbl, ptr @ad5686_info, ptr @ad5686_probe.__key, ptr @.str.1, ptr @ad5310r_channels, ptr @ad5311r_channels, ptr @ad5338r_channels, ptr @ad5672_channels, ptr @ad5674r_channels, ptr @ad5676_channels, ptr @ad5679r_channels, ptr @ad5691r_channels, ptr @ad5692r_channels, ptr @ad5693_channels, ptr @ad5684_channels, ptr @ad5685r_channels, ptr @ad5686_channels, ptr @ad5686_ext_info, ptr @.str.2, ptr @.str.3, ptr @ad5686_powerdown_mode_enum, ptr @.str.4, ptr @.str.5, ptr @ad5686_powerdown_modes, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_chip_info_tbl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5310r_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5311r_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5338r_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5672_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5674r_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5676_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5679r_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5691r_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5692r_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5693_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5684_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5685r_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5686_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad5686_probe(ptr noundef %dev, i32 noundef %chip_type, ptr noundef %name, ptr noundef %write, ptr noundef %read) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %1, align 128
  %write3 = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %write3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %write, ptr %write3, align 8
  %read4 = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %read4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %read, ptr %read4, align 4
  %call5 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str) #5
  %reg = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %reg, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.thread, label %if.then8

if.end18.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx122 = getelementptr [30 x %struct.ad5686_chip_info], ptr @ad5686_chip_info_tbl, i32 0, i32 %chip_type
  %chip_info123 = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %chip_info123 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx122, ptr %chip_info123, align 4
  br label %if.else

if.then8:                                         ; preds = %if.end
  %call10 = tail call i32 @regulator_enable(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 8
  %call14 = tail call i32 @regulator_get_voltage(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.error_disable_reg_crit_edge, label %if.end18

if.end12.error_disable_reg_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_disable_reg

if.end18:                                         ; preds = %if.end12
  %arrayidx = getelementptr [30 x %struct.ad5686_chip_info], ptr @ad5686_chip_info_tbl, i32 0, i32 %chip_type
  %chip_info = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool19.not = icmp eq i32 %call14, 0
  br i1 %tobool19.not, label %if.end18.if.else_crit_edge, label %if.then20

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %div132 = udiv i32 %call14, 1000
  %conv = trunc i32 %div132 to i16
  br label %if.end23

if.else:                                          ; preds = %if.end18.if.else_crit_edge, %if.end18.thread
  %chip_info129 = phi ptr [ %chip_info123, %if.end18.thread ], [ %chip_info, %if.end18.if.else_crit_edge ]
  %arrayidx127 = phi ptr [ %arrayidx122, %if.end18.thread ], [ %arrayidx, %if.end18.if.else_crit_edge ]
  %11 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx127, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %.sink = phi i16 [ %12, %if.else ], [ %conv, %if.then20 ]
  %tobool19.not130 = phi i1 [ true, %if.else ], [ false, %if.then20 ]
  %chip_info128 = phi ptr [ %chip_info129, %if.else ], [ %chip_info, %if.then20 ]
  %voltage_uv.0125 = phi i32 [ 0, %if.else ], [ %call14, %if.then20 ]
  %vref_mv22 = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %vref_mv22 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink, ptr %vref_mv22, align 4
  %14 = ptrtoint ptr %chip_info128 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_info128, align 4
  %num_channels133 = getelementptr inbounds %struct.ad5686_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_channels133 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25134.not = icmp eq i32 %17, 0
  br i1 %cmp25134.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %pwr_down_mode = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.0135, 1
  %shl = shl nuw i32 1, %mul
  %18 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwr_down_mode, align 4
  %or = or i32 %19, %shl
  store i32 %or, ptr %pwr_down_mode, align 4
  %inc = add nuw i32 %i.0135, 1
  %20 = ptrtoint ptr %chip_info128 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip_info128, align 4
  %num_channels = getelementptr inbounds %struct.ad5686_chip_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels, align 4
  %cmp25 = icmp ult i32 %inc, %23
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end23.for.end_crit_edge
  %name27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %name, ptr %name27, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ad5686_info, ptr %info, align 8
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %call, align 8
  %27 = ptrtoint ptr %chip_info128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_info128, align 4
  %channels = getelementptr inbounds %struct.ad5686_chip_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channels, align 4
  %channels29 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %31 = ptrtoint ptr %channels29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %channels29, align 8
  %32 = load ptr, ptr %chip_info128, align 4
  %num_channels31 = getelementptr inbounds %struct.ad5686_chip_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %num_channels31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels31, align 4
  %num_channels32 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %35 = ptrtoint ptr %num_channels32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_channels32, align 4
  %lock = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5686_probe.__key) #5
  %36 = ptrtoint ptr %chip_info128 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_info128, align 4
  %regmap_type = getelementptr inbounds %struct.ad5686_chip_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %regmap_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regmap_type, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %for.end.error_disable_reg_crit_edge [
    i32 0, label %for.end.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb35
    i32 2, label %for.end.sw.epilog_crit_edge
    i32 3, label %sw.bb41
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.end.sw.epilog.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

for.end.error_disable_reg_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_disable_reg

sw.bb35:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb41, %sw.bb35, %for.end.sw.epilog.sink.split_crit_edge
  %ref_bit_msk.0.ph = phi i32 [ 4096, %sw.bb35 ], [ 4096, %sw.bb41 ], [ 256, %for.end.sw.epilog.sink.split_crit_edge ]
  %use_internal_vref44 = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 8
  %frombool45 = zext i1 %tobool19.not130 to i8
  %41 = ptrtoint ptr %use_internal_vref44 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool45, ptr %use_internal_vref44, align 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end.sw.epilog_crit_edge
  %ref_bit_msk.0 = phi i32 [ 0, %for.end.sw.epilog_crit_edge ], [ %ref_bit_msk.0.ph, %sw.epilog.sink.split ]
  %cmd.0 = phi i8 [ 7, %for.end.sw.epilog_crit_edge ], [ 4, %sw.epilog.sink.split ]
  %or46 = or i32 %ref_bit_msk.0, %voltage_uv.0125
  %42 = ptrtoint ptr %write3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or46)
  %tobool48 = icmp ne i32 %or46, 0
  %conv51 = zext i1 %tobool48 to i16
  %call52 = tail call i32 %43(ptr noundef %1, i8 noundef zeroext %cmd.0, i8 noundef zeroext 0, i16 noundef zeroext %conv51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %sw.epilog.error_disable_reg_crit_edge

sw.epilog.error_disable_reg_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_disable_reg

if.end55:                                         ; preds = %sw.epilog
  %call56 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %if.end55.error_disable_reg_crit_edge

if.end55.error_disable_reg_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_disable_reg

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

error_disable_reg:                                ; preds = %if.end55.error_disable_reg_crit_edge, %sw.epilog.error_disable_reg_crit_edge, %for.end.error_disable_reg_crit_edge, %if.end12.error_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call52, %sw.epilog.error_disable_reg_crit_edge ], [ %call56, %if.end55.error_disable_reg_crit_edge ], [ %call14, %if.end12.error_disable_reg_crit_edge ], [ -22, %for.end.error_disable_reg_crit_edge ]
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg, align 8
  %cmp.i120 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %error_disable_reg.cleanup_crit_edge, label %if.then62

error_disable_reg.cleanup_crit_edge:              ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then62:                                        ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 @regulator_disable(ptr noundef %45) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %error_disable_reg.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ %ret.0, %if.then62 ], [ %ret.0, %error_disable_reg.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ad5686_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %reg = getelementptr inbounds %struct.ad5686_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 8
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5686_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mask = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwr_down_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down_mask, align 16
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %mul = shl i32 %5, 1
  %shl = shl i32 3, %mul
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %lnot.ext) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5686_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %readin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readin) #5
  %0 = ptrtoint ptr %readin to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %readin, align 1, !annotation !75
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %readin) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %readin, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel4, align 4
  %mul5 = shl i32 %6, 1
  %shl6 = shl i32 3, %mul5
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pwr_down_mask = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %pwr_down_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_down_mask, align 16
  %or = or i32 %shl6, %8
  store i32 %or, ptr %pwr_down_mask, align 16
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl6, -1
  %pwr_down_mask7 = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %pwr_down_mask7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pwr_down_mask7, align 16
  %and = and i32 %10, %neg
  store i32 %and, ptr %pwr_down_mask7, align 16
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %chip_info = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info, align 4
  %regmap_type = getelementptr inbounds %struct.ad5686_chip_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %regmap_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regmap_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %14, label %if.end8.cleanup_crit_edge [
    i32 0, label %if.end8.sw.epilog_crit_edge
    i32 1, label %sw.bb9
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %channel11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %cmp = icmp sgt i32 %17, 7
  %spec.select = select i1 %cmp, i8 8, i8 0
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb10, %sw.bb9, %if.end8.sw.epilog_crit_edge
  %ref_bit_msk.0 = phi i32 [ 4096, %sw.bb14 ], [ 4096, %sw.bb9 ], [ 256, %if.end8.sw.epilog_crit_edge ], [ 0, %sw.bb10 ]
  %shift.0 = phi i32 [ 13, %sw.bb14 ], [ 13, %sw.bb9 ], [ 9, %if.end8.sw.epilog_crit_edge ], [ 0, %sw.bb10 ]
  %address.0 = phi i8 [ 0, %sw.bb14 ], [ 0, %sw.bb9 ], [ 0, %if.end8.sw.epilog_crit_edge ], [ %spec.select, %sw.bb10 ]
  %pwr_down_mask15 = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 4
  %18 = ptrtoint ptr %pwr_down_mask15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwr_down_mask15, align 16
  %pwr_down_mode = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 5
  %20 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwr_down_mode, align 4
  %and16 = and i32 %21, %19
  %shl17 = shl i32 %and16, %shift.0
  %use_internal_vref = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 8
  %22 = ptrtoint ptr %use_internal_vref to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_internal_vref, align 32, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  %or20 = select i1 %tobool18.not, i32 %ref_bit_msk.0, i32 0
  %val.0 = or i32 %or20, %shl17
  %write = getelementptr inbounds %struct.ad5686_state, ptr %2, i32 0, i32 6
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 8
  %26 = shl nuw nsw i8 %address.0, 1
  %mul23 = zext i8 %26 to i32
  %shr = lshr i32 %val.0, %mul23
  %conv24 = trunc i32 %shr to i16
  %call25 = call i32 %25(ptr noundef %2, i8 noundef zeroext 4, i8 noundef zeroext %address.0, i16 noundef zeroext %conv24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %cond = select i1 %tobool26.not, i32 %len, i32 %call25
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readin) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5686_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = shl i32 %3, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %pwr_down_mode = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwr_down_mode, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %pwr_down_mode, align 4
  %add = add i32 %mode, 1
  %6 = load i32, ptr %channel, align 4
  %mul2 = shl i32 %6, 1
  %shl3 = shl i32 %add, %mul2
  %or = or i32 %shl3, %and
  store i32 %or, ptr %pwr_down_mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5686_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mode = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down_mode, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %mul = shl i32 %5, 1
  %shr = lshr i32 %3, %mul
  %and = and i32 %shr, 3
  %sub = add nsw i32 %and, -1
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5686_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %read = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %conv = trunc i32 %6 to i8
  %call1 = tail call i32 %4(ptr noundef %1, i8 noundef zeroext %conv) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 1
  %conv4 = zext i8 %8 to i32
  %shr26 = lshr i32 %call1, %conv4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %realbits, align 1
  %conv6 = zext i8 %10 to i32
  %sub7 = sub nsw i32 32, %conv6
  %shr8 = lshr i32 -1, %sub7
  %and9 = and i32 %shr8, %shr26
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vref_mv = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vref_mv, align 4
  %conv11 = zext i16 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv11, ptr %val, align 4
  %realbits13 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %realbits13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %realbits13, align 1
  %conv14 = zext i8 %16 to i32
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv14, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb10 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5686_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp = icmp slt i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %write = getelementptr inbounds %struct.ad5686_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %conv4 = trunc i32 %7 to i8
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %9 to i32
  %shl7 = shl i32 %val, %conv6
  %conv8 = trunc i32 %shl7 to i16
  %call9 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %conv4, i16 noundef zeroext %conv8) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5686.c", i32 465, i32 45}
!2 = !{ptr @ad5686_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/iio/dac/ad5686.c", i32 495, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_ad5686_probe, !6, !"__ksymtab_ad5686_probe", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5686.c", i32 539, i32 1}
!7 = !{ptr @__ksymtab_ad5686_remove, !8, !"__ksymtab_ad5686_remove", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5686.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_author288, !10, !"__UNIQUE_ID_author288", i1 false, i1 false}
!10 = !{!"../drivers/iio/dac/ad5686.c", i32 552, i32 1}
!11 = !{ptr @__UNIQUE_ID_description289, !12, !"__UNIQUE_ID_description289", i1 false, i1 false}
!12 = !{!"../drivers/iio/dac/ad5686.c", i32 553, i32 1}
!13 = !{ptr @__UNIQUE_ID_file290, !14, !"__UNIQUE_ID_file290", i1 false, i1 false}
!14 = !{!"../drivers/iio/dac/ad5686.c", i32 554, i32 1}
!15 = !{ptr @__UNIQUE_ID_license291, !14, !"__UNIQUE_ID_license291", i1 false, i1 false}
!16 = !{ptr @ad5686_chip_info_tbl, !17, !"ad5686_chip_info_tbl", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5686.c", i32 273, i32 38}
!18 = !{ptr @ad5310r_channels, !19, !"ad5310r_channels", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5686.c", i32 259, i32 1}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ad5686.c", i32 181, i32 11}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/ad5686.c", i32 186, i32 2}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ad5686.c", i32 187, i32 2}
!26 = !{ptr @ad5686_ext_info, !27, !"ad5686_ext_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/ad5686.c", i32 179, i32 44}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/dac/ad5686.c", i32 60, i32 25}
!30 = !{ptr @ad5686_powerdown_mode_enum, !31, !"ad5686_powerdown_mode_enum", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5686.c", i32 48, i32 30}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5686.c", i32 23, i32 2}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/ad5686.c", i32 24, i32 2}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5686.c", i32 25, i32 2}
!38 = !{ptr @ad5686_powerdown_modes, !39, !"ad5686_powerdown_modes", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5686.c", i32 22, i32 27}
!40 = !{ptr @ad5311r_channels, !41, !"ad5311r_channels", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5686.c", i32 260, i32 1}
!42 = !{ptr @ad5338r_channels, !43, !"ad5338r_channels", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5686.c", i32 261, i32 1}
!44 = !{ptr @ad5672_channels, !45, !"ad5672_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5686.c", i32 262, i32 1}
!46 = !{ptr @ad5674r_channels, !47, !"ad5674r_channels", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5686.c", i32 263, i32 1}
!48 = !{ptr @ad5676_channels, !49, !"ad5676_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5686.c", i32 264, i32 1}
!50 = !{ptr @ad5679r_channels, !51, !"ad5679r_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5686.c", i32 265, i32 1}
!52 = !{ptr @ad5691r_channels, !53, !"ad5691r_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/dac/ad5686.c", i32 271, i32 1}
!54 = !{ptr @ad5692r_channels, !55, !"ad5692r_channels", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ad5686.c", i32 270, i32 1}
!56 = !{ptr @ad5693_channels, !57, !"ad5693_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/ad5686.c", i32 269, i32 1}
!58 = !{ptr @ad5684_channels, !59, !"ad5684_channels", i1 false, i1 false}
!59 = !{!"../drivers/iio/dac/ad5686.c", i32 266, i32 1}
!60 = !{ptr @ad5685r_channels, !61, !"ad5685r_channels", i1 false, i1 false}
!61 = !{!"../drivers/iio/dac/ad5686.c", i32 267, i32 1}
!62 = !{ptr @ad5686_channels, !63, !"ad5686_channels", i1 false, i1 false}
!63 = !{!"../drivers/iio/dac/ad5686.c", i32 268, i32 1}
!64 = !{ptr @ad5686_info, !65, !"ad5686_info", i1 false, i1 false}
!65 = !{!"../drivers/iio/dac/ad5686.c", i32 174, i32 30}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
