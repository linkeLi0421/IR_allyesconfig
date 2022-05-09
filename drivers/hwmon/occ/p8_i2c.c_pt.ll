; ModuleID = '/llk/IR_all_yes/drivers/hwmon/occ/p8_i2c.c_pt.bc'
source_filename = "../drivers/hwmon/occ/p8_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.p8_i2c_occ = type { %struct.occ, ptr }
%struct.occ = type { ptr, %struct.occ_response, %struct.occ_sensors, i32, i8, ptr, i32, %struct.mutex, ptr, ptr, %struct.attribute_group, [2 x ptr], i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4089 x i8], i16 }>
%struct.occ_sensors = type { %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor }
%struct.occ_sensor = type { i8, i8, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_occ_p8_hwmon__293_254_p8_i2c_occ_driver_init6 = internal global ptr @p8_i2c_occ_driver_init, section ".initcall6.init", align 4
@p8_i2c_occ_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @p8_i2c_occ_remove, ptr @p8_i2c_occ_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @p8_i2c_occ_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_p8_i2c_occ_driver_exit = internal global ptr @p8_i2c_occ_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"occ_p8_hwmon.author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"occ_p8_hwmon.description=BMC P8 OCC hwmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"occ_p8_hwmon.file=drivers/hwmon/occ/occ-p8-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [25 x i8] c"occ_p8_hwmon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ-hwmon\00", [22 x i8] zeroinitializer }, align 32
@p8_i2c_occ_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ibm,p8-occ-hwmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p8_occ\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 224, i64 225, i64 226, i64 227, i64 228, i64 255]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"p8_i2c_occ_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 244, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 247, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"p8_i2c_occ_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 238, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [30 x i8] c"../drivers/hwmon/occ/p8_i2c.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 226, i32 24 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_p8_i2c_occ_driver_exit, ptr @__initcall__kmod_occ_p8_hwmon__293_254_p8_i2c_occ_driver_init6, ptr @p8_i2c_occ_driver_exit, ptr @p8_i2c_occ_driver, ptr @.str, ptr @p8_i2c_occ_of_match, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p8_i2c_occ_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p8_i2c_occ_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p8_i2c_occ_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @p8_i2c_occ_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p8_i2c_occ_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @p8_i2c_occ_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p8_i2c_occ_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @occ_shutdown(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p8_i2c_occ_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4312, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client1 = getelementptr inbounds %struct.p8_i2c_occ, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %powr_sample_time_us = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %powr_sample_time_us to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 250, ptr %powr_sample_time_us, align 4
  %poll_cmd_data = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %poll_cmd_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %poll_cmd_data, align 4
  %send_cmd = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %send_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @p8_i2c_occ_send_cmd, ptr %send_cmd, align 4
  %call5 = tail call i32 @occ_setup(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @occ_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p8_i2c_occ_send_cmd(ptr nocapture noundef %occ, ptr nocapture noundef readonly %cmd, i32 noundef %len) #2 align 64 {
entry:
  %address.addr.i173 = alloca i32, align 4
  %buf.i174 = alloca i64, align 8
  %msgs.i175 = alloca [2 x %struct.i2c_msg], align 4
  %address.addr.i = alloca i32, align 4
  %buf.i = alloca i64, align 8
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i167 = alloca [3 x i32], align 4
  %buf.i.i161 = alloca [3 x i32], align 4
  %buf.i.i.i = alloca [3 x i32], align 4
  %data0.i = alloca i32, align 4
  %data1.i = alloca i32, align 4
  %buf.i.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client2 = getelementptr inbounds %struct.p8_i2c_occ, ptr %occ, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client2, align 4
  %resp3 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i) #6
  %3 = getelementptr inbounds [3 x i32], ptr %buf.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i32], ptr %buf.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 876768, ptr %buf.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -40960, ptr %4, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i.i, i32 noundef 12, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 12
  %..i.i = select i1 %cmp4.not.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data0.i)
  %8 = ptrtoint ptr %data0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data0.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data1.i)
  %9 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data1.i, align 4
  %10 = call i32 @llvm.umin.i32(i32 %len, i32 4) #6
  %11 = call ptr @memcpy(ptr %data0.i, ptr %cmd, i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp1.i = icmp ugt i32 %len, 4
  br i1 %cmp1.i, label %if.then.i, label %if.end.p8_i2c_occ_putscom_be.exit_crit_edge

if.end.p8_i2c_occ_putscom_be.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %p8_i2c_occ_putscom_be.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %len, -4
  %add.ptr.i = getelementptr i8, ptr %cmd, i32 4
  %12 = call i32 @llvm.umin.i32(i32 %sub.i, i32 4) #6
  %13 = call ptr @memcpy(ptr %data1.i, ptr %add.ptr.i, i32 %12)
  br label %p8_i2c_occ_putscom_be.exit

p8_i2c_occ_putscom_be.exit:                       ; preds = %if.then.i, %if.end.p8_i2c_occ_putscom_be.exit_crit_edge
  %14 = ptrtoint ptr %data0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %data0.i.0.data0.i.0.data0.0.data0.0.data0.0..i = load i32, ptr %data0.i, align 4
  %15 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %data1.i.0.data1.i.0.data1.0.data1.0.data1.0..i = load i32, ptr %data1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i.i) #6
  %16 = getelementptr inbounds [3 x i32], ptr %buf.i.i.i, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i32], ptr %buf.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 876778, ptr %buf.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %data1.i.0.data1.i.0.data1.0.data1.0.data1.0..i, ptr %16, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %data0.i.0.data0.i.0.data0.0.data0.0.data0.0..i, ptr %17, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i.i.i, i32 noundef 12, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %call.i.i.i.i, 12
  %..i.i.i = select i1 %cmp4.not.i.i.i, i32 0, i32 -5
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 %call.i.i.i.i, i32 %..i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool6.not = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %p8_i2c_occ_putscom_be.exit.cleanup_crit_edge

