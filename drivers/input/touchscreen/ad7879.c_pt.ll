; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ad7879.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ad7879.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ad7879_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7879_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_ad7879_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7879_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7879_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ad7879_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ad7879_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7879_probe\09\09\09\09"
module asm "\09.long\09__crc_ad7879_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7879_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7879_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad7879_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.ad7879 = type { ptr, ptr, ptr, %struct.timer_list, %struct.gpio_chip, %struct.mutex, i32, i8, i8, i8, [4 x i16], [32 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@ad7879_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad7879_suspend, ptr @ad7879_resume, ptr @ad7879_suspend, ptr @ad7879_resume, ptr @ad7879_suspend, ptr @ad7879_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ad7879_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7879_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7879_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7879_pm_ops to i32), ptr @__kstrtab_ad7879_pm_ops, ptr @__kstrtabns_ad7879_pm_ops }, section "___ksymtab+ad7879_pm_ops", align 4
@ad7879_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No IRQ specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7879_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/ad7879.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr = internal global ptr @ad7879_probe._entry, section ".printk_index", align 4
@ad7879_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr.7 = internal global ptr @ad7879_probe._entry.5, section ".printk_index", align 4
@ad7879_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ts->timer)\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD7879 Touchscreen\00", [45 x i8] zeroinitializer }, align 32
@ad7879_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Touchscreen pressure is not specified\0A\00", [57 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr.13 = internal global ptr @ad7879_probe._entry.11, section ".printk_index", align 4
@ad7879_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to write %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr.16 = internal global ptr @ad7879_probe._entry.14, section ".printk_index", align 4
@ad7879_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to probe %s (%x vs %x)\0A\00", [33 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr.19 = internal global ptr @ad7879_probe._entry.17, section ".printk_index", align 4
@ad7879_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ad7879_probe._entry_ptr.22 = internal global ptr @ad7879_probe._entry.20, section ".printk_index", align 4
@ad7879_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7879_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ad7879_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7879_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7879_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7879_probe to i32), ptr @__kstrtab_ad7879_probe, ptr @__kstrtabns_ad7879_probe }, section "___ksymtab+ad7879_probe", align 4
@__UNIQUE_ID_author227 = internal constant [63 x i8] c"ad7879.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [49 x i8] c"ad7879.description=AD7879(-1) touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"ad7879.file=drivers/input/touchscreen/ad7879\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"ad7879.license=GPL\00", section ".modinfo", align 1
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,resistance-plate-x\00", [41 x i8] zeroinitializer }, align 32
@ad7879_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get resistance-plate-x property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad7879_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@ad7879_parse_dt._entry_ptr = internal global ptr @ad7879_parse_dt._entry, section ".printk_index", align 4
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adi,first-conversion-delay\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,acquisition-time\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,median-filter-size\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,averaging\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,conversion-interval\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"touchscreen-swapped-x-y\00", [40 x i8] zeroinitializer }, align 32
@ad7879_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to write %#04x to register %#02x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7879_write\00", [19 x i8] zeroinitializer }, align 32
@ad7879_write._entry_ptr = internal global ptr @ad7879_write._entry, section ".printk_index", align 4
@ad7879_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read register %#02x: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad7879_read\00", [20 x i8] zeroinitializer }, align 32
@ad7879_read._entry_ptr = internal global ptr @ad7879_read._entry, section ".printk_index", align 4
@ad7879_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ad7879_irq = private unnamed_addr constant [11 x i8] c"ad7879_irq\00", align 1
@ad7879_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.ad7879_irq, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read %#02x: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ad7879_irq._entry_ptr = internal global ptr @ad7879_irq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ad7879_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_disable, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_disable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7879_disable_show, ptr @ad7879_disable_store }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ad7879_gpio_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ts->mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AD7879-GPIO\00", [20 x i8] zeroinitializer }, align 32
@ad7879_gpio_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad7879_gpio_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad7879_gpio_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register gpio %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad7879_gpio_add\00", [16 x i8] zeroinitializer }, align 32
@ad7879_gpio_add._entry_ptr = internal global ptr @ad7879_gpio_add._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"ad7879_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 335, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 526, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 540, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 549, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 550, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 552, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 569, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 575, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 583, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 609, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"ad7879_attr_group\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 390, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 496, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 498, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 503, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 505, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 507, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 508, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 509, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 512, i32 47 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 156, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 142, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 253, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"ad7879_attributes\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 385, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"dev_attr_disable\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 383, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 363, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 460, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 463, i32 42 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 473, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 477, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [38 x i8] c"../drivers/input/touchscreen/ad7879.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 479, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_ad7879_pm_ops, ptr @__ksymtab_ad7879_probe, ptr @ad7879_gpio_add._entry, ptr @ad7879_gpio_add._entry_ptr, ptr @ad7879_irq._entry, ptr @ad7879_irq._entry_ptr, ptr @ad7879_parse_dt._entry, ptr @ad7879_parse_dt._entry_ptr, ptr @ad7879_probe._entry, ptr @ad7879_probe._entry.11, ptr @ad7879_probe._entry.14, ptr @ad7879_probe._entry.17, ptr @ad7879_probe._entry.20, ptr @ad7879_probe._entry.5, ptr @ad7879_probe._entry_ptr, ptr @ad7879_probe._entry_ptr.13, ptr @ad7879_probe._entry_ptr.16, ptr @ad7879_probe._entry_ptr.19, ptr @ad7879_probe._entry_ptr.22, ptr @ad7879_probe._entry_ptr.7, ptr @ad7879_read._entry, ptr @ad7879_read._entry_ptr, ptr @ad7879_write._entry, ptr @ad7879_write._entry_ptr, ptr @ad7879_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ad7879_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @ad7879_attr_group, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ad7879_irq._rs, ptr @.str.36, ptr @.str.37, ptr @ad7879_attributes, ptr @dev_attr_disable, ptr @.str.38, ptr @.str.39, ptr @ad7879_gpio_add.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ad7879_gpio_add.lock_key, ptr @ad7879_gpio_add.request_key, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_gpio_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_gpio_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_gpio_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7879_gpio_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %9) #6
  br i1 %call4, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ad7879_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %suspended, align 1
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %mutex7 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %9) #6
  br i1 %call4, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ad7879_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %suspended, align 1
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %mutex7 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad7879_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, i16 noundef zeroext %bustype, i8 noundef zeroext %devid) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp = icmp slt i32 %irq, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 576, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !118
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end6, label %ad7879_parse_dt.exit

