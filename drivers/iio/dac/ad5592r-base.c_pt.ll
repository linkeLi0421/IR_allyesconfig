; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5592r-base.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5592r-base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ad5592r_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad5592r_probe\09\09\09\09"
module asm "\09.long\09__crc_ad5592r_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad5592r_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad5592r_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad5592r_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ad5592r_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_ad5592r_remove\09\09\09\09"
module asm "\09.long\09__crc_ad5592r_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad5592r_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ad5592r_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ad5592r_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ad5592r_state = type { ptr, ptr, %struct.gpio_chip, %struct.mutex, %struct.mutex, i32, ptr, [2 x [2 x i32]], [8 x i16], i16, [8 x i8], [8 x i8], i8, i8, i8, i8, [38 x i8], i16, i16, [124 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.ad5592r_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad5592r_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5592r_read_raw, ptr null, ptr null, ptr @ad5592r_write_raw, ptr null, ptr @ad5592r_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5592r_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_ad5592r_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad5592r_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad5592r_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad5592r_probe to i32), ptr @__kstrtab_ad5592r_probe, ptr @__kstrtabns_ad5592r_probe }, section "___ksymtab_gpl+ad5592r_probe", align 4
@__kstrtab_ad5592r_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad5592r_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ad5592r_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad5592r_remove to i32), ptr @__kstrtab_ad5592r_remove, ptr @__kstrtabns_ad5592r_remove }, section "___ksymtab_gpl+ad5592r_remove", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"ad5592r_base.author=Paul Cercueil <paul.cercueil@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"ad5592r_base.description=Analog Devices AD5592R multi-channel converters\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"ad5592r_base.file=drivers/iio/dac/ad5592r-base\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"ad5592r_base.license=GPL v2\00", section ".modinfo", align 1
@ad5592r_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error while reading channel %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad5592r_read_raw\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/dac/ad5592r-base.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5592r_read_raw._entry_ptr = internal global ptr @ad5592r_read_raw._entry, section ".printk_index", align 4
@ad5592r_read_raw.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5592r_base\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel %u read: 0x%04hX\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,mode\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,off-state\00", [18 x i8] zeroinitializer }, align 32
@ad5592r_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.13, i32 1, ptr @ad5592r_show_scale_available, ptr null, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scale_available\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d.%09u %d.%09u\0A\00", [47 x i8] zeroinitializer }, align 32
@ad5592r_gpio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&st->gpio_lock\00", [17 x i8] zeroinitializer }, align 32
@ad5592r_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad5592r_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad5592r_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GPIO %d is reserved by alternate function\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad5592r_gpio_request\00", [43 x i8] zeroinitializer }, align 32
@ad5592r_gpio_request._entry_ptr = internal global ptr @ad5592r_gpio_request._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 605, i32 45 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"ad5592r_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 465, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 621, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 389, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 402, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 160, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 518, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 522, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 526, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"ad5592r_ext_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 483, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 485, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 478, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 145, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 147, i32 9 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [34 x i8] c"../drivers/iio/dac/ad5592r-base.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 120, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_ad5592r_probe, ptr @__ksymtab_ad5592r_remove, ptr @ad5592r_gpio_request._entry, ptr @ad5592r_gpio_request._entry_ptr, ptr @ad5592r_read_raw._entry, ptr @ad5592r_read_raw._entry_ptr, ptr @.str, ptr @ad5592r_info, ptr @ad5592r_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ad5592r_ext_info, ptr @.str.13, ptr @.str.14, ptr @ad5592r_gpio_init.__key, ptr @.str.15, ptr @ad5592r_gpio_init.lock_key, ptr @ad5592r_gpio_init.request_key, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_gpio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5592r_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad5592r_probe(ptr noundef %dev, ptr noundef %name, ptr noundef %ops) #0 align 64 {
entry:
  %reg.i105 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 768) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 128
  %ops3 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %ops3, align 32
  %num_channels = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %num_channels, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i, align 4
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str) #8
  %reg = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then7.if.end14_crit_edge, label %land.lhs.true

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then7
  %7 = ptrtoint ptr %call4 to i32
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.then7.if.end14_crit_edge
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %reg, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end
  %call17 = tail call i32 @regulator_enable(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.if.end21_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.end14
  %name22 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %name22, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ad5592r_info, ptr %info, align 8
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %lock = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5592r_probe.__key) #8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end21.ad5592r_get_vref.exit_crit_edge, label %if.then.i

if.end21.ad5592r_get_vref.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_get_vref.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef nonnull %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i99 = icmp slt i32 %call.i, 0
  %div.i = sdiv i32 %call.i, 1000
  %spec.select.i = select i1 %cmp.i99, i32 %call.i, i32 %div.i
  br label %ad5592r_get_vref.exit

