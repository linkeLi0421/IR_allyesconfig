; ModuleID = '/llk/IR_all_yes/drivers/pci/syscall.c_pt.bc'
source_filename = "../drivers/pci/syscall.c"
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_enter_pciconfig_read\00", [39 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__pciconfig_read = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 5, ptr @types__pciconfig_read, ptr @args__pciconfig_read, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pciconfig_read, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pciconfig_read, i64 20) }, ptr @event_enter__pciconfig_read, ptr @event_exit__pciconfig_read }, align 4
@event_enter__pciconfig_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__pciconfig_read, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pciconfig_read = internal global ptr @event_enter__pciconfig_read, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_exit_pciconfig_read\00", [40 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__pciconfig_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__pciconfig_read, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pciconfig_read = internal global ptr @event_exit__pciconfig_read, section "_ftrace_events", align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_pciconfig_read\00", [45 x i8] zeroinitializer }, align 32
@types__pciconfig_read = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.7], [44 x i8] zeroinitializer }, align 32
@args__pciconfig_read = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pciconfig_read = internal global ptr @__syscall_meta__pciconfig_read, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_pciconfig_write\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__pciconfig_write = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 5, ptr @types__pciconfig_write, ptr @args__pciconfig_write, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pciconfig_write, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pciconfig_write, i64 20) }, ptr @event_enter__pciconfig_write, ptr @event_exit__pciconfig_write }, align 4
@event_enter__pciconfig_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__pciconfig_write, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pciconfig_write = internal global ptr @event_enter__pciconfig_write, section "_ftrace_events", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_pciconfig_write\00", [39 x i8] zeroinitializer }, align 32
@event_exit__pciconfig_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__pciconfig_write, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pciconfig_write = internal global ptr @event_exit__pciconfig_write, section "_ftrace_events", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_pciconfig_write\00", [44 x i8] zeroinitializer }, align 32
@types__pciconfig_write = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.7], [44 x i8] zeroinitializer }, align 32
@args__pciconfig_write = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pciconfig_write = internal global ptr @__syscall_meta__pciconfig_write, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfn\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pci/syscall.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"event_enter__pciconfig_read\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"event_exit__pciconfig_read\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"types__pciconfig_read\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"args__pciconfig_read\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"event_enter__pciconfig_write\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"event_exit__pciconfig_write\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"types__pciconfig_write\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"args__pciconfig_write\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 86, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 15, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [25 x i8] c"../drivers/pci/syscall.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 55, i32 9 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__event_enter__pciconfig_read, ptr @__event_enter__pciconfig_write, ptr @__event_exit__pciconfig_read, ptr @__event_exit__pciconfig_write, ptr @__p_syscall_meta__pciconfig_read, ptr @__p_syscall_meta__pciconfig_write, ptr @__syscall_meta__pciconfig_read, ptr @__syscall_meta__pciconfig_write, ptr @event_enter__pciconfig_read, ptr @event_enter__pciconfig_write, ptr @event_exit__pciconfig_read, ptr @event_exit__pciconfig_write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__pciconfig_read, ptr @args__pciconfig_read, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__pciconfig_write, ptr @args__pciconfig_write, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pciconfig_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pciconfig_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pciconfig_read to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pciconfig_read to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pciconfig_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pciconfig_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pciconfig_write to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pciconfig_write to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_pciconfig_read = dso_local alias i32 (i32, i32, i32, i32, ptr), ptr @__se_sys_pciconfig_read
@sys_pciconfig_write = dso_local alias i32 (i32, i32, i32, i32, ptr), ptr @__se_sys_pciconfig_write

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pciconfig_read(i32 noundef %bus, i32 noundef %dfn, i32 noundef %off, i32 noundef %len, i32 noundef %buf) #0 align 64 {
entry:
  %byte.i = alloca i8, align 1
  %word.i = alloca i16, align 2
  %dword.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #4
  %1 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %byte.i, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word.i) #4
  %2 = ptrtoint ptr %word.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %word.i, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword.i) #4
  %3 = ptrtoint ptr %dword.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dword.i, align 4, !annotation !43
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #4
  br i1 %call.i, label %if.end.i, label %entry.error.i_crit_edge