ad7879_parse_dt.exit:                             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %2 to i16
  %x_plate_ohms.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv.i, ptr %x_plate_ohms.i, align 2
  %first_conversion_delay.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 12
  %call.i22.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %first_conversion_delay.i, i32 noundef 1) #6
  %acquisition_time.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 13
  %call.i23.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %acquisition_time.i, i32 noundef 1) #6
  %median.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 16
  %call.i24.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %median.i, i32 noundef 1) #6
  %averaging.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 14
  %call.i25.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %averaging.i, i32 noundef 1) #6
  %pen_down_acc_interval.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 15
  %call.i26.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %pen_down_acc_interval.i, i32 noundef 1) #6
  %call.i27.i = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.31) #6
  %swap_xy.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 9
  %frombool.i = zext i1 %call.i27.i to i8
  %4 = ptrtoint ptr %swap_xy.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %swap_xy.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %call7 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %dev14 = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev14, align 4
  %input = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %input, align 4
  %irq15 = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq, ptr %irq15, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %regmap, ptr %call.i, align 4
  %timer = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 3
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ad7879_timer, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ad7879_probe.__key) #6
  %phys = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i182 = icmp eq ptr %10, null
  br i1 %tobool.not.i182, label %if.end.i183, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i183:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i183, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i183 ], [ %10, %if.end13.dev_name.exit_crit_edge ]
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i)
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.10, ptr %call7, align 8
  %phys24 = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 1
  %14 = ptrtoint ptr %phys24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phys, ptr %phys24, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bustype, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 31
  %17 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ad7879_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 32
  %18 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad7879_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @input_set_capability(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 330) #6
  call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  call void @input_set_capability(ptr noundef nonnull %call7, i32 noundef 3, i32 noundef 24) #6
  call void @touchscreen_parse_properties(ptr noundef nonnull %call7, i1 noundef zeroext false, ptr noundef null) #6
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 26
  %20 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i184 = icmp eq ptr %21, null
  br i1 %tobool.not.i184, label %dev_name.exit.do.end32_crit_edge, label %input_abs_get_max.exit