ad5592r_get_vref.exit:                            ; preds = %if.then.i, %if.end21.ad5592r_get_vref.exit_crit_edge
  %retval.0.i = phi i32 [ 2500, %if.end21.ad5592r_get_vref.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %conv.i = sext i32 %retval.0.i to i64
  %mul.i = mul nsw i64 %conv.i, 1000000000
  %shr.i = ashr i64 %mul.i, 12
  %scale_avail.i = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 7
  %arrayidx1.i = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 0, i32 1
  %call.i100 = tail call i64 @div_s64_rem(i64 noundef %shr.i, i32 noundef 1000000000, ptr noundef %arrayidx1.i) #8
  %conv2.i = trunc i64 %call.i100 to i32
  %16 = ptrtoint ptr %scale_avail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv2.i, ptr %scale_avail.i, align 4
  %mul6.i = shl nsw i64 %shr.i, 1
  %arrayidx8.i = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1
  %arrayidx9.i = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %call10.i = tail call i64 @div_s64_rem(i64 noundef %mul6.i, i32 noundef 1000000000, ptr noundef %arrayidx9.i) #8
  %conv11.i = trunc i64 %call10.i to i32
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv11.i, ptr %arrayidx8.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %call.i101 = tail call ptr @devm_gpiod_get_optional(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef 3) #8
  %cmp.i.i = icmp ugt ptr %call.i101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ad5592r_reset.exit, label %if.end.i

if.end.i:                                         ; preds = %ad5592r_get_vref.exit
  %tobool.not.i103 = icmp eq ptr %call.i101, null
  br i1 %tobool.not.i103, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #8
  tail call void @gpiod_set_value(ptr noundef nonnull %call.i101, i32 noundef 1) #8
  br label %ad5592r_reset.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %21 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops3, align 32
  %reg_write.i = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_write.i, align 4
  %call4.i = tail call i32 %24(ptr noundef %1, i8 noundef zeroext 15, i16 noundef zeroext 3500) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %ad5592r_reset.exit.thread

ad5592r_reset.exit.thread:                        ; preds = %if.else.i, %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 53687000) #8
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %ops, i32 0, i32 2
  %26 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_write, align 4
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %cmp29 = icmp eq ptr %29, null
  %conv = select i1 %cmp29, i16 512, i16 0
  %call30 = tail call i32 %27(ptr noundef %1, i8 noundef zeroext 11, i16 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %ad5592r_reset.exit.thread.error_disable_reg_crit_edge

ad5592r_reset.exit.thread.error_disable_reg_crit_edge: ; preds = %ad5592r_reset.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg

ad5592r_reset.exit:                               ; preds = %ad5592r_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call.i101 to i32
  br label %error_disable_reg

if.end33:                                         ; preds = %ad5592r_reset.exit.thread
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %num_channels1.i = getelementptr inbounds %struct.ad5592r_state, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %num_channels1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i105) #8
  %35 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %reg.i105, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %tmp.i, align 4, !annotation !64
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 128
  %call2.i = tail call ptr @device_get_next_child_node(ptr noundef %38, ptr noundef null) #8
  %tobool.not139.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not139.i, label %if.end33.for.end.i_crit_edge, label %if.end33.for.body.i_crit_edge

if.end33.for.body.i_crit_edge:                    ; preds = %if.end33
  br label %for.body.i

if.end33.for.end.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end33.for.body.i_crit_edge
  %child.0140.i = phi ptr [ %call16.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end33.for.body.i_crit_edge ]
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0140.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %reg.i105, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %39 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp.i106 = icmp ugt i32 %40, 7
  br i1 %cmp.i106, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i107

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i107:                                      ; preds = %lor.lhs.false.i
  %call.i101.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0140.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool6.not.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %for.inc.critedge.i

if.then7.i:                                       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp.i, align 4
  %conv.i108 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg.i105, align 4
  %arrayidx.i = getelementptr %struct.ad5592r_state, ptr %32, i32 0, i32 10, i32 %44
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i108, ptr %arrayidx.i, align 1
  %call.i102.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0140.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  %46 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmp.i, align 4
  %conv12.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %reg.i105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg.i105, align 4
  %arrayidx13.i = getelementptr %struct.ad5592r_state, ptr %32, i32 0, i32 11, i32 %49
  %50 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  br label %for.inc.i

for.inc.critedge.i:                               ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0140.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.critedge.i, %if.then7.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %32, align 128
  %call16.i = call ptr @device_get_next_child_node(ptr noundef %52, ptr noundef nonnull %child.0140.i) #8
  %tobool.not.i109 = icmp eq ptr %call16.i, null
  br i1 %tobool.not.i109, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end33.for.end.i_crit_edge
  %mul.i110 = shl i32 %34, 1
  %add.i = or i32 %mul.i110, 1
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 88) #8
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %for.end.i.ad5592r_alloc_channels.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !65

for.end.i.ad5592r_alloc_channels.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_alloc_channels.exit.thread

devm_kcalloc.exit.i:                              ; preds = %for.end.i
  %55 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %32, align 128
  %57 = extractvalue { i32, i1 } %53, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef %57, i32 noundef 3520) #8
  %tobool19.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool19.not.i, label %devm_kcalloc.exit.i.ad5592r_alloc_channels.exit.thread_crit_edge, label %for.cond22.preheader.i

devm_kcalloc.exit.i.ad5592r_alloc_channels.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_alloc_channels.exit.thread

for.cond22.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp23142.not.i = icmp eq i32 %34, 0
  br i1 %cmp23142.not.i, label %for.cond22.preheader.i.if.end37_crit_edge, label %for.cond22.preheader.i.for.body25.i_crit_edge

for.cond22.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body25.i

