; ModuleID = '/llk/IR_all_yes/drivers/mfd/madera-core.c_pt.bc'
source_filename = "../drivers/mfd/madera-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+madera_name_from_type\22, \22a\22\09"
module asm "\09.weak\09__crc_madera_name_from_type\09\09\09\09"
module asm "\09.long\09__crc_madera_name_from_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_madera_name_from_type:\09\09\09\09\09"
module asm "\09.asciz \09\22madera_name_from_type\22\09\09\09\09\09"
module asm "__kstrtabns_madera_name_from_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+madera_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_madera_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_madera_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_madera_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22madera_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_madera_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+madera_of_match\22, \22a\22\09"
module asm "\09.weak\09__crc_madera_of_match\09\09\09\09"
module asm "\09.long\09__crc_madera_of_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_madera_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22madera_of_match\22\09\09\09\09\09"
module asm "__kstrtabns_madera_of_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+madera_dev_init\22, \22a\22\09"
module asm "\09.weak\09__crc_madera_dev_init\09\09\09\09"
module asm "\09.long\09__crc_madera_dev_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_madera_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22madera_dev_init\22\09\09\09\09\09"
module asm "__kstrtabns_madera_dev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+madera_dev_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_madera_dev_exit\09\09\09\09"
module asm "\09.long\09__crc_madera_dev_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_madera_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22madera_dev_exit\22\09\09\09\09\09"
module asm "__kstrtabns_madera_dev_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L15\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L35\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L85\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L90\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L91\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS42L92\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L92\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS47L93\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM1840\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_madera_name_from_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_madera_name_from_type = external dso_local constant [0 x i8], align 1
@__ksymtab_madera_name_from_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @madera_name_from_type to i32), ptr @__kstrtab_madera_name_from_type, ptr @__kstrtabns_madera_name_from_type }, section "___ksymtab_gpl+madera_name_from_type", align 4
@madera_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @madera_runtime_suspend, ptr @madera_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_madera_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_madera_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_madera_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @madera_pm_ops to i32), ptr @__kstrtab_madera_pm_ops, ptr @__kstrtabns_madera_pm_ops }, section "___ksymtab_gpl+madera_pm_ops", align 4
@madera_of_match = dso_local constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l35\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l85\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs42l92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs47l93\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,wm1840\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@__kstrtab_madera_of_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_madera_of_match = external dso_local constant [0 x i8], align 1
@__ksymtab_madera_of_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @madera_of_match to i32), ptr @__kstrtab_madera_of_match, ptr @__kstrtabns_madera_of_match }, section "___ksymtab_gpl+madera_of_match", align 4
@madera_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&madera->notifier)->rwsem\00", [36 x i8] zeroinitializer }, align 32
@madera_dev_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&madera->dapm_ptr_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk1\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk2\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk3\00", [26 x i8] zeroinitializer }, align 32
@madera_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 486, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clocks: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"madera_dev_init\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/madera-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr = internal global ptr @madera_dev_init._entry, section ".printk_index", align 4
@madera_dev_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.18, i32 492, ptr @.str.23, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Missing MCLK2, requires 32kHz clock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.24 = internal global ptr @madera_dev_init._entry.21, section ".printk_index", align 4
@madera_ldo1_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.98, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@madera_dev_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.18, i32 529, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add LDO1 child: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.27 = internal global ptr @madera_dev_init._entry.25, section ".printk_index", align 4
@madera_dev_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.18, i32 535, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.30 = internal global ptr @madera_dev_init._entry.28, section ".printk_index", align 4
@madera_dev_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.18, i32 542, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.33 = internal global ptr @madera_dev_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@madera_dev_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.18, i32 554, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request DCVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.37 = internal global ptr @madera_dev_init._entry.35, section ".printk_index", align 4
@madera_dev_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.17, ptr @.str.18, i32 561, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.40 = internal global ptr @madera_dev_init._entry.38, section ".printk_index", align 4
@madera_dev_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.17, ptr @.str.18, i32 570, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable DCVDD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.43 = internal global ptr @madera_dev_init._entry.41, section ".printk_index", align 4
@madera_dev_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.17, ptr @.str.18, i32 584, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device failed initial boot: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.46 = internal global ptr @madera_dev_init._entry.44, section ".printk_index", align 4
@madera_dev_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.17, ptr @.str.18, i32 594, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read ID register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.49 = internal global ptr @madera_dev_init._entry.47, section ".printk_index", align 4
@cs47l15_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.104, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l15_supplies, i32 1 }, %struct.mfd_cell { ptr @.str.105, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l15_supplies, i32 3 }], [104 x i8] zeroinitializer }, align 32
@cs47l35_devs = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.109, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.104, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l35_supplies, i32 1 }, %struct.mfd_cell { ptr @.str.110, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l35_supplies, i32 5 }], [144 x i8] zeroinitializer }, align 32
@cs47l85_devs = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.109, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.104, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l85_supplies, i32 1 }, %struct.mfd_cell { ptr @.str.113, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l85_supplies, i32 8 }], [144 x i8] zeroinitializer }, align 32
@cs47l90_devs = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.109, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.104, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l90_supplies, i32 1 }, %struct.mfd_cell { ptr @.str.118, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l90_supplies, i32 6 }], [144 x i8] zeroinitializer }, align 32
@cs47l92_devs = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.109, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.104, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l92_supplies, i32 1 }, %struct.mfd_cell { ptr @.str.119, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr @cs47l92_supplies, i32 3 }], [144 x i8] zeroinitializer }, align 32
@madera_dev_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.17, ptr @.str.18, i32 669, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown device ID: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.52 = internal global ptr @madera_dev_init._entry.50, section ".printk_index", align 4
@madera_dev_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.17, ptr @.str.18, i32 676, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Device ID 0x%x not a %s\0A\00", [39 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.55 = internal global ptr @madera_dev_init._entry.53, section ".printk_index", align 4
@madera_dev_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.17, ptr @.str.18, i32 693, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to clear boot done: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.58 = internal global ptr @madera_dev_init._entry.56, section ".printk_index", align 4
@madera_dev_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.17, ptr @.str.18, i32 700, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read revision register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.61 = internal global ptr @madera_dev_init._entry.59, section ".printk_index", align 4
@madera_dev_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.17, ptr @.str.18, i32 706, ptr @.str.64, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s silicon revision %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.65 = internal global ptr @madera_dev_init._entry.62, section ".printk_index", align 4
@madera_dev_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.17, ptr @.str.18, i32 712, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to apply patch %d\0A\00", [38 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.68 = internal global ptr @madera_dev_init._entry.66, section ".printk_index", align 4
@madera_dev_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.17, ptr @.str.18, i32 720, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable 32k clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.71 = internal global ptr @madera_dev_init._entry.69, section ".printk_index", align 4
@madera_dev_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.17, ptr @.str.18, i32 729, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init 32k clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.74 = internal global ptr @madera_dev_init._entry.72, section ".printk_index", align 4
@madera_dev_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.17, ptr @.str.18, i32 743, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add subdevices: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@madera_dev_init._entry_ptr.77 = internal global ptr @madera_dev_init._entry.75, section ".printk_index", align 4
@__kstrtab_madera_dev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_madera_dev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_madera_dev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @madera_dev_init to i32), ptr @__kstrtab_madera_dev_init, ptr @__kstrtabns_madera_dev_init }, section "___ksymtab_gpl+madera_dev_init", align 4
@__kstrtab_madera_dev_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_madera_dev_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_madera_dev_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @madera_dev_exit to i32), ptr @__kstrtab_madera_dev_exit, ptr @__kstrtabns_madera_dev_exit }, section "___ksymtab_gpl+madera_dev_exit", align 4
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"madera.description=Madera core MFD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [60 x i8] c"madera.author=Richard Fitzgerald <rf@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [31 x i8] c"madera.file=drivers/mfd/madera\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"madera.license=GPL v2\00", section ".modinfo", align 1
@madera_runtime_suspend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.78, ptr @.str.79, ptr @.str.18, ptr @.str.80, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"madera\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"madera_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Entering sleep mode\0A\00", [43 x i8] zeroinitializer }, align 32
@madera_runtime_resume.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.78, ptr @.str.81, ptr @.str.18, ptr @.str.82, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"madera_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Leaving sleep mode\0A\00", [44 x i8] zeroinitializer }, align 32
@madera_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.81, ptr @.str.18, i32 302, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@madera_runtime_resume._entry_ptr = internal global ptr @madera_runtime_resume._entry, section ".printk_index", align 4
@madera_runtime_resume._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.18, i32 321, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to reset: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@madera_runtime_resume._entry_ptr.85 = internal global ptr @madera_runtime_resume._entry.83, section ".printk_index", align 4
@madera_runtime_resume._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.18, i32 332, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to restore 16-bit register cache\0A\00", [55 x i8] zeroinitializer }, align 32
@madera_runtime_resume._entry_ptr.88 = internal global ptr @madera_runtime_resume._entry.86, section ".printk_index", align 4
@madera_runtime_resume._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.18, i32 338, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to restore 32-bit register cache\0A\00", [55 x i8] zeroinitializer }, align 32
@madera_runtime_resume._entry_ptr.91 = internal global ptr @madera_runtime_resume._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to request /RESET\00", [39 x i8] zeroinitializer }, align 32
@madera_get_reset_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.18, i32 409, ptr @.str.23, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Running without reset GPIO is not recommended\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"madera_get_reset_gpio\00", [42 x i8] zeroinitializer }, align 32
@madera_get_reset_gpio._entry_ptr = internal global ptr @madera_get_reset_gpio._entry, section ".printk_index", align 4
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"madera-ldo1\00", [20 x i8] zeroinitializer }, align 32
@madera_wait_for_boot_noack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.18, i32 234, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Polling BOOT_DONE_STS timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"madera_wait_for_boot_noack\00", [37 x i8] zeroinitializer }, align 32
@madera_wait_for_boot_noack._entry_ptr = internal global ptr @madera_wait_for_boot_noack._entry, section ".printk_index", align 4
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"madera-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"madera-irq\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"madera-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"madera-extcon\00", [18 x i8] zeroinitializer }, align 32
@cs47l15_supplies = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108], [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l15-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"madera-micsupp\00", [17 x i8] zeroinitializer }, align 32
@cs47l35_supplies = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.106, ptr @.str.111, ptr @.str.107, ptr @.str.112, ptr @.str.108], [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l35-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD2\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPVDD2\00", [25 x i8] zeroinitializer }, align 32
@cs47l85_supplies = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.106, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.107, ptr @.str.112, ptr @.str.116, ptr @.str.117], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l85-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD3\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD4\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDL\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDR\00", [24 x i8] zeroinitializer }, align 32
@cs47l90_supplies = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.106, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.107, ptr @.str.112], [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l90-codec\00", [18 x i8] zeroinitializer }, align 32
@cs47l92_supplies = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.112], [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l92-codec\00", [18 x i8] zeroinitializer }, align 32
@madera_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.18, i32 263, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to soft reset device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"madera_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@madera_soft_reset._entry_ptr = internal global ptr @madera_soft_reset._entry, section ".printk_index", align 4
@switch.table.madera_name_from_type = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str, ptr @.str.5], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.122 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 32, i64 25400, i64 25440, i64 25444, i64 25456, i64 25457]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 9]
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 185, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 187, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 189, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 191, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 193, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 195, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 197, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 199, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 201, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 203, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"madera_pm_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 368, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"madera_of_match\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 375, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 465, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 466, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 479, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 480, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 481, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 486, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 492, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"madera_ldo1_devs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 49, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 529, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 535, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 542, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 551, i32 45 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 554, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 561, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 570, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 584, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 594, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [13 x i8] c"cs47l15_devs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 62, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"cs47l35_devs\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 86, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"cs47l85_devs\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 114, i32 30 }
@___asan_gen_.273 = private unnamed_addr constant [13 x i8] c"cs47l90_devs\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 140, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"cs47l92_devs\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 163, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 669, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 675, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 693, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 700, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 705, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 712, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 720, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 729, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 743, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 356, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 295, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 302, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 321, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 332, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 338, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 397, i32 47 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 400, i32 5 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 408, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 45, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 46, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 51, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 234, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 63, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 64, i32 12 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 65, i32 12 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 67, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"cs47l15_supplies\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 56, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 72, i32 11 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 57, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 58, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 59, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 89, i32 12 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"cs47l35_supplies\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 78, i32 27 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 97, i32 11 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 80, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 82, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"cs47l85_supplies\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 103, i32 27 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 125, i32 11 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 106, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 107, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 110, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 111, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"cs47l90_supplies\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 131, i32 27 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 151, i32 11 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"cs47l92_supplies\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 157, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 174, i32 11 }
@___asan_gen_.477 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private constant [29 x i8] c"../drivers/mfd/madera-core.c\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 263, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [35 x i8] c"switch.table.madera_name_from_type\00", align 1
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_madera_dev_exit, ptr @__ksymtab_madera_dev_init, ptr @__ksymtab_madera_name_from_type, ptr @__ksymtab_madera_of_match, ptr @__ksymtab_madera_pm_ops, ptr @madera_dev_init._entry, ptr @madera_dev_init._entry.21, ptr @madera_dev_init._entry.25, ptr @madera_dev_init._entry.28, ptr @madera_dev_init._entry.31, ptr @madera_dev_init._entry.35, ptr @madera_dev_init._entry.38, ptr @madera_dev_init._entry.41, ptr @madera_dev_init._entry.44, ptr @madera_dev_init._entry.47, ptr @madera_dev_init._entry.50, ptr @madera_dev_init._entry.53, ptr @madera_dev_init._entry.56, ptr @madera_dev_init._entry.59, ptr @madera_dev_init._entry.62, ptr @madera_dev_init._entry.66, ptr @madera_dev_init._entry.69, ptr @madera_dev_init._entry.72, ptr @madera_dev_init._entry.75, ptr @madera_dev_init._entry_ptr, ptr @madera_dev_init._entry_ptr.24, ptr @madera_dev_init._entry_ptr.27, ptr @madera_dev_init._entry_ptr.30, ptr @madera_dev_init._entry_ptr.33, ptr @madera_dev_init._entry_ptr.37, ptr @madera_dev_init._entry_ptr.40, ptr @madera_dev_init._entry_ptr.43, ptr @madera_dev_init._entry_ptr.46, ptr @madera_dev_init._entry_ptr.49, ptr @madera_dev_init._entry_ptr.52, ptr @madera_dev_init._entry_ptr.55, ptr @madera_dev_init._entry_ptr.58, ptr @madera_dev_init._entry_ptr.61, ptr @madera_dev_init._entry_ptr.65, ptr @madera_dev_init._entry_ptr.68, ptr @madera_dev_init._entry_ptr.71, ptr @madera_dev_init._entry_ptr.74, ptr @madera_dev_init._entry_ptr.77, ptr @madera_get_reset_gpio._entry, ptr @madera_get_reset_gpio._entry_ptr, ptr @madera_runtime_resume._entry, ptr @madera_runtime_resume._entry.83, ptr @madera_runtime_resume._entry.86, ptr @madera_runtime_resume._entry.89, ptr @madera_runtime_resume._entry_ptr, ptr @madera_runtime_resume._entry_ptr.85, ptr @madera_runtime_resume._entry_ptr.88, ptr @madera_runtime_resume._entry_ptr.91, ptr @madera_soft_reset._entry, ptr @madera_soft_reset._entry_ptr, ptr @madera_wait_for_boot_noack._entry, ptr @madera_wait_for_boot_noack._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @madera_pm_ops, ptr @madera_of_match, ptr @madera_dev_init.__key, ptr @.str.10, ptr @madera_dev_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @madera_ldo1_devs, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @cs47l15_devs, ptr @cs47l35_devs, ptr @cs47l85_devs, ptr @cs47l90_devs, ptr @cs47l92_devs, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @cs47l15_supplies, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @cs47l35_supplies, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @cs47l85_supplies, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @cs47l90_supplies, ptr @.str.118, ptr @cs47l92_supplies, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @switch.table.madera_name_from_type], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_ldo1_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l85_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dev_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_runtime_resume._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_runtime_resume._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_runtime_resume._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_get_reset_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_wait_for_boot_noack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_supplies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_supplies to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l85_supplies to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_supplies to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_supplies to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.madera_name_from_type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @madera_name_from_type(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.madera_name_from_type, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.9, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_runtime_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_runtime_suspend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@madera_runtime_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !257

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_runtime_suspend.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.80) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  %regmap_32bit = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #7
  %10 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_mark_dirty(ptr noundef %11) #7
  %dcvdd = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dcvdd, align 4
  %call7 = tail call i32 @regulator_disable(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_runtime_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_runtime_resume.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@madera_runtime_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !257

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_runtime_resume.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.82) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reset_errata = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %reset_errata to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_errata, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdata.i = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %5, i32 noundef 0) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %dcvdd = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcvdd, align 4
  %call7 = tail call i32 @regulator_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call7) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #7
  %regmap_32bit = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %reset_errata to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reset_errata, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  br label %if.end17

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %pdata.i89 = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pdata.i89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i89, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %15, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %pdata = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end17.if.then21_crit_edge, label %lor.lhs.false

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %reset_errata to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reset_errata, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %call.i = tail call fastcc i32 @madera_wait_for_boot_noack(ptr noundef %1) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 6144, i32 noundef 128) #7
  %dev.i = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.err_crit_edge

