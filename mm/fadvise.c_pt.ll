; ModuleID = '/llk/IR_all_yes/mm/fadvise.c_pt.bc'
source_filename = "../mm/fadvise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+generic_fadvise\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_fadvise\09\09\09\09"
module asm "\09.long\09__crc_generic_fadvise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fadvise\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_fadvise\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_fadvise\09\09\09\09"
module asm "\09.long\09__crc_vfs_fadvise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fadvise\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.78, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.78 = type { ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.103, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.99 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.103 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@__kstrtab_generic_fadvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fadvise = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fadvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fadvise to i32), ptr @__kstrtab_generic_fadvise, ptr @__kstrtabns_generic_fadvise }, section "___ksymtab+generic_fadvise", align 4
@__kstrtab_vfs_fadvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fadvise = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fadvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fadvise to i32), ptr @__kstrtab_vfs_fadvise, ptr @__kstrtabns_vfs_fadvise }, section "___ksymtab+vfs_fadvise", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_fadvise64_64\00", [41 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__fadvise64_64 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__fadvise64_64, ptr @args__fadvise64_64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fadvise64_64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fadvise64_64, i64 20) }, ptr @event_enter__fadvise64_64, ptr @event_exit__fadvise64_64 }, align 4
@event_enter__fadvise64_64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fadvise64_64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fadvise64_64 = internal global ptr @event_enter__fadvise64_64, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_fadvise64_64\00", [42 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__fadvise64_64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__fadvise64_64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fadvise64_64 = internal global ptr @event_exit__fadvise64_64, section "_ftrace_events", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_fadvise64_64\00", [47 x i8] zeroinitializer }, align 32
@types__fadvise64_64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.4, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@args__fadvise64_64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fadvise64_64 = internal global ptr @__syscall_meta__fadvise64_64, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"advice\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"event_enter__fadvise64_64\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"event_exit__fadvise64_64\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"types__fadvise64_64\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"args__fadvise64_64\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [16 x i8] c"../mm/fadvise.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 206, i32 1 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__event_enter__fadvise64_64, ptr @__event_exit__fadvise64_64, ptr @__ksymtab_generic_fadvise, ptr @__ksymtab_vfs_fadvise, ptr @__p_syscall_meta__fadvise64_64, ptr @__syscall_meta__fadvise64_64, ptr @event_enter__fadvise64_64, ptr @event_exit__fadvise64_64, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__fadvise64_64, ptr @args__fadvise64_64, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fadvise64_64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fadvise64_64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fadvise64_64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fadvise64_64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_fadvise64_64 = dso_local alias i32 (i32, i64, i64, i32), ptr @__se_sys_fadvise64_64

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_fadvise(ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #0 align 64 {
entry:
  %ractl.i = alloca %struct.readahead_control, align 4
  %nr_pagevec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %4)
  %cmp = icmp eq i16 %4, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %5 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_mapping, align 4
  %tobool.not = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp2 = icmp slt i64 %len, 0
  %or.cond = or i1 %cmp2, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call6 = tail call ptr @inode_to_bdi(ptr noundef %8) #3
  %cmp10 = icmp eq ptr %call6, @noop_backing_dev_info
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %advice)
  %switch = icmp ult i32 %advice, 6
  %. = select i1 %switch, i32 0, i32 -22
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %add = add i64 %len, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool14.not = icmp eq i64 %len, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %len)
  %cmp16 = icmp slt i64 %add, %len
  %or.cond131 = or i1 %tobool14.not, %cmp16
  %dec = add i64 %add, -1
  %endbyte.0 = select i1 %or.cond131, i64 -1, i64 %dec
  %9 = zext i32 %advice to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %advice, label %if.end13.cleanup_crit_edge [
    i32 0, label %sw.bb20
    i32 1, label %sw.bb24
    i32 2, label %sw.bb28
    i32 3, label %sw.bb36
    i32 5, label %if.end13.sw.epilog78_crit_edge
    i32 4, label %sw.bb44
  ]

if.end13.sw.epilog78_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog78

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %call6, i32 0, i32 3
  %10 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ra_pages, align 4
  %ra_pages21 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13, i32 3
  %12 = ptrtoint ptr %ra_pages21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ra_pages21, align 4
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #3
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %13 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode, align 8
  %and22 = and i32 %14, -4097
  store i32 %and22, ptr %f_mode, align 8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #3
  br label %sw.epilog78

sw.bb24:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %f_lock25 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock25) #3
  %f_mode26 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %15 = ptrtoint ptr %f_mode26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_mode26, align 8
  %or = or i32 %16, 4096
  store i32 %or, ptr %f_mode26, align 8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock25) #3
  br label %sw.epilog78

