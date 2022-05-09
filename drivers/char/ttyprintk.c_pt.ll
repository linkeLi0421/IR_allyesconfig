; ModuleID = '/llk/IR_all_yes/drivers/char/ttyprintk.c_pt.bc'
source_filename = "../drivers/char/ttyprintk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttyprintk_port = type { %struct.tty_port, %struct.spinlock }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@ttyprintk_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tpk_port = internal global { %struct.ttyprintk_port, [148 x i8] } zeroinitializer, align 32
@__initcall__kmod_ttyprintk__210_213_ttyprintk_init6 = internal global ptr @ttyprintk_init, section ".initcall6.init", align 4
@__exitcall_ttyprintk_exit = internal global ptr @ttyprintk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [38 x i8] c"ttyprintk.file=drivers/char/ttyprintk\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [22 x i8] c"ttyprintk.license=GPL\00", section ".modinfo", align 1
@ttyprintk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tpk_port.spinlock\00", [45 x i8] zeroinitializer }, align 32
@tpk_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr @tpk_port_shutdown, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ttyprintk\00", [22 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@ttyprintk_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @tpk_open, ptr @tpk_close, ptr null, ptr null, ptr @tpk_write, ptr null, ptr null, ptr @tpk_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpk_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ttyprintk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Couldn't register ttyprintk driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttyprintk_init\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/char/ttyprintk.c\00", [39 x i8] zeroinitializer }, align 32
@ttyprintk_init._entry_ptr = internal global ptr @ttyprintk_init._entry, section ".printk_index", align 4
@tpk_curr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tpk_buffer = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@tpk_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016[U] %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpk_flush\00", [22 x i8] zeroinitializer }, align 32
@tpk_flush._entry_ptr = internal global ptr @tpk_flush._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 13]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"ttyprintk_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 164, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"tpk_port\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 25, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 170, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"tpk_port_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 160, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 182, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"ttyprintk_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 152, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 194, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"tpk_curr\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 40, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"tpk_buffer\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 42, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/char/ttyprintk.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 48, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_ttyprintk_exit, ptr @__initcall__kmod_ttyprintk__210_213_ttyprintk_init6, ptr @tpk_flush._entry, ptr @tpk_flush._entry_ptr, ptr @ttyprintk_exit, ptr @ttyprintk_init._entry, ptr @ttyprintk_init._entry_ptr, ptr @ttyprintk_driver, ptr @tpk_port, ptr @ttyprintk_init.__key, ptr @.str, ptr @tpk_port_ops, ptr @.str.1, ptr @ttyprintk_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tpk_curr, ptr @tpk_buffer, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttyprintk_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_port to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttyprintk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttyprintk_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttyprintk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_curr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_buffer to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ttyprintk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @ttyprintk_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #5
  %1 = load ptr, ptr @ttyprintk_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #5
  tail call void @tty_port_destroy(ptr noundef nonnull @tpk_port) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyprintk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.ttyprintk_port, ptr @tpk_port, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @ttyprintk_init.__key, i16 noundef signext 3) #5
  %call1 = tail call ptr @__tty_alloc_driver(i32 noundef 1, ptr noundef null, i32 noundef 134) #5
  store ptr %call1, ptr @ttyprintk_driver, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tty_port_init(ptr noundef nonnull @tpk_port) #5
  store ptr @tpk_port_ops, ptr getelementptr inbounds (%struct.ttyprintk_port, ptr @tpk_port, i32 0, i32 0, i32 3), align 4
  %1 = load ptr, ptr @ttyprintk_driver, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %type, align 4
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_oflag = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %c_oflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 57, ptr %c_oflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ttyprintk_ops, ptr %ops.i, align 4
  tail call void @tty_port_link_device(ptr noundef nonnull @tpk_port, ptr noundef %1, i32 noundef 0) #5
  %10 = load ptr, ptr @ttyprintk_driver, align 4
  %call5 = tail call i32 @tty_register_driver(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  %11 = load ptr, ptr @ttyprintk_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %11) #5
  tail call void @tty_port_destroy(ptr noundef nonnull @tpk_port) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_link_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpk_port_shutdown(ptr noundef %tport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.ttyprintk_port, ptr %tport, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  %0 = load i32, ptr @tpk_curr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp sgt i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %entry.tpk_flush.exit_crit_edge

entry.tpk_flush.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpk_flush.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @tpk_buffer) #8
  store i32 0, ptr @tpk_curr, align 4
  br label %tpk_flush.exit

