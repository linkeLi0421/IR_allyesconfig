; ModuleID = '/llk/IR_all_yes/drivers/iio/industrialio-sw-trigger.c_pt.bc'
source_filename = "../drivers/iio/industrialio-sw-trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iio_register_sw_trigger_type\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_register_sw_trigger_type\09\09\09\09"
module asm "\09.long\09__crc_iio_register_sw_trigger_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_register_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_register_sw_trigger_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_register_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_unregister_sw_trigger_type\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_unregister_sw_trigger_type\09\09\09\09"
module asm "\09.long\09__crc_iio_unregister_sw_trigger_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_unregister_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_unregister_sw_trigger_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_unregister_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_sw_trigger_create\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_sw_trigger_create\09\09\09\09"
module asm "\09.long\09__crc_iio_sw_trigger_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_sw_trigger_create:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_sw_trigger_create\22\09\09\09\09\09"
module asm "__kstrtabns_iio_sw_trigger_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iio_sw_trigger_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_iio_sw_trigger_destroy\09\09\09\09"
module asm "\09.long\09__crc_iio_sw_trigger_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_sw_trigger_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_sw_trigger_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_iio_sw_trigger_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iio_sw_trigger_type = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.iio_sw_trigger = type { ptr, ptr, %struct.config_group }
%struct.iio_sw_trigger_ops = type { ptr, ptr }

@iio_trigger_types_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_trigger_types_lock, i64 52), ptr getelementptr (i8, ptr @iio_trigger_types_lock, i64 52) }, ptr @iio_trigger_types_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@iio_trigger_types_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @iio_trigger_types_list, ptr @iio_trigger_types_list }, [24 x i8] zeroinitializer }, align 32
@iio_triggers_group = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iio_trigger_type_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @trigger_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_iio_register_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_register_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_register_sw_trigger_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_register_sw_trigger_type to i32), ptr @__kstrtab_iio_register_sw_trigger_type, ptr @__kstrtabns_iio_register_sw_trigger_type }, section "___ksymtab+iio_register_sw_trigger_type", align 4
@__kstrtab_iio_unregister_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_unregister_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_unregister_sw_trigger_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_unregister_sw_trigger_type to i32), ptr @__kstrtab_iio_unregister_sw_trigger_type, ptr @__kstrtabns_iio_unregister_sw_trigger_type }, section "___ksymtab+iio_unregister_sw_trigger_type", align 4
@iio_sw_trigger_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Invalid trigger type: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iio_sw_trigger_create\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/iio/industrialio-sw-trigger.c\00", [58 x i8] zeroinitializer }, align 32
@iio_sw_trigger_create._entry_ptr = internal global ptr @iio_sw_trigger_create._entry, section ".printk_index", align 4
@__kstrtab_iio_sw_trigger_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_sw_trigger_create = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_sw_trigger_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_sw_trigger_create to i32), ptr @__kstrtab_iio_sw_trigger_create, ptr @__kstrtabns_iio_sw_trigger_create }, section "___ksymtab+iio_sw_trigger_create", align 4
@__kstrtab_iio_sw_trigger_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_sw_trigger_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_sw_trigger_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_sw_trigger_destroy to i32), ptr @__kstrtab_iio_sw_trigger_destroy, ptr @__kstrtabns_iio_sw_trigger_destroy }, section "___ksymtab+iio_sw_trigger_destroy", align 4
@__initcall__kmod_industrialio_sw_trigger__183_169_iio_sw_trigger_init6 = internal global ptr @iio_sw_trigger_init, section ".initcall6.init", align 4
@__exitcall_iio_sw_trigger_exit = internal global ptr @iio_sw_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [71 x i8] c"industrialio_sw_trigger.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [77 x i8] c"industrialio_sw_trigger.description=Industrial I/O software triggers support\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [65 x i8] c"industrialio_sw_trigger.file=drivers/iio/industrialio-sw-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [39 x i8] c"industrialio_sw_trigger.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iio_trigger_types_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iio_trigger_types_lock\00", [41 x i8] zeroinitializer }, align 32
@trigger_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @trigger_make_group, ptr null, ptr null, ptr @trigger_drop_group }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@iio_configfs_subsys = external dso_local global %struct.configfs_subsystem, align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"triggers\00", [23 x i8] zeroinitializer }, align 32
@iio_triggers_group_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"iio_trigger_types_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"iio_trigger_types_list\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 25, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"iio_triggers_group\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 18, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"iio_trigger_type_group_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 156, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 103, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 26, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"trigger_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 151, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 137, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 165, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"iio_triggers_group_type\00", align 1
@___asan_gen_.47 = private constant [41 x i8] c"../drivers/iio/industrialio-sw-trigger.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 21, i32 38 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_iio_sw_trigger_exit, ptr @__initcall__kmod_industrialio_sw_trigger__183_169_iio_sw_trigger_init6, ptr @__ksymtab_iio_register_sw_trigger_type, ptr @__ksymtab_iio_sw_trigger_create, ptr @__ksymtab_iio_sw_trigger_destroy, ptr @__ksymtab_iio_unregister_sw_trigger_type, ptr @iio_sw_trigger_create._entry, ptr @iio_sw_trigger_create._entry_ptr, ptr @iio_sw_trigger_exit, ptr @iio_trigger_types_lock, ptr @iio_trigger_types_list, ptr @iio_triggers_group, ptr @iio_trigger_type_group_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @trigger_ops, ptr @.str.5, ptr @.str.6, ptr @iio_triggers_group_type], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_trigger_types_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_trigger_types_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_triggers_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_trigger_type_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_sw_trigger_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_triggers_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iio_register_sw_trigger_type(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iio_trigger_types_lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @iio_trigger_types_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @iio_trigger_types_list
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %iter.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %iter.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iter.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %1) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__iio_find_sw_trigger_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