for.cond22.preheader.i.if.end37_crit_edge:        ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.body25.i:                                     ; preds = %for.inc38.i.for.body25.i_crit_edge, %for.cond22.preheader.i.for.body25.i_crit_edge
  %curr_channel.0145.i = phi i32 [ %curr_channel.1.i, %for.inc38.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %i.0143.i = phi i32 [ %inc39.i, %for.inc38.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.ad5592r_state, ptr %32, i32 0, i32 10, i32 %i.0143.i
  %58 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx27.i, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i8 %59, label %for.body25.i.for.inc38.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 1, label %sw.bb30.i
    i8 3, label %sw.bb33.i
  ]

for.body25.i.for.inc38.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.i

sw.bb.i:                                          ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i
  %61 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx29.i, align 4
  %indexed.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 19
  %62 = ptrtoint ptr %indexed.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i = load i8, ptr %indexed.i.i, align 4
  %bf.set4.i.i = or i8 %bf.load.i.i, 96
  store i8 %bf.set4.i.i, ptr %indexed.i.i, align 4
  br label %for.inc38.sink.split.i

sw.bb30.i:                                        ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i
  %63 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx31.i, align 4
  %indexed.i104.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 19
  %64 = ptrtoint ptr %indexed.i104.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i105.i = load i8, ptr %indexed.i104.i, align 4
  %bf.set.i106.i = and i8 %bf.load.i105.i, -97
  %bf.set4.i107.i = or i8 %bf.set.i106.i, 64
  store i8 %bf.set4.i107.i, ptr %indexed.i104.i, align 4
  br label %for.inc38.sink.split.i

sw.bb33.i:                                        ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx34.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i
  %65 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx34.i, align 4
  %indexed.i115.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 19
  %66 = ptrtoint ptr %indexed.i115.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i116.i = load i8, ptr %indexed.i115.i, align 4
  %bf.set4.i118.i = or i8 %bf.load.i116.i, 96
  store i8 %bf.set4.i118.i, ptr %indexed.i115.i, align 4
  %channel.i119.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 1
  %67 = ptrtoint ptr %channel.i119.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.0143.i, ptr %channel.i119.i, align 4
  %info_mask_separate.i120.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 6
  %68 = ptrtoint ptr %info_mask_separate.i120.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %info_mask_separate.i120.i, align 4
  %info_mask_shared_by_type.i121.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 8
  %69 = ptrtoint ptr %info_mask_shared_by_type.i121.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4, ptr %info_mask_shared_by_type.i121.i, align 4
  %scan_type.i122.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 5
  %70 = ptrtoint ptr %scan_type.i122.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 117, ptr %scan_type.i122.i, align 4
  %realbits.i123.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 5, i32 1
  %71 = ptrtoint ptr %realbits.i123.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 12, ptr %realbits.i123.i, align 1
  %storagebits.i124.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 5, i32 2
  %72 = ptrtoint ptr %storagebits.i124.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 16, ptr %storagebits.i124.i, align 2
  %ext_info.i125.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.i, i32 16
  %73 = ptrtoint ptr %ext_info.i125.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ad5592r_ext_info, ptr %ext_info.i125.i, align 4
  %inc35.i = add i32 %curr_channel.0145.i, 1
  %arrayidx36.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %inc35.i
  %74 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arrayidx36.i, align 4
  %indexed.i126.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %inc35.i, i32 19
  %75 = ptrtoint ptr %indexed.i126.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i127.i = load i8, ptr %indexed.i126.i, align 4
  %bf.set.i128.i = and i8 %bf.load.i127.i, -97
  %bf.set4.i129.i = or i8 %bf.set.i128.i, 64
  store i8 %bf.set4.i129.i, ptr %indexed.i126.i, align 4
  br label %for.inc38.sink.split.i

for.inc38.sink.split.i:                           ; preds = %sw.bb33.i, %sw.bb30.i, %sw.bb.i
  %curr_channel.0145.sink151.i = phi i32 [ %curr_channel.0145.i, %sw.bb.i ], [ %curr_channel.0145.i, %sw.bb30.i ], [ %inc35.i, %sw.bb33.i ]
  %.sink.i = phi i32 [ 1, %sw.bb.i ], [ 1, %sw.bb30.i ], [ 2, %sw.bb33.i ]
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 1
  %76 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %i.0143.i, ptr %channel.i.i, align 4
  %info_mask_separate.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 6
  %77 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %info_mask_separate.i.i, align 4
  %info_mask_shared_by_type.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 8
  %78 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %info_mask_shared_by_type.i.i, align 4
  %scan_type.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 5
  %79 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 117, ptr %scan_type.i.i, align 4
  %realbits.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 5, i32 1
  %80 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 12, ptr %realbits.i.i, align 1
  %storagebits.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 5, i32 2
  %81 = ptrtoint ptr %storagebits.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 16, ptr %storagebits.i.i, align 2
  %ext_info.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0145.sink151.i, i32 16
  %82 = ptrtoint ptr %ext_info.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ad5592r_ext_info, ptr %ext_info.i.i, align 4
  %inc.i = add i32 %.sink.i, %curr_channel.0145.i
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.inc38.sink.split.i, %for.body25.i.for.inc38.i_crit_edge
  %curr_channel.1.i = phi i32 [ %curr_channel.0145.i, %for.body25.i.for.inc38.i_crit_edge ], [ %inc.i, %for.inc38.sink.split.i ]
  %inc39.i = add nuw i32 %i.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc39.i, %34
  br i1 %exitcond.not.i, label %for.inc38.i.if.end37_crit_edge, label %for.inc38.i.for.body25.i_crit_edge

for.inc38.i.for.body25.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

for.inc38.i.if.end37_crit_edge:                   ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

ad5592r_alloc_channels.exit.thread:               ; preds = %devm_kcalloc.exit.i.ad5592r_alloc_channels.exit.thread_crit_edge, %for.end.i.ad5592r_alloc_channels.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i105) #8
  br label %error_disable_reg

if.end37:                                         ; preds = %for.inc38.i.if.end37_crit_edge, %for.cond22.preheader.i.if.end37_crit_edge
  %curr_channel.0.lcssa.i = phi i32 [ 0, %for.cond22.preheader.i.if.end37_crit_edge ], [ %curr_channel.1.i, %for.inc38.i.if.end37_crit_edge ]
  %arrayidx41.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0.lcssa.i
  %83 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 9, ptr %arrayidx41.i, align 4
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0.lcssa.i, i32 1
  %84 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %channel.i, align 4
  %info_mask_separate.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %curr_channel.0.lcssa.i, i32 6
  %85 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 13, ptr %info_mask_separate.i, align 4
  %inc44.i = add i32 %curr_channel.0.lcssa.i, 1
  %num_channels45.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %86 = ptrtoint ptr %num_channels45.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc44.i, ptr %num_channels45.i, align 4
  %channels46.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %87 = ptrtoint ptr %channels46.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call5.i.i.i, ptr %channels46.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i105) #8
  %call38 = call fastcc i32 @ad5592r_set_channel_modes(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.error_reset_ch_modes_crit_edge

if.end37.error_reset_ch_modes_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_reset_ch_modes

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.error_reset_ch_modes_crit_edge

if.end41.error_reset_ch_modes_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_reset_ch_modes

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i32 @ad5592r_gpio_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %error_dev_unregister

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_dev_unregister:                             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @iio_device_unregister(ptr noundef nonnull %call) #8
  br label %error_reset_ch_modes

error_reset_ch_modes:                             ; preds = %error_dev_unregister, %if.end41.error_reset_ch_modes_crit_edge, %if.end37.error_reset_ch_modes_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.error_reset_ch_modes_crit_edge ], [ %call42, %if.end41.error_reset_ch_modes_crit_edge ], [ %call46, %error_dev_unregister ]
  %uglygep.i = getelementptr i8, ptr %1, i32 582
  %88 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %call.i112 = call fastcc i32 @ad5592r_set_channel_modes(ptr noundef %1) #8
  br label %error_disable_reg

