; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_pipeline.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_pipeline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mISDN_dsp_element_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_dsp_element_register\09\09\09\09"
module asm "\09.long\09__crc_mISDN_dsp_element_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_dsp_element_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_dsp_element_register\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_dsp_element_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_dsp_element_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_dsp_element_unregister\09\09\09\09"
module asm "\09.long\09__crc_mISDN_dsp_element_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_dsp_element_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_dsp_element_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_dsp_element_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dsp_element_entry = type { ptr, %struct.device, %struct.list_head }
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
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mISDN_dsp_element = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.dsp_pipeline_entry = type { ptr, ptr, %struct.list_head }
%struct.mISDN_dsp_element_arg = type { ptr, ptr, ptr }

@elements_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mISDN_dsp_element_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: failed to register %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mISDN_dsp_element_register\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/isdn/mISDN/dsp_pipeline.c\00", [62 x i8] zeroinitializer }, align 32
@mISDN_dsp_element_register._entry_ptr = internal global ptr @mISDN_dsp_element_register._entry, section ".printk_index", align 4
@dsp_elements = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dsp_elements, ptr @dsp_elements }, [24 x i8] zeroinitializer }, align 32
@element_attributes = internal global { [1 x %struct.device_attribute], [36 x i8] } { [1 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_show_args, ptr null }], [36 x i8] zeroinitializer }, align 32
@mISDN_dsp_element_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to create device file\0A\00", [60 x i8] zeroinitializer }, align 32
@mISDN_dsp_element_register._entry_ptr.6 = internal global ptr @mISDN_dsp_element_register._entry.4, section ".printk_index", align 4
@__kstrtab_mISDN_dsp_element_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_dsp_element_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_dsp_element_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_dsp_element_register to i32), ptr @__kstrtab_mISDN_dsp_element_register, ptr @__kstrtabns_mISDN_dsp_element_register }, section "___ksymtab+mISDN_dsp_element_register", align 4
@mISDN_dsp_element_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: element %s not in list.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mISDN_dsp_element_unregister\00", [35 x i8] zeroinitializer }, align 32
@mISDN_dsp_element_unregister._entry_ptr = internal global ptr @mISDN_dsp_element_unregister._entry, section ".printk_index", align 4
@__kstrtab_mISDN_dsp_element_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_dsp_element_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_dsp_element_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_dsp_element_unregister to i32), ptr @__kstrtab_mISDN_dsp_element_unregister, ptr @__kstrtabns_mISDN_dsp_element_unregister }, section "___ksymtab+mISDN_dsp_element_unregister", align 4
@dsp_pipeline_module_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsp_pipeline\00", [19 x i8] zeroinitializer }, align 32
@dsp_pipeline_module_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: element was still registered: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsp_pipeline_module_exit\00", [39 x i8] zeroinitializer }, align 32
@dsp_pipeline_module_exit._entry_ptr = internal global ptr @dsp_pipeline_module_exit._entry, section ".printk_index", align 4
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@dsp_pipeline_build._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: failed to add entry to pipeline: %s (out of memory)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsp_pipeline_build\00", [45 x i8] zeroinitializer }, align 32
@dsp_pipeline_build._entry_ptr = internal global ptr @dsp_pipeline_build._entry, section ".printk_index", align 4
@dsp_hwec = external dso_local local_unnamed_addr global ptr, align 4
@dsp_pipeline_build._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: failed to add entry to pipeline: %s (new() returned NULL)\0A\00", [63 x i8] zeroinitializer }, align 32
@dsp_pipeline_build._entry_ptr.19 = internal global ptr @dsp_pipeline_build._entry.17, section ".printk_index", align 4
@dsp_pipeline_build._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: element not found, skipping: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@dsp_pipeline_build._entry_ptr.22 = internal global ptr @dsp_pipeline_build._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"args\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Name:        %s\0A%s%s%sDescription: %s\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Default:     \00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"elements_class\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 34, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 85, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"dsp_elements\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 31, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"element_attributes\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 55, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 98, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 127, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 133, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 152, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 209, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 212, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 213, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 224, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 244, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 258, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 56, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 45, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 47, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 47, i32 47 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [37 x i8] c"../drivers/isdn/mISDN/dsp_pipeline.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 49, i32 29 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_mISDN_dsp_element_register, ptr @__ksymtab_mISDN_dsp_element_unregister, ptr @dsp_pipeline_build._entry, ptr @dsp_pipeline_build._entry.17, ptr @dsp_pipeline_build._entry.20, ptr @dsp_pipeline_build._entry_ptr, ptr @dsp_pipeline_build._entry_ptr.19, ptr @dsp_pipeline_build._entry_ptr.22, ptr @dsp_pipeline_module_exit._entry, ptr @dsp_pipeline_module_exit._entry_ptr, ptr @mISDN_dsp_element_register._entry, ptr @mISDN_dsp_element_register._entry.4, ptr @mISDN_dsp_element_register._entry_ptr, ptr @mISDN_dsp_element_register._entry_ptr.6, ptr @mISDN_dsp_element_unregister._entry, ptr @mISDN_dsp_element_unregister._entry_ptr, ptr @elements_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dsp_elements, ptr @element_attributes, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @dsp_pipeline_module_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elements_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_dsp_element_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_elements to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @element_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_dsp_element_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_dsp_element_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_pipeline_module_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_pipeline_module_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_pipeline_build._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_pipeline_build._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_pipeline_build._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDN_dsp_element_register(ptr noundef %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %elem, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 944) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %elem, ptr %call7.i.i, align 8
  %2 = load ptr, ptr @elements_class, align 4
  %dev = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 1
  %class = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 1, i32 33
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %class, align 4
  %release = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 1, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mISDN_dsp_dev_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %elem, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elem, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %7) #9
  %call11 = tail call i32 @device_register(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elem, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %9) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %list = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsp_elements, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef nonnull @dsp_elements) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @dsp_elements, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dsp_elements, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.dsp_element_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %call18 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @element_attributes) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end23

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #13
  tail call void @device_unregister(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %list_add_tail.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call18, %do.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mISDN_dsp_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr i8, ptr %dev, i32 928
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_dsp_element_unregister(ptr noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %elem, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in.in = phi ptr [ %.pn.in, %for.body.for.cond_crit_edge ], [ @dsp_elements, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @dsp_elements
  br i1 %cmp.not, label %do.end, label %for.body

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn.in, i32 -936
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry1.0, align 8
  %cmp7 = icmp eq ptr %2, %elem
  br i1 %cmp7, label %if.then8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %.pn.in, i32 -928
  tail call void @device_unregister(ptr noundef %dev) #9
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elem, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_pipeline_module_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @dsp_pipeline_module_init.__key) #9
  store ptr %call, ptr @elements_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @dsp_hwec_init() #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_hwec_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_pipeline_module_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsp_hwec_exit() #9
  %0 = load ptr, ptr @elements_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  %1 = load ptr, ptr @dsp_elements, align 4
  %cmp.not19 = icmp eq ptr %1, @dsp_elements
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in20, i32 -936
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1.0, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %14) #13
  tail call void @kfree(ptr noundef %entry1.0) #9
  %cmp.not = icmp eq ptr %.pn, @dsp_elements
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_hwec_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_pipeline_init(ptr noundef %pipeline) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pipeline, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %list = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_pipeline_destroy(ptr noundef %pipeline) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pipeline, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %list.i = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list.i, align 4
  %cmp.not32.i = icmp eq ptr %1, %list.i
  br i1 %cmp.not32.i, label %if.end.return_crit_edge, label %for.body.lr.ph.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr13.i = getelementptr i8, ptr %pipeline, i32 -70508
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in33.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %.pn36.i, %if.end.i.for.body.i_crit_edge ]
  %entry1.035.i = getelementptr i8, ptr %.pn.in33.i, i32 -8
  %2 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn36.i = load ptr, ptr %.pn.in33.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %entry1.035.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1.035.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_hwec to i32))
  %13 = load ptr, ptr @dsp_hwec, align 4
  %cmp10.i = icmp eq ptr %12, %13
  br i1 %cmp10.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_hwec_disable(ptr noundef %add.ptr13.i) #9
  br label %if.end.i

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %free.i = getelementptr inbounds %struct.mISDN_dsp_element, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free.i, align 4
  %p.i = getelementptr i8, ptr %.pn.in33.i, i32 -4
  %16 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.i, align 4
  tail call void %15(ptr noundef %17) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %entry1.035.i) #9
  %cmp.not.i = icmp eq ptr %.pn36.i, %list.i
  br i1 %cmp.not.i, label %if.end.i.return_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_pipeline_build(ptr noundef %pipeline, ptr noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  %next = alloca ptr, align 4
  %tok = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tok) #9
  %tobool.not = icmp eq ptr %pipeline, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i = icmp eq ptr %1, %list
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %for.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr13.i = getelementptr i8, ptr %pipeline, i32 -70508
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in33.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %.pn36.i, %if.end.i.for.body.i_crit_edge ]
  %entry1.035.i = getelementptr i8, ptr %.pn.in33.i, i32 -8
  %2 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn36.i = load ptr, ptr %.pn.in33.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %entry1.035.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1.035.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_hwec to i32))
  %13 = load ptr, ptr @dsp_hwec, align 4
  %cmp10.i = icmp eq ptr %12, %13
  br i1 %cmp10.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_hwec_disable(ptr noundef %add.ptr13.i) #9
  br label %if.end.i

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %free.i = getelementptr inbounds %struct.mISDN_dsp_element, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free.i, align 4
  %p.i = getelementptr i8, ptr %.pn.in33.i, i32 -4
  %16 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.i, align 4
  tail call void %15(ptr noundef %17) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %entry1.035.i) #9
  %cmp.not.i = icmp eq ptr %.pn36.i, %list
  br i1 %cmp.not.i, label %if.end.i.if.end4_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call noalias ptr @kstrdup(ptr noundef %cfg, i32 noundef 2592) #9
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5, ptr %next, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %while.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end4
  %call9131 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.12) #9
  %19 = ptrtoint ptr %tok to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9131, ptr %tok, align 4
  %tobool10.not132 = icmp eq ptr %call9131, null
  br i1 %tobool10.not132, label %while.cond.preheader._out_crit_edge, label %while.body.lr.ph