if.then21.err_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end25:                                         ; preds = %if.then21
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i90 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.not.i = icmp eq i32 %call.i90, 0
  br i1 %cmp.not.i, label %madera_soft_reset.exit.thread, label %do.end31

madera_soft_reset.exit.thread:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #7
  br label %if.end33

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.120, i32 noundef %call.i90) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %call.i90) #10
  br label %err

if.end33:                                         ; preds = %madera_soft_reset.exit.thread, %lor.lhs.false.if.end33_crit_edge
  %call.i92 = tail call fastcc i32 @madera_wait_for_boot_noack(ptr noundef %1) #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call1.i93 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 6144, i32 noundef 128) #7
  %dev.i94 = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i94, align 4
  %call.i.i95 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i96 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i.i96 to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i.i95, ptr %last_busy.i.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool35.not = icmp eq i32 %call.i92, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.err_crit_edge

if.end33.err_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end37:                                         ; preds = %if.end33
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call39 = tail call i32 @regcache_sync(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87) #10
  br label %err

if.end45:                                         ; preds = %if.end37
  %36 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_32bit, align 4
  %call47 = tail call i32 @regcache_sync(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %do.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #10
  br label %err

err:                                              ; preds = %do.end52, %do.end44, %if.end33.err_crit_edge, %do.end31, %if.then21.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then21.err_crit_edge ], [ %call.i90, %do.end31 ], [ %call.i92, %if.end33.err_crit_edge ], [ %call39, %do.end44 ], [ %call47, %do.end52 ]
  %38 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_cache_only(ptr noundef %39, i1 noundef zeroext true) #7
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %41, i1 noundef zeroext true) #7
  %42 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dcvdd, align 4
  %call57 = tail call i32 @regulator_disable(ptr noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end45.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %ret.0, %err ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @madera_dev_init(ptr noundef %madera) #1 align 64 {
entry:
  %hwid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwid) #7
  %2 = ptrtoint ptr %hwid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwid, align 4, !annotation !259
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %madera, ptr %driver_data.i, align 4
  %notifier = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 23
  tail call void @__init_rwsem(ptr noundef %notifier, ptr noundef nonnull @.str.10, ptr noundef nonnull @madera_dev_init.__key) #7
  %head = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %head, align 4
  %dapm_ptr_lock = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %dapm_ptr_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @madera_dev_init.__key.11) #7
  %type.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 3
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.madera_set_micbias_info.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %entry.sw.bb7.i_crit_edge
    i32 7, label %entry.sw.bb7.i_crit_edge404
    i32 3, label %entry.sw.bb9.i_crit_edge
    i32 4, label %entry.sw.bb9.i_crit_edge405
    i32 9, label %entry.sw.bb15.i_crit_edge
    i32 5, label %entry.sw.bb15.i_crit_edge406
    i32 6, label %entry.sw.bb15.i_crit_edge407
  ]