__iio_find_sw_trigger_type.exit:                  ; preds = %for.body.i
  %iter.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %iter.0.i.le, null
  br i1 %tobool.not, label %__iio_find_sw_trigger_type.exit.if.else_crit_edge, label %if.end

__iio_find_sw_trigger_type.exit.if.else_crit_edge: ; preds = %__iio_find_sw_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %__iio_find_sw_trigger_type.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %list = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 3
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iio_trigger_types_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef nonnull @iio_trigger_types_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @iio_trigger_types_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @iio_trigger_types_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %5, align 4
  br label %if.end5

if.end:                                           ; preds = %__iio_find_sw_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i, %if.else.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %9 = load ptr, ptr @iio_triggers_group, align 4
  %10 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t, align 4
  %call7 = tail call ptr @configfs_register_default_group(ptr noundef %9, ptr noundef %11, ptr noundef nonnull @iio_trigger_type_group_type) #5
  %group = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 4
  %12 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %group, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %call7 to i32
  %spec.select = select i1 %cmp.i, i32 %13, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end
  %retval.0 = phi i32 [ -16, %if.end ], [ %spec.select, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_register_default_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_unregister_sw_trigger_type(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iio_trigger_types_lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @iio_trigger_types_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @iio_trigger_types_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %iter.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %iter.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iter.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %1) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__iio_find_sw_trigger_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

__iio_find_sw_trigger_type.exit:                  ; preds = %for.body.i
  %iter.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %iter.0.i.le, null
  br i1 %tobool.not, label %__iio_find_sw_trigger_type.exit.if.end_crit_edge, label %if.then

__iio_find_sw_trigger_type.exit.if.end_crit_edge: ; preds = %__iio_find_sw_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %__iio_find_sw_trigger_type.exit
  %list = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %__iio_find_sw_trigger_type.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %group = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %t, i32 0, i32 4
  %13 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %14) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_default_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iio_sw_trigger_create(ptr noundef %type, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iio_trigger_types_lock, i32 noundef 0) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ @iio_trigger_types_list, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @iio_trigger_types_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.do.end_crit_edge, label %for.body.i.i

for.cond.i.i.do.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i.i:                                     ; preds = %for.cond.i.i
  %iter.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %1 = ptrtoint ptr %iter.0.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iter.0.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %type) #8
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__iio_find_sw_trigger_type.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

__iio_find_sw_trigger_type.exit.i:                ; preds = %for.body.i.i
  %iter.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -12
  %tobool.not.i = icmp eq ptr %iter.0.i.i.le, null
  br i1 %tobool.not.i, label %__iio_find_sw_trigger_type.exit.i.do.end_crit_edge, label %land.lhs.true.i

__iio_find_sw_trigger_type.exit.i.do.end_crit_edge: ; preds = %__iio_find_sw_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.i:                                  ; preds = %__iio_find_sw_trigger_type.exit.i
  %owner.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %3 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner.i, align 4
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #5
  br i1 %call2.i, label %if.end, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %__iio_find_sw_trigger_type.exit.i.do.end_crit_edge, %for.cond.i.i.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %type) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %ops = getelementptr i8, ptr %.pn.i.i, i32 -4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call3 = tail call ptr %8(ptr noundef %name) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_module_put, label %if.end6

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %trigger_type = getelementptr inbounds %struct.iio_sw_trigger, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %trigger_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %iter.0.i.i.le, ptr %trigger_type, align 4
  br label %cleanup