while.cond.preheader._out_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %_out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %prev.i124 = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1, i32 1
  %add.ptr45 = getelementptr i8, ptr %pipeline, i32 -70508
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call9133 = phi ptr [ %call9131, %while.body.lr.ph ], [ %call9, %while.cond.backedge.while.body_crit_edge ]
  %20 = ptrtoint ptr %call9133 to i32
  call void @__asan_load1_noabort(i32 %20)
  %char0 = load i8, ptr %call9133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool12.not = icmp eq i8 %char0, 0
  br i1 %tobool12.not, label %while.body.while.cond.backedge_crit_edge, label %if.end14

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end14:                                         ; preds = %while.body
  %call15 = call ptr @strsep(ptr noundef nonnull %tok, ptr noundef nonnull @.str.13) #9
  %call16 = call ptr @strsep(ptr noundef nonnull %tok, ptr noundef nonnull @.str.14) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %land.lhs.true

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  %spec.store.select = select i1 %tobool18.not, ptr null, ptr %call16
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %if.end14.if.end20_crit_edge
  %args.0 = phi ptr [ %spec.store.select, %land.lhs.true ], [ null, %if.end14.if.end20_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end20
  %.pn.in.in = phi ptr [ @dsp_elements, %if.end20 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @dsp_elements
  br i1 %cmp.not, label %do.end74, label %for.body

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn.in, i32 -936
  %24 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entry1.0, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call29 = call i32 @strcmp(ptr noundef %27, ptr noundef %call15) #14
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then31:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2592, i32 noundef 16) #12
  %tobool34.not = icmp eq ptr %call7.i, null
  br i1 %tobool34.not, label %do.end, label %if.end39

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %30) #13
  br label %_out