p8_i2c_occ_putscom_be.exit.cleanup_crit_edge:     ; preds = %p8_i2c_occ_putscom_be.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %p8_i2c_occ_putscom_be.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i161) #6
  %21 = getelementptr inbounds [3 x i32], ptr %buf.i.i161, i32 0, i32 1
  %22 = getelementptr inbounds [3 x i32], ptr %buf.i.i161, i32 0, i32 2
  %23 = ptrtoint ptr %buf.i.i161 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 876650, ptr %buf.i.i161, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %21, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 536936448, ptr %22, align 4
  %call.i.i.i162 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i.i161, i32 noundef 12, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i162)
  %cmp.i.i163 = icmp slt i32 %call.i.i.i162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i.i.i162)
  %cmp4.not.i.i164 = icmp eq i32 %call.i.i.i162, 12
  %..i.i165 = select i1 %cmp4.not.i.i164, i32 0, i32 -5
  %retval.0.i.i166 = select i1 %cmp.i.i163, i32 %call.i.i.i162, i32 %..i.i165
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i161) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i166)
  %tobool10.not = icmp eq i32 %retval.0.i.i166, 0
  br i1 %tobool10.not, label %do.body.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %if.end8
  %26 = getelementptr inbounds [3 x i32], ptr %buf.i.i167, i32 0, i32 1
  %27 = getelementptr inbounds [3 x i32], ptr %buf.i.i167, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i167) #6
  %28 = ptrtoint ptr %buf.i.i167 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 876768, ptr %buf.i.i167, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %26, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -36864, ptr %27, align 4
  %call.i.i.i168206 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i.i167, i32 noundef 12, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i168206)
  %cmp.i.i169207 = icmp slt i32 %call.i.i.i168206, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i.i.i168206)
  %cmp4.not.i.i170208 = icmp eq i32 %call.i.i.i168206, 12
  %..i.i171209 = select i1 %cmp4.not.i.i170208, i32 0, i32 -5
  %retval.0.i.i172210 = select i1 %cmp.i.i169207, i32 %call.i.i.i168206, i32 %..i.i171209
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i167) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i172210)
  %tobool14.not211 = icmp eq i32 %retval.0.i.i172210, 0
  br i1 %tobool14.not211, label %if.end16.lr.ph, label %do.body.preheader.cleanup_crit_edge

do.body.preheader.cleanup_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.lr.ph:                                   ; preds = %do.body.preheader
  %31 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %arrayidx9.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags16.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %len18.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %add = add i32 %2, 100
  br label %if.end16

if.end16:                                         ; preds = %__here.if.end16_crit_edge, %if.end16.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %address.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #6
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %buf.i, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %33 = call ptr @memset(ptr %31, i32 255, i32 16)
  %34 = ptrtoint ptr %address.addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 876778, ptr %address.addr.i, align 4
  %35 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i, align 2
  %37 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msgs.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 8
  %40 = and i16 %39, 16
  %41 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %flags4.i, align 2
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4, ptr %31, align 4
  %43 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %address.addr.i, ptr %buf7.i, align 4
  %44 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %36, ptr %arrayidx9.i, align 4
  %45 = or i16 %40, 1
  %46 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %flags16.i, align 2
  %47 = ptrtoint ptr %len18.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 8, ptr %len18.i, align 4
  %48 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i, ptr %buf20.i, align 4
  %49 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %p8_i2c_occ_getscom.exit, label %if.end20

