; ModuleID = '/llk/IR_all_yes/drivers/iio/dummy/iio_dummy_evgen.c_pt.bc'
source_filename = "../drivers/iio/dummy/iio_dummy_evgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iio_dummy_evgen_get_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_dummy_evgen_get_irq\09\09\09\09"
module asm "\09.long\09__crc_iio_dummy_evgen_get_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_dummy_evgen_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_dummy_evgen_get_irq\22\09\09\09\09\09"
module asm "__kstrtabns_iio_dummy_evgen_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iio_dummy_evgen_release_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_dummy_evgen_release_irq\09\09\09\09"
module asm "\09.long\09__crc_iio_dummy_evgen_release_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_dummy_evgen_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_dummy_evgen_release_irq\22\09\09\09\09\09"
module asm "__kstrtabns_iio_dummy_evgen_release_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iio_dummy_evgen_get_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_dummy_evgen_get_regs\09\09\09\09"
module asm "\09.long\09__crc_iio_dummy_evgen_get_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_dummy_evgen_get_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_dummy_evgen_get_regs\22\09\09\09\09\09"
module asm "__kstrtabns_iio_dummy_evgen_get_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dummy_eventgen = type { [10 x %struct.iio_dummy_regs], %struct.mutex, [10 x i8], ptr }
%struct.iio_dummy_regs = type { i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@iio_evgen = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_iio_dummy_evgen_get_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_dummy_evgen_get_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_dummy_evgen_get_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_dummy_evgen_get_irq to i32), ptr @__kstrtab_iio_dummy_evgen_get_irq, ptr @__kstrtabns_iio_dummy_evgen_get_irq }, section "___ksymtab_gpl+iio_dummy_evgen_get_irq", align 4
@__kstrtab_iio_dummy_evgen_release_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_dummy_evgen_release_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_dummy_evgen_release_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_dummy_evgen_release_irq to i32), ptr @__kstrtab_iio_dummy_evgen_release_irq, ptr @__kstrtabns_iio_dummy_evgen_release_irq }, section "___ksymtab_gpl+iio_dummy_evgen_release_irq", align 4
@__kstrtab_iio_dummy_evgen_get_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_dummy_evgen_get_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_dummy_evgen_get_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_dummy_evgen_get_regs to i32), ptr @__kstrtab_iio_dummy_evgen_get_regs, ptr @__kstrtabns_iio_dummy_evgen_get_regs }, section "___ksymtab_gpl+iio_dummy_evgen_get_regs", align 4
@__initcall__kmod_iio_dummy_evgen__187_212_iio_dummy_evgen_init6 = internal global ptr @iio_dummy_evgen_init, section ".initcall6.init", align 4
@iio_evgen_dev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @iio_bus_type, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @iio_evgen_groups, ptr @iio_evgen_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@__exitcall_iio_dummy_evgen_exit = internal global ptr @iio_dummy_evgen_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [59 x i8] c"iio_dummy_evgen.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [45 x i8] c"iio_dummy_evgen.description=IIO dummy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"iio_dummy_evgen.file=drivers/iio/dummy/iio_dummy_evgen\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [31 x i8] c"iio_dummy_evgen.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iio_evgen\00", [22 x i8] zeroinitializer }, align 32
@iio_dummy_evgen_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&iio_evgen->lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iio_bus_type = external dso_local global %struct.bus_type, align 4
@iio_evgen_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_evgen_group, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_evgen_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iio_evgen_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iio_evgen_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @iio_dev_attr_poke_ev0, ptr @iio_dev_attr_poke_ev1, ptr @iio_dev_attr_poke_ev2, ptr @iio_dev_attr_poke_ev3, ptr @iio_dev_attr_poke_ev4, ptr @iio_dev_attr_poke_ev5, ptr @iio_dev_attr_poke_ev6, ptr @iio_dev_attr_poke_ev7, ptr @iio_dev_attr_poke_ev8, ptr @iio_dev_attr_poke_ev9, ptr null], [52 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev0 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev2 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 2, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev3 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 3, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev4 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev5 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 5, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev6 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev7 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 7, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev8 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 8, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_poke_ev9 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @iio_evgen_poke }, i64 9, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev0\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev1\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev2\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev3\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev4\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev5\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev6\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev7\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev8\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poke_ev9\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"iio_evgen\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 46, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"iio_evgen_dev\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 193, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 206, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 64, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"iio_evgen_groups\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 188, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"iio_evgen_group\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 184, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"iio_evgen_attrs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 170, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev1\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev2\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev3\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev4\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev5\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev6\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev7\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev8\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_poke_ev9\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 159, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 160, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 161, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 162, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 163, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 164, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 165, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 166, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 167, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [39 x i8] c"../drivers/iio/dummy/iio_dummy_evgen.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 168, i32 8 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_iio_dummy_evgen_exit, ptr @__initcall__kmod_iio_dummy_evgen__187_212_iio_dummy_evgen_init6, ptr @__ksymtab_iio_dummy_evgen_get_irq, ptr @__ksymtab_iio_dummy_evgen_get_regs, ptr @__ksymtab_iio_dummy_evgen_release_irq, ptr @iio_dummy_evgen_exit, ptr @iio_evgen, ptr @iio_evgen_dev, ptr @.str, ptr @iio_dummy_evgen_create.__key, ptr @.str.1, ptr @iio_evgen_groups, ptr @iio_evgen_group, ptr @iio_evgen_attrs, ptr @iio_dev_attr_poke_ev0, ptr @iio_dev_attr_poke_ev1, ptr @iio_dev_attr_poke_ev2, ptr @iio_dev_attr_poke_ev3, ptr @iio_dev_attr_poke_ev4, ptr @iio_dev_attr_poke_ev5, ptr @iio_dev_attr_poke_ev6, ptr @iio_dev_attr_poke_ev7, ptr @iio_dev_attr_poke_ev8, ptr @iio_dev_attr_poke_ev9, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_evgen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_evgen_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dummy_evgen_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_evgen_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_evgen_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_evgen_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_poke_ev9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_dummy_evgen_get_irq() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iio_evgen, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %1 = load ptr, ptr @iio_evgen, align 4
  %arrayidx = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %for.inc

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %for.inc.8.if.then2_crit_edge, %for.inc.7.if.then2_crit_edge, %for.inc.6.if.then2_crit_edge, %for.inc.5.if.then2_crit_edge, %for.inc.4.if.then2_crit_edge, %for.inc.3.if.then2_crit_edge, %for.inc.2.if.then2_crit_edge, %for.inc.1.if.then2_crit_edge, %for.inc.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %i.018.lcssa = phi i32 [ 0, %if.end.if.then2_crit_edge ], [ 1, %for.inc.if.then2_crit_edge ], [ 2, %for.inc.1.if.then2_crit_edge ], [ 3, %for.inc.2.if.then2_crit_edge ], [ 4, %for.inc.3.if.then2_crit_edge ], [ 5, %for.inc.4.if.then2_crit_edge ], [ 6, %for.inc.5.if.then2_crit_edge ], [ 7, %for.inc.6.if.then2_crit_edge ], [ 8, %for.inc.7.if.then2_crit_edge ], [ 9, %for.inc.8.if.then2_crit_edge ]
  %irq_sim_domain = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_sim_domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %i.018.lcssa, ptr noundef null) #5
  %6 = load ptr, ptr @iio_evgen, align 4
  %arrayidx4 = getelementptr %struct.iio_dummy_eventgen, ptr %6, i32 0, i32 2, i32 %i.018.lcssa
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx4, align 1
  br label %for.end