if.end39:                                         ; preds = %if.then31
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %call7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_hwec to i32))
  %32 = load ptr, ptr @dsp_hwec, align 4
  %cmp41 = icmp eq ptr %25, %32
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  call void @dsp_hwec_enable(ptr noundef %add.ptr45, ptr noundef %args.0) #9
  %list46 = getelementptr inbounds %struct.dsp_pipeline_entry, ptr %call7.i, i32 0, i32 2
  %33 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i124, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list46, ptr noundef %34, ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then42.while.cond.backedge_crit_edge

if.then42.while.cond.backedge_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list46, ptr %prev.i124, align 4
  %36 = ptrtoint ptr %list46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list, ptr %list46, align 8
  %prev3.i.i = getelementptr inbounds %struct.dsp_pipeline_entry, ptr %call7.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list46, ptr %34, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end39
  %new = getelementptr inbounds %struct.mISDN_dsp_element, ptr %25, i32 0, i32 1
  %39 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new, align 4
  %call48 = call ptr %40(ptr noundef %args.0) #9
  %p = getelementptr inbounds %struct.dsp_pipeline_entry, ptr %call7.i, i32 0, i32 1
  %41 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call48, ptr %p, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end57, label %if.then51

if.then51:                                        ; preds = %if.else
  %list52 = getelementptr inbounds %struct.dsp_pipeline_entry, ptr %call7.i, i32 0, i32 2
  %42 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i124, align 4
  %call.i.i125 = call zeroext i1 @__list_add_valid(ptr noundef %list52, ptr noundef %43, ptr noundef %list) #9
  br i1 %call.i.i125, label %if.end.i.i127, label %if.then51.while.cond.backedge_crit_edge

if.then51.while.cond.backedge_crit_edge:          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end.i.i127:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list52, ptr %prev.i124, align 4
  %45 = ptrtoint ptr %list52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %list52, align 8
  %prev3.i.i126 = getelementptr inbounds %struct.dsp_pipeline_entry, ptr %call7.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev3.i.i126 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i126, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list52, ptr %43, align 4
  br label %while.cond.backedge

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %25, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef %49) #13
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %while.cond.backedge