entry.error.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %bus, i32 noundef %dfn) #4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.error.i_crit_edge, label %if.end3.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end3.i:                                        ; preds = %if.end.i
  %4 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %if.end3.i.error.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
    i32 4, label %sw.bb7.i
  ]

if.end3.i.error.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = call i32 @pci_user_read_config_byte(ptr noundef nonnull %call1.i, i32 noundef %off, ptr noundef nonnull %byte.i) #4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = call i32 @pci_user_read_config_word(ptr noundef nonnull %call1.i, i32 noundef %off, ptr noundef nonnull %word.i) #4
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i = call i32 @pci_user_read_config_dword(ptr noundef nonnull %call1.i, i32 noundef %off, ptr noundef nonnull %dword.i) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb.i
  %cfg_ret.0.i = phi i32 [ %call8.i, %sw.bb7.i ], [ %call6.i, %sw.bb5.i ], [ %call4.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfg_ret.0.i)
  %tobool9.not.i = icmp eq i32 %cfg_ret.0.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %sw.epilog.i.error.i_crit_edge

sw.epilog.i.error.i_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end11.i:                                       ; preds = %sw.epilog.i
  %5 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %len, label %if.end11.i.sw.epilog47.i_crit_edge [
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb15.i
    i32 4, label %sw.bb31.i
  ]

if.end11.i.sw.epilog47.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog47.i

sw.bb12.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %byte.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 55) #4
  %8 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !44
  %and.i.i = and i32 %10, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i8 %7, i32 -1226833921) #4, !srcloc !47
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog47.i

sw.bb15.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %word.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %word.i, align 2
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 58) #4
  %14 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i117.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i117.i to ptr
  %cpu_domain.i.i118.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i118.i) #3, !srcloc !44
  %and.i119.i = and i32 %16, -13
  %or.i120.i = or i32 %and.i119.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i120.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %17 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i16 %13, i32 -1226833921) #4, !srcloc !48
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog47.i

sw.bb31.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %dword.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dword.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 61) #4
  %20 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i121.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i121.i to ptr
  %cpu_domain.i.i122.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i122.i) #3, !srcloc !44
  %and.i123.i = and i32 %22, -13
  %or.i124.i = or i32 %and.i123.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i124.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %23 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %19, i32 -1226833921) #4, !srcloc !49
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog47.i

sw.epilog47.i:                                    ; preds = %sw.bb31.i, %sw.bb15.i, %sw.bb12.i, %if.end11.i.sw.epilog47.i_crit_edge
  %err.0.i = phi i32 [ -5, %if.end11.i.sw.epilog47.i_crit_edge ], [ %23, %sw.bb31.i ], [ %17, %sw.bb15.i ], [ %11, %sw.bb12.i ]
  call void @pci_dev_put(ptr noundef nonnull %call1.i) #4
  br label %__do_sys_pciconfig_read.exit

error.i:                                          ; preds = %sw.epilog.i.error.i_crit_edge, %if.end3.i.error.i_crit_edge, %if.end.i.error.i_crit_edge, %entry.error.i_crit_edge
  %err.1.i = phi i32 [ -5, %sw.epilog.i.error.i_crit_edge ], [ -19, %if.end.i.error.i_crit_edge ], [ -1, %entry.error.i_crit_edge ], [ -22, %if.end3.i.error.i_crit_edge ]
  %dev.0.i = phi ptr [ %call1.i, %sw.epilog.i.error.i_crit_edge ], [ null, %if.end.i.error.i_crit_edge ], [ null, %entry.error.i_crit_edge ], [ %call1.i, %if.end3.i.error.i_crit_edge ]
  %24 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %len, label %error.i.sw.epilog96.i_crit_edge [
    i32 1, label %sw.bb48.i
    i32 2, label %sw.bb64.i
    i32 4, label %sw.bb80.i
  ]

error.i.sw.epilog96.i_crit_edge:                  ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog96.i

sw.bb48.i:                                        ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 73) #4
  %25 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i125.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i125.i to ptr
  %cpu_domain.i.i126.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i126.i) #3, !srcloc !44
  %and.i127.i = and i32 %27, -13
  %or.i128.i = or i32 %and.i127.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i128.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i8 -1, i32 -1226833921) #4, !srcloc !50
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog96.i

