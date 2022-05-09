; ModuleID = '/llk/IR_all_yes/mm/memfd.c_pt.bc'
source_filename = "../mm/memfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.77, %struct.trace_event, ptr, ptr, %union.anon.79, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.77 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.100, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.101, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.102, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.100 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.101 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.102 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.105 = type { ptr }
%struct.page = type { i32, %union.anon.19, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.110, [64 x ptr], %union.anon.111 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_memfd_create\00", [41 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__memfd_create = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__memfd_create, ptr @args__memfd_create, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__memfd_create, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__memfd_create, i64 20) }, ptr @event_enter__memfd_create, ptr @event_exit__memfd_create }, align 4
@event_enter__memfd_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.77 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__memfd_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__memfd_create = internal global ptr @event_enter__memfd_create, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_memfd_create\00", [42 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__memfd_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.77 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.79 zeroinitializer, ptr @__syscall_meta__memfd_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__memfd_create = internal global ptr @event_exit__memfd_create, section "_ftrace_events", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_memfd_create\00", [47 x i8] zeroinitializer }, align 32
@types__memfd_create = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@args__memfd_create = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__memfd_create = internal global ptr @__syscall_meta__memfd_create, section "__syscalls_metadata", align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/memfd.c\00", [21 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uname\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memfd:\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1033, i64 1034]
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"event_enter__memfd_create\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"event_exit__memfd_create\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"types__memfd_create\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"args__memfd_create\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 127, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1182, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 266, i32 1 }
@___asan_gen_.57 = private constant [14 x i8] c"../mm/memfd.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 297, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 214, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__event_enter__memfd_create, ptr @__event_exit__memfd_create, ptr @__p_syscall_meta__memfd_create, ptr @__syscall_meta__memfd_create, ptr @event_enter__memfd_create, ptr @event_exit__memfd_create, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__memfd_create, ptr @args__memfd_create, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__memfd_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__memfd_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__memfd_create to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__memfd_create to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_memfd_create = dso_local alias i32 (ptr, i32), ptr @__se_sys_memfd_create

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memfd_fcntl(ptr noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1033, label %if.end
    i32 1034, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %arg)
  %tobool2.not.i = icmp ult i32 %arg, 32
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %file, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.unlock.i_crit_edge, label %lor.lhs.false.i.i.i

if.end4.i.unlock.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

lor.lhs.false.i.i.i:                              ; preds = %if.end4.i
  %f_mapping.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %5 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_mapping.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.unlock.i_crit_edge, label %shmem_file.exit.i.i

lor.lhs.false.i.i.i.unlock.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

shmem_file.exit.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %a_ops.i.i.i.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %a_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_ops.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %8, @shmem_aops
  br i1 %cmp.i.i.i.i, label %memfd_file_seals_ptr.exit.i, label %shmem_file.exit.i.i.unlock.i_crit_edge

shmem_file.exit.i.i.unlock.i_crit_edge:           ; preds = %shmem_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

memfd_file_seals_ptr.exit.i:                      ; preds = %shmem_file.exit.i.i
  %9 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i, align 8
  %seals.i.i = getelementptr i8, ptr %10, i32 -92
  %tobool6.not.i = icmp eq ptr %seals.i.i, null
  br i1 %tobool6.not.i, label %memfd_file_seals_ptr.exit.i.unlock.i_crit_edge, label %if.end8.i

memfd_file_seals_ptr.exit.i.unlock.i_crit_edge:   ; preds = %memfd_file_seals_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

if.end8.i:                                        ; preds = %memfd_file_seals_ptr.exit.i
  %11 = ptrtoint ptr %seals.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seals.i.i, align 4
  %and9.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.unlock.i_crit_edge

if.end8.i.unlock.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

if.end12.i:                                       ; preds = %if.end8.i
  %and13.i = and i32 %arg, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp ne i32 %and13.i, 0
  %and15.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or.cond.i = select i1 %tobool14.not.i, i1 %tobool16.not.i, i1 false
  br i1 %or.cond.i, label %if.then17.i, label %if.end12.i.if.end28.i_crit_edge

if.end12.i.if.end28.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then17.i:                                      ; preds = %if.end12.i
  %i_mmap_writable.i.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i.i, i32 noundef 4) #6
  %13 = ptrtoint ptr %i_mmap_writable.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_mmap_writable.i.i, align 4
  br label %do.body1.i.i.i.i

do.body1.i.i.i.i:                                 ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, %if.then17.i
  %c.0.i.i.i.i = phi i32 [ %14, %if.then17.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i.i)
  %cmp.i.i.i44.i = icmp sgt i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i44.i, label %do.body1.i.i.i.i.unlock.i_crit_edge, label %do.cond3.i.i.i.i, !prof !41

do.body1.i.i.i.i.unlock.i_crit_edge:              ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

do.cond3.i.i.i.i:                                 ; preds = %do.body1.i.i.i.i
  %sub.i.i.i.i = add i32 %c.0.i.i.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i.i, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i.i
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i.i, ptr %i_mmap_writable.i.i, i32 %c.0.i.i.i.i, i32 %sub.i.i.i.i, ptr elementtype(i32) %i_mmap_writable.i.i) #6, !srcloc !43
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end21.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i.i.i

