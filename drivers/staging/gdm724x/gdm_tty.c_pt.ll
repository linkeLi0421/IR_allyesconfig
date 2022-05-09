; ModuleID = '/llk/IR_all_yes/drivers/staging/gdm724x/gdm_tty.c_pt.bc'
source_filename = "../drivers/staging/gdm724x/gdm_tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_dev = type { ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.gdm = type { ptr, %struct.tty_port, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@gdm_table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gdm_table_lock, i64 52), ptr getelementptr (i8, ptr @gdm_table_lock, i64 52) }, ptr @gdm_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@gdm_table = internal global { [2 x [32 x ptr]], [64 x i8] } zeroinitializer, align 32
@gdm_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr null, ptr @gdm_port_destruct }, [44 x i8] zeroinitializer }, align 32
@gdm_driver.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gdm_driver.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__this_module = external dso_local global %struct.module, align 128
@DRIVER_STRING = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@gdm_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @gdm_tty_install, ptr null, ptr @gdm_tty_open, ptr @gdm_tty_close, ptr null, ptr @gdm_tty_cleanup, ptr @gdm_tty_write, ptr null, ptr null, ptr @gdm_tty_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdm_tty_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gdm_table_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gdm_table_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GCTATC\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GCTDM\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GCT-ATC\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GCT-DM\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"gdm_table_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"gdm_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 33, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"gdm_port_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 50, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"gdm_driver.0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"gdm_driver.1\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"DRIVER_STRING\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 20 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"gdm_tty_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 267, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 34, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 52 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 36, i32 62 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 46 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [37 x i8] c"../drivers/staging/gdm724x/gdm_tty.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 57 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @gdm_table_lock, ptr @gdm_table, ptr @gdm_port_ops, ptr @gdm_driver.0, ptr @gdm_driver.1, ptr @DRIVER_STRING, ptr @gdm_tty_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_driver.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_driver.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DRIVER_STRING to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_lte_tty_device(ptr noundef %tty_dev, ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 588) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %if.end
  %j.068 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 0, i32 %j.068
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.end10, label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %j.068, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.then9_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %for.inc.1.if.then9_crit_edge, %for.inc.if.then9_crit_edge
  %call7.i.lcssa74 = phi ptr [ %call7.i.1, %for.inc.1.if.then9_crit_edge ], [ %call7.i, %for.inc.if.then9_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.lcssa74) #7
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  br label %cleanup

if.end10:                                         ; preds = %for.body3
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %arrayidx4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  %arrayidx14 = getelementptr %struct.tty_dev, ptr %tty_dev, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %arrayidx14, align 4
  %port = getelementptr inbounds %struct.gdm, ptr %call7.i, i32 0, i32 1
  tail call void @tty_port_init(ptr noundef %port) #7
  %ops = getelementptr inbounds %struct.gdm, ptr %call7.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gdm_port_ops, ptr %ops, align 4
  %index = getelementptr inbounds %struct.gdm, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %index, align 4
  %minor = getelementptr inbounds %struct.gdm, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %j.068, ptr %minor, align 8
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tty_dev, ptr %call7.i, align 8
  %9 = load ptr, ptr @gdm_driver.0, align 4
  %call20 = tail call ptr @tty_port_register_device(ptr noundef %port, ptr noundef %9, i32 noundef %j.068, ptr noundef %device) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 588) #10
  %tobool.not.1 = icmp eq ptr %call7.i.1, null
  br i1 %tobool.not.1, label %if.end10.cleanup_crit_edge, label %if.end.1

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end10
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.inc.1.for.body3.1_crit_edge, %if.end.1
  %j.068.1 = phi i32 [ 0, %if.end.1 ], [ %inc.1, %for.inc.1.for.body3.1_crit_edge ]
  %arrayidx4.1 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 1, i32 %j.068.1
  %11 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.1, align 4
  %tobool5.not.1 = icmp eq ptr %12, null
  br i1 %tobool5.not.1, label %if.end10.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body3.1
  %inc.1 = add nuw nsw i32 %j.068.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 32
  br i1 %exitcond.1.not, label %for.inc.1.if.then9_crit_edge, label %for.inc.1.for.body3.1_crit_edge