sw.bb28:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %ra_pages29 = getelementptr inbounds %struct.backing_dev_info, ptr %call6, i32 0, i32 3
  %17 = ptrtoint ptr %ra_pages29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ra_pages29, align 4
  %mul = shl i32 %18, 1
  %ra_pages31 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13, i32 3
  %19 = ptrtoint ptr %ra_pages31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %ra_pages31, align 4
  %f_lock32 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock32) #3
  %f_mode33 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %20 = ptrtoint ptr %f_mode33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_mode33, align 8
  %and34 = and i32 %21, -4097
  store i32 %and34, ptr %f_mode33, align 8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock32) #3
  br label %sw.epilog78

sw.bb36:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %22 = lshr i64 %offset, 12
  %conv37 = trunc i64 %22 to i32
  %23 = lshr i64 %endbyte.0, 12
  %conv39 = trunc i64 %23 to i32
  %sub = sub i32 %conv39, %conv37
  %add40 = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40)
  %tobool41.not = icmp eq i32 %add40, 0
  %spec.store.select = select i1 %tobool41.not, i32 -1, i32 %add40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i) #3
  %24 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 2
  %26 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 3
  %27 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 4
  %28 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 5
  %29 = ptrtoint ptr %ractl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %file, ptr %ractl.i, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %6, ptr %24, align 4
  %f_ra.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %f_ra.i, ptr %25, align 4
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv37, ptr %26, align 4
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %27, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %28, align 4
  call void @force_page_cache_ra(ptr noundef nonnull %ractl.i, i32 noundef %spec.store.select) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i) #3
  br label %sw.epilog78

sw.bb44:                                          ; preds = %if.end13
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %call.i = tail call i32 @inode_congested(ptr noundef %36, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.then48, label %sw.bb44.if.end50_crit_edge

sw.bb44.if.end50_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #5
  %call49 = tail call i32 @__filemap_fdatawrite_range(ptr noundef nonnull %6, i64 noundef %offset, i64 noundef %endbyte.0, i32 noundef 0) #3
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %sw.bb44.if.end50_crit_edge
  %add51 = add i64 %offset, 4095
  %37 = lshr i64 %add51, 12
  %conv53 = trunc i64 %37 to i32
  %38 = lshr i64 %endbyte.0, 12
  %conv55 = trunc i64 %38 to i32
  %and56 = and i64 %endbyte.0, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %and56)
  %cmp57.not = icmp eq i64 %and56, 4095
  br i1 %cmp57.not, label %if.end50.if.end68_crit_edge, label %land.lhs.true

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end50
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_size, align 8
  %sub59 = add i64 %40, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %endbyte.0, i64 %sub59)
  %cmp60.not = icmp eq i64 %endbyte.0, %sub59
  br i1 %cmp60.not, label %land.lhs.true.if.end68_crit_edge, label %if.then62

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55)
  %cmp63 = icmp eq i32 %conv55, 0
  br i1 %cmp63, label %if.then62.sw.epilog78_crit_edge, label %if.end66

if.then62.sw.epilog78_crit_edge:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog78

if.end66:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  %dec67 = add i32 %conv55, -1
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %land.lhs.true.if.end68_crit_edge, %if.end50.if.end68_crit_edge
  %end_index.0 = phi i32 [ %dec67, %if.end66 ], [ %conv55, %land.lhs.true.if.end68_crit_edge ], [ %conv55, %if.end50.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end_index.0, i32 %conv53)
  %cmp69.not = icmp ult i32 %end_index.0, %conv53
  br i1 %cmp69.not, label %if.end68.sw.epilog78_crit_edge, label %if.then71

if.end68.sw.epilog78_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog78

if.then71:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_pagevec) #3
  %41 = ptrtoint ptr %nr_pagevec to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %nr_pagevec, align 4
  tail call void @lru_add_drain() #3
  call void @invalidate_mapping_pagevec(ptr noundef nonnull %6, i32 noundef %conv53, i32 noundef %end_index.0, ptr noundef nonnull %nr_pagevec) #3
  %42 = ptrtoint ptr %nr_pagevec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pagevec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool72.not = icmp eq i32 %43, 0
  br i1 %tobool72.not, label %if.then71.if.end75_crit_edge, label %if.then73