if.end21.i:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  %16 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_mapping.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #6
  %18 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %21 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %22 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %i_pages.i, ptr %xas.i, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %18, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 3 to ptr), ptr %20, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %21, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %22, align 4
  tail call void @lru_add_drain() #6
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #6
  %call.i.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef -1) #6
  %tobool.not59.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not59.i.i, label %if.end21.i.memfd_tag_pins.exit.i_crit_edge, label %if.end21.i.for.body.i.i_crit_edge

if.end21.i.for.body.i.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body.i.i

if.end21.i.memfd_tag_pins.exit.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_tag_pins.exit.i

for.body.i.i:                                     ; preds = %xas_next_entry.exit.i.i.for.body.i.i_crit_edge, %if.end21.i.for.body.i.i_crit_edge
  %page.061.i.i = phi ptr [ %retval.0.i.i.i, %xas_next_entry.exit.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end21.i.for.body.i.i_crit_edge ]
  %latency.060.i.i = phi i32 [ %latency.1.i.i, %xas_next_entry.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end21.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %page.061.i.i to i32
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true8.i.i, label %for.body.i.i.if.end16.i.i_crit_edge

for.body.i.i.if.end16.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

land.lhs.true8.i.i:                               ; preds = %for.body.i.i
  %29 = getelementptr inbounds %struct.page, ptr %page.061.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true8.i.i.page_count.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !45

land.lhs.true8.i.i.page_count.exit.i.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_count.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i.i15 = add i32 %31, -1
  br label %page_count.exit.i.i

page_count.exit.i.i:                              ; preds = %if.then.i.i.i.i, %land.lhs.true8.i.i.page_count.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i15, %if.then.i.i.i.i ], [ %28, %land.lhs.true8.i.i.page_count.exit.i.i_crit_edge ]
  %32 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %page.061.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %page.061.i.i, align 4
  %37 = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageCompound.exit.i.i.i.i, label %page_count.exit.i.i.if.then.i.i52.i.i_crit_edge

page_count.exit.i.i.if.then.i.i52.i.i_crit_edge:  ; preds = %page_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i52.i.i

PageCompound.exit.i.i.i.i:                        ; preds = %page_count.exit.i.i
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i51.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i51.i.i, label %if.end.i.i53.i.i, label %PageCompound.exit.i.i.i.i.if.then.i.i52.i.i_crit_edge, !prof !45

PageCompound.exit.i.i.i.i.if.then.i.i52.i.i_crit_edge: ; preds = %PageCompound.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i52.i.i

if.then.i.i52.i.i:                                ; preds = %PageCompound.exit.i.i.i.i.if.then.i.i52.i.i_crit_edge, %page_count.exit.i.i.if.then.i.i52.i.i_crit_edge
  %call3.i.i.i.i = call i32 @__page_mapcount(ptr noundef nonnull %page.061.i.i) #6
  br label %total_mapcount.exit.i.i

if.end.i.i53.i.i:                                 ; preds = %PageCompound.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = getelementptr inbounds %struct.page, ptr %page.061.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %40, i32 noundef 4) #6
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %add.i.i.i.i = add i32 %42, 1
  br label %total_mapcount.exit.i.i

total_mapcount.exit.i.i:                          ; preds = %if.end.i.i53.i.i, %if.then.i.i52.i.i
  %retval.0.i.i54.i.i = phi i32 [ %call3.i.i.i.i, %if.then.i.i52.i.i ], [ %add.i.i.i.i, %if.end.i.i53.i.i ]
  %sub11.i.i = sub i32 %34, %retval.0.i.i54.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub11.i.i)
  %cmp.not.i.i = icmp eq i32 %sub11.i.i, 1
  br i1 %cmp.not.i.i, label %total_mapcount.exit.i.i.if.end16.i.i_crit_edge, label %if.then12.i.i

total_mapcount.exit.i.i.if.end16.i.i_crit_edge:   ; preds = %total_mapcount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %total_mapcount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @xas_set_mark(ptr noundef nonnull %xas.i, i32 noundef 2) #6
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i, %total_mapcount.exit.i.i.if.end16.i.i_crit_edge, %for.body.i.i.if.end16.i.i_crit_edge
  %add17.i.i = add i32 %latency.060.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add17.i.i)
  %cmp18.i.i = icmp slt i32 %add17.i.i, 4096
  br i1 %cmp18.i.i, label %if.end16.i.i.for.inc.i.i_crit_edge, label %if.end20.i.i

if.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @xas_pause(ptr noundef nonnull %xas.i) #6
  %43 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %44) #6
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 59, i32 noundef 0) #6
  %call.i.i.i = call i32 @__cond_resched() #6
  %45 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %46) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end20.i.i, %if.end16.i.i.for.inc.i.i_crit_edge
  %latency.1.i.i = phi i32 [ %add17.i.i, %if.end16.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end20.i.i ]
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %20, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i55.i.i = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55.i.i)
  %tobool.not.i.i56.i.i = icmp ne i32 %and.i.i55.i.i, 0
  %tobool1.not.i.i.i.i = icmp eq ptr %48, null
  %spec.select.i.i.i.i = or i1 %tobool1.not.i.i.i.i, %tobool.not.i.i56.i.i
  br i1 %spec.select.i.i.i.i, label %for.inc.i.i.cleanup.sink.split.i.i.i_crit_edge, label %lor.lhs.false.i.i.i17, !prof !41

for.inc.i.i.cleanup.sink.split.i.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

lor.lhs.false.i.i.i17:                            ; preds = %for.inc.i.i
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i16 = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i.i16, label %lor.rhs.i.i.i, label %lor.lhs.false.i.i.i17.cleanup.sink.split.i.i.i_crit_edge, !prof !45

