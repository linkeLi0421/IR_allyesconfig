; ModuleID = '/llk/IR_all_yes/drivers/tty/serdev/serdev-ttyport.c_pt.bc'
source_filename = "../drivers/tty/serdev/serdev-ttyport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serdev_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_client_operations = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.serport = type { ptr, ptr, ptr, i32, i32 }
%struct.serdev_controller = type { %struct.device, i32, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.serdev_device_ops = type { ptr, ptr }

@ctrl_ops = internal constant { %struct.serdev_controller_ops, [52 x i8] } { %struct.serdev_controller_ops { ptr @ttyport_write_buf, ptr @ttyport_write_flush, ptr @ttyport_write_room, ptr @ttyport_open, ptr @ttyport_close, ptr @ttyport_set_flow_control, ptr @ttyport_set_parity, ptr @ttyport_set_baudrate, ptr @ttyport_wait_until_sent, ptr @ttyport_get_tiocm, ptr @ttyport_set_tiocm }, [52 x i8] zeroinitializer }, align 32
@client_ops = internal constant { %struct.tty_port_client_operations, [24 x i8] } { %struct.tty_port_client_operations { ptr @ttyport_receive_buf, ptr @ttyport_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@serdev_tty_port_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tty port %s%d registered\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"serdev_tty_port_register\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serdev/serdev-ttyport.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serdev_tty_port_register._entry_ptr = internal global ptr @serdev_tty_port_register._entry, section ".printk_index", align 4
@tty_port_default_client_ops = external dso_local constant %struct.tty_port_client_operations, align 4
@ttyport_receive_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s %s: receive_buf returns %d (count = %zu)\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"ctrl_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 250, i32 43 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"client_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 68, i32 48 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 293, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/tty/serdev/serdev-ttyport.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 37, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @serdev_tty_port_register._entry, ptr @serdev_tty_port_register._entry_ptr, ptr @ctrl_ops, ptr @client_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdev_tty_port_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @serdev_tty_port_register(ptr noundef %port, ptr noundef %parent, ptr noundef %drv, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  %tobool1.not = icmp eq ptr %drv, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %parent, null
  %or.cond40 = or i1 %tobool3.not, %or.cond
  br i1 %or.cond40, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @serdev_controller_alloc(ptr noundef nonnull %parent, i32 noundef 20) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %serdev_controller_get_drvdata.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

serdev_controller_get_drvdata.exit:               ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port, ptr %1, align 4
  %tty_idx = getelementptr inbounds %struct.serport, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %tty_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %idx, ptr %tty_idx, align 4
  %tty_drv = getelementptr inbounds %struct.serport, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tty_drv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drv, ptr %tty_drv, align 4
  %ops = getelementptr inbounds %struct.serdev_controller, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ctrl_ops, ptr %ops, align 8
  %client_ops = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %client_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @client_ops, ptr %client_ops, align 4
  %client_data = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 20
  %7 = ptrtoint ptr %client_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %client_data, align 4
  %call11 = tail call i32 @serdev_controller_add(ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %serdev_controller_put.exit

do.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.tty_driver, ptr %drv, i32 0, i32 5
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %idx) #8
  br label %cleanup

serdev_controller_put.exit:                       ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %client_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %client_data, align 4
  %11 = ptrtoint ptr %client_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tty_port_default_client_ops, ptr %client_ops, align 4
  tail call void @put_device(ptr noundef nonnull %call4) #5
  %12 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %serdev_controller_put.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %serdev_controller_put.exit ], [ %call4, %do.end ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serdev_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_controller_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @serdev_tty_port_unregister(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client_data = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %serdev_controller_get_drvdata.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

serdev_controller_get_drvdata.exit:               ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %serdev_controller_put.exit

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

serdev_controller_put.exit:                       ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serdev_controller_remove(ptr noundef nonnull %1) #5
  %4 = ptrtoint ptr %client_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %client_data, align 4
  %client_ops = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 4
  %5 = ptrtoint ptr %client_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tty_port_default_client_ops, ptr %client_ops, align 4
  tail call void @put_device(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %serdev_controller_put.exit, %serdev_controller_get_drvdata.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %serdev_controller_put.exit ], [ -19, %serdev_controller_get_drvdata.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_controller_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_write_buf(ptr noundef readonly %ctrl, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %flags = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %if.end

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %flags3 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags3) #5
  %ops = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %11 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tty1, align 4
  %call5 = tail call i32 %10(ptr noundef %12, ptr noundef %data, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %serdev_controller_get_drvdata.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %serdev_controller_get_drvdata.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttyport_write_flush(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_write_room(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %call2 = tail call i32 @tty_write_room(ptr noundef %3) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_open(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #5
  %tty_drv = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 2
  %2 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty_drv, align 4
  %tty_idx = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 3
  %4 = ptrtoint ptr %tty_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tty_idx, align 4
  %call1 = tail call ptr @tty_init_dev(ptr noundef %3, i32 noundef %5) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  %tty4 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %7 = ptrtoint ptr %tty4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %tty4, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %open = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %open, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.err_unlock_crit_edge, label %lor.lhs.false

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

lor.lhs.false:                                    ; preds = %if.end
  %close = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %close, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false.err_unlock_crit_edge, label %if.end8

lor.lhs.false.err_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end8:                                          ; preds = %lor.lhs.false
  %call12 = tail call i32 %11(ptr noundef %call1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_close

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %tty4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tty4, align 4
  tail call void @tty_unlock(ptr noundef %15) #5
  %termios = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 13
  %16 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %17 = ptrtoint ptr %ktermios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ktermios, align 4
  %and = and i32 %18, -1516
  store i32 %and, ptr %ktermios, align 4
  %c_oflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 1
  %19 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_oflag, align 4
  %and17 = and i32 %20, -2
  store i32 %and17, ptr %c_oflag, align 4
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 3
  %21 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_lflag, align 4
  %and18 = and i32 %22, -32844
  store i32 %and18, ptr %c_lflag, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %23 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_cflag, align 4
  %and19 = and i32 %24, 2147481295
  %or24 = or i32 %and19, -2147481552
  store i32 %or24, ptr %c_cflag, align 4
  %call25 = call i32 @tty_set_termios(ptr noundef %call1, ptr noundef nonnull %ktermios) #5
  %flags = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #5
  br label %cleanup

err_close:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %close27 = getelementptr inbounds %struct.tty_operations, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %close27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %close27, align 4
  tail call void %28(ptr noundef %call1, ptr noundef null) #5
  br label %err_unlock

err_unlock:                                       ; preds = %err_close, %lor.lhs.false.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call12, %err_close ], [ -19, %lor.lhs.false.err_unlock_crit_edge ], [ -19, %if.end.err_unlock_crit_edge ]
  tail call void @tty_unlock(ptr noundef %call1) #5
  %29 = ptrtoint ptr %tty_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tty_idx, align 4
  tail call void @tty_release_struct(ptr noundef %call1, i32 noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end15, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.0, %err_unlock ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttyport_close(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %flags = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #5
  tail call void @tty_lock(ptr noundef %3) #5
  %ops = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.if.end_crit_edge, label %if.then

serdev_controller_get_drvdata.exit.if.end_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %3, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %serdev_controller_get_drvdata.exit.if.end_crit_edge
  tail call void @tty_unlock(ptr noundef %3) #5
  %tty_idx = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 3
  %8 = ptrtoint ptr %tty_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tty_idx, align 4
  tail call void @tty_release_struct(ptr noundef %3, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttyport_set_flow_control(ptr noundef readonly %ctrl, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #5
  %termios = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13
  %4 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag, align 4
  %and = and i32 %6, 2147483647
  %masksel = select i1 %enable, i32 -2147483648, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %c_cflag, align 4
  %call3 = call i32 @tty_set_termios(ptr noundef %3, ptr noundef nonnull %ktermios) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_set_parity(ptr noundef readonly %ctrl, i32 noundef %parity) #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #5
  %termios = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13
  %4 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag, align 4
  %and = and i32 %6, -1073742593
  store i32 %and, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parity)
  %cmp.not = icmp eq i32 %parity, 0
  br i1 %cmp.not, label %serdev_controller_get_drvdata.exit.if.end7_crit_edge, label %if.then

serdev_controller_get_drvdata.exit.if.end7_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %serdev_controller_get_drvdata.exit
  %or = or i32 %and, 256
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %parity)
  %cmp3 = icmp eq i32 %parity, 2
  br i1 %cmp3, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %and, 768
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or6, ptr %c_cflag, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %serdev_controller_get_drvdata.exit.if.end7_crit_edge
  %call8 = call i32 @tty_set_termios(ptr noundef %3, ptr noundef nonnull %ktermios) #5
  %c_cflag10 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %c_cflag10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag10, align 4
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 1073742592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not = icmp eq i32 %14, 0
  %. = select i1 %cmp14.not, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_set_baudrate(ptr noundef readonly %ctrl, i32 noundef %speed) #0 align 64 {
entry:
  %ktermios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ktermios) #5
  %termios = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 13
  %4 = call ptr @memcpy(ptr %ktermios, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 2
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag, align 4
  %and = and i32 %6, -4112
  store i32 %and, ptr %c_cflag, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %ktermios, i32 noundef %speed, i32 noundef %speed) #5
  %call2 = call i32 @tty_set_termios(ptr noundef %3, ptr noundef nonnull %ktermios) #5
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %ktermios, i32 0, i32 7
  %7 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_ospeed, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ktermios) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttyport_wait_until_sent(ptr noundef readonly %ctrl, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  tail call void @tty_wait_until_sent(ptr noundef %3, i32 noundef %timeout) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_get_tiocm(ptr noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tiocmget = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %tiocmget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmget, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %if.end

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 %7(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %serdev_controller_get_drvdata.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -524, %serdev_controller_get_drvdata.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_set_tiocm(ptr noundef readonly %ctrl, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctrl, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %tty1 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 1
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tiocmset = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiocmset, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %if.end

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %set, i32 noundef %clear) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %serdev_controller_get_drvdata.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -524, %serdev_controller_get_drvdata.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_release_struct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttyport_receive_buf(ptr nocapture noundef readonly %port, ptr noundef %cp, ptr nocapture noundef readnone %fp, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client_data = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %if.end

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  %serdev1.i = getelementptr inbounds %struct.serdev_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %serdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev1.i, align 4
  %tobool.not.i67 = icmp eq ptr %8, null
  br i1 %tobool.not.i67, label %if.end.serdev_controller_receive_buf.exit_crit_edge, label %lor.lhs.false.i

if.end.serdev_controller_receive_buf.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_receive_buf.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.serdev_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.serdev_controller_receive_buf.exit_crit_edge, label %if.end.i

lor.lhs.false.i.serdev_controller_receive_buf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_receive_buf.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %12(ptr noundef nonnull %8, ptr noundef %cp, i32 noundef %count) #5
  br label %serdev_controller_receive_buf.exit

serdev_controller_receive_buf.exit:               ; preds = %if.end.i, %lor.lhs.false.i.serdev_controller_receive_buf.exit_crit_edge, %if.end.serdev_controller_receive_buf.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.serdev_controller_receive_buf.exit_crit_edge ], [ 0, %if.end.serdev_controller_receive_buf.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %count)
  %cmp3 = icmp ugt i32 %retval.0.i, %count
  %spec.select = or i1 %cmp, %cmp3
  br i1 %spec.select, label %land.rhs, label %serdev_controller_receive_buf.exit.if.end36_crit_edge

serdev_controller_receive_buf.exit.if.end36_crit_edge: ; preds = %serdev_controller_receive_buf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.rhs:                                         ; preds = %serdev_controller_receive_buf.exit
  %.b66 = load i1, ptr @ttyport_receive_buf.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end36_crit_edge, label %if.then11, !prof !24

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then11:                                        ; preds = %land.rhs
  store i1 true, ptr @ttyport_receive_buf.__already_done, align 1
  %call21 = tail call ptr @dev_driver_string(ptr noundef %1) #5
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i68 = icmp eq ptr %14, null
  br i1 %tobool.not.i68, label %if.end.i69, label %if.then11.dev_name.exit_crit_edge

if.then11.dev_name.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i69:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i69, %if.then11.dev_name.exit_crit_edge
  %retval.0.i70 = phi ptr [ %16, %if.end.i69 ], [ %14, %if.then11.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call21, ptr noundef %retval.0.i70, i32 noundef %retval.0.i, i32 noundef %count) #5
  br label %if.end36

if.end36:                                         ; preds = %dev_name.exit, %land.rhs.if.end36_crit_edge, %serdev_controller_receive_buf.exit.if.end36_crit_edge
  %17 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %count)
  %spec.select71 = select i1 %cmp, i32 0, i32 %17
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %serdev_controller_get_drvdata.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %serdev_controller_get_drvdata.exit.cleanup_crit_edge ], [ %spec.select71, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttyport_write_wakeup(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client_data = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 20
  %0 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.serdev_controller_get_drvdata.exit_crit_edge, label %cond.true.i

entry.serdev_controller_get_drvdata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %serdev_controller_get_drvdata.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  br label %serdev_controller_get_drvdata.exit

serdev_controller_get_drvdata.exit:               ; preds = %cond.true.i, %entry.serdev_controller_get_drvdata.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.serdev_controller_get_drvdata.exit_crit_edge ]
  %call1 = tail call ptr @tty_port_tty_get(ptr noundef %port) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %serdev_controller_get_drvdata.exit.cleanup_crit_edge, label %if.end

serdev_controller_get_drvdata.exit.cleanup_crit_edge: ; preds = %serdev_controller_get_drvdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %serdev_controller_get_drvdata.exit
  %flags = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 16
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %flags4 = getelementptr inbounds %struct.serport, ptr %cond.i, i32 0, i32 4
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags4, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %serdev1.i = getelementptr inbounds %struct.serdev_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %serdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdev1.i, align 4
  %tobool.not.i16 = icmp eq ptr %8, null
  br i1 %tobool.not.i16, label %if.then7.if.end8_crit_edge, label %lor.lhs.false.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then7
  %ops.i = getelementptr inbounds %struct.serdev_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 8
  %write_wakeup.i = getelementptr inbounds %struct.serdev_device_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_wakeup.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef nonnull %8) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %lor.lhs.false.i.if.end8_crit_edge, %if.then7.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  tail call void @tty_kref_put(ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %serdev_controller_get_drvdata.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/serdev/serdev-ttyport.c", i32 293, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @serdev_tty_port_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @serdev_tty_port_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ctrl_ops, !9, !"ctrl_ops", i1 false, i1 false}
!9 = !{!"../drivers/tty/serdev/serdev-ttyport.c", i32 250, i32 43}
!10 = !{ptr @client_ops, !11, !"client_ops", i1 false, i1 false}
!11 = !{!"../drivers/tty/serdev/serdev-ttyport.c", i32 68, i32 48}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/tty/serdev/serdev-ttyport.c", i32 37, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
