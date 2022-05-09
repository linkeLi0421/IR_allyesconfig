; ModuleID = '/llk/IR_all_yes/sound/firewire/iso-resources.c_pt.bc'
source_filename = "../sound/firewire/iso-resources.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fw_iso_resources_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resources_init\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resources_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resources_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resources_init\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resources_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_resources_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resources_destroy\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resources_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resources_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resources_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resources_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_resources_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resources_allocate\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resources_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resources_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resources_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resources_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_resources_update\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resources_update\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resources_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resources_update:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resources_update\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resources_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_iso_resources_free\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_iso_resources_free\09\09\09\09"
module asm "\09.long\09__crc_fw_iso_resources_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_iso_resources_free:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_iso_resources_free\22\09\09\09\09\09"
module asm "__kstrtabns_fw_iso_resources_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@fw_iso_resources_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&r->mutex\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_fw_iso_resources_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resources_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resources_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resources_init to i32), ptr @__kstrtab_fw_iso_resources_init, ptr @__kstrtabns_fw_iso_resources_init }, section "___ksymtab+fw_iso_resources_init", align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/firewire/iso-resources.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_fw_iso_resources_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resources_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resources_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resources_destroy to i32), ptr @__kstrtab_fw_iso_resources_destroy, ptr @__kstrtabns_fw_iso_resources_destroy }, section "___ksymtab+fw_iso_resources_destroy", align 4
@fw_iso_resources_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"isochronous resources exhausted\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fw_iso_resources_allocate\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fw_iso_resources_allocate._entry_ptr = internal global ptr @fw_iso_resources_allocate._entry, section ".printk_index", align 4
@fw_iso_resources_allocate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"isochronous resource allocation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@fw_iso_resources_allocate._entry_ptr.8 = internal global ptr @fw_iso_resources_allocate._entry.6, section ".printk_index", align 4
@__kstrtab_fw_iso_resources_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resources_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resources_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resources_allocate to i32), ptr @__kstrtab_fw_iso_resources_allocate, ptr @__kstrtabns_fw_iso_resources_allocate }, section "___ksymtab+fw_iso_resources_allocate", align 4
@fw_iso_resources_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str.1, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fw_iso_resources_update\00", [40 x i8] zeroinitializer }, align 32
@fw_iso_resources_update._entry_ptr = internal global ptr @fw_iso_resources_update._entry, section ".printk_index", align 4
@fw_iso_resources_update._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.1, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fw_iso_resources_update._entry_ptr.11 = internal global ptr @fw_iso_resources_update._entry.10, section ".printk_index", align 4
@__kstrtab_fw_iso_resources_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resources_update = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resources_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resources_update to i32), ptr @__kstrtab_fw_iso_resources_update, ptr @__kstrtabns_fw_iso_resources_update }, section "___ksymtab+fw_iso_resources_update", align 4
@fw_iso_resources_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"isochronous resource deallocation failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fw_iso_resources_free\00", [42 x i8] zeroinitializer }, align 32
@fw_iso_resources_free._entry_ptr = internal global ptr @fw_iso_resources_free._entry, section ".printk_index", align 4
@__kstrtab_fw_iso_resources_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_iso_resources_free = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_iso_resources_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_iso_resources_free to i32), ptr @__kstrtab_fw_iso_resources_free, ptr @__kstrtabns_fw_iso_resources_free }, section "___ksymtab+fw_iso_resources_free", align 4
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 30, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 43, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 140, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 143, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 192, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 195, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [34 x i8] c"../sound/firewire/iso-resources.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 228, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_fw_iso_resources_allocate, ptr @__ksymtab_fw_iso_resources_destroy, ptr @__ksymtab_fw_iso_resources_free, ptr @__ksymtab_fw_iso_resources_init, ptr @__ksymtab_fw_iso_resources_update, ptr @fw_iso_resources_allocate._entry, ptr @fw_iso_resources_allocate._entry.6, ptr @fw_iso_resources_allocate._entry_ptr, ptr @fw_iso_resources_allocate._entry_ptr.8, ptr @fw_iso_resources_free._entry, ptr @fw_iso_resources_free._entry_ptr, ptr @fw_iso_resources_update._entry, ptr @fw_iso_resources_update._entry.10, ptr @fw_iso_resources_update._entry_ptr, ptr @fw_iso_resources_update._entry_ptr.11, ptr @fw_iso_resources_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_allocate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_update._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_iso_resources_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_resources_init(ptr noundef %r, ptr noundef %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %r, align 8
  %unit1 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 1
  %1 = ptrtoint ptr %unit1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %unit, ptr %unit1, align 8
  %mutex = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @fw_iso_resources_init.__key) #4
  %allocated = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 7
  %2 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %allocated, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_resources_destroy(ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 7
  %0 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allocated, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 43, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_resources_allocate(ptr noundef %r, i32 noundef %max_payload_bytes, i32 noundef %speed) #0 align 64 {
entry:
  %bandwidth = alloca i32, align 4
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %card1 = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #4
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bandwidth, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #4
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %channel, align 4, !annotation !49
  %allocated = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 7
  %8 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %allocated, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %10 = add i32 %max_payload_bytes, 15
  %add1.i = and i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %speed)
  %cmp.i = icmp slt i32 %speed, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 2, %speed
  %mul.i = shl i32 %add1.i, %sub.i
  br label %packet_bandwidth.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %sub2.i = add nsw i32 %speed, -2
  %shl3.i = shl nuw i32 1, %sub2.i
  %add4.i = add i32 %add1.i, -1
  %sub5.i = add i32 %add4.i, %shl3.i
  %div12.i = lshr i32 %sub5.i, %sub2.i
  br label %packet_bandwidth.exit

