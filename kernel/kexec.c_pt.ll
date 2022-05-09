; ModuleID = '/llk/IR_all_yes/kernel/kexec.c_pt.bc'
source_filename = "../kernel/kexec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon.102, i32, i32, i32 }
%union.anon.102 = type { ptr }
%struct.kimage_arch = type { i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_kexec_load\00", [43 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__kexec_load = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__kexec_load, ptr @args__kexec_load, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__kexec_load, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__kexec_load, i64 20) }, ptr @event_enter__kexec_load, ptr @event_exit__kexec_load }, align 4
@event_enter__kexec_load = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__kexec_load, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__kexec_load = internal global ptr @event_enter__kexec_load, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_kexec_load\00", [44 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__kexec_load = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__kexec_load, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__kexec_load = internal global ptr @event_exit__kexec_load, section "_ftrace_events", align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_kexec_load\00", [17 x i8] zeroinitializer }, align 32
@types__kexec_load = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.4, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@args__kexec_load = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__kexec_load = internal global ptr @__syscall_meta__kexec_load, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct kexec_segment *\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"entry\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_segments\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"segments\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@kexec_load_disabled = external dso_local local_unnamed_addr global i32, align 4
@kexec_mutex = external dso_local global %struct.mutex, align 4
@kexec_crash_image = external dso_local global ptr, align 4
@kexec_image = external dso_local global ptr, align 4
@crashk_res = external dso_local local_unnamed_addr global %struct.resource, align 4
@kimage_alloc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013kexec: Could not allocate control_code_buffer\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kimage_alloc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/kexec.c\00", [17 x i8] zeroinitializer }, align 32
@kimage_alloc_init._entry_ptr = internal global ptr @kimage_alloc_init._entry, section ".printk_index", align 4
@kimage_alloc_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013kexec: Could not allocate swap buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@kimage_alloc_init._entry_ptr.14 = internal global ptr @kimage_alloc_init._entry.12, section ".printk_index", align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2621440]
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"event_enter__kexec_load\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"event_exit__kexec_load\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"types__kexec_load\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"args__kexec_load\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 231, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 66, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [18 x i8] c"../kernel/kexec.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 73, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__event_enter__kexec_load, ptr @__event_exit__kexec_load, ptr @__p_syscall_meta__kexec_load, ptr @__syscall_meta__kexec_load, ptr @event_enter__kexec_load, ptr @event_exit__kexec_load, ptr @kimage_alloc_init._entry, ptr @kimage_alloc_init._entry.12, ptr @kimage_alloc_init._entry_ptr, ptr @kimage_alloc_init._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__kexec_load, ptr @args__kexec_load, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__kexec_load to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__kexec_load to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__kexec_load to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__kexec_load to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kimage_alloc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kimage_alloc_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_kexec_load = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_kexec_load

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_kexec_load(i32 noundef %entry1, i32 noundef %nr_segments, i32 noundef %segments, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %segments to ptr
  %call.i.i = tail call zeroext i1 @capable(i32 noundef 22) #4
  br i1 %call.i.i, label %lor.lhs.false.i.i, label %entry.__do_sys_kexec_load.exit_crit_edge

entry.__do_sys_kexec_load.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

lor.lhs.false.i.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kexec_load_disabled to i32))
  %1 = load i32, ptr @kexec_load_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.__do_sys_kexec_load.exit_crit_edge