error_disable_reg:                                ; preds = %error_reset_ch_modes, %ad5592r_alloc_channels.exit.thread, %ad5592r_reset.exit, %ad5592r_reset.exit.thread.error_disable_reg_crit_edge
  %ret.1 = phi i32 [ %30, %ad5592r_reset.exit ], [ %call30, %ad5592r_reset.exit.thread.error_disable_reg_crit_edge ], [ %ret.0, %error_reset_ch_modes ], [ -12, %ad5592r_alloc_channels.exit.thread ]
  %89 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg, align 4
  %tobool52.not = icmp eq ptr %90, null
  br i1 %tobool52.not, label %error_disable_reg.cleanup_crit_edge, label %if.then53

error_disable_reg.cleanup_crit_edge:              ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call i32 @regulator_disable(ptr noundef nonnull %90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %error_disable_reg.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.else.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %ret.1, %if.then53 ], [ %ret.1, %error_disable_reg.cleanup_crit_edge ], [ %7, %land.lhs.true.cleanup_crit_edge ]
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5592r_set_channel_modes(ptr noundef %st) unnamed_addr #0 align 64 {
entry:
  %read_back = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 6
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_back) #8
  %2 = ptrtoint ptr %read_back to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %read_back, align 2, !annotation !64
  %num_channels = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 5
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp163.not = icmp eq i32 %4, 0
  br i1 %cmp163.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %gpio_map = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 12
  %gpio_in = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 14
  %gpio_out42 = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 13
  %gpio_val = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %adc.0169 = phi i8 [ 0, %for.body.lr.ph ], [ %adc.1, %for.inc.for.body_crit_edge ]
  %dac.0168 = phi i8 [ 0, %for.body.lr.ph ], [ %dac.1, %for.inc.for.body_crit_edge ]
  %tristate.0167 = phi i8 [ 0, %for.body.lr.ph ], [ %tristate.1, %for.inc.for.body_crit_edge ]
  %pulldown.0166 = phi i8 [ 0, %for.body.lr.ph ], [ %pulldown.1, %for.inc.for.body_crit_edge ]
  %i.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ad5592r_state, ptr %st, i32 0, i32 10, i32 %i.0164
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %6, label %sw.default [
    i8 2, label %sw.bb
    i8 1, label %sw.bb4
    i8 3, label %sw.bb9
    i8 8, label %sw.bb18
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %i.0164
  %8 = trunc i32 %shl to i8
  %conv3 = or i8 %dac.0168, %8
  br label %for.inc

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl5 = shl nuw i32 1, %i.0164
  %9 = trunc i32 %shl5 to i8
  %conv8 = or i8 %adc.0169, %9
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl10 = shl nuw i32 1, %i.0164
  %10 = trunc i32 %shl10 to i8
  %conv13 = or i8 %dac.0168, %10
  %conv17 = or i8 %adc.0169, %10
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl19 = shl nuw i32 1, %i.0164
  %11 = ptrtoint ptr %gpio_map to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gpio_map, align 2
  %13 = trunc i32 %shl19 to i8
  %conv22 = or i8 %12, %13
  store i8 %conv22, ptr %gpio_map, align 2
  %14 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio_in, align 8
  %conv26 = or i8 %15, %13
  store i8 %conv26, ptr %gpio_in, align 8
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %arrayidx28 = getelementptr %struct.ad5592r_state, ptr %st, i32 0, i32 11, i32 %i.0164
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %17, label %sw.default51 [
    i8 3, label %sw.bb30
    i8 1, label %sw.bb35
    i8 2, label %sw.bb40
  ]

sw.bb30:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %shl31 = shl nuw i32 1, %i.0164
  %19 = trunc i32 %shl31 to i8
  %conv34 = or i8 %tristate.0167, %19
  br label %for.inc

sw.bb35:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %shl36 = shl nuw i32 1, %i.0164
  %20 = ptrtoint ptr %gpio_out42 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpio_out42, align 1
  %22 = trunc i32 %shl36 to i8
  %conv39 = or i8 %21, %22
  store i8 %conv39, ptr %gpio_out42, align 1
  br label %for.inc

sw.bb40:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %shl41 = shl nuw i32 1, %i.0164
  %23 = ptrtoint ptr %gpio_out42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpio_out42, align 1
  %25 = trunc i32 %shl41 to i8
  %conv45 = or i8 %24, %25
  store i8 %conv45, ptr %gpio_out42, align 1
  %26 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gpio_val, align 1
  %conv49 = or i8 %27, %25
  store i8 %conv49, ptr %gpio_val, align 1
  br label %for.inc

sw.default51:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %shl52 = shl nuw i32 1, %i.0164
  %28 = trunc i32 %shl52 to i8
  %conv55 = or i8 %pulldown.0166, %28
  br label %for.inc

for.inc:                                          ; preds = %sw.default51, %sw.bb40, %sw.bb35, %sw.bb30, %sw.bb18, %sw.bb9, %sw.bb4, %sw.bb
  %pulldown.1 = phi i8 [ %conv55, %sw.default51 ], [ %pulldown.0166, %sw.bb40 ], [ %pulldown.0166, %sw.bb35 ], [ %pulldown.0166, %sw.bb30 ], [ %pulldown.0166, %sw.bb18 ], [ %pulldown.0166, %sw.bb9 ], [ %pulldown.0166, %sw.bb4 ], [ %pulldown.0166, %sw.bb ]
  %tristate.1 = phi i8 [ %tristate.0167, %sw.default51 ], [ %tristate.0167, %sw.bb40 ], [ %tristate.0167, %sw.bb35 ], [ %conv34, %sw.bb30 ], [ %tristate.0167, %sw.bb18 ], [ %tristate.0167, %sw.bb9 ], [ %tristate.0167, %sw.bb4 ], [ %tristate.0167, %sw.bb ]
  %dac.1 = phi i8 [ %dac.0168, %sw.default51 ], [ %dac.0168, %sw.bb40 ], [ %dac.0168, %sw.bb35 ], [ %dac.0168, %sw.bb30 ], [ %dac.0168, %sw.bb18 ], [ %conv13, %sw.bb9 ], [ %dac.0168, %sw.bb4 ], [ %conv3, %sw.bb ]
  %adc.1 = phi i8 [ %adc.0169, %sw.default51 ], [ %adc.0169, %sw.bb40 ], [ %adc.0169, %sw.bb35 ], [ %adc.0169, %sw.bb30 ], [ %adc.0169, %sw.bb18 ], [ %conv17, %sw.bb9 ], [ %conv8, %sw.bb4 ], [ %adc.0169, %sw.bb ]
  %inc = add nuw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pulldown.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %pulldown.1, %for.inc.for.end_crit_edge ]
  %tristate.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %tristate.1, %for.inc.for.end_crit_edge ]
  %dac.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %dac.1, %for.inc.for.end_crit_edge ]
  %adc.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %adc.1, %for.inc.for.end_crit_edge ]
  %lock = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_write, align 4
  %conv57 = zext i8 %pulldown.0.lcssa to i16
  %call = tail call i32 %30(ptr noundef %st, i8 noundef zeroext 6, i16 noundef zeroext %conv57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.end.err_unlock_crit_edge

for.end.err_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end:                                           ; preds = %for.end
  %31 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_write, align 4
  %conv59 = zext i8 %tristate.0.lcssa to i16
  %call60 = tail call i32 %32(ptr noundef %st, i8 noundef zeroext 13, i16 noundef zeroext %conv59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end.err_unlock_crit_edge

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end63:                                         ; preds = %if.end
  %33 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_write, align 4
  %conv65 = zext i8 %dac.0.lcssa to i16
  %call66 = tail call i32 %34(ptr noundef %st, i8 noundef zeroext 5, i16 noundef zeroext %conv65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end63.err_unlock_crit_edge

if.end63.err_unlock_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end69:                                         ; preds = %if.end63
  %35 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_write, align 4
  %conv71 = zext i8 %adc.0.lcssa to i16
  %call72 = tail call i32 %36(ptr noundef %st, i8 noundef zeroext 4, i16 noundef zeroext %conv71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end69.err_unlock_crit_edge

if.end69.err_unlock_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end75:                                         ; preds = %if.end69
  %37 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_write, align 4
  %gpio_val77 = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 15
  %39 = ptrtoint ptr %gpio_val77 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gpio_val77, align 1
  %conv78 = zext i8 %40 to i16
  %call79 = tail call i32 %38(ptr noundef %st, i8 noundef zeroext 9, i16 noundef zeroext %conv78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end75.err_unlock_crit_edge

if.end75.err_unlock_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end82:                                         ; preds = %if.end75
  %41 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_write, align 4
  %gpio_out84 = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 13
  %43 = ptrtoint ptr %gpio_out84 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gpio_out84, align 1
  %conv85 = zext i8 %44 to i16
  %call86 = tail call i32 %42(ptr noundef %st, i8 noundef zeroext 8, i16 noundef zeroext %conv85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end82.err_unlock_crit_edge

if.end82.err_unlock_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end89:                                         ; preds = %if.end82
  %45 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_write, align 4
  %gpio_in91 = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 14
  %47 = ptrtoint ptr %gpio_in91 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %gpio_in91, align 8
  %conv92 = zext i8 %48 to i16
  %call93 = tail call i32 %46(ptr noundef %st, i8 noundef zeroext 10, i16 noundef zeroext %conv92) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end89.err_unlock_crit_edge

if.end89.err_unlock_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end96:                                         ; preds = %if.end89
  %reg_read = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_read, align 4
  %call97 = call i32 %50(ptr noundef %st, i8 noundef zeroext 4, ptr noundef nonnull %read_back) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true, label %if.end96.err_unlock_crit_edge

if.end96.err_unlock_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

land.lhs.true:                                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %read_back to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %read_back, align 2
  %53 = trunc i16 %52 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %adc.0.lcssa, i8 %53)
  %cmp101.not = icmp eq i8 %adc.0.lcssa, %53
  %spec.select = select i1 %cmp101.not, i32 0, i32 -5
  br label %err_unlock

err_unlock:                                       ; preds = %land.lhs.true, %if.end96.err_unlock_crit_edge, %if.end89.err_unlock_crit_edge, %if.end82.err_unlock_crit_edge, %if.end75.err_unlock_crit_edge, %if.end69.err_unlock_crit_edge, %if.end63.err_unlock_crit_edge, %if.end.err_unlock_crit_edge, %for.end.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %for.end.err_unlock_crit_edge ], [ %call60, %if.end.err_unlock_crit_edge ], [ %call66, %if.end63.err_unlock_crit_edge ], [ %call72, %if.end69.err_unlock_crit_edge ], [ %call79, %if.end75.err_unlock_crit_edge ], [ %call86, %if.end82.err_unlock_crit_edge ], [ %call93, %if.end89.err_unlock_crit_edge ], [ %call97, %if.end96.err_unlock_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_back) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5592r_gpio_init(ptr noundef %st) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_map = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 12
  %0 = ptrtoint ptr %gpio_map to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_map, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %gpiochip = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2
  %8 = ptrtoint ptr %gpiochip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %gpiochip, align 8
  %base = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 19
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 20
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %ngpio, align 8
  %parent = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %parent, align 8
  %can_sleep = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 23
  %12 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %can_sleep, align 8
  %direction_input = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ad5592r_gpio_direction_input, ptr %direction_input, align 8
  %direction_output = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ad5592r_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ad5592r_gpio_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ad5592r_gpio_set, ptr %set, align 8
  %request = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ad5592r_gpio_request, ptr %request, align 4
  %owner = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 8
  %gpio_lock = getelementptr inbounds %struct.ad5592r_state, ptr %st, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %gpio_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ad5592r_gpio_init.__key) #8
  %call13 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpiochip, ptr noundef %st, ptr noundef nonnull @ad5592r_gpio_init.lock_key, ptr noundef nonnull @ad5592r_gpio_init.request_key) #8
  br label %return

return:                                           ; preds = %dev_name.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call13, %dev_name.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ad5592r_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %uglygep.i = getelementptr i8, ptr %3, i32 582
  %4 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %uglygep.i, align 1
  %call.i = tail call fastcc i32 @ad5592r_set_channel_modes(ptr noundef %3) #8
  %gpio_map.i = getelementptr inbounds %struct.ad5592r_state, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %gpio_map.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpio_map.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.ad5592r_gpio_cleanup.exit_crit_edge, label %if.then.i

entry.ad5592r_gpio_cleanup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_gpio_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpiochip.i = getelementptr inbounds %struct.ad5592r_state, ptr %3, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %gpiochip.i) #8
  br label %ad5592r_gpio_cleanup.exit

ad5592r_gpio_cleanup.exit:                        ; preds = %if.then.i, %entry.ad5592r_gpio_cleanup.exit_crit_edge
  %reg = getelementptr inbounds %struct.ad5592r_state, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %ad5592r_gpio_cleanup.exit.if.end_crit_edge, label %if.then

ad5592r_gpio_cleanup.exit.if.end_crit_edge:       ; preds = %ad5592r_gpio_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ad5592r_gpio_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %ad5592r_gpio_cleanup.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr noundef %val2, i32 noundef %m) #0 align 64 {
entry:
  %read_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_val) #8
  %2 = ptrtoint ptr %read_val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %read_val, align 2, !annotation !64
  %3 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb31
    i32 3, label %sw.bb69
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %output, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %lock = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 32
  %read_adc = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read_adc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_adc, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %call1 = call i32 %9(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %read_val) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %read_val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %read_val, align 2
  %14 = lshr i16 %13, 12
  %15 = zext i16 %14 to i32
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel, align 4
  %18 = xor i32 %17, %15
  %19 = and i32 %18, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %17) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and12 = and i16 %13, 4095
  %22 = ptrtoint ptr %read_val to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %and12, ptr %read_val, align 2
  br label %do.body18

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %channel15 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %23 = ptrtoint ptr %channel15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel15, align 4
  %arrayidx = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 8, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %27 = ptrtoint ptr %read_val to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %read_val, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %do.body18

