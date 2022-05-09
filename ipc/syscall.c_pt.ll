; ModuleID = '/llk/IR_all_yes/ipc/syscall.c_pt.bc'
source_filename = "../ipc/syscall.c"
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
%struct.ipc_kludge = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipc/syscall.c\00", [18 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_enter_ipc\00", [18 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__ipc = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 6, ptr @types__ipc, ptr @args__ipc, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ipc, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ipc, i64 20) }, ptr @event_enter__ipc, ptr @event_exit__ipc }, align 4
@event_enter__ipc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ipc, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ipc = internal global ptr @event_enter__ipc, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_exit_ipc\00", [19 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__ipc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ipc, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ipc = internal global ptr @event_exit__ipc, section "_ftrace_events", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_ipc\00", [24 x i8] zeroinitializer }, align 32
@types__ipc = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11], [40 x i8] zeroinitializer }, align 32
@args__ipc = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ipc = internal global ptr @__syscall_meta__ipc, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"call\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"first\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"second\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"third\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptr\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fifth\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12, i64 13, i64 14, i64 21, i64 22, i64 23, i64 24]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 48, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"event_enter__ipc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"event_exit__ipc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"types__ipc\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"args__ipc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 156, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [17 x i8] c"../ipc/syscall.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 110, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__event_enter__ipc, ptr @__event_exit__ipc, ptr @__p_syscall_meta__ipc, ptr @__syscall_meta__ipc, ptr @event_enter__ipc, ptr @event_exit__ipc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__ipc, ptr @args__ipc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ipc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ipc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ipc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ipc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_ipc = dso_local alias i32 (i32, i32, i32, i32, ptr, i32), ptr @__se_sys_ipc

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %ptr, i32 noundef %fifth) local_unnamed_addr #0 align 64 {
entry:
  %tmp18 = alloca %struct.ipc_kludge, align 4
  %raddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %call to i16
  %0 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.cleanup57_crit_edge [
    i16 1, label %sw.bb
    i16 4, label %sw.bb2
    i16 2, label %sw.bb4
    i16 3, label %sw.bb6
    i16 11, label %sw.bb14
    i16 12, label %sw.bb16
    i16 13, label %sw.bb29
    i16 14, label %sw.bb31
    i16 21, label %sw.bb33
    i16 22, label %sw.bb50
    i16 23, label %sw.bb52
    i16 24, label %sw.bb54
  ]

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @ksys_semtimedop(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, ptr noundef null) #4
  br label %cleanup57

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = inttoptr i32 %fifth to ptr
  %call3 = tail call i32 @compat_ksys_semtimedop(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, ptr noundef %1) #4
  br label %cleanup57

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @ksys_semget(i32 noundef %first, i32 noundef %second, i32 noundef %third) #4
  br label %cleanup57

sw.bb6:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %sw.bb6.cleanup57_crit_edge, label %if.end

sw.bb6.cleanup57_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

if.end:                                           ; preds = %sw.bb6
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 48) #4
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !42
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %ptr, i32 -1226833921) #4, !srcloc !45
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult8 = extractvalue { i32, i32 } %5, 1
  %call13 = tail call i32 @ksys_old_semctl(i32 noundef %first, i32 noundef %second, i32 noundef %third, i32 noundef %asmresult8) #4
  br label %cleanup57

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 @ksys_msgsnd(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, i32 noundef %third) #4
  br label %cleanup57

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call)
  %cond59 = icmp ult i32 %call, 65536
  br i1 %cond59, label %sw.bb17, label %sw.default

sw.bb17:                                          ; preds = %sw.bb16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp18) #4
  %6 = ptrtoint ptr %tmp18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp18, align 4, !annotation !46
  %7 = getelementptr inbounds %struct.ipc_kludge, ptr %tmp18, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !46
  %tobool19.not = icmp eq ptr %ptr, null
  br i1 %tobool19.not, label %sw.bb17.cleanup27_crit_edge, label %if.then.i

sw.bb17.cleanup27_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.then.i:                                        ; preds = %sw.bb17
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #4
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %ptr, i32 8, i32 -1226833920) #7, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !48

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp18, i32 noundef 8) #4
  %10 = call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !42
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #4, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp18, ptr noundef nonnull %ptr, i32 noundef 8) #4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #4, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end25, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !48

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.then.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %tmp18, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup27

if.end25:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %tmp18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmp18, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  %call26 = call i32 @ksys_msgrcv(i32 noundef %first, ptr noundef %15, i32 noundef %second, i32 noundef %17, i32 noundef %third) #4
  br label %cleanup27

cleanup27:                                        ; preds = %if.end25, %if.then11.i.i, %sw.bb17.cleanup27_crit_edge
  %retval.1 = phi i32 [ %call26, %if.end25 ], [ -22, %sw.bb17.cleanup27_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp18) #4
  br label %cleanup57