out_module_put:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %out_module_put, %if.end6, %do.end
  %retval.0 = phi ptr [ %call3, %out_module_put ], [ %call3, %if.end6 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iio_sw_trigger_destroy(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_type = getelementptr inbounds %struct.iio_sw_trigger, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %trigger_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_type, align 4
  %ops = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.iio_sw_trigger_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  %call = tail call i32 %5(ptr noundef %t) #5
  %owner = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_sw_trigger_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @configfs_register_default_group(ptr noundef nonnull @iio_configfs_subsys, ptr noundef nonnull @.str.6, ptr noundef nonnull @iio_triggers_group_type) #5
  store ptr %call, ptr @iio_triggers_group, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_sw_trigger_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @iio_triggers_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trigger_make_group(ptr nocapture noundef readonly %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group, align 4
  %call = tail call ptr @iio_sw_trigger_create(ptr noundef %1, ptr noundef %name)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %group3 = getelementptr inbounds %struct.iio_sw_trigger, ptr %call, i32 0, i32 2
  %call5 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %group3, ptr noundef nonnull @.str.5, ptr noundef %name) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %group3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_drop_group(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %trigger_type.i = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %trigger_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_type.i, align 4
  %ops.i = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %remove.i = getelementptr inbounds %struct.iio_sw_trigger_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove.i, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #5
  %owner.i = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %7) #5
  tail call void @config_item_put(ptr noundef %item) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_item_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_iio_register_sw_trigger_type, !1, !"__ksymtab_iio_register_sw_trigger_type", i1 false, i1 false}
!1 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 66, i32 1}
!2 = !{ptr @__ksymtab_iio_unregister_sw_trigger_type, !3, !"__ksymtab_iio_unregister_sw_trigger_type", i1 false, i1 false}
!3 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 80, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 103, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @iio_sw_trigger_create._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @iio_sw_trigger_create._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_iio_sw_trigger_create, !11, !"__ksymtab_iio_sw_trigger_create", i1 false, i1 false}
!11 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 117, i32 1}
!12 = !{ptr @__ksymtab_iio_sw_trigger_destroy, !13, !"__ksymtab_iio_sw_trigger_destroy", i1 false, i1 false}
!13 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 126, i32 1}
!14 = !{ptr @__initcall__kmod_industrialio_sw_trigger__183_169_iio_sw_trigger_init6, !15, !"__initcall__kmod_industrialio_sw_trigger__183_169_iio_sw_trigger_init6", i1 false, i1 false}
!15 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 169, i32 1}
!16 = !{ptr @__exitcall_iio_sw_trigger_exit, !17, !"__exitcall_iio_sw_trigger_exit", i1 false, i1 false}
!17 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 175, i32 1}
!18 = !{ptr @__UNIQUE_ID_author184, !19, !"__UNIQUE_ID_author184", i1 false, i1 false}
!19 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 177, i32 1}
!20 = !{ptr @__UNIQUE_ID_description185, !21, !"__UNIQUE_ID_description185", i1 false, i1 false}
!21 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 178, i32 1}
!22 = !{ptr @__UNIQUE_ID_file186, !23, !"__UNIQUE_ID_file186", i1 false, i1 false}
!23 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 179, i32 1}
!24 = !{ptr @__UNIQUE_ID_license187, !23, !"__UNIQUE_ID_license187", i1 false, i1 false}
!25 = !{ptr @iio_triggers_group, !26, !"iio_triggers_group", i1 false, i1 false}
!26 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 18, i32 29}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 26, i32 8}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @iio_trigger_types_lock, !28, !"iio_trigger_types_lock", i1 false, i1 false}
!31 = !{ptr @iio_trigger_types_list, !32, !"iio_trigger_types_list", i1 false, i1 false}
!32 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 25, i32 8}
!33 = !{ptr @iio_trigger_type_group_type, !34, !"iio_trigger_type_group_type", i1 false, i1 false}
!34 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 156, i32 38}
!35 = !{ptr @trigger_ops, !36, !"trigger_ops", i1 false, i1 false}
!36 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 151, i32 41}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 137, i32 42}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 165, i32 7}
!41 = !{ptr @iio_triggers_group_type, !42, !"iio_triggers_group_type", i1 false, i1 false}
!42 = !{!"../drivers/iio/industrialio-sw-trigger.c", i32 21, i32 38}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