do.body18:                                        ; preds = %if.else, %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5592r_read_raw.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad5592r_read_raw, %if.then23)) #8
          to label %do.end29 [label %if.then23], !srcloc !66

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 128
  %channel25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %30 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel25, align 4
  %32 = ptrtoint ptr %read_val to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %read_val, align 2
  %conv26 = zext i16 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5592r_read_raw.__UNIQUE_ID_ddebug288, ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %31, i32 noundef %conv26) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body18
  %34 = ptrtoint ptr %read_val to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %read_val, align 2
  %conv30 = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv30, ptr %val, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  %reg.i = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %sw.bb31.ad5592r_get_vref.exit_crit_edge, label %if.then.i

sw.bb31.ad5592r_get_vref.exit_crit_edge:          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_get_vref.exit

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef nonnull %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %div.i = sdiv i32 %call.i, 1000
  %spec.select.i = select i1 %cmp.i, i32 %call.i, i32 %div.i
  br label %ad5592r_get_vref.exit

ad5592r_get_vref.exit:                            ; preds = %if.then.i, %sw.bb31.ad5592r_get_vref.exit_crit_edge
  %retval.0.i120 = phi i32 [ 2500, %sw.bb31.ad5592r_get_vref.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i120, ptr %val, align 4
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %41)
  %cmp33 = icmp eq i32 %41, 9
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %ad5592r_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv37 = sext i32 %retval.0.i120 to i64
  %mul = mul nsw i64 %conv37, 150715900
  %call38 = tail call i64 @div_s64_rem(i64 noundef %mul, i32 noundef 1000000000, ptr noundef %val2) #8
  %conv39 = trunc i64 %call38 to i32
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv39, ptr %val, align 4
  br label %cleanup