lor.lhs.false.i.i.i17.cleanup.sink.split.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

lor.rhs.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i17
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %19, align 2
  %conv2.i.i.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %18, align 4
  %and.i57.i.i = and i32 %55, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i57.i.i, i32 %conv2.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i57.i.i, %conv2.i.i.i
  br i1 %cmp.not.i.i.i, label %lor.rhs.i.i.i.do.body.i.i.i_crit_edge, label %lor.rhs.i.i.i.cleanup.sink.split.i.i.i_crit_edge, !prof !45

lor.rhs.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

lor.rhs.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %lor.rhs.i.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end44.i.i.i.do.body.i.i.i_crit_edge, %lor.rhs.i.i.i.do.body.i.i.i_crit_edge
  %56 = phi i32 [ %inc47.i.i.i, %if.end44.i.i.i.do.body.i.i.i_crit_edge ], [ %55, %lor.rhs.i.i.i.do.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp8.i.i.i = icmp eq i32 %56, -1
  br i1 %cmp8.i.i.i, label %do.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end18.i.i.i, !prof !41

do.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

if.end18.i.i.i:                                   ; preds = %do.body.i.i.i
  %57 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %58)
  %cmp21.i.i.i = icmp eq i8 %58, 63
  br i1 %cmp21.i.i.i, label %if.end18.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end31.i.i.i, !prof !41

if.end18.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

if.end31.i.i.i:                                   ; preds = %if.end18.i.i.i
  %conv20.i.i.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xas.i, align 4
  %add.i.i.i = add nuw nsw i32 %conv20.i.i.i, 1
  %arrayidx.i.i.i.i = getelementptr %struct.xa_node, ptr %48, i32 0, i32 7, i32 %add.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %dep_map.i.i.i.i = getelementptr inbounds %struct.anon, ptr %60, i32 0, i32 1
  %call.i.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i2.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end31.i.i.i.xa_entry.exit.i.i.i_crit_edge

if.end31.i.i.i.xa_entry.exit.i.i.i_crit_edge:     ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end31.i.i.i
  %call4.i.i.i.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %lor.lhs.false.i.i.i.i.xa_entry.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.xa_entry.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %call6.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i, label %land.lhs.true.i.i.i.i.xa_entry.exit.i.i.i_crit_edge, label %land.lhs.true8.i.i.i.i

land.lhs.true.i.i.i.i.xa_entry.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i.i

land.lhs.true8.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b13.i.i.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i.i.i, label %land.lhs.true8.i.i.i.i.xa_entry.exit.i.i.i_crit_edge, label %if.then.i.i58.i.i

land.lhs.true8.i.i.i.i.xa_entry.exit.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i.i

if.then.i.i58.i.i:                                ; preds = %land.lhs.true8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1183, ptr noundef nonnull @.str.5) #6
  br label %xa_entry.exit.i.i.i

xa_entry.exit.i.i.i:                              ; preds = %if.then.i.i58.i.i, %land.lhs.true8.i.i.i.i.xa_entry.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.xa_entry.exit.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.xa_entry.exit.i.i.i_crit_edge, %if.end31.i.i.i.xa_entry.exit.i.i.i_crit_edge
  %63 = ptrtoint ptr %62 to i32
  %and.i3.i.i.i = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i3.i.i.i)
  %cmp.i.i.i.i18 = icmp eq i32 %and.i3.i.i.i, 2
  br i1 %cmp.i.i.i.i18, label %xa_entry.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end44.i.i.i, !prof !41

xa_entry.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %xa_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i.i

if.end44.i.i.i:                                   ; preds = %xa_entry.exit.i.i.i
  %64 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %19, align 2
  %inc.i.i.i = add i8 %65, 1
  store i8 %inc.i.i.i, ptr %19, align 2
  %66 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %18, align 4
  %inc47.i.i.i = add i32 %67, 1
  store i32 %inc47.i.i.i, ptr %18, align 4
  %tobool48.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool48.not.i.i.i, label %if.end44.i.i.i.do.body.i.i.i_crit_edge, label %if.end44.i.i.i.xas_next_entry.exit.i.i_crit_edge

if.end44.i.i.i.xas_next_entry.exit.i.i_crit_edge: ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xas_next_entry.exit.i.i

if.end44.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %xa_entry.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end18.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %do.body.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %lor.rhs.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %lor.lhs.false.i.i.i17.cleanup.sink.split.i.i.i_crit_edge, %for.inc.i.i.cleanup.sink.split.i.i.i_crit_edge
  %call43.i.i.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef -1) #6
  br label %xas_next_entry.exit.i.i