for.inc:                                          ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.1 = icmp eq i8 %9, 0
  br i1 %tobool1.not.1, label %for.inc.if.then2_crit_edge, label %for.inc.1

for.inc.if.then2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.2 = icmp eq i8 %11, 0
  br i1 %tobool1.not.2, label %for.inc.1.if.then2_crit_edge, label %for.inc.2

for.inc.1.if.then2_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.3 = icmp eq i8 %13, 0
  br i1 %tobool1.not.3, label %for.inc.2.if.then2_crit_edge, label %for.inc.3

for.inc.2.if.then2_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.4 = icmp eq i8 %15, 0
  br i1 %tobool1.not.4, label %for.inc.3.if.then2_crit_edge, label %for.inc.4

for.inc.3.if.then2_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.5 = icmp eq i8 %17, 0
  br i1 %tobool1.not.5, label %for.inc.4.if.then2_crit_edge, label %for.inc.5

for.inc.4.if.then2_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.6, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.6 = icmp eq i8 %19, 0
  br i1 %tobool1.not.6, label %for.inc.5.if.then2_crit_edge, label %for.inc.6

for.inc.5.if.then2_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.7, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.7 = icmp eq i8 %21, 0
  br i1 %tobool1.not.7, label %for.inc.6.if.then2_crit_edge, label %for.inc.7