for.inc.1.for.body3.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.1

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end10.1:                                       ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.1, ptr %arrayidx4.1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  %arrayidx14.1 = getelementptr %struct.tty_dev, ptr %tty_dev, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.1, ptr %arrayidx14.1, align 4
  %port.1 = getelementptr inbounds %struct.gdm, ptr %call7.i.1, i32 0, i32 1
  tail call void @tty_port_init(ptr noundef %port.1) #7
  %ops.1 = getelementptr inbounds %struct.gdm, ptr %call7.i.1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %ops.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gdm_port_ops, ptr %ops.1, align 4
  %index.1 = getelementptr inbounds %struct.gdm, ptr %call7.i.1, i32 0, i32 2
  %16 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %index.1, align 4
  %minor.1 = getelementptr inbounds %struct.gdm, ptr %call7.i.1, i32 0, i32 3
  %17 = ptrtoint ptr %minor.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %j.068.1, ptr %minor.1, align 8
  %18 = ptrtoint ptr %call7.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tty_dev, ptr %call7.i.1, align 8
  %19 = load ptr, ptr @gdm_driver.1, align 4
  %call20.1 = tail call ptr @tty_port_register_device(ptr noundef %port.1, ptr noundef %19, i32 noundef %j.068.1, ptr noundef %device) #7
  %20 = ptrtoint ptr %call7.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.1, align 8
  %recv_func = getelementptr inbounds %struct.tty_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %recv_func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %recv_func, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %call29 = tail call i32 %23(ptr noundef %25, ptr noundef nonnull @gdm_tty_recv_complete) #7
  %26 = ptrtoint ptr %call7.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.1, align 8
  %recv_func.1 = getelementptr inbounds %struct.tty_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %recv_func.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %recv_func.1, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call29.1 = tail call i32 %29(ptr noundef %31, ptr noundef nonnull @gdm_tty_recv_complete) #7
  %32 = ptrtoint ptr %call7.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.1, align 8
  %recv_func.2 = getelementptr inbounds %struct.tty_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %recv_func.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %recv_func.2, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call29.2 = tail call i32 %35(ptr noundef %37, ptr noundef nonnull @gdm_tty_recv_complete) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10.1, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ 0, %if.end10.1 ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_tty_recv_complete(ptr noundef %data, i32 noundef %len, i32 noundef %index, ptr nocapture noundef readonly %tty_dev, i32 noundef %complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tty_dev, ptr %tty_dev, i32 0, i32 4, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true4

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true4:                                   ; preds = %land.lhs.true
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  %count = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.then_crit_edge, label %if.end9

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true4.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete)
  %cmp = icmp eq i32 %complete, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %land.lhs.true4
  %tobool10.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool12.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool10.not, %tobool12.not
  br i1 %or.cond, label %if.end9.if.end22_crit_edge, label %if.then13

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then13:                                        ; preds = %if.end9
  %call15 = tail call i32 @tty_buffer_request_room(ptr noundef %port, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %len)
  %cmp16 = icmp eq i32 %call15, %len
  br i1 %cmp16, label %if.then17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port, ptr noundef nonnull %data, i8 noundef zeroext 0, i32 noundef %len) #7
  tail call void @tty_flip_buffer_push(ptr noundef %port) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end9.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete)
  %cmp23 = icmp eq i32 %complete, 0
  br i1 %cmp23, label %if.end22.cleanup.sink.split_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 2, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.end22.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %recv_func26 = getelementptr inbounds %struct.tty_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %recv_func26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv_func26, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call29 = tail call i32 %9(ptr noundef %11, ptr noundef nonnull @gdm_tty_recv_complete) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then.cleanup_crit_edge ], [ 1, %if.then13.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_lte_tty_device(ptr nocapture noundef readonly %tty_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tty_dev, ptr %tty_dev, i32 0, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  %index = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %minor = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 4
  %arrayidx3 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  %call = tail call ptr @tty_port_tty_get(ptr noundef %port) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_vhangup(ptr noundef nonnull %call) #7
  tail call void @tty_kref_put(ptr noundef nonnull %call) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %7 = load ptr, ptr @gdm_driver.0, align 4
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor, align 4
  tail call void @tty_unregister_device(ptr noundef %7, i32 noundef %9) #7
  tail call void @tty_port_put(ptr noundef %port) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.tty_dev, ptr %tty_dev, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  %index.1 = getelementptr inbounds %struct.gdm, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %index.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.1, align 4
  %minor.1 = getelementptr inbounds %struct.gdm, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %minor.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minor.1, align 4
  %arrayidx3.1 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 %13, i32 %15
  %16 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx3.1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  %port.1 = getelementptr inbounds %struct.gdm, ptr %11, i32 0, i32 1
  %call.1 = tail call ptr @tty_port_tty_get(ptr noundef %port.1) #7
  %tobool4.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool4.not.1, label %if.end.1.if.end6.1_crit_edge, label %if.then5.1

if.end.1.if.end6.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.1

if.then5.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_vhangup(ptr noundef nonnull %call.1) #7
  tail call void @tty_kref_put(ptr noundef nonnull %call.1) #7
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.then5.1, %if.end.1.if.end6.1_crit_edge
  %17 = load ptr, ptr @gdm_driver.1, align 4
  %18 = ptrtoint ptr %minor.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minor.1, align 4
  tail call void @tty_unregister_device(ptr noundef %17, i32 noundef %19) #7
  tail call void @tty_port_put(ptr noundef %port.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_lte_tty_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 32, ptr noundef nonnull @__this_module, i32 noundef 12) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end8.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa = phi ptr [ %call, %entry.if.then_crit_edge ], [ %call.1, %if.end8.if.then_crit_edge ]
  %0 = ptrtoint ptr %call.lcssa to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @__this_module, ptr %owner, align 4
  %2 = load ptr, ptr @DRIVER_STRING, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.4, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %major, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3133, ptr %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 3
  %10 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32771, ptr %c_lflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gdm_tty_ops, ptr %ops.i, align 4
  %call6 = tail call i32 @tty_register_driver(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %if.end.1.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %call6.lcssa = phi i32 [ %call6, %if.end.if.then7_crit_edge ], [ %call6.1, %if.end.1.if.then7_crit_edge ]
  %call.lcssa36 = phi ptr [ %call, %if.end.if.then7_crit_edge ], [ %call.1, %if.end.1.if.then7_crit_edge ]
  tail call void @tty_driver_kref_put(ptr noundef %call.lcssa36) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store ptr %call, ptr @gdm_driver.0, align 4
  %call.1 = tail call ptr @__tty_alloc_driver(i32 noundef 32, ptr noundef nonnull @__this_module, i32 noundef 12) #7
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end8.if.then_crit_edge, label %if.end.1

if.end8.if.then_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.1:                                         ; preds = %if.end8
  %owner.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 3
  %12 = ptrtoint ptr %owner.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__this_module, ptr %owner.1, align 4
  %13 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @DRIVER_STRING, i32 0, i32 1), align 4
  %driver_name.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 4
  %14 = ptrtoint ptr %driver_name.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %driver_name.1, align 4
  %name.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 5
  %15 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %name.1, align 4
  %major.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 7
  %16 = ptrtoint ptr %major.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %major.1, align 4
  %type.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 10
  %17 = ptrtoint ptr %type.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %type.1, align 4
  %subtype.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 11
  %18 = ptrtoint ptr %subtype.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %subtype.1, align 2
  %init_termios.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 12
  %19 = call ptr @memcpy(ptr %init_termios.1, ptr @tty_std_termios, i32 44)
  %c_cflag.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %c_cflag.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3133, ptr %c_cflag.1, align 4
  %c_lflag.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %c_lflag.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32771, ptr %c_lflag.1, align 4
  %ops.i.1 = getelementptr inbounds %struct.tty_driver, ptr %call.1, i32 0, i32 20
  %22 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gdm_tty_ops, ptr %ops.i.1, align 4
  %call6.1 = tail call i32 @tty_register_driver(ptr noundef %call.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool.not.1, label %if.end8.1, label %if.end.1.if.then7_crit_edge

if.end.1.if.then7_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end8.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call.1, ptr @gdm_driver.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8.1, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6.lcssa, %if.then7 ], [ 0, %if.end8.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_lte_tty_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gdm_driver.0, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_unregister_driver(ptr noundef nonnull %0) #7
  tail call void @tty_driver_kref_put(ptr noundef nonnull %0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %1 = load ptr, ptr @gdm_driver.1, align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_unregister_driver(ptr noundef nonnull %1) #7
  tail call void @tty_driver_kref_put(ptr noundef nonnull %1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_port_destruct(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  %index = getelementptr i8, ptr %port, i32 576
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %minor = getelementptr i8, ptr %port, i32 580
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %arrayidx1 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 %1, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_tty_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_name, align 4
  %call = tail call i32 @match_string(ptr noundef nonnull @DRIVER_STRING, i32 noundef 2, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @gdm_table_lock, i32 noundef 0) #7
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx2 = getelementptr [2 x [32 x ptr]], ptr @gdm_table, i32 0, i32 %call, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.gdm, ptr %7, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %if.end4.tty_port_get.exit_crit_edge, label %land.lhs.true.i

if.end4.tty_port_get.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_port_get.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %kref.i = getelementptr inbounds %struct.gdm, ptr %7, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %10 = phi i32 [ %9, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %13, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #7, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !34

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !34

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  br label %tty_port_get.exit

tty_port_get.exit:                                ; preds = %kref_get_unless_zero.exit.i, %if.end4.tty_port_get.exit_crit_edge
  %call6 = call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %tty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @tty_port_put(ptr noundef %port) #7
  call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  br label %cleanup

if.end10:                                         ; preds = %tty_port_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %driver_data, align 4
  call void @mutex_unlock(ptr noundef nonnull @gdm_table_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end10 ], [ -19, %if.then3 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_tty_open(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  %call = tail call i32 @tty_port_open(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_tty_close(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  tail call void @tty_port_close(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_tty_cleanup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  tail call void @tty_port_put(ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_tty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.cleanup_crit_edge, label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not = icmp eq i32 %len, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %index = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %remain.0 = phi i32 [ %sub, %while.cond.while.cond_crit_edge ], [ %len, %while.cond.preheader ]
  %sent_len.0 = phi i32 [ %add, %while.cond.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %6 = tail call i32 @llvm.smin.i32(i32 %remain.0, i32 2048)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %send_func = getelementptr inbounds %struct.tty_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %send_func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_func, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %sent_len.0
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %call = tail call i32 %10(ptr noundef %12, ptr noundef %add.ptr, i32 noundef %6, i32 noundef %14, ptr noundef nonnull @gdm_tty_send_complete, ptr noundef nonnull %1) #7
  %add = add i32 %sent_len.0, %6
  %sub = sub i32 %remain.0, %6
  %cmp9 = icmp slt i32 %sub, 1
  br i1 %cmp9, label %while.cond.cleanup_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true2.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %len, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gdm_tty_write_room(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %count = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 2048
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true2, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %land.lhs.true2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_tty_hangup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gdm, ptr %1, i32 0, i32 1
  tail call void @tty_port_hangup(ptr noundef %port) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_tty_send_complete(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.gdm, ptr %arg, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %land.lhs.true2.cleanup_crit_edge, label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.gdm, ptr %arg, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !{null, !1, !"gdm_driver", i1 false, i1 false}
!1 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 32, i32 27}
!2 = !{ptr @gdm_table, !3, !"gdm_table", i1 false, i1 false}
!3 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 33, i32 20}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 34, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gdm_table_lock, !5, !"gdm_table_lock", i1 false, i1 false}
!8 = !{ptr @gdm_port_ops, !9, !"gdm_port_ops", i1 false, i1 false}
!9 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 50, i32 41}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 36, i32 52}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 36, i32 62}
!14 = !{ptr @DRIVER_STRING, !15, !"DRIVER_STRING", i1 false, i1 false}
!15 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 36, i32 20}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 37, i32 46}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 37, i32 57}
!20 = distinct !{null, !21, !"DEVICE_STRING", i1 false, i1 false}
!21 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 37, i32 14}
!22 = !{ptr @gdm_tty_ops, !23, !"gdm_tty_ops", i1 false, i1 false}
!23 = !{!"../drivers/staging/gdm724x/gdm_tty.c", i32 267, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 698335, i64 698359, i64 698380, i64 698397, i64 698414}
!34 = !{!"branch_weights", i32 2000, i32 1}