xas_next_entry.exit.i.i:                          ; preds = %cleanup.sink.split.i.i.i, %if.end44.i.i.i.xas_next_entry.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call43.i.i.i, %cleanup.sink.split.i.i.i ], [ %62, %if.end44.i.i.i.xas_next_entry.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i, label %xas_next_entry.exit.i.i.memfd_tag_pins.exit.i_crit_edge, label %xas_next_entry.exit.i.i.for.body.i.i_crit_edge

xas_next_entry.exit.i.i.for.body.i.i_crit_edge:   ; preds = %xas_next_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

xas_next_entry.exit.i.i.memfd_tag_pins.exit.i_crit_edge: ; preds = %xas_next_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_tag_pins.exit.i

memfd_tag_pins.exit.i:                            ; preds = %xas_next_entry.exit.i.i.memfd_tag_pins.exit.i_crit_edge, %if.end21.i.memfd_tag_pins.exit.i_crit_edge
  %68 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %69) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc53.i.for.body.i_crit_edge, %memfd_tag_pins.exit.i
  %scan.0115.i = phi i32 [ 0, %memfd_tag_pins.exit.i ], [ %inc.i, %for.inc53.i.for.body.i_crit_edge ]
  %error.0114.i = phi i32 [ 0, %memfd_tag_pins.exit.i ], [ %error.1.lcssa.i, %for.inc53.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xas.i, align 4
  %xa_flags.i.i = getelementptr inbounds %struct.xarray, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %xa_flags.i.i, align 4
  %and.i.i = and i32 %73, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.memfd_wait_for_pins.exit_crit_edge, label %if.end.i20

for.body.i.memfd_wait_for_pins.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_wait_for_pins.exit

if.end.i20:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan.0115.i)
  %tobool.not.i19 = icmp eq i32 %scan.0115.i, 0
  br i1 %tobool.not.i19, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  call void @lru_add_drain_all() #6
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 100, %scan.0115.i
  %div.i = sdiv i32 %shl.i, 200
  %call3.i = call i32 @schedule_timeout_killable(i32 noundef %div.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 %scan.0115.i, i32 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then2.i
  %scan.1.i = phi i32 [ 0, %if.then2.i ], [ %spec.select.i, %if.else.i ]
  %74 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %18, align 4
  %75 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 3 to ptr), ptr %20, align 4
  %76 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %77) #6
  %call9.i = call ptr @xas_find_marked(ptr noundef nonnull %xas.i, i32 noundef -1, i32 noundef 2) #6
  %tobool11.not109.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not109.i, label %if.end7.i.for.inc53.i_crit_edge, label %for.body12.lr.ph.i

if.end7.i.for.inc53.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.i

for.body12.lr.ph.i:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %scan.1.i)
  %cmp29.i = icmp eq i32 %scan.1.i, 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %xas_next_marked.exit.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %page.0112.i = phi ptr [ %call9.i, %for.body12.lr.ph.i ], [ %retval.0.i.i, %xas_next_marked.exit.i.for.body12.i_crit_edge ]
  %latency.0111.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %latency.1.i, %xas_next_marked.exit.i.for.body12.i_crit_edge ]
  %error.1110.i = phi i32 [ %error.0114.i, %for.body12.lr.ph.i ], [ %error.2101.i, %xas_next_marked.exit.i.for.body12.i_crit_edge ]
  %78 = ptrtoint ptr %page.0112.i to i32
  %and.i71.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i)
  %tobool.i72.not.i = icmp eq i32 %and.i71.i, 0
  br i1 %tobool.i72.not.i, label %land.lhs.true23.i, label %for.body12.i.if.then35.i_crit_edge

for.body12.i.if.then35.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

land.lhs.true23.i:                                ; preds = %for.body12.i
  %79 = getelementptr inbounds %struct.page, ptr %page.0112.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and.i.i75.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75.i)
  %tobool.not.i.i76.i = icmp eq i32 %and.i.i75.i, 0
  br i1 %tobool.not.i.i76.i, label %land.lhs.true23.i.page_count.exit.i_crit_edge, label %if.then.i.i.i, !prof !45

land.lhs.true23.i.page_count.exit.i_crit_edge:    ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_count.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %81, -1
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.then.i.i.i, %land.lhs.true23.i.page_count.exit.i_crit_edge
  %retval.0.i.i77.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %78, %land.lhs.true23.i.page_count.exit.i_crit_edge ]
  %82 = inttoptr i32 %retval.0.i.i77.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  %call.i.i.i.i.i78.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %83 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %85 = ptrtoint ptr %page.0112.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %page.0112.i, align 4
  %87 = and i32 %86, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i.i79.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.i79.i, label %PageCompound.exit.i.i.i, label %page_count.exit.i.if.then.i.i81.i_crit_edge

page_count.exit.i.if.then.i.i81.i_crit_edge:      ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i81.i

PageCompound.exit.i.i.i:                          ; preds = %page_count.exit.i
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %79, align 4
  %and.i.i.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i80.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i80.i, label %if.end.i.i84.i, label %PageCompound.exit.i.i.i.if.then.i.i81.i_crit_edge, !prof !45

PageCompound.exit.i.i.i.if.then.i.i81.i_crit_edge: ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i81.i

if.then.i.i81.i:                                  ; preds = %PageCompound.exit.i.i.i.if.then.i.i81.i_crit_edge, %page_count.exit.i.if.then.i.i81.i_crit_edge
  %call3.i.i.i = call i32 @__page_mapcount(ptr noundef nonnull %page.0112.i) #6
  br label %total_mapcount.exit.i

if.end.i.i84.i:                                   ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = getelementptr inbounds %struct.page, ptr %page.0112.i, i32 0, i32 2
  %call.i.i.i.i82.i = call zeroext i1 @__kasan_check_read(ptr noundef %90, i32 noundef 4) #6
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %add.i.i83.i = add i32 %92, 1
  br label %total_mapcount.exit.i