tpk_flush.exit:                                   ; preds = %if.then.i, %entry.tpk_flush.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpk_open(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tpk_port, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef nonnull @tpk_port, ptr noundef %tty, ptr noundef %filp) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpk_close(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpk_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %spinlock = getelementptr inbounds %struct.ttyprintk_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp38.i = icmp sgt i32 %count, 0
  br i1 %cmp38.i, label %entry.for.body.i_crit_edge, label %entry.tpk_printk.exit_crit_edge

entry.tpk_printk.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpk_printk.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc17.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = load i32, ptr @tpk_curr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 507, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 507
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %2, 1
  store i32 %inc.i, ptr @tpk_curr, align 4
  %arrayidx.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 92, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 2147483647
  br i1 %cmp.i.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %inc.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @tpk_buffer) #8
  store i32 0, ptr @tpk_curr, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 %i.039.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.default.i [
    i8 13, label %sw.bb.i
    i8 10, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %8 = load i32, ptr @tpk_curr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i28.i = icmp sgt i32 %8, 0
  br i1 %cmp.i28.i, label %if.then.i31.i, label %sw.bb.i.tpk_flush.exit32.i_crit_edge

sw.bb.i.tpk_flush.exit32.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpk_flush.exit32.i

if.then.i31.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i29.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i29.i, align 1
  %call.i30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @tpk_buffer) #8
  store i32 0, ptr @tpk_curr, align 4
  br label %tpk_flush.exit32.i

tpk_flush.exit32.i:                               ; preds = %if.then.i31.i, %sw.bb.i.tpk_flush.exit32.i_crit_edge
  %add.i = add nsw i32 %i.039.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %count)
  %cmp3.i = icmp slt i32 %add.i, %count
  br i1 %cmp3.i, label %land.lhs.true.i, label %tpk_flush.exit32.i.for.inc.i_crit_edge

tpk_flush.exit32.i.for.inc.i_crit_edge:           ; preds = %tpk_flush.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %tpk_flush.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr i8, ptr %buf, i32 %add.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp8.i = icmp eq i8 %11, 10
  %spec.select.i = select i1 %cmp8.i, i32 %add.i, i32 %i.039.i
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %if.end.i
  %12 = load i32, ptr @tpk_curr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i33.i = icmp sgt i32 %12, 0
  br i1 %cmp.i33.i, label %if.then.i36.i, label %sw.bb13.i.for.inc.i_crit_edge

sw.bb13.i.for.inc.i_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i36.i:                                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i34.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx.i34.i, align 1
  %call.i35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @tpk_buffer) #8
  store i32 0, ptr @tpk_curr, align 4
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = load i32, ptr @tpk_curr, align 4
  %inc15.i = add i32 %14, 1
  store i32 %inc15.i, ptr @tpk_curr, align 4
  %arrayidx16.i = getelementptr [512 x i8], ptr @tpk_buffer, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %6, ptr %arrayidx16.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %if.then.i36.i, %sw.bb13.i.for.inc.i_crit_edge, %land.lhs.true.i, %tpk_flush.exit32.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.039.i, %sw.default.i ], [ %i.039.i, %tpk_flush.exit32.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %i.039.i, %sw.bb13.i.for.inc.i_crit_edge ], [ %i.039.i, %if.then.i36.i ]
  %inc17.i = add nsw i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %inc17.i, %count
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tpk_printk.exit_crit_edge

for.inc.i.tpk_printk.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpk_printk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tpk_printk.exit:                                  ; preds = %for.inc.i.tpk_printk.exit_crit_edge, %entry.tpk_printk.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #5
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tpk_write_room(ptr nocapture noundef readnone %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpk_hangup(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_ttyprintk__210_213_ttyprintk_init6, !1, !"__initcall__kmod_ttyprintk__210_213_ttyprintk_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ttyprintk.c", i32 213, i32 1}
!2 = !{ptr @__exitcall_ttyprintk_exit, !3, !"__exitcall_ttyprintk_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/ttyprintk.c", i32 214, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/char/ttyprintk.c", i32 216, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @tpk_port, !8, !"tpk_port", i1 false, i1 false}
!8 = !{!"../drivers/char/ttyprintk.c", i32 25, i32 30}
!9 = !{ptr @ttyprintk_driver, !10, !"ttyprintk_driver", i1 false, i1 false}
!10 = !{!"../drivers/char/ttyprintk.c", i32 164, i32 27}
!11 = !{ptr @ttyprintk_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/char/ttyprintk.c", i32 170, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/ttyprintk.c", i32 182, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/ttyprintk.c", i32 194, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ttyprintk_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ttyprintk_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tpk_port_ops, !23, !"tpk_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/char/ttyprintk.c", i32 160, i32 41}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/ttyprintk.c", i32 48, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tpk_flush._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tpk_flush._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tpk_curr, !30, !"tpk_curr", i1 false, i1 false}
!30 = !{!"../drivers/char/ttyprintk.c", i32 40, i32 12}
!31 = !{ptr @tpk_buffer, !32, !"tpk_buffer", i1 false, i1 false}
!32 = !{!"../drivers/char/ttyprintk.c", i32 42, i32 13}
!33 = !{ptr @ttyprintk_ops, !34, !"ttyprintk_ops", i1 false, i1 false}
!34 = !{!"../drivers/char/ttyprintk.c", i32 152, i32 36}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