p8_i2c_occ_getscom.exit:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.addr.i)
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %buf.i, align 8
  %53 = ptrtoint ptr %resp3 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %resp3, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.addr.i)
  %54 = lshr i64 %52, 40
  %55 = trunc i64 %54 to i8
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i8 %55, label %if.end20.cleanup_crit_edge [
    i8 -1, label %if.then22
    i8 -28, label %if.end20.cleanup.loopexit241_crit_edge
    i8 0, label %if.end106
    i8 17, label %if.end20.cleanup.loopexit234_crit_edge
    i8 18, label %if.end20.cleanup.loopexit234_crit_edge251
    i8 19, label %if.end20.cleanup.loopexit234_crit_edge252
    i8 20, label %if.end20.cleanup.loopexit234_crit_edge253
    i8 21, label %if.end20.cleanup.loopexit241_crit_edge254
    i8 22, label %if.end20.cleanup.loopexit241_crit_edge255
    i8 -32, label %if.end20.cleanup.loopexit241_crit_edge256
    i8 -31, label %if.end20.cleanup.loopexit241_crit_edge257
    i8 -30, label %if.end20.cleanup.loopexit241_crit_edge258
    i8 -29, label %if.end20.cleanup.loopexit241_crit_edge259
  ]

if.end20.cleanup.loopexit241_crit_edge259:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit241_crit_edge258:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit241_crit_edge257:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit241_crit_edge256:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit241_crit_edge255:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit241_crit_edge254:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup.loopexit234_crit_edge253:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

if.end20.cleanup.loopexit234_crit_edge252:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

if.end20.cleanup.loopexit234_crit_edge251:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

if.end20.cleanup.loopexit234_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

if.end20.cleanup.loopexit241_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit241

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp slt i32 %sub, 0
  br i1 %cmp23, label %if.then22.cleanup.loopexit234_crit_edge, label %__here

if.then22.cleanup.loopexit234_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

__here:                                           ; preds = %if.then22
  %58 = call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 212
  %62 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 ptrtoint (ptr blockaddress(@p8_i2c_occ_send_cmd, %__here) to i32), ptr %task_state_change, align 4
  %63 = load ptr, ptr %task, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1, ptr %63, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %call93 = call i32 @schedule_timeout(i32 noundef 5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i.i167) #6
  %65 = ptrtoint ptr %buf.i.i167 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 876768, ptr %buf.i.i167, align 4
  %66 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %26, align 4
  %67 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -36864, ptr %27, align 4
  %call.i.i.i168 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i.i167, i32 noundef 12, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i168)
  %cmp.i.i169 = icmp slt i32 %call.i.i.i168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call.i.i.i168)
  %cmp4.not.i.i170 = icmp eq i32 %call.i.i.i168, 12
  %..i.i171 = select i1 %cmp4.not.i.i170, i32 0, i32 -5
  %retval.0.i.i172 = select i1 %cmp.i.i169, i32 %call.i.i.i168, i32 %..i.i171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i.i167) #6
  %tobool14.not = icmp eq i32 %retval.0.i.i172, 0
  br i1 %tobool14.not, label %__here.if.end16_crit_edge, label %__here.cleanup.loopexit234_crit_edge

__here.cleanup.loopexit234_crit_edge:             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit234