dev_name.exit.do.end32_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

input_abs_get_max.exit:                           ; preds = %dev_name.exit
  %maximum.i = getelementptr %struct.input_absinfo, ptr %21, i32 24, i32 2
  %22 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  br i1 %tobool28.not, label %input_abs_get_max.exit.do.end32_crit_edge, label %if.end33

input_abs_get_max.exit.do.end32_crit_edge:        ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.end32:                                         ; preds = %input_abs_get_max.exit.do.end32_crit_edge, %dev_name.exit.do.end32_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end33:                                         ; preds = %input_abs_get_max.exit
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call.i185 = call i32 @regmap_write(ptr noundef %25, i32 noundef 2, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i186 = icmp eq i32 %call.i185, 0
  br i1 %tobool.not.i186, label %if.end33.if.end41_crit_edge, label %ad7879_write.exit

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

ad7879_write.exit:                                ; preds = %if.end33
  %26 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef 16, i32 noundef 2, i32 noundef %call.i185) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp35 = icmp slt i32 %call.i185, 0
  br i1 %cmp35, label %do.end39, label %ad7879_write.exit.if.end41_crit_edge

ad7879_write.exit.if.end41_crit_edge:             ; preds = %ad7879_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end39:                                         ; preds = %ad7879_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %29) #9
  br label %cleanup

if.end41:                                         ; preds = %ad7879_write.exit.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i, align 4, !annotation !118
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call.i188 = call i32 @regmap_read(ptr noundef %32, i32 noundef 14, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i189 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i189, label %if.end.i192, label %do.end.i191

do.end.i191:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.34, i32 noundef 14, i32 noundef %call.i188) #9
  br label %ad7879_read.exit

if.end.i192:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  br label %ad7879_read.exit

ad7879_read.exit:                                 ; preds = %if.end.i192, %do.end.i191
  %retval.0.i193 = phi i32 [ %call.i188, %do.end.i191 ], [ %36, %if.end.i192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %conv43 = and i32 %retval.0.i193, 65535
  %37 = trunc i32 %retval.0.i193 to i16
  %conv44 = and i16 %37, 255
  %product = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv44, ptr %product, align 4
  %39 = lshr i32 %conv43, 8
  %conv47 = trunc i32 %39 to i16
  %version = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv47, ptr %version, align 2
  %41 = trunc i32 %retval.0.i193 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %devid)
  %cmp53.not = icmp eq i8 %41, %devid
  br i1 %cmp53.not, label %if.end62, label %do.end58

do.end58:                                         ; preds = %ad7879_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv52 = zext i8 %devid to i32
  %42 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %43, i32 noundef %conv52, i32 noundef %conv43) #9
  br label %cleanup