sw.bb64.i:                                        ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 76) #4
  %29 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i129.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i129.i to ptr
  %cpu_domain.i.i130.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i130.i) #3, !srcloc !44
  %and.i131.i = and i32 %31, -13
  %or.i132.i = or i32 %and.i131.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i132.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %32 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i16 -1, i32 -1226833921) #4, !srcloc !51
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog96.i

sw.bb80.i:                                        ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 79) #4
  %33 = call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i133.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i133.i to ptr
  %cpu_domain.i.i134.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i134.i) #3, !srcloc !44
  %and.i135.i = and i32 %35, -13
  %or.i136.i = or i32 %and.i135.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i136.i) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %36 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 -1, i32 -1226833921) #4, !srcloc !52
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #4, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  br label %sw.epilog96.i

sw.epilog96.i:                                    ; preds = %sw.bb80.i, %sw.bb64.i, %sw.bb48.i, %error.i.sw.epilog96.i_crit_edge
  call void @pci_dev_put(ptr noundef %dev.0.i) #4
  br label %__do_sys_pciconfig_read.exit

__do_sys_pciconfig_read.exit:                     ; preds = %sw.epilog96.i, %sw.epilog47.i
  %retval.0.i = phi i32 [ %err.1.i, %sw.epilog96.i ], [ %err.0.i, %sw.epilog47.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pciconfig_write(i32 noundef %bus, i32 noundef %dfn, i32 noundef %off, i32 noundef %len, i32 noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #4
  br i1 %call.i, label %lor.lhs.false.i, label %entry.__do_sys_pciconfig_write.exit_crit_edge

entry.__do_sys_pciconfig_write.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_pciconfig_write.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @security_locked_down(i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.__do_sys_pciconfig_write.exit_crit_edge

lor.lhs.false.i.__do_sys_pciconfig_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_pciconfig_write.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %bus, i32 noundef %dfn) #4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.__do_sys_pciconfig_write.exit_crit_edge, label %if.end5.i

if.end.i.__do_sys_pciconfig_write.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_pciconfig_write.exit

if.end5.i:                                        ; preds = %if.end.i
  %1 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %len, label %if.end5.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb16.i
    i32 4, label %sw.bb37.i
  ]

if.end5.i.sw.epilog.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end5.i
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 105) #4
  %2 = tail call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !44
  %and.i.i = and i32 %4, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #4, !srcloc !53
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool9.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end11.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult7.i = extractvalue { i32, i32 } %5, 1
  %conv.i = trunc i32 %asmresult7.i to i8
  %call12.i = tail call i32 @pci_user_write_config_byte(ptr noundef nonnull %call2.i, i32 noundef %off, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  %spec.store.select.i = select i1 %tobool13.not.i, i32 0, i32 -5
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end5.i
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 114) #4
  %6 = tail call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i77.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i77.i to ptr
  %cpu_domain.i.i78.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i78.i) #3, !srcloc !44
  %and.i79.i = and i32 %8, -13
  %or.i80.i = or i32 %and.i79.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i80.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #4, !srcloc !54
  %asmresult26.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult26.i)
  %tobool30.not.i = icmp eq i32 %asmresult26.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %sw.bb16.i.sw.epilog.i_crit_edge

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end32.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult27.i = extractvalue { i32, i32 } %9, 1
  %conv28.i = trunc i32 %asmresult27.i to i16
  %call33.i = tail call i32 @pci_user_write_config_word(ptr noundef nonnull %call2.i, i32 noundef %off, i16 noundef zeroext %conv28.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  %spec.store.select61.i = select i1 %tobool34.not.i, i32 0, i32 -5
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end5.i
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 123) #4
  %10 = tail call i32 @llvm.read_register.i32(metadata !33) #4
  %and.i.i.i81.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i81.i to ptr
  %cpu_domain.i.i82.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i82.i) #3, !srcloc !44
  %and.i83.i = and i32 %12, -13
  %or.i84.i = or i32 %and.i83.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i84.i) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #4, !srcloc !55
  %asmresult47.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult47.i)
  %tobool50.not.i = icmp eq i32 %asmresult47.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %sw.bb37.i.sw.epilog.i_crit_edge