do.end74:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, ptr noundef %call15) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end74, %do.end57, %if.end.i.i127, %if.then51.while.cond.backedge_crit_edge, %if.end.i.i, %if.then42.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call9 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.12) #9
  %50 = ptrtoint ptr %tok to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9, ptr %tok, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.cond.backedge._out_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge._out_crit_edge:               ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %_out

_out:                                             ; preds = %while.cond.backedge._out_crit_edge, %do.end, %while.cond.preheader._out_crit_edge
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %list, align 4
  %cmp.i129.not = icmp ne ptr %52, %list
  %spec.select = zext i1 %cmp.i129.not to i32
  %53 = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select, ptr %53, align 4
  call void @kfree(ptr noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %_out, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tok) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_hwec_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_pipeline_process_tx(ptr noundef readonly %pipeline, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pipeline, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %list, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %list
  br i1 %cmp.not21, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %if.end.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn22, i32 -8
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry1.0, align 4
  %process_tx = getelementptr inbounds %struct.mISDN_dsp_element, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %process_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %process_tx, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %p = getelementptr i8, ptr %.pn22, i32 -4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  tail call void %4(ptr noundef %6, ptr noundef %data, i32 noundef %len) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_pipeline_process_rx(ptr noundef readonly %pipeline, ptr noundef %data, i32 noundef %len, i32 noundef %txlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pipeline, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1
  %prev = getelementptr inbounds %struct.dsp_pipeline, ptr %pipeline, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %prev, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %list
  br i1 %cmp.not21, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %if.end.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn22, i32 -8
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry1.0, align 4
  %process_rx = getelementptr inbounds %struct.mISDN_dsp_element, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %process_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %process_rx, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %p = getelementptr i8, ptr %.pn22, i32 -4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  tail call void %4(ptr noundef %6, ptr noundef %data, i32 noundef %len, i32 noundef %txlen) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %prev11 = getelementptr inbounds %struct.list_head, ptr %.pn22, i32 0, i32 1
  %7 = ptrtoint ptr %prev11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %prev11, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_show_args(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %num_args = getelementptr inbounds %struct.mISDN_dsp_element, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %num_args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp36 = icmp sgt i32 %4, 0
  br i1 %cmp36, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %args = getelementptr inbounds %struct.mISDN_dsp_element, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.038 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 4
  %arrayidx = getelementptr %struct.mISDN_dsp_element_arg, ptr %6, i32 %i.037
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %def = getelementptr %struct.mISDN_dsp_element_arg, ptr %6, i32 %i.037, i32 1
  %9 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %def, align 4
  %tobool.not = icmp eq ptr %10, null
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %spec.select = select i1 %tobool.not, ptr @.str.26, ptr %10
  %cond15 = select i1 %tobool.not, ptr @.str.26, ptr @.str.27
  %desc = getelementptr %struct.mISDN_dsp_element_arg, ptr %6, i32 %i.037, i32 2
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.038, ptr noundef nonnull @.str.24, ptr noundef %8, ptr noundef nonnull %cond, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond15, ptr noundef %12)
  %add.ptr = getelementptr i8, ptr %p.038, i32 %call18
  %inc = add nuw nsw i32 %i.037, 1
  %13 = ptrtoint ptr %num_args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_args, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %add.ptr, %for.body.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_hwec_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 85, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 88, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mISDN_dsp_element_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mISDN_dsp_element_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 98, i32 4}
!10 = !{ptr @mISDN_dsp_element_register._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mISDN_dsp_element_register._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mISDN_dsp_element_register, !13, !"__ksymtab_mISDN_dsp_element_register", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 113, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 127, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mISDN_dsp_element_unregister._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mISDN_dsp_element_unregister._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_mISDN_dsp_element_unregister, !20, !"__ksymtab_mISDN_dsp_element_unregister", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 129, i32 1}
!21 = !{ptr @dsp_pipeline_module_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 133, i32 19}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 152, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dsp_pipeline_module_exit._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dsp_pipeline_module_exit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 209, i32 30}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 212, i32 23}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 213, i32 23}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 224, i32 6}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dsp_pipeline_build._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dsp_pipeline_build._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 244, i32 7}
!42 = !{ptr @dsp_pipeline_build._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dsp_pipeline_build._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 258, i32 4}
!46 = !{ptr @dsp_pipeline_build._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dsp_pipeline_build._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @elements_class, !49, !"elements_class", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 34, i32 22}
!50 = !{ptr @dsp_elements, !51, !"dsp_elements", i1 false, i1 false}
!51 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 31, i32 8}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 56, i32 2}
!54 = !{ptr @element_attributes, !55, !"element_attributes", i1 false, i1 false}
!55 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 55, i32 32}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 45, i32 19}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 47, i32 29}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 47, i32 47}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/mISDN/dsp_pipeline.c", i32 49, i32 29}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