lor.lhs.false.i.i.__do_sys_kexec_load.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call1.i.i = tail call i32 @security_kernel_load_data(i32 noundef 3, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.__do_sys_kexec_load.exit_crit_edge, label %if.end3.i.i

if.end.i.i.__do_sys_kexec_load.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @security_locked_down(i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end3.i.i.__do_sys_kexec_load.exit_crit_edge

if.end3.i.i.__do_sys_kexec_load.exit_crit_edge:   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %2 = and i32 %flags, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9.not.i.i = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nr_segments)
  %cmp12.i.i = icmp ugt i32 %nr_segments, 16
  %or.cond.i = or i1 %cmp12.i.i, %cmp9.not.i.i
  br i1 %or.cond.i, label %if.end7.i.i.__do_sys_kexec_load.exit_crit_edge, label %if.end.i

if.end7.i.i.__do_sys_kexec_load.exit_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

if.end.i:                                         ; preds = %if.end7.i.i
  %and.i = and i32 %flags, -65536
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end.i.__do_sys_kexec_load.exit_crit_edge [
    i32 2621440, label %if.end.i.if.end5.i_crit_edge
    i32 0, label %if.end.i.if.end5.i_crit_edge8
  ]

if.end.i.if.end5.i_crit_edge8:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.end.i.__do_sys_kexec_load.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_kexec_load.exit

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge8
  %mul.i = shl nuw nsw i32 %nr_segments, 4
  %call6.i = tail call ptr @memdup_user(ptr noundef %0, i32 noundef %mul.i) #4
  %cmp.i23.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call6.i to i32
  br label %__do_sys_kexec_load.exit

if.end10.i:                                       ; preds = %if.end5.i
  %call.i24.i = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %if.end10.i.do_kexec_load.exit.i_crit_edge, label %if.end.i26.i

if.end10.i.do_kexec_load.exit.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_kexec_load.exit.i

if.end.i26.i:                                     ; preds = %if.end10.i
  %and.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end7.thread.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kexec_crash_image to i32))
  %5 = load ptr, ptr @kexec_crash_image, align 4
  %tobool4.not.i.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i.i, label %if.then3.i.i.if.end7.i28.i_crit_edge, label %if.then5.i.i

if.then3.i.i.if.end7.i28.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i28.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @arch_kexec_unprotect_crashkres() #4
  br label %if.end7.i28.i

if.end7.i28.i:                                    ; preds = %if.then5.i.i, %if.then3.i.i.if.end7.i28.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_segments)
  %cmp.i27.i = icmp eq i32 %nr_segments, 0
  br i1 %cmp.i27.i, label %if.end7.i28.i.if.then8.i.i_crit_edge, label %if.then.i.critedge.i.i

if.end7.i28.i.if.then8.i.i_crit_edge:             ; preds = %if.end7.i28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i.i

if.end7.thread.i.i:                               ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_segments)
  %cmp133.i.i = icmp eq i32 %nr_segments, 0
  br i1 %cmp133.i.i, label %if.end7.thread.i.i.if.then8.i.i_crit_edge, label %if.end7.thread.i.i.if.end6.i.i.i_crit_edge

if.end7.thread.i.i.if.end6.i.i.i_crit_edge:       ; preds = %if.end7.thread.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i.i.i

if.end7.thread.i.i.if.then8.i.i_crit_edge:        ; preds = %if.end7.thread.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end7.thread.i.i.if.then8.i.i_crit_edge, %if.end7.i28.i.if.then8.i.i_crit_edge
  %dest_image.0134.i.i = phi ptr [ @kexec_image, %if.end7.thread.i.i.if.then8.i.i_crit_edge ], [ @kexec_crash_image, %if.end7.i28.i.if.then8.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dest_image.0134.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr nonnull %dest_image.0134.i.i, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull %dest_image.0134.i.i) #4, !srcloc !38
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  %7 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @kimage_free(ptr noundef %7) #4
  br label %out_unlock.i.i

if.then.i.critedge.i.i:                           ; preds = %if.end7.i28.i
  %call.i121.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kexec_crash_image, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull @kexec_crash_image, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @kexec_crash_image) #4, !srcloc !38
  %asmresult.i123.i.i = extractvalue { i32, i32 } %8, 0
  %9 = inttoptr i32 %asmresult.i123.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @kimage_free(ptr noundef %9) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crashk_res to i32))
  %10 = load i32, ptr @crashk_res, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %11 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %12 = trunc i64 %11 to i32
  %addr.addr.0.i.i.i.i.i = add i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.addr.0.i.i.i.i.i, i32 %entry1)
  %cmp.i.i.i = icmp ugt i32 %addr.addr.0.i.i.i.i.i, %entry1
  br i1 %cmp.i.i.i, label %if.then.i.critedge.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.critedge.i.i.out_unlock.i.i_crit_edge:  ; preds = %if.then.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %addr.addr.0.i.i62.i.i.i = add i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.addr.0.i.i62.i.i.i, i32 %entry1)
  %cmp4.i.i.i = icmp ult i32 %addr.addr.0.i.i62.i.i.i, %entry1
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.end6.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.end6.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i.i.i