total_mapcount.exit.i:                            ; preds = %if.end.i.i84.i, %if.then.i.i81.i
  %retval.0.i.i85.i = phi i32 [ %call3.i.i.i, %if.then.i.i81.i ], [ %add.i.i83.i, %if.end.i.i84.i ]
  %sub26.i = sub i32 %84, %retval.0.i.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub26.i)
  %cmp27.not.i = icmp eq i32 %sub26.i, 1
  %brmerge.i = select i1 %cmp27.not.i, i1 true, i1 %cmp29.i
  %error.1110.mux.i = select i1 %cmp27.not.i, i32 %error.1110.i, i32 -16
  br i1 %brmerge.i, label %total_mapcount.exit.i.if.then35.i_crit_edge, label %total_mapcount.exit.i.if.end36.i_crit_edge

total_mapcount.exit.i.if.end36.i_crit_edge:       ; preds = %total_mapcount.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

total_mapcount.exit.i.if.then35.i_crit_edge:      ; preds = %total_mapcount.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

if.then35.i:                                      ; preds = %total_mapcount.exit.i.if.then35.i_crit_edge, %for.body12.i.if.then35.i_crit_edge
  %error.2102.i = phi i32 [ %error.1110.i, %for.body12.i.if.then35.i_crit_edge ], [ %error.1110.mux.i, %total_mapcount.exit.i.if.then35.i_crit_edge ]
  call void @xas_clear_mark(ptr noundef nonnull %xas.i, i32 noundef 2) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %total_mapcount.exit.i.if.end36.i_crit_edge
  %error.2101.i = phi i32 [ %error.2102.i, %if.then35.i ], [ %error.1110.i, %total_mapcount.exit.i.if.end36.i_crit_edge ]
  %add.i = add i32 %latency.0111.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp37.i = icmp slt i32 %add.i, 4096
  br i1 %cmp37.i, label %if.end36.i.cleanup.i_crit_edge, label %if.end39.i

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end39.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @xas_pause(ptr noundef nonnull %xas.i) #6
  %93 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %94) #6
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 127, i32 noundef 0) #6
  %call.i86.i = call i32 @__cond_resched() #6
  %95 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %96) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end39.i, %if.end36.i.cleanup.i_crit_edge
  %latency.1.i = phi i32 [ 0, %if.end39.i ], [ %add.i, %if.end36.i.cleanup.i_crit_edge ]
  %97 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %20, align 4
  %99 = ptrtoint ptr %98 to i32
  %and.i.i88.i = and i32 %99, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88.i)
  %tobool.not.i.i89.i = icmp ne i32 %and.i.i88.i, 0
  %tobool1.not.i.i.i21 = icmp eq ptr %98, null
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i21, %tobool.not.i.i89.i
  br i1 %spec.select.i.i.i, label %cleanup.i.cleanup.sink.split.i.i_crit_edge, label %lor.rhs.i.i, !prof !41

cleanup.i.cleanup.sink.split.i.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

lor.rhs.i.i:                                      ; preds = %cleanup.i
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i90.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i90.i, label %if.end.i.i, label %lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge, !prof !45

lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %102 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %19, align 2
  %conv.i.i.i = zext i8 %103 to i32
  %inc.i.i92.i = add nuw nsw i32 %conv.i.i.i, 1
  %arrayidx.i.i.i = getelementptr %struct.xa_node, ptr %98, i32 0, i32 8, i32 0, i32 2
  %call.i.i93.i = call i32 @_find_next_bit_be(ptr noundef %arrayidx.i.i.i, i32 noundef 64, i32 noundef %inc.i.i92.i) #6
  %conv6.i.i = trunc i32 %call.i.i93.i to i8
  %104 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv6.i.i, ptr %19, align 2
  %105 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %18, align 4
  %and.i95.i = and i32 %106, -64
  %add.i.i = add i32 %and.i95.i, %call.i.i93.i
  store i32 %add.i.i, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i93.i)
  %cmp12.i.i = icmp eq i32 %call.i.i93.i, 64
  br i1 %cmp12.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end16.i96.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end16.i96.i:                                   ; preds = %if.end.i.i
  %107 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xas.i, align 4
  %arrayidx.i1.i.i = getelementptr %struct.xa_node, ptr %98, i32 0, i32 7, i32 %call.i.i93.i
  %109 = ptrtoint ptr %arrayidx.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %arrayidx.i1.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %108, i32 0, i32 1
  %call.i.i.i.i22 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i22)
  %tobool.not.i2.i.i = icmp eq i32 %call.i.i.i.i22, 0
  br i1 %tobool.not.i2.i.i, label %lor.lhs.false.i.i97.i, label %if.end16.i96.i.xa_entry.exit.i.i_crit_edge

if.end16.i96.i.xa_entry.exit.i.i_crit_edge:       ; preds = %if.end16.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i

lor.lhs.false.i.i97.i:                            ; preds = %if.end16.i96.i
  %call4.i.i.i = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i97.i.xa_entry.exit.i.i_crit_edge

lor.lhs.false.i.i97.i.xa_entry.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i97.i
  %call6.i.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge, label %land.lhs.true8.i.i.i

land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b13.i.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i.i, label %land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge, label %if.then.i.i98.i

land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xa_entry.exit.i.i

if.then.i.i98.i:                                  ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1183, ptr noundef nonnull @.str.5) #6
  br label %xa_entry.exit.i.i

xa_entry.exit.i.i:                                ; preds = %if.then.i.i98.i, %land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge, %land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge, %lor.lhs.false.i.i97.i.xa_entry.exit.i.i_crit_edge, %if.end16.i96.i.xa_entry.exit.i.i_crit_edge
  %tobool18.not.i.i = icmp eq ptr %110, null
  br i1 %tobool18.not.i.i, label %xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %xa_entry.exit.i.i.xas_next_marked.exit.i_crit_edge