for.inc.6.if.then2_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.8, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.8 = icmp eq i8 %23, 0
  br i1 %tobool1.not.8, label %for.inc.7.if.then2_crit_edge, label %for.inc.8

for.inc.7.if.then2_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 9
  %24 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.9, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not.9 = icmp eq i8 %25, 0
  br i1 %tobool1.not.9, label %for.inc.8.if.then2_crit_edge, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.8.if.then2_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

for.end:                                          ; preds = %for.inc.8.for.end_crit_edge, %if.then2
  %i.017 = phi i32 [ %i.018.lcssa, %if.then2 ], [ 10, %for.inc.8.for.end_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %for.inc.8.for.end_crit_edge ]
  %26 = load ptr, ptr @iio_evgen, align 4
  %lock6 = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %26, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.017)
  %cmp7 = icmp eq i32 %i.017, 10
  %spec.select = select i1 %cmp7, i32 -12, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_dummy_evgen_release_irq(i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #5
  %0 = load ptr, ptr @iio_evgen, align 4
  %lock = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %1 = load ptr, ptr @iio_evgen, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %arrayidx = getelementptr %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  tail call void @irq_dispose_mapping(i32 noundef %irq) #5
  %5 = load ptr, ptr @iio_evgen, align 4
  %lock2 = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %5, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iio_dummy_evgen_get_regs(i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #5
  %0 = load ptr, ptr @iio_evgen, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq.i, align 4
  %arrayidx = getelementptr [10 x %struct.iio_dummy_regs], ptr %0, i32 0, i32 %2
  ret ptr %arrayidx
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_dummy_evgen_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 188) #8
  store ptr %call7.i.i.i, ptr @iio_evgen, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @irq_domain_create_sim(ptr noundef null, i32 noundef 10) #5
  %1 = load ptr, ptr @iio_evgen, align 4
  %irq_sim_domain.i = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_sim_domain.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i, ptr %irq_sim_domain.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %iio_dummy_evgen_create.exit, label %iio_dummy_evgen_create.exit.thread10

iio_dummy_evgen_create.exit.thread10:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %lock.i = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @iio_dummy_evgen_create.__key) #5
  br label %if.end

iio_dummy_evgen_create.exit:                      ; preds = %if.end.i
  %3 = ptrtoint ptr %call1.i to i32
  tail call void @kfree(ptr noundef %1) #5
  %cmp = icmp slt ptr %call1.i, null
  br i1 %cmp, label %iio_dummy_evgen_create.exit.cleanup_crit_edge, label %iio_dummy_evgen_create.exit.if.end_crit_edge

iio_dummy_evgen_create.exit.if.end_crit_edge:     ; preds = %iio_dummy_evgen_create.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

