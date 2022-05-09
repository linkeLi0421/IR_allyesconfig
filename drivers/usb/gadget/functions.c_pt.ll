; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/functions.c_pt.bc'
source_filename = "../drivers/usb/gadget/functions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_get_function_instance\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_get_function_instance\09\09\09\09"
module asm "\09.long\09__crc_usb_get_function_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_function_instance\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_get_function\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_get_function\09\09\09\09"
module asm "\09.long\09__crc_usb_get_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_put_function_instance\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_put_function_instance\09\09\09\09"
module asm "\09.long\09__crc_usb_put_function_instance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_function_instance\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_put_function\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_put_function\09\09\09\09"
module asm "\09.long\09__crc_usb_put_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_function_register\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_function_register\09\09\09\09"
module asm "\09.long\09__crc_usb_function_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_function_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_function_unregister\09\09\09\09"
module asm "\09.long\09__crc_usb_function_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbfunc:%s\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_usb_get_function_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_function_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_function_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_function_instance to i32), ptr @__kstrtab_usb_get_function_instance, ptr @__kstrtabns_usb_get_function_instance }, section "___ksymtab_gpl+usb_get_function_instance", align 4
@__kstrtab_usb_get_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_function to i32), ptr @__kstrtab_usb_get_function, ptr @__kstrtabns_usb_get_function }, section "___ksymtab_gpl+usb_get_function", align 4
@__kstrtab_usb_put_function_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_function_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_function_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_function_instance to i32), ptr @__kstrtab_usb_put_function_instance, ptr @__kstrtabns_usb_put_function_instance }, section "___ksymtab_gpl+usb_put_function_instance", align 4
@__kstrtab_usb_put_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_function to i32), ptr @__kstrtab_usb_put_function, ptr @__kstrtabns_usb_put_function }, section "___ksymtab_gpl+usb_put_function", align 4
@func_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @func_lock, i64 52), ptr getelementptr (i8, ptr @func_lock, i64 52) }, ptr @func_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@func_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @func_list, ptr @func_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_usb_function_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_register to i32), ptr @__kstrtab_usb_function_register, ptr @__kstrtabns_usb_function_register }, section "___ksymtab_gpl+usb_function_register", align 4
@__kstrtab_usb_function_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_unregister to i32), ptr @__kstrtab_usb_function_unregister, ptr @__kstrtabns_usb_function_unregister }, section "___ksymtab_gpl+usb_function_unregister", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"func_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"func_lock\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 50, i32 8 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"func_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"func_list\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 9, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [34 x i8] c"../drivers/usb/gadget/functions.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 10, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_usb_function_register, ptr @__ksymtab_usb_function_unregister, ptr @__ksymtab_usb_get_function, ptr @__ksymtab_usb_get_function_instance, ptr @__ksymtab_usb_put_function, ptr @__ksymtab_usb_put_function_instance, ptr @.str, ptr @func_lock, ptr @func_list, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_get_function_instance(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @func_lock, i32 noundef 0) #3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @func_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @func_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %fd.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %fd.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fd.0.i, align 4
  %call2.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %2) #6
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %fd.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %mod.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mod.i, align 4
  %call3.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #3
  br i1 %call3.i, label %if.end6.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i
  %alloc_inst.i = getelementptr i8, ptr %.pn.i, i32 8
  %5 = ptrtoint ptr %alloc_inst.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_inst.i, align 4
  %call7.i = tail call ptr %6() #3
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %try_get_usb_function_instance.exit.thread47, label %try_get_usb_function_instance.exit

try_get_usb_function_instance.exit.thread47:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %mod.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mod.i, align 4
  tail call void @module_put(ptr noundef %8) #3
  br label %if.end

try_get_usb_function_instance.exit:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %fd11.i = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %fd11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fd.0.i.le, ptr %fd11.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  br label %cleanup