xa_entry.exit.i.i.xas_next_marked.exit.i_crit_edge: ; preds = %xa_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xas_next_marked.exit.i

xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %xa_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge, %cleanup.i.cleanup.sink.split.i.i_crit_edge
  %call20.i.i = call ptr @xas_find_marked(ptr noundef nonnull %xas.i, i32 noundef -1, i32 noundef 2) #6
  br label %xas_next_marked.exit.i

xas_next_marked.exit.i:                           ; preds = %cleanup.sink.split.i.i, %xa_entry.exit.i.i.xas_next_marked.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %110, %xa_entry.exit.i.i.xas_next_marked.exit.i_crit_edge ], [ %call20.i.i, %cleanup.sink.split.i.i ]
  %tobool11.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool11.not.i, label %xas_next_marked.exit.i.for.inc53.i_crit_edge, label %xas_next_marked.exit.i.for.body12.i_crit_edge

xas_next_marked.exit.i.for.body12.i_crit_edge:    ; preds = %xas_next_marked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

xas_next_marked.exit.i.for.inc53.i_crit_edge:     ; preds = %xas_next_marked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %xas_next_marked.exit.i.for.inc53.i_crit_edge, %if.end7.i.for.inc53.i_crit_edge
  %error.1.lcssa.i = phi i32 [ %error.0114.i, %if.end7.i.for.inc53.i_crit_edge ], [ %error.2101.i, %xas_next_marked.exit.i.for.inc53.i_crit_edge ]
  %111 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xas.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %112) #6
  %inc.i = add i32 %scan.1.i, 1
  %cmp.i = icmp slt i32 %inc.i, 5
  br i1 %cmp.i, label %for.inc53.i.for.body.i_crit_edge, label %for.inc53.i.memfd_wait_for_pins.exit_crit_edge

for.inc53.i.memfd_wait_for_pins.exit_crit_edge:   ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_wait_for_pins.exit

for.inc53.i.for.body.i_crit_edge:                 ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

memfd_wait_for_pins.exit:                         ; preds = %for.inc53.i.memfd_wait_for_pins.exit_crit_edge, %for.body.i.memfd_wait_for_pins.exit_crit_edge
  %error.0.lcssa.i = phi i32 [ %error.0114.i, %for.body.i.memfd_wait_for_pins.exit_crit_edge ], [ %error.1.lcssa.i, %for.inc53.i.memfd_wait_for_pins.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.lcssa.i)
  %tobool24.not.i = icmp eq i32 %error.0.lcssa.i, 0
  br i1 %tobool24.not.i, label %memfd_wait_for_pins.exit.if.end28.i_crit_edge, label %if.then25.i

memfd_wait_for_pins.exit.if.end28.i_crit_edge:    ; preds = %memfd_wait_for_pins.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then25.i:                                      ; preds = %memfd_wait_for_pins.exit
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %f_mapping.i.i.i, align 4
  %i_mmap_writable.i45.i = getelementptr inbounds %struct.address_space, ptr %114, i32 0, i32 4
  %call.i.i.i46.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i45.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %i_mmap_writable.i45.i, i32 1, i32 3, i32 1) #6
  %115 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i45.i, ptr %i_mmap_writable.i45.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i45.i) #6, !srcloc !46
  br label %unlock.i