sw.default:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 @ksys_msgrcv(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, i32 noundef %fifth, i32 noundef %third) #4
  br label %cleanup57

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 @ksys_msgget(i32 noundef %first, i32 noundef %second) #4
  br label %cleanup57

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 @ksys_old_msgctl(i32 noundef %first, i32 noundef %second, ptr noundef %ptr) #4
  br label %cleanup57

sw.bb33:                                          ; preds = %entry
  %shr.mask = and i32 %call, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shr.mask)
  %cond = icmp eq i32 %shr.mask, 65536
  br i1 %cond, label %sw.bb33.cleanup57_crit_edge, label %sw.default34

sw.bb33.cleanup57_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

sw.default34:                                     ; preds = %sw.bb33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raddr) #4
  %18 = ptrtoint ptr %raddr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %raddr, align 4, !annotation !46
  %call35 = call i32 @do_shmat(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, ptr noundef nonnull %raddr, i32 noundef 16384) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %sw.default34.cleanup48_crit_edge

sw.default34.cleanup48_crit_edge:                 ; preds = %sw.default34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.end38:                                         ; preds = %sw.default34
  call void @__sanitizer_cov_trace_pc() #6
  %19 = inttoptr i32 %third to ptr
  %20 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raddr, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 89) #4
  %22 = call i32 @llvm.read_register.i32(metadata !32) #4
  %and.i.i.i104 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i104 to ptr
  %cpu_domain.i.i105 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i105) #3, !srcloc !42
  %and.i106 = and i32 %24, -13
  %or.i107 = or i32 %and.i106, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i107) #4, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %25 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %19, i32 %21, i32 -1226833921) #4, !srcloc !49
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #4, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  br label %cleanup48

cleanup48:                                        ; preds = %if.end38, %sw.default34.cleanup48_crit_edge
  %retval.2 = phi i32 [ %25, %if.end38 ], [ %call35, %sw.default34.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raddr) #4
  br label %cleanup57

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call51 = tail call i32 @ksys_shmdt(ptr noundef %ptr) #4
  br label %cleanup57

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = tail call i32 @ksys_shmget(i32 noundef %first, i32 noundef %second, i32 noundef %third) #4
  br label %cleanup57

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call55 = tail call i32 @ksys_old_shmctl(i32 noundef %first, i32 noundef %second, ptr noundef %ptr) #4
  br label %cleanup57

cleanup57:                                        ; preds = %sw.bb54, %sw.bb52, %sw.bb50, %cleanup48, %sw.bb33.cleanup57_crit_edge, %sw.bb31, %sw.bb29, %sw.default, %cleanup27, %sw.bb14, %if.end12, %if.end.cleanup57_crit_edge, %sw.bb6.cleanup57_crit_edge, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup57_crit_edge
  %retval.3 = phi i32 [ %call55, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %call51, %sw.bb50 ], [ %retval.2, %cleanup48 ], [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %retval.1, %cleanup27 ], [ %call28, %sw.default ], [ %call15, %sw.bb14 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ %call13, %if.end12 ], [ -22, %sw.bb6.cleanup57_crit_edge ], [ -14, %if.end.cleanup57_crit_edge ], [ -22, %sw.bb33.cleanup57_crit_edge ], [ -38, %entry.cleanup57_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_semtimedop(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @compat_ksys_semtimedop(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_semget(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_old_semctl(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_msgsnd(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_msgrcv(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_msgget(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_old_msgctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_shmat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_shmdt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_shmget(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_old_shmctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, i32 noundef %ptr, i32 noundef %fifth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ptr to ptr
  %call1.i = tail call i32 @ksys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %0, i32 noundef %fifth) #4
  ret i32 %call1.i
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../ipc/syscall.c", i32 48, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../ipc/syscall.c", i32 110, i32 1}
!4 = !{ptr @event_enter__ipc, !3, !"event_enter__ipc", i1 false, i1 false}
!5 = !{ptr @__event_enter__ipc, !3, !"__event_enter__ipc", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__ipc, !3, !"event_exit__ipc", i1 false, i1 false}
!8 = !{ptr @__event_exit__ipc, !3, !"__event_exit__ipc", i1 false, i1 false}
!9 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__ipc, !3, !"__syscall_meta__ipc", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__ipc, !3, !"__p_syscall_meta__ipc", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!19 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !3, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @types__ipc, !3, !"types__ipc", i1 false, i1 false}
!25 = !{ptr @.str.12, !3, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !3, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !3, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !3, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !3, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !3, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @args__ipc, !3, !"args__ipc", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 4723900}
!43 = !{i64 4724097}
!44 = !{i64 2152209330}
!45 = !{i64 2154906840, i64 2154907120, i64 2154907454, i64 2154907788}
!46 = !{!"auto-init"}
!47 = !{i64 2152228345, i64 2152228370}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2154916522, i64 2154916802, i64 2154917136, i64 2154917470}