if.end62:                                         ; preds = %ad7879_read.exit
  %cmd_crtl3 = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 20
  %44 = ptrtoint ptr %cmd_crtl3 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -12048, ptr %cmd_crtl3, align 4
  %45 = ptrtoint ptr %averaging.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %averaging.i, align 2
  %47 = and i8 %46, 3
  %and64 = zext i8 %47 to i16
  %shl = shl nuw nsw i16 %and64, 7
  %48 = ptrtoint ptr %median.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %median.i, align 4
  %50 = shl i8 %49, 5
  %51 = and i8 %50, 96
  %shl67 = zext i8 %51 to i16
  %or = or i16 %shl, %shl67
  %52 = ptrtoint ptr %first_conversion_delay.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %first_conversion_delay.i, align 4
  %54 = and i8 %53, 3
  %and70 = zext i8 %54 to i16
  %or68 = or i16 %or, %and70
  %or72 = or i16 %or68, 16384
  %cmd_crtl2 = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 19
  %55 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %or72, ptr %cmd_crtl2, align 2
  %56 = ptrtoint ptr %acquisition_time.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %acquisition_time.i, align 1
  %58 = and i8 %57, 3
  %and75 = zext i8 %58 to i16
  %shl76 = shl nuw nsw i16 %and75, 8
  %59 = ptrtoint ptr %pen_down_acc_interval.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pen_down_acc_interval.i, align 1
  %conv78 = zext i8 %60 to i16
  %or77 = or i16 %shl76, %conv78
  %or81 = or i16 %or77, -29696
  %cmd_crtl1 = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 18
  %61 = ptrtoint ptr %cmd_crtl1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %or81, ptr %cmd_crtl1, align 4
  %62 = ptrtoint ptr %irq15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq15, align 4
  %64 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i195 = icmp eq ptr %65, null
  br i1 %tobool.not.i195, label %if.end.i196, label %if.end62.dev_name.exit198_crit_edge

if.end62.dev_name.exit198_crit_edge:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit198

if.end.i196:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  br label %dev_name.exit198

dev_name.exit198:                                 ; preds = %if.end.i196, %if.end62.dev_name.exit198_crit_edge
  %retval.0.i197 = phi ptr [ %67, %if.end.i196 ], [ %65, %if.end62.dev_name.exit198_crit_edge ]
  %call85 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %63, ptr noundef null, ptr noundef nonnull @ad7879_irq, i32 noundef 8194, ptr noundef %retval.0.i197, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %dev_name.exit198
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call85) #9
  br label %cleanup

if.end91:                                         ; preds = %dev_name.exit198
  call fastcc void @__ad7879_disable(ptr noundef nonnull %call.i)
  %call92 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @ad7879_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %if.end91
  %mutex.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @ad7879_gpio_add.__key) #6
  %68 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev14, align 4
  %call.i.i200 = call zeroext i1 @device_property_present(ptr noundef %69, ptr noundef nonnull @.str.41) #6
  br i1 %call.i.i200, label %if.end.i202, label %if.end95.if.end99_crit_edge

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.end.i202:                                      ; preds = %if.end95
  %gc.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4
  %direction_input.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 8
  %70 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ad7879_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 9
  %71 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ad7879_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 10
  %72 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ad7879_gpio_get_value, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 12
  %73 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ad7879_gpio_set_value, ptr %set.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 23
  %74 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %can_sleep.i, align 4
  %base.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 19
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %base.i, align 4
  %ngpio.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 20
  %76 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %ngpio.i, align 4
  %77 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.42, ptr %gc.i, align 4
  %owner.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %owner.i, align 4
  %79 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev14, align 4
  %parent.i = getelementptr inbounds %struct.ad7879, ptr %call.i, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %parent.i, align 4
  %call13.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %80, ptr noundef %gc.i, ptr noundef nonnull %call.i, ptr noundef nonnull @ad7879_gpio_add.lock_key, ptr noundef nonnull @ad7879_gpio_add.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i201 = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i201, label %if.end.i202.if.end99_crit_edge, label %ad7879_gpio_add.exit

if.end.i202.if.end99_crit_edge:                   ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