lor.lhs.false.i.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock.i.i

if.end6.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.end6.i.i.i_crit_edge, %if.end7.thread.i.i.if.end6.i.i.i_crit_edge
  %dest_image.0135137140.i.i = phi ptr [ @kexec_crash_image, %lor.lhs.false.i.i.i.if.end6.i.i.i_crit_edge ], [ @kexec_image, %if.end7.thread.i.i.if.end6.i.i.i_crit_edge ]
  %call7.i.i.i = tail call ptr @do_kimage_alloc_init() #4
  %tobool8.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %if.end6.i.i.i.out_unlock.i.i_crit_edge, label %if.end10.i.i.i

if.end6.i.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock.i.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %start.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %entry1, ptr %start.i.i.i, align 4
  %nr_segments11.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %nr_segments11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %nr_segments, ptr %nr_segments11.i.i.i, align 4
  %segment.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 8
  %16 = call ptr @memcpy(ptr %segment.i.i.i, ptr %call6.i, i32 %mul.i)
  br i1 %tobool2.not.i.i, label %if.end10.i.i.i.if.end14.i.i.i_crit_edge, label %if.then13.i.i.i

if.end10.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crashk_res to i32))
  %17 = load i32, ptr @crashk_res, align 4
  %control_page.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %control_page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %control_page.i.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i.i = load i8, ptr %type.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %type.i.i.i, align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.end10.i.i.i.if.end14.i.i.i_crit_edge
  %call15.i.i.i = tail call i32 @sanity_check_segment_list(ptr noundef nonnull %call7.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end18.i.i.i, label %if.end14.i.i.i.out_free_image.i.i.i_crit_edge

if.end14.i.i.i.out_free_image.i.i.i_crit_edge:    ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_image.i.i.i

if.end18.i.i.i:                                   ; preds = %if.end14.i.i.i
  %call20.i.i.i = tail call ptr @kimage_alloc_control_pages(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #4
  %control_code_page.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %control_code_page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20.i.i.i, ptr %control_code_page.i.i.i, align 4
  %tobool22.not.i.i.i = icmp eq ptr %call20.i.i.i, null
  br i1 %tobool22.not.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i

do.end.i.i.i:                                     ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %out_free_image.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end18.i.i.i
  br i1 %tobool2.not.i.i, label %if.then27.i.i.i, label %if.end25.i.i.i.if.end53.i.i_crit_edge

if.end25.i.i.i.if.end53.i.i_crit_edge:            ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i.i

if.then27.i.i.i:                                  ; preds = %if.end25.i.i.i
  %call28.i.i.i = tail call ptr @kimage_alloc_control_pages(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #4
  %swap_page.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %swap_page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28.i.i.i, ptr %swap_page.i.i.i, align 4
  %tobool30.not.i.i.i = icmp eq ptr %call28.i.i.i, null
  br i1 %tobool30.not.i.i.i, label %do.end34.i.i.i, label %if.then27.i.i.i.if.end53.i.i_crit_edge

if.then27.i.i.i.if.end53.i.i_crit_edge:           ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53.i.i

do.end34.i.i.i:                                   ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  %control_pages.i.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @kimage_free_page_list(ptr noundef %control_pages.i.i.i) #4
  br label %out_free_image.i.i.i

out_free_image.i.i.i:                             ; preds = %do.end34.i.i.i, %do.end.i.i.i, %if.end14.i.i.i.out_free_image.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call15.i.i.i, %if.end14.i.i.i.out_free_image.i.i.i_crit_edge ], [ -12, %do.end34.i.i.i ], [ -12, %do.end.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %out_unlock.i.i

if.end53.i.i:                                     ; preds = %if.then27.i.i.i.if.end53.i.i_crit_edge, %if.end25.i.i.i.if.end53.i.i_crit_edge
  %and54.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end53.i.i.if.end57.i.i_crit_edge, label %if.then56.i.i

if.end53.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i.i

if.then56.i.i:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %preserve_context.i.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %preserve_context.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %preserve_context.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %preserve_context.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then56.i.i, %if.end53.i.i.if.end57.i.i_crit_edge
  %call58.i.i = tail call i32 @machine_kexec_prepare(ptr noundef nonnull %call7.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.end61.i.i, label %if.end57.i.i.out.i.i_crit_edge

if.end57.i.i.out.i.i_crit_edge:                   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i.i

if.end61.i.i:                                     ; preds = %if.end57.i.i
  %call62.i.i = tail call i32 @kimage_crash_copy_vmcoreinfo(ptr noundef nonnull %call7.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %tobool63.not.i.i = icmp eq i32 %call62.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end61.i.i.for.body.i.i_crit_edge, label %if.end61.i.i.out.i.i_crit_edge

if.end61.i.i.out.i.i_crit_edge:                   ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i.i

if.end61.i.i.for.body.i.i_crit_edge:              ; preds = %if.end61.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.0146.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %nr_segments
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end61.i.i.for.body.i.i_crit_edge
  %i.0146.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end61.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.kimage, ptr %call7.i.i.i, i32 0, i32 8, i32 %i.0146.i.i
  %call67.i.i = tail call i32 @kimage_load_segment(ptr noundef %call7.i.i.i, ptr noundef %arrayidx.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i.i)
  %tobool68.not.i.i = icmp eq i32 %call67.i.i, 0
  br i1 %tobool68.not.i.i, label %for.cond.i.i, label %for.body.i.i.out.i.i_crit_edge

for.body.i.i.out.i.i_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  tail call void @kimage_terminate(ptr noundef %call7.i.i.i) #4
  %call71.i.i = tail call i32 @machine_kexec_post_load(ptr noundef %call7.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end74.i.i, label %for.end.i.i.out.i.i_crit_edge

for.end.i.i.out.i.i_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i.i

if.end74.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i122.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dest_image.0135137140.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !42
  %23 = ptrtoint ptr %call7.i.i.i to i32
  tail call void @llvm.prefetch.p0(ptr nonnull %dest_image.0135137140.i.i, i32 1, i32 3, i32 1) #4
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %23, ptr nonnull %dest_image.0135137140.i.i) #4, !srcloc !38
  %asmresult.i124.i.i = extractvalue { i32, i32 } %24, 0
  %25 = inttoptr i32 %asmresult.i124.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !43
  br label %out.i.i

out.i.i:                                          ; preds = %if.end74.i.i, %for.end.i.i.out.i.i_crit_edge, %for.body.i.i.out.i.i_crit_edge, %if.end61.i.i.out.i.i_crit_edge, %if.end57.i.i.out.i.i_crit_edge
  %image.1.i.i = phi ptr [ %25, %if.end74.i.i ], [ %call7.i.i.i, %for.end.i.i.out.i.i_crit_edge ], [ %call7.i.i.i, %if.end61.i.i.out.i.i_crit_edge ], [ %call7.i.i.i, %if.end57.i.i.out.i.i_crit_edge ], [ %call7.i.i.i, %for.body.i.i.out.i.i_crit_edge ]
  %ret.0.i.i = phi i32 [ 0, %if.end74.i.i ], [ %call71.i.i, %for.end.i.i.out.i.i_crit_edge ], [ %call62.i.i, %if.end61.i.i.out.i.i_crit_edge ], [ %call58.i.i, %if.end57.i.i.out.i.i_crit_edge ], [ %call67.i.i, %for.body.i.i.out.i.i_crit_edge ]
  br i1 %tobool2.not.i.i, label %out.i.i.if.end100.i.i_crit_edge, label %land.lhs.true.i.i

out.i.i.if.end100.i.i_crit_edge:                  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100.i.i

land.lhs.true.i.i:                                ; preds = %out.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kexec_crash_image to i32))
  %26 = load ptr, ptr @kexec_crash_image, align 4
  %tobool98.not.i.i = icmp eq ptr %26, null
  br i1 %tobool98.not.i.i, label %land.lhs.true.i.i.if.end100.i.i_crit_edge, label %if.then99.i.i

land.lhs.true.i.i.if.end100.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100.i.i

if.then99.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @arch_kexec_protect_crashkres() #4
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then99.i.i, %land.lhs.true.i.i.if.end100.i.i_crit_edge, %out.i.i.if.end100.i.i_crit_edge
  tail call void @kimage_free(ptr noundef %image.1.i.i) #4
  br label %out_unlock.i.i

out_unlock.i.i:                                   ; preds = %if.end100.i.i, %out_free_image.i.i.i, %if.end6.i.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false.i.i.i.out_unlock.i.i_crit_edge, %if.then.i.critedge.i.i.out_unlock.i.i_crit_edge, %if.then8.i.i
  %ret.1.i.i = phi i32 [ 0, %if.then8.i.i ], [ %ret.0.i.i, %if.end100.i.i ], [ -12, %if.end6.i.i.i.out_unlock.i.i_crit_edge ], [ -99, %if.then.i.critedge.i.i.out_unlock.i.i_crit_edge ], [ -99, %lor.lhs.false.i.i.i.out_unlock.i.i_crit_edge ], [ %ret.0.i.i.i, %out_free_image.i.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #4
  br label %do_kexec_load.exit.i

do_kexec_load.exit.i:                             ; preds = %out_unlock.i.i, %if.end10.i.do_kexec_load.exit.i_crit_edge
  %retval.0.i29.i = phi i32 [ %ret.1.i.i, %out_unlock.i.i ], [ -16, %if.end10.i.do_kexec_load.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %call6.i) #4
  br label %__do_sys_kexec_load.exit

__do_sys_kexec_load.exit:                         ; preds = %do_kexec_load.exit.i, %if.then8.i, %if.end.i.__do_sys_kexec_load.exit_crit_edge, %if.end7.i.i.__do_sys_kexec_load.exit_crit_edge, %if.end3.i.i.__do_sys_kexec_load.exit_crit_edge, %if.end.i.i.__do_sys_kexec_load.exit_crit_edge, %lor.lhs.false.i.i.__do_sys_kexec_load.exit_crit_edge, %entry.__do_sys_kexec_load.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then8.i ], [ %retval.0.i29.i, %do_kexec_load.exit.i ], [ -22, %if.end.i.__do_sys_kexec_load.exit_crit_edge ], [ -22, %if.end7.i.i.__do_sys_kexec_load.exit_crit_edge ], [ %call4.i.i, %if.end3.i.i.__do_sys_kexec_load.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.__do_sys_kexec_load.exit_crit_edge ], [ -1, %entry.__do_sys_kexec_load.exit_crit_edge ], [ -1, %lor.lhs.false.i.i.__do_sys_kexec_load.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_load_data(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_kexec_unprotect_crashkres() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @machine_kexec_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kimage_crash_copy_vmcoreinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kimage_load_segment(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @machine_kexec_post_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_kexec_protect_crashkres() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_kimage_alloc_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sanity_check_segment_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kimage_alloc_control_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_free_page_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/kexec.c", i32 231, i32 1}
!2 = !{ptr @event_enter__kexec_load, !1, !"event_enter__kexec_load", i1 false, i1 false}
!3 = !{ptr @__event_enter__kexec_load, !1, !"__event_enter__kexec_load", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__kexec_load, !1, !"event_exit__kexec_load", i1 false, i1 false}
!6 = !{ptr @__event_exit__kexec_load, !1, !"__event_exit__kexec_load", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__kexec_load, !1, !"__syscall_meta__kexec_load", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__kexec_load, !1, !"__p_syscall_meta__kexec_load", i1 false, i1 false}
!10 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @types__kexec_load, !1, !"types__kexec_load", i1 false, i1 false}
!13 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @args__kexec_load, !1, !"args__kexec_load", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/kexec.c", i32 66, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @kimage_alloc_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @kimage_alloc_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/kexec.c", i32 73, i32 4}
!26 = !{ptr @kimage_alloc_init._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @kimage_alloc_init._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2155019796}
!38 = !{i64 1216069, i64 1216086, i64 1216110, i64 1216136, i64 1216154}
!39 = !{i64 2155020149}
!40 = !{i64 2155021053}
!41 = !{i64 2155021406}
!42 = !{i64 2155022252}
!43 = !{i64 2155022599}