entry.sw.bb15.i_crit_edge407:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

entry.sw.bb15.i_crit_edge406:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

entry.sw.bb15.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

entry.sw.bb9.i_crit_edge405:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

entry.sw.bb9.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

entry.sw.bb7.i_crit_edge404:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

entry.madera_set_micbias_info.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %madera_set_micbias_info.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_micbias.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 16
  %8 = ptrtoint ptr %num_micbias.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_micbias.i, align 4
  %num_childbias.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 17
  %9 = ptrtoint ptr %num_childbias.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %num_childbias.i, align 4
  br label %madera_set_micbias_info.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_micbias2.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 16
  %10 = ptrtoint ptr %num_micbias2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_micbias2.i, align 4
  %num_childbias3.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 17
  %11 = ptrtoint ptr %num_childbias3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %num_childbias3.i, align 4
  %arrayidx6.i = getelementptr %struct.madera, ptr %madera, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %arrayidx6.i, align 4
  br label %madera_set_micbias_info.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge404
  %num_micbias8.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 16
  %13 = ptrtoint ptr %num_micbias8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %num_micbias8.i, align 4
  br label %madera_set_micbias_info.exit

sw.bb9.i:                                         ; preds = %entry.sw.bb9.i_crit_edge, %entry.sw.bb9.i_crit_edge405
  %num_micbias10.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 16
  %14 = ptrtoint ptr %num_micbias10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %num_micbias10.i, align 4
  %num_childbias11.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 17
  %15 = ptrtoint ptr %num_childbias11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %num_childbias11.i, align 4
  %arrayidx14.i = getelementptr %struct.madera, ptr %madera, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %arrayidx14.i, align 4
  br label %madera_set_micbias_info.exit