iio_dummy_evgen_create.exit.cleanup_crit_edge:    ; preds = %iio_dummy_evgen_create.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %iio_dummy_evgen_create.exit.if.end_crit_edge, %iio_dummy_evgen_create.exit.thread10
  tail call void @device_initialize(ptr noundef nonnull @iio_evgen_dev) #5
  %call1 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @iio_evgen_dev, ptr noundef nonnull @.str) #5
  %call2 = tail call i32 @device_add(ptr noundef nonnull @iio_evgen_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull @iio_evgen_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %iio_dummy_evgen_create.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %iio_dummy_evgen_create.exit.cleanup_crit_edge ], [ %call2, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_dummy_evgen_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_unregister(ptr noundef nonnull @iio_evgen_dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_sim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iio_evgen_release(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iio_evgen, align 4
  %irq_sim_domain.i = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %irq_sim_domain.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_sim_domain.i, align 4
  tail call void @irq_domain_remove_sim(ptr noundef %2) #5
  %3 = load ptr, ptr @iio_evgen, align 4
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_evgen_poke(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %event = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event) #5
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %event, align 4, !annotation !72
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %address, align 8
  %conv = trunc i64 %2 to i32
  %3 = load ptr, ptr @iio_evgen, align 4
  %arrayidx = getelementptr [10 x %struct.iio_dummy_regs], ptr %3, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event, align 4
  %7 = load i64, ptr %address, align 8
  %idxprom4 = trunc i64 %7 to i32
  %reg_data = getelementptr [10 x %struct.iio_dummy_regs], ptr %3, i32 0, i32 %idxprom4, i32 1
  %8 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %reg_data, align 4
  %irq_sim_domain = getelementptr inbounds %struct.iio_dummy_eventgen, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %irq_sim_domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_sim_domain, align 4
  %11 = load i64, ptr %address, align 8
  %conv7 = trunc i64 %11 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !72
  %call.i22 = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef %conv7, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i, label %if.end.irq_find_mapping.exit_crit_edge, label %if.then.i

if.end.irq_find_mapping.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.end.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  %call9 = call i32 @irq_set_irqchip_state(i32 noundef %retval.0.i, i32 noundef 0, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %len.call9 = select i1 %tobool10.not, i32 %len, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %len.call9, %irq_find_mapping.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irqchip_state(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove_sim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__ksymtab_iio_dummy_evgen_get_irq, !1, !"__ksymtab_iio_dummy_evgen_get_irq", i1 false, i1 false}
!1 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 96, i32 1}
!2 = !{ptr @__ksymtab_iio_dummy_evgen_release_irq, !3, !"__ksymtab_iio_dummy_evgen_release_irq", i1 false, i1 false}
!3 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 113, i32 1}
!4 = !{ptr @__ksymtab_iio_dummy_evgen_get_regs, !5, !"__ksymtab_iio_dummy_evgen_get_regs", i1 false, i1 false}
!5 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 122, i32 1}
!6 = !{ptr @__initcall__kmod_iio_dummy_evgen__187_212_iio_dummy_evgen_init6, !7, !"__initcall__kmod_iio_dummy_evgen__187_212_iio_dummy_evgen_init6", i1 false, i1 false}
!7 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 212, i32 1}
!8 = !{ptr @__exitcall_iio_dummy_evgen_exit, !9, !"__exitcall_iio_dummy_evgen_exit", i1 false, i1 false}
!9 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 218, i32 1}
!10 = !{ptr @__UNIQUE_ID_author188, !11, !"__UNIQUE_ID_author188", i1 false, i1 false}
!11 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 220, i32 1}
!12 = !{ptr @__UNIQUE_ID_description189, !13, !"__UNIQUE_ID_description189", i1 false, i1 false}
!13 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 221, i32 1}
!14 = !{ptr @__UNIQUE_ID_file190, !15, !"__UNIQUE_ID_file190", i1 false, i1 false}
!15 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 222, i32 1}
!16 = !{ptr @__UNIQUE_ID_license191, !15, !"__UNIQUE_ID_license191", i1 false, i1 false}
!17 = !{ptr @iio_evgen, !18, !"iio_evgen", i1 false, i1 false}
!18 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 46, i32 35}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 206, i32 31}
!21 = !{ptr @iio_dummy_evgen_create.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 64, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iio_evgen_dev, !25, !"iio_evgen_dev", i1 false, i1 false}
!25 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 193, i32 22}
!26 = !{ptr @iio_evgen_groups, !27, !"iio_evgen_groups", i1 false, i1 false}
!27 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 188, i32 38}
!28 = !{ptr @iio_evgen_group, !29, !"iio_evgen_group", i1 false, i1 false}
!29 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 184, i32 37}
!30 = !{ptr @iio_evgen_attrs, !31, !"iio_evgen_attrs", i1 false, i1 false}
!31 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 170, i32 26}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 159, i32 8}
!34 = !{ptr @iio_dev_attr_poke_ev0, !33, !"iio_dev_attr_poke_ev0", i1 false, i1 false}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 160, i32 8}
!37 = !{ptr @iio_dev_attr_poke_ev1, !36, !"iio_dev_attr_poke_ev1", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 161, i32 8}
!40 = !{ptr @iio_dev_attr_poke_ev2, !39, !"iio_dev_attr_poke_ev2", i1 false, i1 false}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 162, i32 8}
!43 = !{ptr @iio_dev_attr_poke_ev3, !42, !"iio_dev_attr_poke_ev3", i1 false, i1 false}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 163, i32 8}
!46 = !{ptr @iio_dev_attr_poke_ev4, !45, !"iio_dev_attr_poke_ev4", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 164, i32 8}
!49 = !{ptr @iio_dev_attr_poke_ev5, !48, !"iio_dev_attr_poke_ev5", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 165, i32 8}
!52 = !{ptr @iio_dev_attr_poke_ev6, !51, !"iio_dev_attr_poke_ev6", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 166, i32 8}
!55 = !{ptr @iio_dev_attr_poke_ev7, !54, !"iio_dev_attr_poke_ev7", i1 false, i1 false}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 167, i32 8}
!58 = !{ptr @iio_dev_attr_poke_ev8, !57, !"iio_dev_attr_poke_ev8", i1 false, i1 false}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/dummy/iio_dummy_evgen.c", i32 168, i32 8}
!61 = !{ptr @iio_dev_attr_poke_ev9, !60, !"iio_dev_attr_poke_ev9", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"auto-init"}