ad7879_gpio_add.exit:                             ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev14, align 4
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.43, i32 noundef %85) #9
  br label %cleanup

if.end99:                                         ; preds = %if.end.i202.if.end99_crit_edge, %if.end95.if.end99_crit_edge
  %call100 = call i32 @input_register_device(ptr noundef nonnull %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end103:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end99.cleanup_crit_edge, %ad7879_gpio_add.exit, %if.end91.cleanup_crit_edge, %do.end90, %do.end58, %do.end39, %do.end32, %do.end12, %ad7879_parse_dt.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i185, %do.end39 ], [ -19, %do.end58 ], [ %call85, %do.end90 ], [ 0, %if.end103 ], [ -22, %do.end32 ], [ -12, %do.end12 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i, %ad7879_parse_dt.exit ], [ %call92, %if.end91.cleanup_crit_edge ], [ %call13.i, %ad7879_gpio_add.exit ], [ %call100, %if.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7879_timer(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input.i = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_open(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disabled = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspended = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ad7879_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7879_close(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disabled = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspended = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ad7879_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_irq(i32 noundef %irq, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %conversion_data = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 10
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 8, ptr noundef %conversion_data, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @ad7879_irq._rs, ptr noundef nonnull @__func__.ad7879_irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef 8, i32 noundef %call) #9
  br label %if.end13

if.else:                                          ; preds = %entry
  %input.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 2
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.ad7879, ptr %handle, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %8 = and i16 %7, 4095
  %9 = ptrtoint ptr %conversion_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %conversion_data, align 4
  %11 = and i16 %10, 4095
  %arrayidx8.i = getelementptr %struct.ad7879, ptr %handle, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8.i, align 4
  %14 = and i16 %13, 4095
  %swap_xy.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 9
  %15 = ptrtoint ptr %swap_xy.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %swap_xy.i, align 2, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %spec.select.i = select i1 %tobool.not.i, i16 %8, i16 %11
  %spec.select78.i = select i1 %tobool.not.i, i16 %11, i16 %8
  %conv17.i = zext i16 %spec.select.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %tobool18.not.i = icmp ne i16 %spec.select.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool20.i = icmp ne i16 %14, 0
  %17 = select i1 %tobool18.not.i, i1 %tobool20.i, i1 false
  br i1 %17, label %if.then23.i, label %if.else.if.end13_crit_edge, !prof !119

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then23.i:                                      ; preds = %if.else
  %arrayidx13.i = getelementptr %struct.ad7879, ptr %handle, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx13.i, align 2
  %20 = and i16 %19, 4095
  %conv24.i = zext i16 %20 to i32
  %conv25.i = zext i16 %14 to i32
  %sub.i = sub nsw i32 %conv24.i, %conv25.i
  %x_plate_ohms.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 17
  %21 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %x_plate_ohms.i, align 2
  %conv27.i = zext i16 %22 to i32
  %mul.i = mul nuw nsw i32 %conv27.i, %conv17.i
  %mul28.i = mul i32 %mul.i, %sub.i
  %div.i = udiv i32 %mul28.i, %conv25.i
  %add.i = add i32 %div.i, 2047
  %shr.i = lshr i32 %add.i, 12
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 26
  %23 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then23.i.input_abs_get_max.exit.i_crit_edge, label %cond.true.i.i

if.then23.i.input_abs_get_max.exit.i_crit_edge:   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_get_max.exit.i

cond.true.i.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %24, i32 24, i32 2
  %25 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maximum.i.i, align 4
  br label %input_abs_get_max.exit.i

input_abs_get_max.exit.i:                         ; preds = %cond.true.i.i, %if.then23.i.input_abs_get_max.exit.i_crit_edge
  %cond.i.i = phi i32 [ %26, %cond.true.i.i ], [ 0, %if.then23.i.input_abs_get_max.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %cond.i.i)
  %cmp.i = icmp ugt i32 %shr.i, %cond.i.i
  br i1 %cmp.i, label %input_abs_get_max.exit.i.if.end13_crit_edge, label %if.end32.i

input_abs_get_max.exit.i.if.end13_crit_edge:      ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end32.i:                                       ; preds = %input_abs_get_max.exit.i
  %pprev.i.i.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.not.i, label %if.end32.i.if.then9_crit_edge, label %if.then35.i

if.end32.i.if.then9_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %x36.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 21
  %29 = ptrtoint ptr %x36.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x36.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %30) #6
  %y37.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 22
  %31 = ptrtoint ptr %y37.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y37.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %32) #6
  %Rt38.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 23
  %33 = ptrtoint ptr %Rt38.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %Rt38.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %34) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.then9

if.then9:                                         ; preds = %if.then35.i, %if.end32.i.if.then9_crit_edge
  %x41.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 21
  %35 = ptrtoint ptr %x41.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv17.i, ptr %x41.i, align 4
  %conv42.i = zext i16 %spec.select78.i to i32
  %y43.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 22
  %36 = ptrtoint ptr %y43.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv42.i, ptr %y43.i, align 4
  %Rt44.i = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 23
  %37 = ptrtoint ptr %Rt44.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i, ptr %Rt44.i, align 4
  %timer = getelementptr inbounds %struct.ad7879, ptr %handle, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %38, 5
  %call11 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %input_abs_get_max.exit.i.if.end13_crit_edge, %if.else.if.end13_crit_edge, %do.end, %do.body.if.end13_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ad7879_disable(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_crtl2 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_crtl2, align 2
  %irq = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  %timer = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input.i = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 2
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = and i16 %1, 16383
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts, align 4
  %conv1.i = zext i16 %6 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 2, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.ad7879_write.exit_crit_edge, label %do.end.i

if.end.ad7879_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef %conv1.i, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_write.exit

ad7879_write.exit:                                ; preds = %do.end.i, %if.end.ad7879_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ad7879_enable(ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_crtl2 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_crtl2, align 2
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %conv1.i = zext i16 %1 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ad7879_write.exit_crit_edge, label %do.end.i

entry.ad7879_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %conv1.i, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_write.exit

ad7879_write.exit:                                ; preds = %do.end.i, %entry.ad7879_write.exit_crit_edge
  %cmd_crtl3 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 20
  %6 = ptrtoint ptr %cmd_crtl3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd_crtl3, align 4
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %conv1.i9 = zext i16 %7 to i32
  %call.i10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 3, i32 noundef %conv1.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %ad7879_write.exit.ad7879_write.exit14_crit_edge, label %do.end.i13

ad7879_write.exit.ad7879_write.exit14_crit_edge:  ; preds = %ad7879_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit14

do.end.i13:                                       ; preds = %ad7879_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i12 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %conv1.i9, i32 noundef 3, i32 noundef %call.i10) #9
  br label %ad7879_write.exit14

ad7879_write.exit14:                              ; preds = %do.end.i13, %ad7879_write.exit.ad7879_write.exit14_crit_edge
  %cmd_crtl1 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 18
  %12 = ptrtoint ptr %cmd_crtl1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_crtl1, align 4
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %conv1.i15 = zext i16 %13 to i32
  %call.i16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1, i32 noundef %conv1.i15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %ad7879_write.exit14.ad7879_write.exit20_crit_edge, label %do.end.i19

ad7879_write.exit14.ad7879_write.exit20_crit_edge: ; preds = %ad7879_write.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit20

do.end.i19:                                       ; preds = %ad7879_write.exit14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i18 = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %conv1.i15, i32 noundef 1, i32 noundef %call.i16) #9
  br label %ad7879_write.exit20

ad7879_write.exit20:                              ; preds = %do.end.i19, %ad7879_write.exit14.ad7879_write.exit20_crit_edge
  %irq = getelementptr inbounds %struct.ad7879, ptr %ts, i32 0, i32 6
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %19) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_disable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disabled = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !117
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_disable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !118
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %input.i = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input.i, align 4
  %mutex.i = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %suspended.i = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %suspended.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.ad7879_toggle.exit_crit_edge