if.end40:                                         ; preds = %ad5592r_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %lock41 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock41, i32 noundef 0) #8
  %output42 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %43 = ptrtoint ptr %output42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load43 = load i8, ptr %output42, align 4
  %44 = and i8 %bf.load43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool47.not = icmp eq i8 %44, 0
  %cached_gp_ctrl57 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %cached_gp_ctrl57 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cached_gp_ctrl57, align 4
  %.131 = select i1 %tobool47.not, i16 5, i16 4
  %47 = lshr i16 %46, %.131
  %mult.0.in = and i16 %47, 1
  tail call void @mutex_unlock(ptr noundef %lock41) #8
  %narrow = add nuw nsw i16 %mult.0.in, 1
  %inc = zext i16 %narrow to i32
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %mul67 = mul i32 %49, %inc
  store i32 %mul67, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %realbits, align 1
  %conv68 = zext i8 %51 to i32
  %52 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv68, ptr %val2, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %reg.i121 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %reg.i121 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i121, align 4
  %tobool.not.i122 = icmp eq ptr %54, null
  br i1 %tobool.not.i122, label %sw.bb69.ad5592r_get_vref.exit129_crit_edge, label %if.then.i127

sw.bb69.ad5592r_get_vref.exit129_crit_edge:       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5592r_get_vref.exit129

if.then.i127:                                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  %call.i123 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.i124 = icmp slt i32 %call.i123, 0
  %div.i125 = sdiv i32 %call.i123, 1000
  %spec.select.i126 = select i1 %cmp.i124, i32 %call.i123, i32 %div.i125
  br label %ad5592r_get_vref.exit129

ad5592r_get_vref.exit129:                         ; preds = %if.then.i127, %sw.bb69.ad5592r_get_vref.exit129_crit_edge
  %retval.0.i128 = phi i32 [ 2500, %sw.bb69.ad5592r_get_vref.exit129_crit_edge ], [ %spec.select.i126, %if.then.i127 ]
  %lock71 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock71, i32 noundef 0) #8
  %cached_gp_ctrl72 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %cached_gp_ctrl72 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cached_gp_ctrl72, align 4
  %57 = and i16 %56, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool75.not = icmp eq i16 %57, 0
  %. = select i1 %tobool75.not, i32 -1884125, i32 -859125
  %storemerge = sdiv i32 %., %retval.0.i128
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock71) #8
  br label %cleanup