sw.bb15.i:                                        ; preds = %entry.sw.bb15.i_crit_edge, %entry.sw.bb15.i_crit_edge406, %entry.sw.bb15.i_crit_edge407
  %num_micbias16.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 16
  %17 = ptrtoint ptr %num_micbias16.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %num_micbias16.i, align 4
  %num_childbias17.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 17
  %18 = ptrtoint ptr %num_childbias17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %num_childbias17.i, align 4
  %arrayidx20.i = getelementptr %struct.madera, ptr %madera, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %arrayidx20.i, align 4
  br label %madera_set_micbias_info.exit

madera_set_micbias_info.exit:                     ; preds = %sw.bb15.i, %sw.bb9.i, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %entry.madera_set_micbias_info.exit_crit_edge
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %madera_set_micbias_info.exit.if.end_crit_edge, label %if.then

madera_set_micbias_info.exit.if.end_crit_edge:    ; preds = %madera_set_micbias_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %madera_set_micbias_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pdata = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 11
  %24 = call ptr @memcpy(ptr %pdata, ptr %23, i32 196)
  br label %if.end

if.end:                                           ; preds = %if.then, %madera_set_micbias_info.exit.if.end_crit_edge
  %mclk = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 15
  %25 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.13, ptr %mclk, align 4
  %arrayidx14 = getelementptr %struct.madera, ptr %madera, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.14, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr %struct.madera, ptr %madera, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.15, ptr %arrayidx17, align 4
  %call21 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %21, i32 noundef 3, ptr noundef %mclk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %call21) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %clk = getelementptr %struct.madera, ptr %madera, i32 0, i32 15, i32 1, i32 1
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  %tobool31.not = icmp eq ptr %31, null
  br i1 %tobool31.not, label %do.end35, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.22) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end28.if.end37_crit_edge
  %pdata.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 11
  %34 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end.i:                                         ; preds = %if.end37
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %37, ptr noundef nonnull @.str.92, i32 noundef 3) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %madera_get_reset_gpio.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %do.end.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.94) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.end7.i.if.end11.i_crit_edge
  %40 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %pdata.i, align 4
  br label %if.end41

madera_get_reset_gpio.exit:                       ; preds = %if.end.i
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %43 = ptrtoint ptr %call.i to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %42, i32 noundef %43, ptr noundef nonnull @.str.93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool39.not = icmp eq i32 %call6.i, 0
  br i1 %tobool39.not, label %madera_get_reset_gpio.exit.if.end41_crit_edge, label %madera_get_reset_gpio.exit.cleanup_crit_edge

madera_get_reset_gpio.exit.cleanup_crit_edge:     ; preds = %madera_get_reset_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

madera_get_reset_gpio.exit.if.end41_crit_edge:    ; preds = %madera_get_reset_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %madera_get_reset_gpio.exit.if.end41_crit_edge, %if.end11.i, %if.end37.if.end41_crit_edge
  %44 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %madera, align 4
  tail call void @regcache_cache_only(ptr noundef %45, i1 noundef zeroext true) #7
  %regmap_32bit = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 1
  %46 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_cache_only(ptr noundef %47, i1 noundef zeroext true) #7
  %arrayidx43 = getelementptr %struct.madera, ptr %madera, i32 0, i32 7, i32 0
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.96, ptr %arrayidx43, align 4
  %arrayidx43.1 = getelementptr %struct.madera, ptr %madera, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.97, ptr %arrayidx43.1, align 4
  %num_core_supplies = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 6
  %50 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %num_core_supplies, align 4
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %52, label %do.end56 [
    i32 8, label %sw.bb
    i32 1, label %if.end41.sw.epilog_crit_edge
    i32 3, label %if.end41.sw.epilog_crit_edge408
    i32 4, label %if.end41.sw.epilog_crit_edge409
    i32 9, label %if.end41.sw.epilog_crit_edge410
    i32 5, label %if.end41.sw.epilog_crit_edge411
    i32 6, label %if.end41.sw.epilog_crit_edge412
    i32 2, label %if.end41.sw.bb45_crit_edge
    i32 7, label %if.end41.sw.bb45_crit_edge413
  ]

if.end41.sw.bb45_crit_edge413:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45

if.end41.sw.bb45_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45

if.end41.sw.epilog_crit_edge412:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end41.sw.epilog_crit_edge411:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end41.sw.epilog_crit_edge410:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end41.sw.epilog_crit_edge409:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end41.sw.epilog_crit_edge408:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %reset_errata = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 10
  %54 = ptrtoint ptr %reset_errata to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %reset_errata, align 1
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end41.sw.bb45_crit_edge, %if.end41.sw.bb45_crit_edge413
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 4
  %call47 = tail call i32 @mfd_add_devices(ptr noundef %56, i32 noundef -1, ptr noundef nonnull @madera_ldo1_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %sw.bb45.sw.epilog_crit_edge, label %do.end52

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end52:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %call47) #10
  br label %cleanup