sw.bb37.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end52.i:                                       ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult48.i = extractvalue { i32, i32 } %13, 1
  %call53.i = tail call i32 @pci_user_write_config_dword(ptr noundef nonnull %call2.i, i32 noundef %off, i32 noundef %asmresult48.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  %spec.store.select62.i = select i1 %tobool54.not.i, i32 0, i32 -5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end52.i, %sw.bb37.i.sw.epilog.i_crit_edge, %if.end32.i, %sw.bb16.i.sw.epilog.i_crit_edge, %if.end11.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end5.i.sw.epilog.i_crit_edge
  %err.0.i = phi i32 [ %asmresult47.i, %sw.bb37.i.sw.epilog.i_crit_edge ], [ %spec.store.select62.i, %if.end52.i ], [ %asmresult26.i, %sw.bb16.i.sw.epilog.i_crit_edge ], [ %spec.store.select61.i, %if.end32.i ], [ %asmresult.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %spec.store.select.i, %if.end11.i ], [ -22, %if.end5.i.sw.epilog.i_crit_edge ]
  tail call void @pci_dev_put(ptr noundef nonnull %call2.i) #4
  br label %__do_sys_pciconfig_write.exit

__do_sys_pciconfig_write.exit:                    ; preds = %sw.epilog.i, %if.end.i.__do_sys_pciconfig_write.exit_crit_edge, %lor.lhs.false.i.__do_sys_pciconfig_write.exit_crit_edge, %entry.__do_sys_pciconfig_write.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %sw.epilog.i ], [ -1, %lor.lhs.false.i.__do_sys_pciconfig_write.exit_crit_edge ], [ -1, %entry.__do_sys_pciconfig_write.exit_crit_edge ], [ -19, %if.end.i.__do_sys_pciconfig_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/syscall.c", i32 15, i32 1}
!2 = !{ptr @event_enter__pciconfig_read, !1, !"event_enter__pciconfig_read", i1 false, i1 false}
!3 = !{ptr @__event_enter__pciconfig_read, !1, !"__event_enter__pciconfig_read", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__pciconfig_read, !1, !"event_exit__pciconfig_read", i1 false, i1 false}
!6 = !{ptr @__event_exit__pciconfig_read, !1, !"__event_exit__pciconfig_read", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__pciconfig_read, !1, !"__syscall_meta__pciconfig_read", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__pciconfig_read, !1, !"__p_syscall_meta__pciconfig_read", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/syscall.c", i32 86, i32 1}
!12 = !{ptr @event_enter__pciconfig_write, !11, !"event_enter__pciconfig_write", i1 false, i1 false}
!13 = !{ptr @__event_enter__pciconfig_write, !11, !"__event_enter__pciconfig_write", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__pciconfig_write, !11, !"event_exit__pciconfig_write", i1 false, i1 false}
!16 = !{ptr @__event_exit__pciconfig_write, !11, !"__event_exit__pciconfig_write", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__pciconfig_write, !11, !"__syscall_meta__pciconfig_write", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__pciconfig_write, !11, !"__p_syscall_meta__pciconfig_write", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @types__pciconfig_read, !1, !"types__pciconfig_read", i1 false, i1 false}
!23 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @args__pciconfig_read, !1, !"args__pciconfig_read", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/syscall.c", i32 55, i32 9}
!31 = !{ptr @types__pciconfig_write, !11, !"types__pciconfig_write", i1 false, i1 false}
!32 = !{ptr @args__pciconfig_write, !11, !"args__pciconfig_write", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 6372543}
!45 = !{i64 6372740}
!46 = !{i64 2153857973}
!47 = !{i64 2155327993, i64 2155328273, i64 2155328607, i64 2155328941}
!48 = !{i64 2155338850, i64 2155339130, i64 2155339464, i64 2155339798}
!49 = !{i64 2155349699, i64 2155349979, i64 2155350313, i64 2155350647}
!50 = !{i64 2155354661, i64 2155354941, i64 2155355275, i64 2155355609}
!51 = !{i64 2155365514, i64 2155365794, i64 2155366128, i64 2155366462}
!52 = !{i64 2155376357, i64 2155376637, i64 2155376971, i64 2155377305}
!53 = !{i64 2155407976, i64 2155408256, i64 2155408590, i64 2155408924}
!54 = !{i64 2155422746, i64 2155423026, i64 2155423360, i64 2155423694}
!55 = !{i64 2155437524, i64 2155437804, i64 2155438138, i64 2155438472}