cleanup:                                          ; preds = %ad5592r_get_vref.exit129, %if.end40, %if.then35, %do.end29, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ad5592r_get_vref.exit129 ], [ 2, %if.then35 ], [ 11, %if.end40 ], [ 1, %do.end29 ], [ -5, %do.end ], [ %call1, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_write_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %entry.cleanup87_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

sw.bb:                                            ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %realbits, align 1
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %sw.bb.cleanup87_crit_edge, label %if.end

sw.bb.cleanup87_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %5 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %output, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.cleanup87_crit_edge, label %if.end5

if.end.cleanup87_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 32
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  %conv6 = trunc i32 %val to i16
  %call7 = tail call i32 %10(ptr noundef %1, i32 noundef %12, i16 noundef zeroext %conv6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end5.cleanup87.sink.split_crit_edge

if.end5.cleanup87.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87.sink.split

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 8, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6, ptr %arrayidx, align 2
  br label %cleanup87.sink.split

sw.bb14:                                          ; preds = %entry
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %if.then17, label %sw.bb14.cleanup87_crit_edge

sw.bb14.cleanup87_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.then17:                                        ; preds = %sw.bb14
  %scale_avail = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %scale_avail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale_avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %val)
  %cmp20 = icmp eq i32 %19, %val
  br i1 %cmp20, label %land.lhs.true, label %if.then17.if.else_crit_edge

if.then17.if.else_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then17
  %arrayidx24 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %val2)
  %cmp25 = icmp eq i32 %21, %val2
  br i1 %cmp25, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then17.if.else_crit_edge
  %arrayidx29 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val)
  %cmp31 = icmp eq i32 %23, %val
  br i1 %cmp31, label %land.lhs.true33, label %if.else.cleanup87_crit_edge

if.else.cleanup87_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

land.lhs.true33:                                  ; preds = %if.else
  %arrayidx36 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp37 = icmp eq i32 %25, %val2
  br i1 %cmp37, label %land.lhs.true33.if.end42_crit_edge, label %land.lhs.true33.cleanup87_crit_edge

land.lhs.true33.cleanup87_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