if.end:                                           ; preds = %try_get_usb_function_instance.exit.thread47, %if.end.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %fi.0.i42 = phi ptr [ %call7.i, %try_get_usb_function_instance.exit.thread47 ], [ inttoptr (i32 -16 to ptr), %if.end.i.if.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  %cmp.not = icmp eq ptr %fi.0.i42, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %10 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  tail call void @mutex_lock_nested(ptr noundef nonnull @func_lock, i32 noundef 0) #3
  br label %for.cond.i22

for.cond.i22:                                     ; preds = %for.body.i26.for.cond.i22_crit_edge, %if.end9
  %.pn.in.i19 = phi ptr [ @func_list, %if.end9 ], [ %.pn.i20, %for.body.i26.for.cond.i22_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i20 = load ptr, ptr %.pn.in.i19, align 4
  %cmp.not.i21 = icmp eq ptr %.pn.i20, @func_list
  br i1 %cmp.not.i21, label %for.cond.i22.try_get_usb_function_instance.exit39_crit_edge, label %for.body.i26

for.cond.i22.try_get_usb_function_instance.exit39_crit_edge: ; preds = %for.cond.i22
  call void @__sanitizer_cov_trace_pc() #5
  br label %try_get_usb_function_instance.exit39

for.body.i26:                                     ; preds = %for.cond.i22
  %fd.0.i23 = getelementptr i8, ptr %.pn.i20, i32 -8
  %12 = ptrtoint ptr %fd.0.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fd.0.i23, align 4
  %call2.i24 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %13) #6
  %tobool.not.i25 = icmp eq i32 %call2.i24, 0
  br i1 %tobool.not.i25, label %if.end.i30, label %for.body.i26.for.cond.i22_crit_edge

for.body.i26.for.cond.i22_crit_edge:              ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i22

if.end.i30:                                       ; preds = %for.body.i26
  %fd.0.i23.le = getelementptr i8, ptr %.pn.i20, i32 -8
  %mod.i28 = getelementptr i8, ptr %.pn.i20, i32 -4
  %14 = ptrtoint ptr %mod.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod.i28, align 4
  %call3.i29 = tail call zeroext i1 @try_module_get(ptr noundef %15) #3
  br i1 %call3.i29, label %if.end6.i34, label %if.end.i30.try_get_usb_function_instance.exit39_crit_edge

if.end.i30.try_get_usb_function_instance.exit39_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #5
  br label %try_get_usb_function_instance.exit39

if.end6.i34:                                      ; preds = %if.end.i30
  %alloc_inst.i31 = getelementptr i8, ptr %.pn.i20, i32 8
  %16 = ptrtoint ptr %alloc_inst.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alloc_inst.i31, align 4
  %call7.i32 = tail call ptr %17() #3
  %cmp.i.i33 = icmp ugt ptr %call7.i32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i33, label %if.then9.i35, label %if.else.i37

if.then9.i35:                                     ; preds = %if.end6.i34
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %mod.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mod.i28, align 4
  tail call void @module_put(ptr noundef %19) #3
  br label %try_get_usb_function_instance.exit39

if.else.i37:                                      ; preds = %if.end6.i34
  call void @__sanitizer_cov_trace_pc() #5
  %fd11.i36 = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i32, i32 0, i32 2
  %20 = ptrtoint ptr %fd11.i36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fd.0.i23.le, ptr %fd11.i36, align 4
  br label %try_get_usb_function_instance.exit39

try_get_usb_function_instance.exit39:             ; preds = %if.else.i37, %if.then9.i35, %if.end.i30.try_get_usb_function_instance.exit39_crit_edge, %for.cond.i22.try_get_usb_function_instance.exit39_crit_edge
  %fi.0.i38 = phi ptr [ %call7.i32, %if.then9.i35 ], [ %call7.i32, %if.else.i37 ], [ inttoptr (i32 -16 to ptr), %if.end.i30.try_get_usb_function_instance.exit39_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i22.try_get_usb_function_instance.exit39_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %try_get_usb_function_instance.exit39, %if.then7, %if.end.cleanup_crit_edge, %try_get_usb_function_instance.exit
  %retval.0 = phi ptr [ %10, %if.then7 ], [ %fi.0.i38, %try_get_usb_function_instance.exit39 ], [ %call7.i, %try_get_usb_function_instance.exit ], [ %fi.0.i42, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_get_function(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.usb_function_instance, ptr %fi, i32 0, i32 2
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %alloc_func = getelementptr inbounds %struct.usb_function_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %alloc_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_func, align 4
  %call = tail call ptr %3(ptr noundef %fi) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fi2 = getelementptr inbounds %struct.usb_function, ptr %call, i32 0, i32 24
  %4 = ptrtoint ptr %fi2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fi, ptr %fi2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_put_function_instance(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fd = getelementptr inbounds %struct.usb_function_instance, ptr %fi, i32 0, i32 2
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %mod1 = getelementptr inbounds %struct.usb_function_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mod1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod1, align 4
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %fi, i32 0, i32 4
  %4 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_func_inst, align 4
  tail call void %5(ptr noundef nonnull %fi) #3
  tail call void @module_put(ptr noundef %3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_put_function(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %free_func = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %free_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_func, align 4
  tail call void %1(ptr noundef nonnull %f) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_function_register(ptr noundef %newf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @func_lock, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @func_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @func_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %fd.0 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %fd.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fd.0, align 4
  %3 = ptrtoint ptr %newf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %newf, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.end:                                          ; preds = %for.cond
  %list6 = getelementptr inbounds %struct.usb_function_driver, ptr %newf, i32 0, i32 2
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @func_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list6, ptr noundef %5, ptr noundef nonnull @func_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %list6, ptr getelementptr inbounds (%struct.list_head, ptr @func_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @func_list, ptr %list6, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_function_driver, ptr %newf, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list6, ptr %5, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_function_unregister(ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @func_lock, i32 noundef 0) #3
  %list = getelementptr inbounds %struct.usb_function_driver, ptr %fd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.usb_function_driver, ptr %fd, i32 0, i32 2, i32 1
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
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.usb_function_driver, ptr %fd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/functions.c", i32 50, i32 8}
!2 = !{ptr @__ksymtab_usb_get_function_instance, !3, !"__ksymtab_usb_get_function_instance", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/functions.c", i32 55, i32 1}
!4 = !{ptr @__ksymtab_usb_get_function, !5, !"__ksymtab_usb_get_function", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/functions.c", i32 67, i32 1}
!6 = !{ptr @__ksymtab_usb_put_function_instance, !7, !"__ksymtab_usb_put_function_instance", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/functions.c", i32 80, i32 1}
!8 = !{ptr @__ksymtab_usb_put_function, !9, !"__ksymtab_usb_put_function", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/functions.c", i32 89, i32 1}
!10 = !{ptr @__ksymtab_usb_function_register, !11, !"__ksymtab_usb_function_register", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/functions.c", i32 109, i32 1}
!12 = !{ptr @__ksymtab_usb_function_unregister, !13, !"__ksymtab_usb_function_unregister", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/functions.c", i32 117, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/functions.c", i32 10, i32 8}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @func_lock, !15, !"func_lock", i1 false, i1 false}
!18 = !{ptr @func_list, !19, !"func_list", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/functions.c", i32 9, i32 8}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