do.end56:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.29, i32 noundef %52) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb45.sw.epilog_crit_edge, %sw.bb, %if.end41.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge408, %if.end41.sw.epilog_crit_edge409, %if.end41.sw.epilog_crit_edge410, %if.end41.sw.epilog_crit_edge411, %if.end41.sw.epilog_crit_edge412
  %59 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_core_supplies, align 4
  %call62 = tail call i32 @devm_regulator_bulk_get(ptr noundef %1, i32 noundef %60, ptr noundef %arrayidx43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %call62) #10
  br label %err_devs

if.end68:                                         ; preds = %sw.epilog
  %61 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1, align 4
  %call70 = tail call ptr @regulator_get(ptr noundef %62, ptr noundef nonnull @.str.34) #7
  %dcvdd = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 8
  %63 = ptrtoint ptr %dcvdd to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call70, ptr %dcvdd, align 4
  %cmp.i = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %call70 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %64) #10
  br label %err_devs

if.end79:                                         ; preds = %if.end68
  %65 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_core_supplies, align 4
  %call83 = tail call i32 @regulator_bulk_enable(i32 noundef %66, ptr noundef %arrayidx43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end89, label %do.end88

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %call83) #10
  br label %err_dcvdd

if.end89:                                         ; preds = %if.end79
  %reset_errata90 = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 10
  %67 = ptrtoint ptr %reset_errata90 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reset_errata90, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool91.not = icmp eq i8 %68, 0
  br i1 %tobool91.not, label %if.end89.if.end93_crit_edge, label %if.then92

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata.i, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %70, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end89.if.end93_crit_edge
  %71 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dcvdd, align 4
  %call95 = tail call i32 @regulator_enable(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end101, label %do.end100

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %call95) #10
  br label %err_enable

if.end101:                                        ; preds = %if.end93
  %73 = ptrtoint ptr %reset_errata90 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reset_errata90, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool103.not = icmp eq i8 %74, 0
  br i1 %tobool103.not, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  br label %if.end105

if.else:                                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdata.i, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %76, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #7
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then104
  %77 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %madera, align 4
  tail call void @regcache_cache_only(ptr noundef %78, i1 noundef zeroext false) #7
  %79 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap_32bit, align 4
  tail call void @regcache_cache_only(ptr noundef %80, i1 noundef zeroext false) #7
  %call108 = tail call fastcc i32 @madera_wait_for_boot_noack(ptr noundef %madera)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end115, label %do.end113

do.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.45, i32 noundef %call108) #10
  br label %err_reset

if.end115:                                        ; preds = %if.end105
  %83 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %madera, align 4
  %call117 = call i32 @regmap_read(ptr noundef %84, i32 noundef 0, ptr noundef nonnull %hwid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end123, label %do.end122

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %call117) #10
  br label %err_reset

if.end123:                                        ; preds = %if.end115
  %85 = ptrtoint ptr %hwid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hwid, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %86, label %do.end152 [
    i32 25456, label %sw.bb124
    i32 25440, label %sw.bb129
    i32 25400, label %sw.bb134
    i32 25444, label %sw.bb139
    i32 25457, label %sw.bb144
  ]

sw.bb124:                                         ; preds = %if.end123
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %89)
  %cond256 = icmp eq i32 %89, 8
  br i1 %cond256, label %sw.bb124.if.end161_crit_edge, label %sw.bb124.do.end159_crit_edge

sw.bb124.do.end159_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

sw.bb124.if.end161_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb129:                                         ; preds = %if.end123
  %90 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cond = icmp eq i32 %91, 1
  br i1 %cond, label %sw.bb129.if.end161_crit_edge, label %sw.bb129.do.end159_crit_edge

sw.bb129.do.end159_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

sw.bb129.if.end161_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb134:                                         ; preds = %if.end123
  %92 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %type.i, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %93, label %sw.bb134.do.end159_crit_edge [
    i32 2, label %sw.bb134.if.end161_crit_edge
    i32 7, label %sw.bb134.if.end161_crit_edge414
  ]

sw.bb134.if.end161_crit_edge414:                  ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb134.if.end161_crit_edge:                     ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb134.do.end159_crit_edge:                     ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

sw.bb139:                                         ; preds = %if.end123
  %95 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type.i, align 4
  %.off = add i32 %96, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb139.if.end161_crit_edge, label %sw.bb139.do.end159_crit_edge

sw.bb139.do.end159_crit_edge:                     ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

sw.bb139.if.end161_crit_edge:                     ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb144:                                         ; preds = %if.end123
  %97 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %98, label %sw.bb144.do.end159_crit_edge [
    i32 9, label %sw.bb144.if.end161_crit_edge
    i32 5, label %sw.bb144.if.end161_crit_edge415
    i32 6, label %sw.bb144.if.end161_crit_edge416
  ]

sw.bb144.if.end161_crit_edge416:                  ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb144.if.end161_crit_edge415:                  ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb144.if.end161_crit_edge:                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

sw.bb144.do.end159_crit_edge:                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

do.end152:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.51, i32 noundef %86) #10
  br label %err_reset

do.end159:                                        ; preds = %sw.bb144.do.end159_crit_edge, %sw.bb139.do.end159_crit_edge, %sw.bb134.do.end159_crit_edge, %sw.bb129.do.end159_crit_edge, %sw.bb124.do.end159_crit_edge
  %102 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev1, align 4
  %type_name = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 5
  %104 = ptrtoint ptr %type_name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %type_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.54, i32 noundef %86, ptr noundef %105) #10
  br label %err_reset

if.end161:                                        ; preds = %sw.bb144.if.end161_crit_edge, %sw.bb144.if.end161_crit_edge415, %sw.bb144.if.end161_crit_edge416, %sw.bb139.if.end161_crit_edge, %sw.bb134.if.end161_crit_edge, %sw.bb134.if.end161_crit_edge414, %sw.bb129.if.end161_crit_edge, %sw.bb124.if.end161_crit_edge
  %patch_fn.0 = phi ptr [ @cs47l15_patch, %sw.bb124.if.end161_crit_edge ], [ @cs47l35_patch, %sw.bb129.if.end161_crit_edge ], [ @cs47l85_patch, %sw.bb134.if.end161_crit_edge ], [ @cs47l85_patch, %sw.bb134.if.end161_crit_edge414 ], [ @cs47l90_patch, %sw.bb139.if.end161_crit_edge ], [ @cs47l92_patch, %sw.bb144.if.end161_crit_edge ], [ @cs47l92_patch, %sw.bb144.if.end161_crit_edge415 ], [ @cs47l92_patch, %sw.bb144.if.end161_crit_edge416 ]
  %mfd_devs.0 = phi ptr [ @cs47l15_devs, %sw.bb124.if.end161_crit_edge ], [ @cs47l35_devs, %sw.bb129.if.end161_crit_edge ], [ @cs47l85_devs, %sw.bb134.if.end161_crit_edge ], [ @cs47l85_devs, %sw.bb134.if.end161_crit_edge414 ], [ @cs47l90_devs, %sw.bb139.if.end161_crit_edge ], [ @cs47l92_devs, %sw.bb144.if.end161_crit_edge ], [ @cs47l92_devs, %sw.bb144.if.end161_crit_edge415 ], [ @cs47l92_devs, %sw.bb144.if.end161_crit_edge416 ]
  %n_devs.0 = phi i32 [ 5, %sw.bb124.if.end161_crit_edge ], [ 6, %sw.bb129.if.end161_crit_edge ], [ 6, %sw.bb134.if.end161_crit_edge ], [ 6, %sw.bb134.if.end161_crit_edge414 ], [ 6, %sw.bb139.if.end161_crit_edge ], [ 6, %sw.bb144.if.end161_crit_edge ], [ 6, %sw.bb144.if.end161_crit_edge415 ], [ 6, %sw.bb144.if.end161_crit_edge416 ]
  %106 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdata.i, align 4
  %tobool163.not = icmp eq ptr %107, null
  br i1 %tobool163.not, label %if.end161.if.then166_crit_edge, label %lor.lhs.false