land.lhs.true33.if.end42_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true33.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge
  %gain.0.off0 = phi i1 [ false, %land.lhs.true.if.end42_crit_edge ], [ true, %land.lhs.true33.if.end42_crit_edge ]
  %lock43 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock43, i32 noundef 0) #8
  %ops44 = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops44, align 32
  %reg_read = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_read, align 4
  %cached_gp_ctrl = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 9
  %call45 = tail call i32 %29(ptr noundef %1, i8 noundef zeroext 3, ptr noundef %cached_gp_ctrl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end42.cleanup87.sink.split_crit_edge, label %if.end50

if.end42.cleanup87.sink.split_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87.sink.split

if.end50:                                         ; preds = %if.end42
  %output51 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %30 = ptrtoint ptr %output51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load52 = load i8, ptr %output51, align 4
  %31 = and i8 %bf.load52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool56.not = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %cached_gp_ctrl to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cached_gp_ctrl, align 4
  br i1 %tobool56.not, label %if.else68, label %if.then57

if.then57:                                        ; preds = %if.end50
  br i1 %gain.0.off0, label %if.then59, label %if.else63

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %34 = or i16 %33, 16
  br label %if.end81

if.else63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %35 = and i16 %33, -17
  br label %if.end81

if.else68:                                        ; preds = %if.end50
  br i1 %gain.0.off0, label %if.then70, label %if.else75

if.then70:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %36 = or i16 %33, 32
  br label %if.end81

if.else75:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %37 = and i16 %33, -33
  br label %if.end81

if.end81:                                         ; preds = %if.else75, %if.then70, %if.else63, %if.then59
  %.sink = phi i16 [ %36, %if.then70 ], [ %37, %if.else75 ], [ %34, %if.then59 ], [ %35, %if.else63 ]
  %38 = ptrtoint ptr %cached_gp_ctrl to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.sink, ptr %cached_gp_ctrl, align 4
  %39 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops44, align 32
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_write, align 4
  %call84 = tail call i32 %42(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %.sink) #8
  br label %cleanup87.sink.split

cleanup87.sink.split:                             ; preds = %if.end81, %if.end42.cleanup87.sink.split_crit_edge, %if.then9, %if.end5.cleanup87.sink.split_crit_edge
  %lock43.sink = phi ptr [ %lock43, %if.end81 ], [ %lock, %if.then9 ], [ %lock, %if.end5.cleanup87.sink.split_crit_edge ], [ %lock43, %if.end42.cleanup87.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ %call84, %if.end81 ], [ %call7, %if.then9 ], [ %call7, %if.end5.cleanup87.sink.split_crit_edge ], [ %call45, %if.end42.cleanup87.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock43.sink) #8
  br label %cleanup87

cleanup87:                                        ; preds = %cleanup87.sink.split, %land.lhs.true33.cleanup87_crit_edge, %if.else.cleanup87_crit_edge, %sw.bb14.cleanup87_crit_edge, %if.end.cleanup87_crit_edge, %sw.bb.cleanup87_crit_edge, %entry.cleanup87_crit_edge
  %retval.1 = phi i32 [ -22, %sw.bb.cleanup87_crit_edge ], [ -22, %if.end.cleanup87_crit_edge ], [ -22, %land.lhs.true33.cleanup87_crit_edge ], [ -22, %if.else.cleanup87_crit_edge ], [ -22, %entry.cleanup87_crit_edge ], [ 0, %sw.bb14.cleanup87_crit_edge ], [ %retval.1.ph, %cleanup87.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5592r_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  %. = select i1 %cond, i32 3, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_show_scale_available(ptr nocapture noundef readonly %iio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scale_avail = getelementptr inbounds %struct.ad5592r_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %scale_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scale_avail, align 4
  %arrayidx4 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx10 = getelementptr %struct.ad5592r_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret i32 %call11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %gpio_lock = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #8
  %shl = shl nuw i32 1, %offset
  %gpio_out = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_out, align 1
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv1 = and i8 %1, %3
  store i8 %conv1, ptr %gpio_out, align 1
  %gpio_in = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gpio_in, align 8
  %conv4 = or i8 %5, %2
  store i8 %conv4, ptr %gpio_in, align 8
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 32
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write, align 4
  %conv6 = zext i8 %conv1 to i16
  %call7 = tail call i32 %9(ptr noundef %call, i8 noundef zeroext 8, i16 noundef zeroext %conv6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %entry.err_unlock_crit_edge, label %if.end

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 32
  %reg_write10 = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %reg_write10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_write10, align 4
  %14 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio_in, align 8
  %conv12 = zext i8 %15 to i16
  %call13 = tail call i32 %13(ptr noundef %call, i8 noundef zeroext 10, i16 noundef zeroext %conv12) #8
  br label %err_unlock

err_unlock:                                       ; preds = %if.end, %entry.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call7, %entry.err_unlock_crit_edge ], [ %call13, %if.end ]
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %gpio_lock = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl2 = shl nuw i32 1, %offset
  %gpio_val3 = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %gpio_val3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_val3, align 1
  %2 = trunc i32 %shl2 to i8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1 = or i8 %1, %2
  %3 = ptrtoint ptr %gpio_val3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %gpio_val3, align 1
  %.pre = xor i8 %2, -1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = xor i8 %2, -1
  %conv5 = and i8 %1, %4
  %5 = ptrtoint ptr %gpio_val3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %gpio_val3, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi55 = phi i8 [ %4, %if.else ], [ %.pre, %if.then ]
  %gpio_in = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio_in, align 8
  %conv10 = and i8 %7, %.pre-phi55
  store i8 %conv10, ptr %gpio_in, align 8
  %gpio_out = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpio_out, align 1
  %conv14 = or i8 %9, %2
  store i8 %conv14, ptr %gpio_out, align 1
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 32
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_write, align 4
  %gpio_val15 = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %gpio_val15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio_val15, align 1
  %conv16 = zext i8 %15 to i16
  %call17 = tail call i32 %13(ptr noundef %call, i8 noundef zeroext 9, i16 noundef zeroext %conv16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end.err_unlock_crit_edge, label %if.end20

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end20:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 32
  %reg_write22 = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %reg_write22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_write22, align 4
  %20 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpio_out, align 1
  %conv24 = zext i8 %21 to i16
  %call25 = tail call i32 %19(ptr noundef %call, i8 noundef zeroext 8, i16 noundef zeroext %conv24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end20.err_unlock_crit_edge, label %if.end29

if.end20.err_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 32
  %reg_write31 = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %reg_write31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_write31, align 4
  %26 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gpio_in, align 8
  %conv33 = zext i8 %27 to i16
  %call34 = tail call i32 %25(ptr noundef %call, i8 noundef zeroext 10, i16 noundef zeroext %conv33) #8
  br label %err_unlock

err_unlock:                                       ; preds = %if.end29, %if.end20.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end.err_unlock_crit_edge ], [ %call25, %if.end20.err_unlock_crit_edge ], [ %call34, %if.end29 ]
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !64
  %gpio_lock = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #8
  %gpio_out = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %gpio_out, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %offset
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_val = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpio_val, align 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val, align 1
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #8
  br label %if.end5

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 32
  %gpio_read = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gpio_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_read, align 4
  %call1 = call i32 %9(ptr noundef %call, ptr noundef nonnull %val) #8
  call void @mutex_unlock(ptr noundef %gpio_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.thread
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %conv6 = zext i8 %11 to i32
  %12 = lshr i32 %conv6, %offset
  %13 = and i32 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end5 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5592r_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %gpio_lock = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl2 = shl nuw i32 1, %offset
  %gpio_val3 = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %gpio_val3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_val3, align 1
  %2 = trunc i32 %shl2 to i8
  %3 = xor i8 %2, -1
  %conv5 = and i8 %1, %3
  %conv1 = or i8 %1, %2
  %conv5.sink = select i1 %tobool.not, i8 %conv5, i8 %conv1
  store i8 %conv5.sink, ptr %gpio_val3, align 1
  %ops = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 32
  %reg_write = getelementptr inbounds %struct.ad5592r_rw_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write, align 4
  %conv7 = zext i8 %conv5.sink to i16
  %call8 = tail call i32 %7(ptr noundef %call, i8 noundef zeroext 9, i16 noundef zeroext %conv7) #8
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5592r_gpio_request(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %gpio_map = getelementptr inbounds %struct.ad5592r_state, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %gpio_map to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_map, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %offset
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %offset) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 605, i32 45}
!2 = !{ptr @ad5592r_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 621, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_ad5592r_probe, !6, !"__ksymtab_ad5592r_probe", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 664, i32 1}
!7 = !{ptr @__ksymtab_ad5592r_remove, !8, !"__ksymtab_ad5592r_remove", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 678, i32 1}
!9 = !{ptr @__UNIQUE_ID_author289, !10, !"__UNIQUE_ID_author289", i1 false, i1 false}
!10 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 680, i32 1}
!11 = !{ptr @__UNIQUE_ID_description290, !12, !"__UNIQUE_ID_description290", i1 false, i1 false}
!12 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 681, i32 1}
!13 = !{ptr @__UNIQUE_ID_file291, !14, !"__UNIQUE_ID_file291", i1 false, i1 false}
!14 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 682, i32 1}
!15 = !{ptr @__UNIQUE_ID_license292, !14, !"__UNIQUE_ID_license292", i1 false, i1 false}
!16 = !{ptr @ad5592r_info, !17, !"ad5592r_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 465, i32 30}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 389, i32 5}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad5592r_read_raw._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad5592r_read_raw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 402, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ad5592r_read_raw.__UNIQUE_ID_ddebug288, !27, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 160, i32 42}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 518, i32 41}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 522, i32 41}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 526, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 485, i32 11}
!40 = !{ptr @ad5592r_ext_info, !41, !"ad5592r_ext_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 483, i32 44}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 478, i32 22}
!44 = !{ptr @ad5592r_gpio_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 145, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ad5592r_gpio_init.lock_key, !48, !"lock_key", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 147, i32 9}
!49 = !{ptr @ad5592r_gpio_init.request_key, !48, !"request_key", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5592r-base.c", i32 120, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ad5592r_gpio_request._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ad5592r_gpio_request._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2148769437, i64 2148769442, i64 2148769455, i64 2148769499, i64 2148769533, i64 2148769554}