if.end.ad7879_toggle.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_toggle.exit

land.lhs.true.i:                                  ; preds = %if.end
  %9 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input.i, align 4
  %call.i = call zeroext i1 @input_device_enabled(ptr noundef %10) #6
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i.ad7879_toggle.exit_crit_edge

land.lhs.true.i.ad7879_toggle.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_toggle.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %disabled.i = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disabled.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not.i = icmp eq i8 %12, 0
  br i1 %tobool2, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  br i1 %tobool4.not.i, label %if.then3.i.ad7879_toggle.exit_crit_edge, label %if.then5.i

if.then3.i.ad7879_toggle.exit_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_toggle.exit

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @__ad7879_enable(ptr noundef %1) #6
  br label %ad7879_toggle.exit

if.else.i:                                        ; preds = %if.then.i
  br i1 %tobool4.not.i, label %if.then8.i, label %if.else.i.ad7879_toggle.exit_crit_edge

if.else.i.ad7879_toggle.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_toggle.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @__ad7879_disable(ptr noundef %1) #6
  br label %ad7879_toggle.exit

ad7879_toggle.exit:                               ; preds = %if.then8.i, %if.else.i.ad7879_toggle.exit_crit_edge, %if.then5.i, %if.then3.i.ad7879_toggle.exit_crit_edge, %land.lhs.true.i.ad7879_toggle.exit_crit_edge, %if.end.ad7879_toggle.exit_crit_edge
  %frombool.i = zext i1 %tobool2 to i8
  %disabled13.i = getelementptr inbounds %struct.ad7879, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %disabled13.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool.i, ptr %disabled13.i, align 4
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input.i, align 4
  %mutex16.i = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex16.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ad7879_toggle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ad7879_toggle.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %mutex = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %cmd_crtl2 = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_crtl2, align 2
  %2 = or i16 %1, 11264
  store i16 %2, ptr %cmd_crtl2, align 2
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %conv1.i = zext i16 %2 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 2, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ad7879_write.exit_crit_edge, label %do.end.i

