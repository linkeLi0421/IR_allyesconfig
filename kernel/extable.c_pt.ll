; ModuleID = '/llk/IR_all_yes/kernel/extable.c_pt.bc'
source_filename = "../kernel/extable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"text_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@text_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @text_mutex, i64 52), ptr getelementptr (i8, ptr @text_mutex, i64 52) }, ptr @text_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"text_mutex\00", [21 x i8] zeroinitializer }, align 32
@main_extable_sort_needed = dso_local local_unnamed_addr global i32 1, section ".init.data", align 4
@__stop___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@__start___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@sort_main_extable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015Sorting __ex_table...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sort_main_extable\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/extable.c\00", [47 x i8] zeroinitializer }, align 32
@sort_main_extable._entry_ptr = internal global ptr @sort_main_extable._entry, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@kprobe_optinsn_slots = external dso_local global %struct.kprobe_insn_cache, align 4
@kprobe_insn_slots = external dso_local global %struct.kprobe_insn_cache, align 4
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"text_mutex\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 26, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [20 x i8] c"../kernel/extable.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 39, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sort_main_extable._entry, ptr @sort_main_extable._entry_ptr, ptr @.str, ptr @text_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @text_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sort_main_extable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sort_main_extable() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @main_extable_sort_needed, align 4
  %tobool.not1 = icmp eq i32 %0, 0
  %brmerge = or i1 %tobool.not1, icmp ule (ptr @__stop___ex_table, ptr @__start___ex_table)
  br i1 %brmerge, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  tail call void @sort_extable(ptr noundef nonnull @__start___ex_table, ptr noundef nonnull @__stop___ex_table) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_extable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_kernel_exception_table(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @search_extable(ptr noundef nonnull @__start___ex_table, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ex_table to i32), i32 ptrtoint (ptr @__start___ex_table to i32)), i32 8), i32 noundef %addr) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_extable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_exception_tables(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @search_extable(ptr noundef nonnull @__start___ex_table, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ex_table to i32), i32 ptrtoint (ptr @__start___ex_table to i32)), i32 8), i32 noundef %addr) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @search_module_extables(i32 noundef %addr) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @search_bpf_extables(i32 noundef %addr) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end, %entry
  %e.1 = phi ptr [ %call1, %if.end ], [ %call4, %if.then3 ], [ %call.i, %entry ]
  ret ptr %e.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_module_extables(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_bpf_extables(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_kernel_text(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  %cmp.not.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  %cmp1.i.i = icmp ult i32 %addr, ptrtoint (ptr @_etext to i32)
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %return, label %is_kernel_text.exit

is_kernel_text.exit:                              ; preds = %entry
  %call1.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #4
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %is_kernel_text.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %cmp.not.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  %cmp1.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %return, label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %if.end3, %land.lhs.true, %is_kernel_text.exit, %entry
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %is_kernel_text.exit ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kernel_text_address(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kernel_text_address(i32 noundef %addr)
  %tobool.not = icmp ne i32 %call, 0
  %cmp.not.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  %cmp1.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  %narrow = or i1 %spec.select.i, %tobool.not
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_text_address(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  %cmp1.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @_etext to i32)
  %spec.select.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %spec.select.i.i.i, label %cleanup, label %is_kernel_text.exit.i

is_kernel_text.exit.i:                            ; preds = %entry
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #4
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %is_kernel_text.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  %cmp.i = icmp ult i32 %0, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %cmp.not.i.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  %cmp1.i.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true.i, %if.end.i
  %call1 = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call1, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @rcu_nmi_enter() #4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = tail call zeroext i1 @is_module_text_address(i32 noundef %addr) #4
  br i1 %call5, label %out, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call zeroext i1 @is_ftrace_trampoline(i32 noundef %addr) #4
  br i1 %call8, label %out, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call.i = tail call zeroext i1 @__is_insn_slot_addr(ptr noundef nonnull @kprobe_optinsn_slots, i32 noundef %addr) #4
  br i1 %call.i, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call.i28 = tail call zeroext i1 @__is_insn_slot_addr(ptr noundef nonnull @kprobe_insn_slots, i32 noundef %addr) #4
  br i1 %call.i28, label %out, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call zeroext i1 @is_bpf_text_address(i32 noundef %addr) #4
  %spec.select = zext i1 %call15 to i32
  br label %out

out:                                              ; preds = %if.end14, %lor.lhs.false, %if.end10, %if.end7, %if.end4
  %ret.0 = phi i32 [ 1, %if.end4 ], [ 1, %if.end7 ], [ 1, %if.end10 ], [ 1, %lor.lhs.false ], [ %spec.select, %if.end14 ]
  br i1 %call1, label %cleanup, label %if.then19

if.then19:                                        ; preds = %out
  tail call void @rcu_nmi_exit() #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %out, %land.lhs.true.i, %is_kernel_text.exit.i, %entry
  %retval.0 = phi i32 [ %ret.0, %if.then19 ], [ %ret.0, %out ], [ 1, %is_kernel_text.exit.i ], [ 1, %land.lhs.true.i ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_module_text_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ftrace_trampoline(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bpf_text_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @func_ptr_is_kernel_text(ptr noundef %ptr) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %cmp.not.i.i.i = icmp uge ptr %ptr, @_stext
  %cmp1.i.i.i = icmp ult ptr %ptr, @_etext
  %spec.select.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %spec.select.i.i.i, label %cleanup, label %is_kernel_text.exit.i

is_kernel_text.exit.i:                            ; preds = %entry
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #4
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %is_kernel_text.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %1 = load i32, ptr @system_state, align 4
  %cmp.i = icmp ult i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %cmp.not.i.i = icmp uge ptr %ptr, @_sinittext
  %cmp1.i.i = icmp ult ptr %ptr, @_einittext
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true.i, %if.end.i
  %call1 = tail call zeroext i1 @is_module_text_address(i32 noundef %0) #4
  %conv = zext i1 %call1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i, %is_kernel_text.exit.i, %entry
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %is_kernel_text.exit.i ], [ 1, %land.lhs.true.i ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area_no_mm(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__is_insn_slot_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/extable.c", i32 26, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @text_mutex, !1, !"text_mutex", i1 false, i1 false}
!4 = !{ptr @main_extable_sort_needed, !5, !"main_extable_sort_needed", i1 false, i1 false}
!5 = !{!"../kernel/extable.c", i32 32, i32 26}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/extable.c", i32 39, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sort_main_extable._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sort_main_extable._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