if.end28.i:                                       ; preds = %memfd_wait_for_pins.exit.if.end28.i_crit_edge, %if.end12.i.if.end28.i_crit_edge
  %116 = ptrtoint ptr %seals.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %seals.i.i, align 4
  %or.i = or i32 %117, %arg
  store i32 %or.i, ptr %seals.i.i, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.end28.i, %if.then25.i, %do.body1.i.i.i.i.unlock.i_crit_edge, %if.end8.i.unlock.i_crit_edge, %memfd_file_seals_ptr.exit.i.unlock.i_crit_edge, %shmem_file.exit.i.i.unlock.i_crit_edge, %lor.lhs.false.i.i.i.unlock.i_crit_edge, %if.end4.i.unlock.i_crit_edge
  %error.0.i = phi i32 [ 0, %if.end28.i ], [ %error.0.lcssa.i, %if.then25.i ], [ -22, %memfd_file_seals_ptr.exit.i.unlock.i_crit_edge ], [ -1, %if.end8.i.unlock.i_crit_edge ], [ -22, %shmem_file.exit.i.i.unlock.i_crit_edge ], [ -22, %lor.lhs.false.i.i.i.unlock.i_crit_edge ], [ -22, %if.end4.i.unlock.i_crit_edge ], [ -16, %do.body1.i.i.i.i.unlock.i_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %tobool.not.i.i.i5 = icmp eq ptr %file, null
  br i1 %tobool.not.i.i.i5, label %sw.bb1.cleanup_crit_edge, label %lor.lhs.false.i.i.i8

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i.i8:                             ; preds = %sw.bb1
  %f_mapping.i.i.i6 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %118 = ptrtoint ptr %f_mapping.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %f_mapping.i.i.i6, align 4
  %tobool1.not.i.i.i7 = icmp eq ptr %119, null
  br i1 %tobool1.not.i.i.i7, label %lor.lhs.false.i.i.i8.cleanup_crit_edge, label %shmem_file.exit.i.i11

lor.lhs.false.i.i.i8.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

shmem_file.exit.i.i11:                            ; preds = %lor.lhs.false.i.i.i8
  %a_ops.i.i.i.i9 = getelementptr inbounds %struct.address_space, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %a_ops.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %a_ops.i.i.i.i9, align 4
  %cmp.i.i.i.i10 = icmp eq ptr %121, @shmem_aops
  br i1 %cmp.i.i.i.i10, label %memfd_file_seals_ptr.exit.i14, label %shmem_file.exit.i.i11.cleanup_crit_edge

shmem_file.exit.i.i11.cleanup_crit_edge:          ; preds = %shmem_file.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

memfd_file_seals_ptr.exit.i14:                    ; preds = %shmem_file.exit.i.i11
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %122 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %f_inode.i.i.i, align 8
  %seals.i.i12 = getelementptr i8, ptr %123, i32 -92
  %tobool.not.i13 = icmp eq ptr %seals.i.i12, null
  br i1 %tobool.not.i13, label %memfd_file_seals_ptr.exit.i14.cleanup_crit_edge, label %cond.true.i

memfd_file_seals_ptr.exit.i14.cleanup_crit_edge:  ; preds = %memfd_file_seals_ptr.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true.i:                                      ; preds = %memfd_file_seals_ptr.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %seals.i.i12 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %seals.i.i12, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %memfd_file_seals_ptr.exit.i14.cleanup_crit_edge, %shmem_file.exit.i.i11.cleanup_crit_edge, %lor.lhs.false.i.i.i8.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %unlock.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %error.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %error.0.i, %unlock.i ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %125, %cond.true.i ], [ -22, %memfd_file_seals_ptr.exit.i14.cleanup_crit_edge ], [ -22, %shmem_file.exit.i.i11.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.i8.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_memfd_create(i32 noundef %uname, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uname to ptr
  %and.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool2.not.i = icmp ult i32 %flags, 8
  br i1 %tobool2.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.__do_sys_memfd_create.exit_crit_edge

if.then.i.__do_sys_memfd_create.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_memfd_create.exit

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.else.i:                                        ; preds = %entry
  %and4.i = and i32 %flags, 67108856
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.__do_sys_memfd_create.exit_crit_edge

if.else.i.__do_sys_memfd_create.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_memfd_create.exit

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %call.i = tail call i32 @strnlen_user(ptr noundef %0, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end8.i.__do_sys_memfd_create.exit_crit_edge, label %if.end10.i

if.end8.i.__do_sys_memfd_create.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_memfd_create.exit

if.end10.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %call.i)
  %cmp11.i = icmp ugt i32 %call.i, 250
  br i1 %cmp11.i, label %if.end10.i.__do_sys_memfd_create.exit_crit_edge, label %if.end8.i.i

if.end10.i.__do_sys_memfd_create.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_memfd_create.exit

if.end8.i.i:                                      ; preds = %if.end10.i
  %add.i = add nuw nsw i32 %call.i, 6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #9
  %tobool15.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not.i, label %if.end8.i.i.__do_sys_memfd_create.exit_crit_edge, label %if.end17.i

if.end8.i.i.__do_sys_memfd_create.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_memfd_create.exit

if.end17.i:                                       ; preds = %if.end8.i.i
  %1 = call ptr @memcpy(ptr %call9.i.i, ptr @.str.10, i32 7)
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 6
  tail call void @__check_object_size(ptr noundef %arrayidx.i, i32 noundef %call.i, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #6
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i, label %if.end17.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end17.i.if.then11.i.i.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end17.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %call.i, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !45

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef %call.i) #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !48
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %arrayidx.i, ptr noundef %0, i32 noundef %call.i) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end22.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !45

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end17.i.if.then11.i.i.i_crit_edge
  %res.0.i.i90.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %call.i, %if.end17.i.if.then11.i.i.i_crit_edge ], [ %call.i, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %call.i, %res.0.i.i90.i
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i90.i)
  br label %cleanup.sink.split.i

if.end22.i:                                       ; preds = %if.end.i.i.i
  %sub.i = add nuw nsw i32 %call.i, 5
  %arrayidx24.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not.i = icmp eq i8 %8, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.cleanup.sink.split.i_crit_edge