packet_bandwidth.exit:                            ; preds = %if.else.i, %if.then.i
  %s400_bytes.0.i = phi i32 [ %mul.i, %if.then.i ], [ %div12.i, %if.else.i ]
  %bandwidth25 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 4
  %11 = ptrtoint ptr %bandwidth25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %s400_bytes.0.i, ptr %bandwidth25, align 4
  %lock = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 18
  %generation = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 5
  %generation26 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 6
  %gap_count.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 23
  %bandwidth_overhead = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 5
  %reset_jiffies.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 9
  %mutex = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 2
  br label %retry_after_bus_reset

retry_after_bus_reset:                            ; preds = %if.then36, %packet_bandwidth.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %12 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generation, align 8
  %14 = ptrtoint ptr %generation26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %generation26, align 4
  %15 = ptrtoint ptr %gap_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gap_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %16)
  %cmp.i83 = icmp slt i32 %16, 63
  %mul.i84 = mul i32 %16, 97
  %div.i = sdiv i32 %mul.i84, 10
  %add.i = add nsw i32 %div.i, 89
  %cond.i = select i1 %cmp.i83, i32 %add.i, i32 512
  %17 = ptrtoint ptr %bandwidth_overhead to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %bandwidth_overhead, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i.for.cond.i_crit_edge, %retry_after_bus_reset
  %18 = ptrtoint ptr %reset_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %reset_jiffies.i, align 8
  %add.i85 = add i64 %19, 100
  %call.i = call i64 @get_jiffies_64() #4
  %sub.i86 = sub i64 %add.i85, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i86)
  %cmp.i87 = icmp slt i64 %sub.i86, 1
  br i1 %cmp.i87, label %if.end31, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  %conv.i = trunc i64 %sub.i86 to i32
  %call1.i = call i32 @schedule_timeout_interruptible(i32 noundef %conv.i) #4
  %cmp2.i = icmp slt i32 %call1.i, 1
  br i1 %cmp2.i, label %cleanup.i.for.cond.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.i.for.cond.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end31:                                         ; preds = %for.cond.i
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %20 = ptrtoint ptr %bandwidth25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth25, align 4
  %22 = ptrtoint ptr %bandwidth_overhead to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bandwidth_overhead, align 8
  %add = add i32 %23, %21
  %24 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %bandwidth, align 4
  %25 = ptrtoint ptr %generation26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %generation26, align 4
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %r, align 8
  call void @fw_iso_resource_manage(ptr noundef %5, i32 noundef %26, i64 noundef %28, ptr noundef nonnull %channel, ptr noundef nonnull %bandwidth, i1 noundef zeroext true) #4
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel, align 4
  %cmp35 = icmp eq i32 %30, -11
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %mutex) #4
  br label %retry_after_bus_reset

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp39 = icmp sgt i32 %30, -1
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %channel41 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 3
  %31 = ptrtoint ptr %channel41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %channel41, align 8
  %32 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %allocated, align 8
  br label %if.end56

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %30)
  %cmp43 = icmp eq i32 %30, -16
  %33 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unit, align 8
  br i1 %cmp43, label %do.end47, label %do.end52