if.end161.if.then166_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166

lor.lhs.false:                                    ; preds = %if.end161
  %108 = ptrtoint ptr %reset_errata90 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %reset_errata90, align 1, !range !258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool165.not = icmp eq i8 %109, 0
  br i1 %tobool165.not, label %lor.lhs.false.if.end171_crit_edge, label %lor.lhs.false.if.then166_crit_edge

lor.lhs.false.if.then166_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166

lor.lhs.false.if.end171_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then166:                                       ; preds = %lor.lhs.false.if.then166_crit_edge, %if.end161.if.then166_crit_edge
  %110 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %madera, align 4
  %call.i388 = call i32 @regmap_write(ptr noundef %111, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %cmp.not.i = icmp eq i32 %call.i388, 0
  br i1 %cmp.not.i, label %madera_soft_reset.exit.thread, label %madera_soft_reset.exit

madera_soft_reset.exit.thread:                    ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #7
  br label %if.end171

madera_soft_reset.exit:                           ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.120, i32 noundef %call.i388) #10
  br label %err_reset

if.end171:                                        ; preds = %madera_soft_reset.exit.thread, %lor.lhs.false.if.end171_crit_edge
  %call.i392 = call fastcc i32 @madera_wait_for_boot_noack(ptr noundef %madera) #7
  %114 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %madera, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %115, i32 noundef 6144, i32 noundef 128) #7
  %116 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev1, align 4
  %call.i.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %117, i32 0, i32 12, i32 22
  %118 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %tobool173.not = icmp eq i32 %call.i392, 0
  br i1 %tobool173.not, label %if.end179, label %do.end177

do.end177:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.57, i32 noundef %call.i392) #10
  br label %err_reset

if.end179:                                        ; preds = %if.end171
  %121 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %madera, align 4
  %rev = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 4
  %call181 = call i32 @regmap_read(ptr noundef %122, i32 noundef 1, ptr noundef %rev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then195.critedge, label %do.end186

do.end186:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %call181) #10
  br label %err_reset

if.then195.critedge:                              ; preds = %if.end179
  %123 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rev, align 4
  %and.c = and i32 %124, 255
  store i32 %and.c, ptr %rev, align 4
  %type_name192.c = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 5
  %125 = ptrtoint ptr %type_name192.c to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %type_name192.c, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef %126, i32 noundef %and.c) #10
  %call196 = call i32 %patch_fn.0(ptr noundef %madera) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end204, label %do.end201

do.end201:                                        ; preds = %if.then195.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.67, i32 noundef %call196) #10
  br label %err_reset

if.end204:                                        ; preds = %if.then195.critedge
  %129 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk, align 4
  %call208 = call fastcc i32 @clk_prepare_enable(ptr noundef %130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end215, label %do.end213

do.end213:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.70, i32 noundef %call208) #10
  br label %err_reset

if.end215:                                        ; preds = %if.end204
  %133 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %madera, align 4
  %call.i394 = call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef 256, i32 noundef 67, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394)
  %tobool218.not = icmp eq i32 %call.i394, 0
  %135 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev1, align 4
  br i1 %tobool218.not, label %if.end224, label %do.end222

do.end222:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.73, i32 noundef %call.i394) #10
  br label %err_clock

if.end224:                                        ; preds = %if.end215
  %call.i395 = call i32 @__pm_runtime_set_status(ptr noundef %136, i32 noundef 0) #7
  %137 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev1, align 4
  call void @pm_runtime_enable(ptr noundef %138) #7
  %139 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev1, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %140, i32 noundef 100) #7
  %141 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %142, i1 noundef zeroext true) #7
  %143 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev1, align 4
  %call231 = call i32 @mfd_add_devices(ptr noundef %144, i32 noundef -1, ptr noundef nonnull %mfd_devs.0, i32 noundef %n_devs.0, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end224.cleanup_crit_edge, label %do.end236

if.end224.cleanup_crit_edge:                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end236:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.76, i32 noundef %call231) #10
  %147 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev1, align 4
  call void @__pm_runtime_disable(ptr noundef %148, i1 noundef zeroext true) #7
  br label %err_clock

err_clock:                                        ; preds = %do.end236, %do.end222
  %ret.0 = phi i32 [ %call.i394, %do.end222 ], [ %call231, %do.end236 ]
  %149 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %150) #7
  call void @clk_unprepare(ptr noundef %150) #7
  br label %err_reset

err_reset:                                        ; preds = %err_clock, %do.end213, %do.end201, %do.end186, %do.end177, %madera_soft_reset.exit, %do.end159, %do.end152, %do.end122, %do.end113
  %ret.1 = phi i32 [ %call108, %do.end113 ], [ %call117, %do.end122 ], [ -22, %do.end152 ], [ %call.i388, %madera_soft_reset.exit ], [ %call.i392, %do.end177 ], [ %call181, %do.end186 ], [ %call196, %do.end201 ], [ %call208, %do.end213 ], [ %ret.0, %err_clock ], [ -19, %do.end159 ]
  %151 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdata.i, align 4
  call void @gpiod_set_raw_value_cansleep(ptr noundef %152, i32 noundef 0) #7
  %153 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dcvdd, align 4
  %call244 = call i32 @regulator_disable(ptr noundef %154) #7
  br label %err_enable

err_enable:                                       ; preds = %err_reset, %do.end100
  %ret.2 = phi i32 [ %call95, %do.end100 ], [ %ret.1, %err_reset ]
  %155 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_core_supplies, align 4
  %call248 = call i32 @regulator_bulk_disable(i32 noundef %156, ptr noundef %arrayidx43) #7
  br label %err_dcvdd