if.then71.if.end75_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #5
  call void @lru_add_drain_all() #3
  %call74 = call i32 @invalidate_mapping_pages(ptr noundef nonnull %6, i32 noundef %conv53, i32 noundef %end_index.0) #3
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.then71.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_pagevec) #3
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %if.end75, %if.end68.sw.epilog78_crit_edge, %if.then62.sw.epilog78_crit_edge, %sw.bb36, %sw.bb28, %sw.bb24, %sw.bb20, %if.end13.sw.epilog78_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog78, %if.end13.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog78 ], [ -29, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.then12 ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_mapping_pagevec(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fadvise(ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %fadvise = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %fadvise to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fadvise, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %3(ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #3
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @generic_fadvise(ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %advice)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_fadvise64_64(i32 noundef %fd, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #3, !noalias !31
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op.i, align 4
  %fadvise.i = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %fadvise.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fadvise.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call.i3 = tail call i32 %4(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #3
  br label %vfs_fadvise.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @generic_fadvise(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #3
  br label %vfs_fadvise.exit

vfs_fadvise.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i3, %if.then.i ], [ %call3.i, %if.end.i ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i4, label %vfs_fadvise.exit.cleanup_crit_edge, label %if.then.i5

vfs_fadvise.exit.cleanup_crit_edge:               ; preds = %vfs_fadvise.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i5:                                       ; preds = %vfs_fadvise.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fput(ptr noundef nonnull %0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then.i5, %vfs_fadvise.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %retval.0.i, %vfs_fadvise.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then.i5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fadvise64_64(i32 noundef %fd, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #3, !noalias !34
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fadvise64_64.exit_crit_edge, label %if.end.i.i

entry.__do_sys_fadvise64_64.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fadvise64_64.exit

if.end.i.i:                                       ; preds = %entry
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op.i.i.i, align 4
  %fadvise.i.i.i = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %fadvise.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fadvise.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i3.i.i = tail call i32 %4(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #3
  br label %vfs_fadvise.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i.i.i = tail call i32 @generic_fadvise(ptr noundef nonnull %0, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #3
  br label %vfs_fadvise.exit.i.i

vfs_fadvise.exit.i.i:                             ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i3.i.i, %if.then.i.i.i ], [ %call3.i.i.i, %if.end.i.i.i ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i4.i.i, label %vfs_fadvise.exit.i.i.__do_sys_fadvise64_64.exit_crit_edge, label %if.then.i5.i.i

vfs_fadvise.exit.i.i.__do_sys_fadvise64_64.exit_crit_edge: ; preds = %vfs_fadvise.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__do_sys_fadvise64_64.exit

if.then.i5.i.i:                                   ; preds = %vfs_fadvise.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fput(ptr noundef nonnull %0) #3
  br label %__do_sys_fadvise64_64.exit

__do_sys_fadvise64_64.exit:                       ; preds = %if.then.i5.i.i, %vfs_fadvise.exit.i.i.__do_sys_fadvise64_64.exit_crit_edge, %entry.__do_sys_fadvise64_64.exit_crit_edge
  %retval.0.i.i = phi i32 [ -9, %entry.__do_sys_fadvise64_64.exit_crit_edge ], [ %retval.0.i.i.i, %vfs_fadvise.exit.i.i.__do_sys_fadvise64_64.exit_crit_edge ], [ %retval.0.i.i.i, %if.then.i5.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_page_cache_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_congested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_generic_fadvise, !1, !"__ksymtab_generic_fadvise", i1 false, i1 false}
!1 = !{!"../mm/fadvise.c", i32 179, i32 1}
!2 = !{ptr @__ksymtab_vfs_fadvise, !3, !"__ksymtab_vfs_fadvise", i1 false, i1 false}
!3 = !{!"../mm/fadvise.c", i32 188, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/fadvise.c", i32 206, i32 1}
!6 = !{ptr @event_enter__fadvise64_64, !5, !"event_enter__fadvise64_64", i1 false, i1 false}
!7 = !{ptr @__event_enter__fadvise64_64, !5, !"__event_enter__fadvise64_64", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__fadvise64_64, !5, !"event_exit__fadvise64_64", i1 false, i1 false}
!10 = !{ptr @__event_exit__fadvise64_64, !5, !"__event_exit__fadvise64_64", i1 false, i1 false}
!11 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__fadvise64_64, !5, !"__syscall_meta__fadvise64_64", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__fadvise64_64, !5, !"__p_syscall_meta__fadvise64_64", i1 false, i1 false}
!14 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @types__fadvise64_64, !5, !"types__fadvise64_64", i1 false, i1 false}
!17 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @args__fadvise64_64, !5, !"args__fadvise64_64", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: %agg.result"}
!33 = distinct !{!33, !"fdget"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"fdget: %agg.result"}
!36 = distinct !{!36, !"fdget"}
