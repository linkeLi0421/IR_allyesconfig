; ModuleID = '/llk/IR_all_yes/lib/notifier-error-inject.c_pt.bc'
source_filename = "../lib/notifier-error-inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+notifier_err_inject_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_notifier_err_inject_dir\09\09\09\09"
module asm "\09.long\09__crc_notifier_err_inject_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_notifier_err_inject_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22notifier_err_inject_dir\22\09\09\09\09\09"
module asm "__kstrtabns_notifier_err_inject_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+notifier_err_inject_init\22, \22a\22\09"
module asm "\09.weak\09__crc_notifier_err_inject_init\09\09\09\09"
module asm "\09.long\09__crc_notifier_err_inject_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_notifier_err_inject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22notifier_err_inject_init\22\09\09\09\09\09"
module asm "__kstrtabns_notifier_err_inject_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.notifier_err_inject = type { %struct.notifier_block, [0 x %struct.notifier_err_inject_action] }
%struct.notifier_err_inject_action = type { i32, i32, ptr }

@notifier_err_inject_dir = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_notifier_err_inject_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_notifier_err_inject_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_notifier_err_inject_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @notifier_err_inject_dir to i32), ptr @__kstrtab_notifier_err_inject_dir, ptr @__kstrtabns_notifier_err_inject_dir }, section "___ksymtab_gpl+notifier_err_inject_dir", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"actions\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_notifier_err_inject_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_notifier_err_inject_init = external dso_local constant [0 x i8], align 1
@__ksymtab_notifier_err_inject_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @notifier_err_inject_init to i32), ptr @__kstrtab_notifier_err_inject_init, ptr @__kstrtabns_notifier_err_inject_init }, section "___ksymtab_gpl+notifier_err_inject_init", align 4
@__initcall__kmod_notifier_error_inject__204_97_err_inject_init6 = internal global ptr @err_inject_init, section ".initcall6.init", align 4
@__exitcall_err_inject_exit = internal global ptr @err_inject_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description205 = internal constant [66 x i8] c"notifier_error_inject.description=Notifier error injection module\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [53 x i8] c"notifier_error_inject.file=lib/notifier-error-inject\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [34 x i8] c"notifier_error_inject.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author208 = internal constant [67 x i8] c"notifier_error_inject.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@notifier_err_inject_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Injecting error (%d) to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"notifier_err_inject_callback\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lib/notifier-error-inject.c\00", [36 x i8] zeroinitializer }, align 32
@notifier_err_inject_callback._entry_ptr = internal global ptr @notifier_err_inject_callback._entry, section ".printk_index", align 4
@fops_errno = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_errno_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"notifier-error-inject\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"notifier_err_inject_dir\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 47, i32 16 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 63, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 75, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 42, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"fops_errno\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 18, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [31 x i8] c"../lib/notifier-error-inject.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 84, i32 22 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_err_inject_exit, ptr @__initcall__kmod_notifier_error_inject__204_97_err_inject_init6, ptr @__ksymtab_notifier_err_inject_dir, ptr @__ksymtab_notifier_err_inject_init, ptr @err_inject_exit, ptr @notifier_err_inject_callback._entry, ptr @notifier_err_inject_callback._entry_ptr, ptr @notifier_err_inject_dir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fops_errno, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notifier_err_inject_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notifier_err_inject_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_errno to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @notifier_err_inject_init(ptr noundef %name, ptr noundef %parent, ptr noundef %err_inject, i32 noundef %priority) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %err_inject to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @notifier_err_inject_callback, ptr %err_inject, align 4
  %priority2 = getelementptr inbounds %struct.notifier_block, ptr %err_inject, i32 0, i32 2
  %1 = ptrtoint ptr %priority2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %priority, ptr %priority2, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %parent) #9
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %call) #9
  %name414 = getelementptr inbounds %struct.notifier_err_inject, ptr %err_inject, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %name414 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name414, align 4
  %tobool.not15 = icmp eq ptr %3, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %actions = getelementptr inbounds %struct.notifier_err_inject, ptr %err_inject, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %4 = phi ptr [ %6, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %action.016 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %actions, %for.body.preheader ]
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %4, ptr noundef %call3) #9
  %error = getelementptr inbounds %struct.notifier_err_inject_action, ptr %action.016, i32 0, i32 1
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32384, ptr noundef %call6, ptr noundef %error, ptr noundef nonnull @fops_errno) #9
  %incdec.ptr = getelementptr %struct.notifier_err_inject_action, ptr %action.016, i32 1
  %name4 = getelementptr %struct.notifier_err_inject_action, ptr %action.016, i32 1, i32 2
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @notifier_err_inject_callback(ptr nocapture noundef readonly %nb, i32 noundef %val, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %name24 = getelementptr inbounds %struct.notifier_err_inject, ptr %nb, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name24, align 4
  %tobool.not25 = icmp eq ptr %1, null
  br i1 %tobool.not25, label %entry.for.end.thread_crit_edge, label %for.body.preheader

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.body.preheader:                               ; preds = %entry
  %actions = getelementptr inbounds %struct.notifier_err_inject, ptr %nb, i32 0, i32 1
  %2 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val)
  %cmp33 = icmp eq i32 %3, %val
  br i1 %cmp33, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.notifier_err_inject_action, ptr %action.02634, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr, align 4
  %cmp = icmp eq i32 %5, %val
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %action.02634 = phi ptr [ %incdec.ptr, %for.body.for.inc_crit_edge ], [ %actions, %for.body.preheader.for.inc_crit_edge ]
  %name = getelementptr %struct.notifier_err_inject_action, ptr %action.02634, i32 1, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.inc.for.end.thread_crit_edge, label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %for.body.preheader.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  %action.026.lcssa = phi ptr [ %actions, %for.body.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %error = getelementptr inbounds %struct.notifier_err_inject_action, ptr %action.026.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %for.end.for.end.thread_crit_edge, label %if.end6

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.end6:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %9, ptr noundef nonnull %.lcssa) #10
  %sub.i = sub i32 1, %9
  %or.i = or i32 %sub.i, 32768
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end6, %for.end.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %10 = phi i32 [ %or.i, %if.end6 ], [ 1, %for.end.for.end.thread_crit_edge ], [ 1, %entry.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @err_inject_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @notifier_err_inject_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @err_inject_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef null) #9
  store ptr %call, ptr @notifier_err_inject_dir, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_errno_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @debugfs_errno_get, ptr noundef nonnull @debugfs_errno_set, ptr noundef nonnull @.str.5) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_errno_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_errno_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %val to i32
  %0 = tail call i32 @llvm.smax.i32(i32 %conv, i32 -4095)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 0)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_notifier_err_inject_dir, !1, !"__ksymtab_notifier_err_inject_dir", i1 false, i1 false}