err_dcvdd:                                        ; preds = %err_enable, %do.end88
  %ret.3 = phi i32 [ %call83, %do.end88 ], [ %ret.2, %err_enable ]
  %157 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dcvdd, align 4
  call void @regulator_put(ptr noundef %158) #7
  br label %err_devs

err_devs:                                         ; preds = %err_dcvdd, %if.then73, %do.end67
  %ret.4 = phi i32 [ %call62, %do.end67 ], [ %64, %if.then73 ], [ %ret.3, %err_dcvdd ]
  call void @mfd_remove_devices(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %err_devs, %if.end224.cleanup_crit_edge, %do.end56, %do.end52, %madera_get_reset_gpio.exit.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ %call21, %do.end26 ], [ -19, %do.end56 ], [ %call47, %do.end52 ], [ %ret.4, %err_devs ], [ %call6.i, %madera_get_reset_gpio.exit.cleanup_crit_edge ], [ 0, %if.end224.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwid) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @madera_wait_for_boot_noack(ptr nocapture noundef readonly %madera) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 25000000
  %1 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %madera, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef 6272, ptr noundef nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and11 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not12 = icmp eq i32 %and11, 0
  br i1 %tobool.not12, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %call3 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i.i, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @usleep_range_state(i32 noundef 2500, i32 noundef 5000, i32 noundef 2) #7
  %5 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %madera, align 4
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef 6272, ptr noundef nonnull %val) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and7 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.99) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %while.end.if.end_crit_edge ], [ -110, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l15_patch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l35_patch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l85_patch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l90_patch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs47l92_patch(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @madera_dev_exit(ptr noundef %madera) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 14
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  %dev = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @mfd_remove_devices(ptr noundef %5) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #7
  %dcvdd = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 8
  %8 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcvdd, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %9) #7
  %10 = ptrtoint ptr %dcvdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcvdd, align 4
  tail call void @regulator_put(ptr noundef %11) #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @mfd_remove_devices_late(ptr noundef %13) #7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i22 = tail call i32 @__pm_runtime_set_status(ptr noundef %15, i32 noundef 2) #7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !261
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !262
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %clk = getelementptr %struct.madera, ptr %madera, i32 0, i32 15, i32 1, i32 1
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  %pdata.i = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 11
  %21 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata.i, align 4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %22, i32 noundef 0) #7
  %num_core_supplies = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 6
  %23 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 7
  %call9 = tail call i32 @regulator_bulk_disable(i32 noundef %24, ptr noundef %core_supplies) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices_late(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !246, !247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/madera-core.c", i32 185, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/madera-core.c", i32 187, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/madera-core.c", i32 189, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/madera-core.c", i32 191, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/madera-core.c", i32 193, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/madera-core.c", i32 195, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/madera-core.c", i32 197, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/madera-core.c", i32 199, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/madera-core.c", i32 201, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/madera-core.c", i32 203, i32 10}
