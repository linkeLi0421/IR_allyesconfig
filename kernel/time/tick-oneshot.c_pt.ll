; ModuleID = '/llk/IR_all_yes/kernel/time/tick-oneshot.c_pt.bc'
source_filename = "../kernel/time/tick-oneshot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tick_device = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tick_switch_to_oneshot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Clockevents: could not switch to one-shot mode:\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tick_switch_to_oneshot\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/time/tick-oneshot.c\00", [37 x i8] zeroinitializer }, align 32
@tick_switch_to_oneshot._entry_ptr = internal global ptr @tick_switch_to_oneshot._entry, section ".printk_index", align 4
@tick_switch_to_oneshot._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c no tick device\0A\00", [45 x i8] zeroinitializer }, align 32
@tick_switch_to_oneshot._entry_ptr.6 = internal global ptr @tick_switch_to_oneshot._entry.4, section ".printk_index", align 4
@tick_switch_to_oneshot._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c %s is not functional.\0A\00", [38 x i8] zeroinitializer }, align 32
@tick_switch_to_oneshot._entry_ptr.9 = internal global ptr @tick_switch_to_oneshot._entry.7, section ".printk_index", align 4
@tick_switch_to_oneshot._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\01c %s does not support one-shot mode.\0A\00", [57 x i8] zeroinitializer }, align 32
@tick_switch_to_oneshot._entry_ptr.12 = internal global ptr @tick_switch_to_oneshot._entry.10, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 81, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 83, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 86, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [30 x i8] c"../kernel/time/tick-oneshot.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 88, i32 5 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @tick_switch_to_oneshot._entry, ptr @tick_switch_to_oneshot._entry.10, ptr @tick_switch_to_oneshot._entry.4, ptr @tick_switch_to_oneshot._entry.7, ptr @tick_switch_to_oneshot._entry_ptr, ptr @tick_switch_to_oneshot._entry_ptr.12, ptr @tick_switch_to_oneshot._entry_ptr.6, ptr @tick_switch_to_oneshot._entry_ptr.9, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_switch_to_oneshot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_switch_to_oneshot._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_switch_to_oneshot._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_switch_to_oneshot._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_program_event(i64 noundef %expires, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %expires)
  %cmp = icmp eq i64 %expires, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end, !prof !30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 4) #4
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 9223372036854775807, ptr %next_event, align 16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 8
  %10 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp eq i32 %11, 4
  br i1 %cmp.i, label %if.then17, label %if.end.if.end18_crit_edge, !prof !30

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 3) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool19 = icmp ne i32 %force, 0
  %call20 = tail call i32 @clockevents_program_event(ptr noundef %8, i64 noundef %expires, i1 noundef zeroext %tobool19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call20, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_resume_oneshot() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 3) #4
  %call9 = tail call i64 @ktime_get() #4
  %call10 = tail call i32 @clockevents_program_event(ptr noundef %8, i64 noundef %call9, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_setup_oneshot(ptr noundef %newdev, ptr noundef %handler, i64 noundef %next_event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %newdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %handler, ptr %newdev, align 128
  tail call void @clockevents_switch_state(ptr noundef %newdev, i32 noundef 3) #4
  %call = tail call i32 @clockevents_program_event(ptr noundef %newdev, i64 noundef %next_event, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_switch_to_oneshot(ptr noundef %handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end15.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features, align 4
  %11 = and i32 %10, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %if.end34, label %if.else

do.end15.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call10.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call10.c47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not.not = icmp eq i32 %15, 0
  %name31 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21
  %16 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name31, align 4
  br i1 %tobool19.not.not, label %do.end29, label %do.end23

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %17) #7
  br label %cleanup

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %17) #7
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %mode = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mode, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %handler, ptr %8, align 128
  tail call void @clockevents_switch_state(ptr noundef nonnull %8, i32 noundef 3) #4
  tail call void @tick_broadcast_switch_to_oneshot() #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end29, %do.end23, %do.end15.critedge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %do.end23 ], [ -22, %do.end29 ], [ -22, %do.end15.critedge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_switch_to_oneshot() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_oneshot_mode_active() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !31
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !20) #4
  %and.i60 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i60 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr getelementptr inbounds (%struct.tick_device, ptr @tick_cpu_device, i32 0, i32 1) to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  br i1 %tobool.not, label %if.then36, label %do.end11.do.body38_crit_edge

do.end11.do.body38_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

if.then36:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body38

do.body38:                                        ; preds = %if.then36, %do.end11.do.body38_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !32
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body38.do.end53_crit_edge, !prof !30

do.body38.do.end53_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38.do.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp25 = icmp eq i32 %9, 1
  %conv26 = zext i1 %cmp25 to i32
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !33
  ret i32 %conv26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_init_highres() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tick_switch_to_oneshot(ptr noundef nonnull @hrtimer_interrupt)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_interrupt(ptr noundef) #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/time/tick-oneshot.c", i32 25, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/tick-oneshot.c", i32 81, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tick_switch_to_oneshot._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tick_switch_to_oneshot._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/time/tick-oneshot.c", i32 83, i32 4}
!10 = !{ptr @tick_switch_to_oneshot._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @tick_switch_to_oneshot._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/time/tick-oneshot.c", i32 86, i32 5}
!14 = !{ptr @tick_switch_to_oneshot._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tick_switch_to_oneshot._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/time/tick-oneshot.c", i32 88, i32 5}
!18 = !{ptr @tick_switch_to_oneshot._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tick_switch_to_oneshot._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 871864, i64 871925}
!32 = !{i64 874596}
!33 = !{i64 874881}