!1 = !{!"../lib/notifier-error-inject.c", i32 48, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/notifier-error-inject.c", i32 63, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/notifier-error-inject.c", i32 75, i32 24}
!6 = !{ptr @__ksymtab_notifier_err_inject_init, !7, !"__ksymtab_notifier_err_inject_init", i1 false, i1 false}
!7 = !{!"../lib/notifier-error-inject.c", i32 79, i32 1}
!8 = !{ptr @__initcall__kmod_notifier_error_inject__204_97_err_inject_init6, !9, !"__initcall__kmod_notifier_error_inject__204_97_err_inject_init6", i1 false, i1 false}
!9 = !{!"../lib/notifier-error-inject.c", i32 97, i32 1}
!10 = !{ptr @__exitcall_err_inject_exit, !11, !"__exitcall_err_inject_exit", i1 false, i1 false}
!11 = !{!"../lib/notifier-error-inject.c", i32 98, i32 1}
!12 = !{ptr @__UNIQUE_ID_description205, !13, !"__UNIQUE_ID_description205", i1 false, i1 false}
!13 = !{!"../lib/notifier-error-inject.c", i32 100, i32 1}
!14 = !{ptr @__UNIQUE_ID_file206, !15, !"__UNIQUE_ID_file206", i1 false, i1 false}
!15 = !{!"../lib/notifier-error-inject.c", i32 101, i32 1}
!16 = !{ptr @__UNIQUE_ID_license207, !15, !"__UNIQUE_ID_license207", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author208, !18, !"__UNIQUE_ID_author208", i1 false, i1 false}
!18 = !{!"../lib/notifier-error-inject.c", i32 102, i32 1}
!19 = !{ptr @notifier_err_inject_dir, !20, !"notifier_err_inject_dir", i1 false, i1 false}
!20 = !{!"../lib/notifier-error-inject.c", i32 47, i32 16}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/notifier-error-inject.c", i32 42, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @notifier_err_inject_callback._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @notifier_err_inject_callback._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @fops_errno, !28, !"fops_errno", i1 false, i1 false}
!28 = !{!"../lib/notifier-error-inject.c", i32 18, i32 1}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/notifier-error-inject.c", i32 84, i32 22}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