entry.ad7879_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, i32 noundef %conv1.i, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_write.exit

ad7879_write.exit:                                ; preds = %do.end.i, %entry.ad7879_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %mutex = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %cmd_crtl2 = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_crtl2, align 2
  %2 = and i16 %1, -15361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  %storemerge.v = select i1 %tobool.not, i16 9216, i16 13312
  %storemerge = or i16 %2, %storemerge.v
  %3 = ptrtoint ptr %cmd_crtl2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %storemerge, ptr %cmd_crtl2, align 2
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conv1.i = zext i16 %storemerge to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ad7879_write.exit_crit_edge, label %do.end.i

entry.ad7879_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %conv1.i, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_write.exit

ad7879_write.exit:                                ; preds = %do.end.i, %entry.ad7879_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7879_gpio_get_value(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %mutex = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !118
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  br label %ad7879_read.exit

ad7879_read.exit:                                 ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %6, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %and = lshr i32 %retval.0.i, 12
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7879_gpio_set_value(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %mutex = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cmd_crtl22 = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_crtl22 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_crtl22, align 2
  %2 = and i16 %1, -4097
  %masksel = select i1 %tobool.not, i16 0, i16 4096
  %.sink = or i16 %2, %masksel
  store i16 %.sink, ptr %cmd_crtl22, align 2
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %conv1.i = zext i16 %.sink to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 2, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ad7879_write.exit_crit_edge, label %do.end.i

entry.ad7879_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7879_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.ad7879, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, i32 noundef %conv1.i, i32 noundef 2, i32 noundef %call.i) #9
  br label %ad7879_write.exit

ad7879_write.exit:                                ; preds = %do.end.i, %entry.ad7879_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !88, !90, !91, !93, !95, !96, !98, !100, !102, !103, !105, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @ad7879_pm_ops, !1, !"ad7879_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ad7879.c", i32 335, i32 1}
!2 = !{ptr @__ksymtab_ad7879_pm_ops, !3, !"__ksymtab_ad7879_pm_ops", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/ad7879.c", i32 336, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/ad7879.c", i32 526, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ad7879_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @ad7879_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ad7879.c", i32 540, i32 3}
!14 = !{ptr @ad7879_probe._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ad7879_probe._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ad7879_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/ad7879.c", i32 549, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/ad7879.c", i32 550, i32 39}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/ad7879.c", i32 552, i32 20}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/ad7879.c", i32 569, i32 3}
!25 = !{ptr @ad7879_probe._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad7879_probe._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/ad7879.c", i32 575, i32 3}
!29 = !{ptr @ad7879_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ad7879_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/ad7879.c", i32 583, i32 3}
!33 = !{ptr @ad7879_probe._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad7879_probe._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/ad7879.c", i32 609, i32 3}
!37 = !{ptr @ad7879_probe._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ad7879_probe._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_ad7879_probe, !40, !"__ksymtab_ad7879_probe", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/ad7879.c", i32 631, i32 1}
!41 = !{ptr @__UNIQUE_ID_author227, !42, !"__UNIQUE_ID_author227", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/ad7879.c", i32 633, i32 1}
!43 = !{ptr @__UNIQUE_ID_description228, !44, !"__UNIQUE_ID_description228", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/ad7879.c", i32 634, i32 1}
!45 = !{ptr @__UNIQUE_ID_file229, !46, !"__UNIQUE_ID_file229", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/ad7879.c", i32 635, i32 1}
!47 = !{ptr @__UNIQUE_ID_license230, !46, !"__UNIQUE_ID_license230", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/ad7879.c", i32 496, i32 38}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/ad7879.c", i32 498, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ad7879_parse_dt._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ad7879_parse_dt._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/ad7879.c", i32 503, i32 31}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/ad7879.c", i32 505, i32 31}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/ad7879.c", i32 507, i32 31}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/ad7879.c", i32 508, i32 31}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/ad7879.c", i32 509, i32 31}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/ad7879.c", i32 512, i32 47}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/ad7879.c", i32 156, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ad7879_write._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ad7879_write._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/ad7879.c", i32 142, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ad7879_read._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ad7879_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/ad7879.c", i32 253, i32 3}
!79 = !{ptr @ad7879_irq._rs, !78, !"_rs", i1 false, i1 false}
!80 = !{ptr @__func__.ad7879_irq, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ad7879_irq._entry, !78, !"_entry", i1 false, i1 false}
!83 = !{ptr @ad7879_irq._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ad7879_attr_group, !85, !"ad7879_attr_group", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/ad7879.c", i32 390, i32 37}
!86 = !{ptr @ad7879_attributes, !87, !"ad7879_attributes", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/ad7879.c", i32 385, i32 26}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/ad7879.c", i32 383, i32 8}
!90 = !{ptr @dev_attr_disable, !89, !"dev_attr_disable", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/ad7879.c", i32 363, i32 22}
!93 = !{ptr @ad7879_gpio_add.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/ad7879.c", i32 460, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/ad7879.c", i32 463, i32 42}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/ad7879.c", i32 473, i32 17}
!100 = !{ptr @ad7879_gpio_add.lock_key, !101, !"lock_key", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/ad7879.c", i32 477, i32 8}
!102 = !{ptr @ad7879_gpio_add.request_key, !101, !"request_key", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/ad7879.c", i32 479, i32 3}
!105 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ad7879_gpio_add._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ad7879_gpio_add._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{!"auto-init"}
!119 = !{!"branch_weights", i32 2000, i32 1}