__here.if.end16_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end106:                                        ; preds = %if.end20
  %data_length107 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %data_length107 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %data_length107, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4089, i16 %69)
  %cmp110 = icmp ugt i16 %69, 4089
  br i1 %cmp110, label %if.end106.cleanup_crit_edge, label %for.cond.preheader

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end106
  %conv109 = zext i16 %69 to i32
  %add115 = add nuw nsw i32 %conv109, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %69)
  %cmp116220 = icmp ugt i16 %69, 1
  br i1 %cmp116220, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %70 = getelementptr inbounds i8, ptr %msgs.i175, i32 4
  %flags4.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i175, i32 0, i32 1
  %buf7.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i175, i32 0, i32 3
  %arrayidx9.i180 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i175, i32 0, i32 1
  %flags16.i181 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i175, i32 0, i32 1, i32 1
  %len18.i182 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i175, i32 0, i32 1, i32 2
  %buf20.i183 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i175, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 8, %for.body.lr.ph ], [ %add123, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %address.addr.i173)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i174) #6
  %71 = ptrtoint ptr %buf.i174 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -1, ptr %buf.i174, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i175) #6
  %72 = call ptr @memset(ptr %70, i32 255, i32 16)
  %73 = ptrtoint ptr %address.addr.i173 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 876778, ptr %address.addr.i173, align 4
  %74 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.i, align 2
  %76 = ptrtoint ptr %msgs.i175 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %msgs.i175, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %1, align 8
  %79 = and i16 %78, 16
  %80 = ptrtoint ptr %flags4.i177 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %flags4.i177, align 2
  %81 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %70, align 4
  %82 = ptrtoint ptr %buf7.i179 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %address.addr.i173, ptr %buf7.i179, align 4
  %83 = ptrtoint ptr %arrayidx9.i180 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %75, ptr %arrayidx9.i180, align 4
  %84 = or i16 %79, 1
  %85 = ptrtoint ptr %flags16.i181 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %flags16.i181, align 2
  %86 = ptrtoint ptr %len18.i182 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 8, ptr %len18.i182, align 4
  %87 = ptrtoint ptr %buf20.i183 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i174, ptr %buf20.i183, align 4
  %88 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i, align 8
  %call.i185 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msgs.i175, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %p8_i2c_occ_getscom.exit189, label %for.inc

p8_i2c_occ_getscom.exit189:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i175) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i174) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.addr.i173)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add.ptr118 = getelementptr i8, ptr %resp3, i32 %i.0221
  %90 = ptrtoint ptr %buf.i174 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %buf.i174, align 8
  %92 = ptrtoint ptr %add.ptr118 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %add.ptr118, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i175) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i174) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address.addr.i173)
  %add123 = add nuw nsw i32 %i.0221, 8
  %cmp116 = icmp ult i32 %add123, %add115
  br i1 %cmp116, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.loopexit234:                              ; preds = %__here.cleanup.loopexit234_crit_edge, %if.then22.cleanup.loopexit234_crit_edge, %if.end20.cleanup.loopexit234_crit_edge, %if.end20.cleanup.loopexit234_crit_edge251, %if.end20.cleanup.loopexit234_crit_edge252, %if.end20.cleanup.loopexit234_crit_edge253
  %retval.0.ph = phi i32 [ -22, %if.end20.cleanup.loopexit234_crit_edge ], [ -22, %if.end20.cleanup.loopexit234_crit_edge251 ], [ -22, %if.end20.cleanup.loopexit234_crit_edge252 ], [ -22, %if.end20.cleanup.loopexit234_crit_edge253 ], [ -110, %if.then22.cleanup.loopexit234_crit_edge ], [ %retval.0.i.i172, %__here.cleanup.loopexit234_crit_edge ]
  br label %cleanup

cleanup.loopexit241:                              ; preds = %if.end20.cleanup.loopexit241_crit_edge, %if.end20.cleanup.loopexit241_crit_edge254, %if.end20.cleanup.loopexit241_crit_edge255, %if.end20.cleanup.loopexit241_crit_edge256, %if.end20.cleanup.loopexit241_crit_edge257, %if.end20.cleanup.loopexit241_crit_edge258, %if.end20.cleanup.loopexit241_crit_edge259
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit241, %cleanup.loopexit234, %for.inc.cleanup_crit_edge, %p8_i2c_occ_getscom.exit189, %for.cond.preheader.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %p8_i2c_occ_getscom.exit, %do.body.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %p8_i2c_occ_putscom_be.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %entry.cleanup_crit_edge ], [ %retval.0.i.i.i, %p8_i2c_occ_putscom_be.exit.cleanup_crit_edge ], [ %retval.0.i.i166, %if.end8.cleanup_crit_edge ], [ %call.i, %p8_i2c_occ_getscom.exit ], [ -90, %if.end106.cleanup_crit_edge ], [ %call.i185, %p8_i2c_occ_getscom.exit189 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i.i172210, %do.body.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit234 ], [ -121, %cleanup.loopexit241 ], [ -71, %if.end20.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @occ_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_occ_p8_hwmon__293_254_p8_i2c_occ_driver_init6, !1, !"__initcall__kmod_occ_p8_hwmon__293_254_p8_i2c_occ_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_p8_i2c_occ_driver_exit, !1, !"__exitcall_p8_i2c_occ_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 247, i32 11}
!12 = !{ptr @p8_i2c_occ_driver, !13, !"p8_i2c_occ_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 244, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 226, i32 24}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 160, i32 4}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @p8_i2c_occ_of_match, !20, !"p8_i2c_occ_of_match", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/occ/p8_i2c.c", i32 238, i32 34}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i64 2155528256}