!20 = !{ptr @__ksymtab_madera_name_from_type, !21, !"__ksymtab_madera_name_from_type", i1 false, i1 false}
!21 = !{!"../drivers/mfd/madera-core.c", i32 206, i32 1}
!22 = !{ptr @madera_pm_ops, !23, !"madera_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/mfd/madera-core.c", i32 368, i32 25}
!24 = !{ptr @__ksymtab_madera_pm_ops, !25, !"__ksymtab_madera_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/mfd/madera-core.c", i32 373, i32 1}
!26 = !{ptr @madera_of_match, !27, !"madera_of_match", i1 false, i1 false}
!27 = !{!"../drivers/mfd/madera-core.c", i32 375, i32 27}
!28 = !{ptr @__ksymtab_madera_of_match, !29, !"__ksymtab_madera_of_match", i1 false, i1 false}
!29 = !{!"../drivers/mfd/madera-core.c", i32 388, i32 1}
!30 = !{ptr @madera_dev_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/mfd/madera-core.c", i32 465, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @madera_dev_init.__key.11, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/mfd/madera-core.c", i32 466, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/madera-core.c", i32 479, i32 34}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/madera-core.c", i32 480, i32 34}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/madera-core.c", i32 481, i32 34}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/madera-core.c", i32 486, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @madera_dev_init._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @madera_dev_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/madera-core.c", i32 492, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @madera_dev_init._entry.21, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @madera_dev_init._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/madera-core.c", i32 529, i32 4}
!57 = !{ptr @madera_dev_init._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @madera_dev_init._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/madera-core.c", i32 535, i32 3}
!61 = !{ptr @madera_dev_init._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @madera_dev_init._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/madera-core.c", i32 542, i32 3}
!65 = !{ptr @madera_dev_init._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @madera_dev_init._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/madera-core.c", i32 551, i32 45}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/madera-core.c", i32 554, i32 3}
!71 = !{ptr @madera_dev_init._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @madera_dev_init._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/madera-core.c", i32 561, i32 3}
!75 = !{ptr @madera_dev_init._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @madera_dev_init._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/madera-core.c", i32 570, i32 3}
!79 = !{ptr @madera_dev_init._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @madera_dev_init._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/madera-core.c", i32 584, i32 3}
!83 = !{ptr @madera_dev_init._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @madera_dev_init._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/madera-core.c", i32 594, i32 3}
!87 = !{ptr @madera_dev_init._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @madera_dev_init._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/madera-core.c", i32 669, i32 3}
!91 = !{ptr @madera_dev_init._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @madera_dev_init._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/madera-core.c", i32 675, i32 3}
!95 = !{ptr @madera_dev_init._entry.53, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @madera_dev_init._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/madera-core.c", i32 693, i32 3}
!99 = !{ptr @madera_dev_init._entry.56, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @madera_dev_init._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/madera-core.c", i32 700, i32 3}
!103 = !{ptr @madera_dev_init._entry.59, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @madera_dev_init._entry_ptr.61, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.63, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/madera-core.c", i32 705, i32 2}
!107 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @madera_dev_init._entry.62, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @madera_dev_init._entry_ptr.65, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.67, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/madera-core.c", i32 712, i32 4}
!112 = !{ptr @madera_dev_init._entry.66, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @madera_dev_init._entry_ptr.68, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mfd/madera-core.c", i32 720, i32 3}
!116 = !{ptr @madera_dev_init._entry.69, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @madera_dev_init._entry_ptr.71, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mfd/madera-core.c", i32 729, i32 3}
!120 = !{ptr @madera_dev_init._entry.72, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @madera_dev_init._entry_ptr.74, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.76, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mfd/madera-core.c", i32 743, i32 3}
!124 = !{ptr @madera_dev_init._entry.75, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @madera_dev_init._entry_ptr.77, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @__ksymtab_madera_dev_init, !127, !"__ksymtab_madera_dev_init", i1 false, i1 false}
!127 = !{!"../drivers/mfd/madera-core.c", i32 766, i32 1}
!128 = !{ptr @__ksymtab_madera_dev_exit, !129, !"__ksymtab_madera_dev_exit", i1 false, i1 false}
!129 = !{!"../drivers/mfd/madera-core.c", i32 795, i32 1}
!130 = !{ptr @__UNIQUE_ID_description291, !131, !"__UNIQUE_ID_description291", i1 false, i1 false}
!131 = !{!"../drivers/mfd/madera-core.c", i32 797, i32 1}
!132 = !{ptr @__UNIQUE_ID_author292, !133, !"__UNIQUE_ID_author292", i1 false, i1 false}
!133 = !{!"../drivers/mfd/madera-core.c", i32 798, i32 1}
!134 = !{ptr @__UNIQUE_ID_file293, !135, !"__UNIQUE_ID_file293", i1 false, i1 false}
!135 = !{!"../drivers/mfd/madera-core.c", i32 799, i32 1}
!136 = !{ptr @__UNIQUE_ID_license294, !135, !"__UNIQUE_ID_license294", i1 false, i1 false}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/madera-core.c", i32 356, i32 2}
!139 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @madera_runtime_suspend.__UNIQUE_ID_ddebug290, !138, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mfd/madera-core.c", i32 295, i32 2}
!144 = !{ptr @.str.82, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @madera_runtime_resume.__UNIQUE_ID_ddebug289, !143, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!146 = !{ptr @madera_runtime_resume._entry, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/mfd/madera-core.c", i32 302, i32 3}
!148 = !{ptr @madera_runtime_resume._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/madera-core.c", i32 321, i32 4}
!151 = !{ptr @madera_runtime_resume._entry.83, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @madera_runtime_resume._entry_ptr.85, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/madera-core.c", i32 332, i32 3}
!155 = !{ptr @madera_runtime_resume._entry.86, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @madera_runtime_resume._entry_ptr.88, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.90, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mfd/madera-core.c", i32 338, i32 3}
!159 = !{ptr @madera_runtime_resume._entry.89, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @madera_runtime_resume._entry_ptr.91, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.92, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mfd/madera-core.c", i32 397, i32 47}
!163 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mfd/madera-core.c", i32 400, i32 5}
!165 = !{ptr @.str.94, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/madera-core.c", i32 408, i32 3}
!167 = !{ptr @.str.95, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @madera_get_reset_gpio._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @madera_get_reset_gpio._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mfd/madera-core.c", i32 45, i32 2}
!172 = !{ptr @.str.97, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mfd/madera-core.c", i32 46, i32 2}
!174 = distinct !{null, !175, !"madera_core_supplies", i1 false, i1 false}
!175 = !{!"../drivers/mfd/madera-core.c", i32 44, i32 27}
!176 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mfd/madera-core.c", i32 51, i32 11}
!178 = !{ptr @madera_ldo1_devs, !179, !"madera_ldo1_devs", i1 false, i1 false}
!179 = !{!"../drivers/mfd/madera-core.c", i32 49, i32 30}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mfd/madera-core.c", i32 234, i32 3}
!182 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @madera_wait_for_boot_noack._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @madera_wait_for_boot_noack._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.101, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mfd/madera-core.c", i32 63, i32 12}
!187 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/madera-core.c", i32 64, i32 12}
!189 = !{ptr @.str.103, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mfd/madera-core.c", i32 65, i32 12}
!191 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mfd/madera-core.c", i32 67, i32 11}
!193 = !{ptr @.str.105, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/madera-core.c", i32 72, i32 11}
!195 = !{ptr @cs47l15_devs, !196, !"cs47l15_devs", i1 false, i1 false}
!196 = !{!"../drivers/mfd/madera-core.c", i32 62, i32 30}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mfd/madera-core.c", i32 57, i32 2}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mfd/madera-core.c", i32 58, i32 2}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/madera-core.c", i32 59, i32 2}
!203 = !{ptr @cs47l15_supplies, !204, !"cs47l15_supplies", i1 false, i1 false}
!204 = !{!"../drivers/mfd/madera-core.c", i32 56, i32 27}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mfd/madera-core.c", i32 89, i32 12}
!207 = !{ptr @.str.110, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mfd/madera-core.c", i32 97, i32 11}
!209 = !{ptr @cs47l35_devs, !210, !"cs47l35_devs", i1 false, i1 false}
!210 = !{!"../drivers/mfd/madera-core.c", i32 86, i32 30}
!211 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mfd/madera-core.c", i32 80, i32 2}
!213 = !{ptr @.str.112, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mfd/madera-core.c", i32 82, i32 2}
!215 = !{ptr @cs47l35_supplies, !216, !"cs47l35_supplies", i1 false, i1 false}
!216 = !{!"../drivers/mfd/madera-core.c", i32 78, i32 27}
!217 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mfd/madera-core.c", i32 125, i32 11}
!219 = !{ptr @cs47l85_devs, !220, !"cs47l85_devs", i1 false, i1 false}
!220 = !{!"../drivers/mfd/madera-core.c", i32 114, i32 30}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mfd/madera-core.c", i32 106, i32 2}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mfd/madera-core.c", i32 107, i32 2}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mfd/madera-core.c", i32 110, i32 2}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mfd/madera-core.c", i32 111, i32 2}
!229 = !{ptr @cs47l85_supplies, !230, !"cs47l85_supplies", i1 false, i1 false}
!230 = !{!"../drivers/mfd/madera-core.c", i32 103, i32 27}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mfd/madera-core.c", i32 151, i32 11}
!233 = !{ptr @cs47l90_devs, !234, !"cs47l90_devs", i1 false, i1 false}
!234 = !{!"../drivers/mfd/madera-core.c", i32 140, i32 30}
!235 = !{ptr @cs47l90_supplies, !236, !"cs47l90_supplies", i1 false, i1 false}
!236 = !{!"../drivers/mfd/madera-core.c", i32 131, i32 27}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mfd/madera-core.c", i32 174, i32 11}
!239 = !{ptr @cs47l92_devs, !240, !"cs47l92_devs", i1 false, i1 false}
!240 = !{!"../drivers/mfd/madera-core.c", i32 163, i32 30}
!241 = !{ptr @cs47l92_supplies, !242, !"cs47l92_supplies", i1 false, i1 false}
!242 = !{!"../drivers/mfd/madera-core.c", i32 157, i32 27}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mfd/madera-core.c", i32 263, i32 3}
!245 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @madera_soft_reset._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @madera_soft_reset._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{i64 2148294663, i64 2148294668, i64 2148294681, i64 2148294725, i64 2148294759, i64 2148294780}
!258 = !{i8 0, i8 2}
!259 = !{!"auto-init"}
!260 = !{i64 2148480689}
!261 = !{i64 967289, i64 967314, i64 967336, i64 967352, i64 967364, i64 967384, i64 967408, i64 967424, i64 967436}
!262 = !{i64 2148480877}