do.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2) #7
  br label %if.end56

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.7) #7
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %do.end47, %if.then40
  call void @mutex_unlock(ptr noundef %mutex) #4
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %cleanup.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -77, %do.end ], [ %36, %if.end56 ], [ -512, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resource_manage(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_iso_resources_update(ptr noundef %r) #0 align 64 {
entry:
  %bandwidth = alloca i32, align 4
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %card1 = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #4
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %channel, align 4, !annotation !49
  %mutex = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %allocated = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 7
  %7 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %allocated, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %generation = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %generation, align 8
  %generation3 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 6
  %11 = ptrtoint ptr %generation3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %generation3, align 4
  %gap_count.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 23
  %12 = ptrtoint ptr %gap_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gap_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %13)
  %cmp.i = icmp slt i32 %13, 63
  %mul.i = mul i32 %13, 97
  %div.i = sdiv i32 %mul.i, 10
  %add.i = add nsw i32 %div.i, 89
  %cond.i = select i1 %cmp.i, i32 %add.i, i32 512
  %bandwidth_overhead = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 5
  %14 = ptrtoint ptr %bandwidth_overhead to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %bandwidth_overhead, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  %bandwidth6 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 4
  %15 = ptrtoint ptr %bandwidth6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth6, align 4
  %17 = ptrtoint ptr %bandwidth_overhead to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_overhead, align 8
  %add = add i32 %18, %16
  %19 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %bandwidth, align 4
  %20 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation3, align 4
  %channel9 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 3
  %22 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel9, align 8
  %sh_prom = zext i32 %23 to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @fw_iso_resource_manage(ptr noundef %5, i32 noundef %21, i64 noundef %shl, ptr noundef nonnull %channel, ptr noundef nonnull %bandwidth, i1 noundef zeroext true) #4
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp = icmp sgt i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %25)
  %cmp10.not = icmp eq i32 %25, -11
  %or.cond = or i1 %cmp, %cmp10.not
  br i1 %or.cond, label %if.end.if.end22_crit_edge, label %if.then11

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %allocated, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %25)
  %cmp13 = icmp eq i32 %25, -16
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unit, align 8
  %.str.2..str.7 = select i1 %cmp13, ptr @.str.2, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull %.str.2..str.7) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.end.if.end22_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #4
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  %retval.0 = phi i32 [ %30, %if.end22 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_iso_resources_free(ptr noundef %r) #0 align 64 {
entry:
  %bandwidth = alloca i32, align 4
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #4
  %0 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bandwidth, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #4
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %channel, align 4, !annotation !49
  %unit = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %card2 = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card2, align 4
  %mutex = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %allocated = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 7
  %8 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %allocated, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %bandwidth4 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 4
  %10 = ptrtoint ptr %bandwidth4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bandwidth4, align 4
  %bandwidth_overhead = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 5
  %12 = ptrtoint ptr %bandwidth_overhead to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bandwidth_overhead, align 8
  %add = add i32 %13, %11
  %14 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %bandwidth, align 4
  %generation = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 6
  %15 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %generation, align 4
  %channel5 = getelementptr inbounds %struct.fw_iso_resources, ptr %r, i32 0, i32 3
  %17 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel5, align 8
  %sh_prom = zext i32 %18 to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @fw_iso_resource_manage(ptr noundef %7, i32 noundef %16, i64 noundef %shl, ptr noundef nonnull %channel, ptr noundef nonnull %bandwidth, i1 noundef zeroext false) #4
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6 = icmp slt i32 %20, 0
  br i1 %cmp6, label %do.end, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then3.if.end9_crit_edge
  %23 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %allocated, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @fw_iso_resources_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/firewire/iso-resources.c", i32 30, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_fw_iso_resources_init, !4, !"__ksymtab_fw_iso_resources_init", i1 false, i1 false}
!4 = !{!"../sound/firewire/iso-resources.c", i32 35, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/firewire/iso-resources.c", i32 43, i32 2}
!7 = !{ptr @__ksymtab_fw_iso_resources_destroy, !8, !"__ksymtab_fw_iso_resources_destroy", i1 false, i1 false}
!8 = !{!"../sound/firewire/iso-resources.c", i32 46, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/firewire/iso-resources.c", i32 140, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fw_iso_resources_allocate._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @fw_iso_resources_allocate._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/iso-resources.c", i32 143, i32 4}
!18 = !{ptr @fw_iso_resources_allocate._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @fw_iso_resources_allocate._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_fw_iso_resources_allocate, !21, !"__ksymtab_fw_iso_resources_allocate", i1 false, i1 false}
!21 = !{!"../sound/firewire/iso-resources.c", i32 151, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/iso-resources.c", i32 192, i32 4}
!24 = !{ptr @fw_iso_resources_update._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fw_iso_resources_update._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @fw_iso_resources_update._entry.10, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../sound/firewire/iso-resources.c", i32 195, i32 4}
!28 = !{ptr @fw_iso_resources_update._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_fw_iso_resources_update, !30, !"__ksymtab_fw_iso_resources_update", i1 false, i1 false}
!30 = !{!"../sound/firewire/iso-resources.c", i32 203, i32 1}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/firewire/iso-resources.c", i32 228, i32 4}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fw_iso_resources_free._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @fw_iso_resources_free._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_fw_iso_resources_free, !37, !"__ksymtab_fw_iso_resources_free", i1 false, i1 false}
!37 = !{!"../sound/firewire/iso-resources.c", i32 236, i32 1}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"auto-init"}