if.end22.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %if.end22.i
  %and28.i = shl i32 %flags, 19
  %9 = and i32 %and28.i, 524288
  %call30.i = tail call i32 @get_unused_fd_flags(i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end27.i.cleanup.sink.split.i_crit_edge, label %if.end33.i

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end33.i:                                       ; preds = %if.end27.i
  br i1 %tobool.not.i, label %if.end41.i, label %if.end33.i.if.then43.i_crit_edge

if.end33.i.if.then43.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.end41.i:                                       ; preds = %if.end33.i
  %call40.i = tail call ptr @shmem_file_setup(ptr noundef nonnull %call9.i.i, i64 noundef 0, i32 noundef 2097152) #6
  %cmp.i.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end41.i.if.then43.i_crit_edge, label %if.end45.i

if.end41.i.if.then43.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i.if.then43.i_crit_edge, %if.end33.i.if.then43.i_crit_edge
  %file.095.i = phi ptr [ %call40.i, %if.end41.i.if.then43.i_crit_edge ], [ inttoptr (i32 -38 to ptr), %if.end33.i.if.then43.i_crit_edge ]
  %10 = ptrtoint ptr %file.095.i to i32
  tail call void @put_unused_fd(i32 noundef %call30.i) #6
  br label %cleanup.sink.split.i

if.end45.i:                                       ; preds = %if.end41.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %call40.i, i32 0, i32 8
  %11 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_mode.i, align 8
  %or.i = or i32 %12, 28
  store i32 %or.i, ptr %f_mode.i, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %call40.i, i32 0, i32 7
  %13 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags.i, align 4
  %or46.i = or i32 %14, 131072
  store i32 %or46.i, ptr %f_flags.i, align 4
  %and47.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end52.i_crit_edge, label %if.then49.i

if.end45.i.if.end52.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end45.i
  %tobool.not.i.i.i = icmp eq ptr %call40.i, null
  br i1 %tobool.not.i.i.i, label %if.then49.i.memfd_file_seals_ptr.exit.i_crit_edge, label %lor.lhs.false.i.i.i

if.then49.i.memfd_file_seals_ptr.exit.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_file_seals_ptr.exit.i

lor.lhs.false.i.i.i:                              ; preds = %if.then49.i
  %f_mapping.i.i.i = getelementptr inbounds %struct.file, ptr %call40.i, i32 0, i32 18
  %15 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.memfd_file_seals_ptr.exit.i_crit_edge, label %shmem_file.exit.i.i

lor.lhs.false.i.i.i.memfd_file_seals_ptr.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_file_seals_ptr.exit.i

shmem_file.exit.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %a_ops.i.i.i.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %a_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %a_ops.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %18, @shmem_aops
  br i1 %cmp.i.i.i.i, label %if.then.i87.i, label %shmem_file.exit.i.i.memfd_file_seals_ptr.exit.i_crit_edge

shmem_file.exit.i.i.memfd_file_seals_ptr.exit.i_crit_edge: ; preds = %shmem_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memfd_file_seals_ptr.exit.i

if.then.i87.i:                                    ; preds = %shmem_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %call40.i, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i.i.i, align 8
  %seals.i.i = getelementptr i8, ptr %20, i32 -92
  br label %memfd_file_seals_ptr.exit.i

memfd_file_seals_ptr.exit.i:                      ; preds = %if.then.i87.i, %shmem_file.exit.i.i.memfd_file_seals_ptr.exit.i_crit_edge, %lor.lhs.false.i.i.i.memfd_file_seals_ptr.exit.i_crit_edge, %if.then49.i.memfd_file_seals_ptr.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %seals.i.i, %if.then.i87.i ], [ null, %shmem_file.exit.i.i.memfd_file_seals_ptr.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.memfd_file_seals_ptr.exit.i_crit_edge ], [ null, %if.then49.i.memfd_file_seals_ptr.exit.i_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i.i, align 4
  %and51.i = and i32 %22, -2
  store i32 %and51.i, ptr %retval.0.i.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %memfd_file_seals_ptr.exit.i, %if.end45.i.if.end52.i_crit_edge
  tail call void @fd_install(i32 noundef %call30.i, ptr noundef %call40.i) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end52.i, %if.then43.i, %if.end27.i.cleanup.sink.split.i_crit_edge, %if.end22.i.cleanup.sink.split.i_crit_edge, %if.then11.i.i.i
  %retval.0.ph.i = phi i32 [ %call30.i, %if.end52.i ], [ %10, %if.then43.i ], [ -14, %if.end22.i.cleanup.sink.split.i_crit_edge ], [ %call30.i, %if.end27.i.cleanup.sink.split.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %__do_sys_memfd_create.exit

__do_sys_memfd_create.exit:                       ; preds = %cleanup.sink.split.i, %if.end8.i.i.__do_sys_memfd_create.exit_crit_edge, %if.end10.i.__do_sys_memfd_create.exit_crit_edge, %if.end8.i.__do_sys_memfd_create.exit_crit_edge, %if.else.i.__do_sys_memfd_create.exit_crit_edge, %if.then.i.__do_sys_memfd_create.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.__do_sys_memfd_create.exit_crit_edge ], [ -22, %if.else.i.__do_sys_memfd_create.exit_crit_edge ], [ -14, %if.end8.i.__do_sys_memfd_create.exit_crit_edge ], [ -22, %if.end10.i.__do_sys_memfd_create.exit_crit_edge ], [ -12, %if.end8.i.i.__do_sys_memfd_create.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/memfd.c", i32 266, i32 1}
!2 = !{ptr @event_enter__memfd_create, !1, !"event_enter__memfd_create", i1 false, i1 false}
!3 = !{ptr @__event_enter__memfd_create, !1, !"__event_enter__memfd_create", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__memfd_create, !1, !"event_exit__memfd_create", i1 false, i1 false}
!6 = !{ptr @__event_exit__memfd_create, !1, !"__event_exit__memfd_create", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__memfd_create, !1, !"__syscall_meta__memfd_create", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__memfd_create, !1, !"__p_syscall_meta__memfd_create", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/memfd.c", i32 127, i32 4}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @types__memfd_create, !1, !"types__memfd_create", i1 false, i1 false}
!19 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @args__memfd_create, !1, !"args__memfd_create", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/memfd.c", i32 297, i32 15}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2148760558}
!43 = !{i64 1144224, i64 1144248, i64 1144269, i64 1144286, i64 1144303}
!44 = !{i64 2148760784}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2148658711, i64 2148658737, i64 2148658766, i64 2148658800, i64 2148658831, i64 2148658854}
!47 = !{i64 2152171190, i64 2152171215}
!48 = !{i64 4666745}
!49 = !{i64 4666942}
!50 = !{i64 2152152175}
