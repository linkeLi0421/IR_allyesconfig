; ModuleID = '/llk/IR_all_yes/drivers/soundwire/debugfs.c_pt.bc'
source_filename = "../drivers/soundwire/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sdw_defer = type { i32, %struct.completion, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@sdw_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"master-%d-%d\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@sdw_slave_reg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sdw_slave_reg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soundwire\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Register  Value\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0ADP0\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bank0\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bank1\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0ASCP\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0ADP%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%3x\09XX\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%3x\09%2x\0A\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"sdw_debugfs_root\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 12, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 22, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 130, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 133, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"sdw_slave_reg_fops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 119, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 145, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 58, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 61, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 66, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 72, i32 44 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 80, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 97, i32 45 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 41, i32 45 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [31 x i8] c"../drivers/soundwire/debugfs.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 44, i32 5 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @sdw_debugfs_root, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sdw_slave_reg_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_slave_reg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_bus_debugfs_init(ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #5
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = load ptr, ptr @sdw_debugfs_root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %link_id = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  %4 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_id, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5)
  %6 = load ptr, ptr @sdw_debugfs_root, align 4
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %6) #5
  %debugfs = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 14
  %7 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %debugfs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_bus_debugfs_exit(ptr nocapture noundef readonly %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 14
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_slave_debugfs_init(ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #5
  %bus = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 3
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %debugfs = getelementptr inbounds %struct.sdw_bus, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs, align 8
  %init_name.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %entry.dev_name.exit_crit_edge ]
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %4) #5
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %slave, ptr noundef nonnull @sdw_slave_reg_fops) #5
  %debugfs5 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 6
  %9 = ptrtoint ptr %debugfs5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %debugfs5, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_slave_debugfs_exit(ptr nocapture noundef readonly %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 6
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #5
  store ptr %call, ptr @sdw_debugfs_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sdw_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_slave_reg_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sdw_slave_reg_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_slave_reg_show(ptr noundef %s_file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s_file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12288, i32 noundef 3520, i32 noundef 2) #8
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call1.i.i.i, i32 noundef 12288, ptr noundef nonnull @.str.4) #5
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 %call1
  %sub = sub i32 12288, %call1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5) #5
  %add = add i32 %call2, %call1
  %call.i = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %add.ptr.i = getelementptr i8, ptr %call1.i.i.i, i32 %add
  %sub.i = sub i32 12288, %add
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.10, i32 noundef 0) #5
  br label %sdw_sprintf.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %call.i) #5
  br label %sdw_sprintf.exit

sdw_sprintf.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %add4 = add i32 %retval.0.i, %add
  %call.i.1 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  %add.ptr.i.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add4
  %sub.i.1 = sub i32 12288, %add4
  br i1 %cmp.i.1, label %if.then.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %sdw_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.1, i32 noundef %sub.i.1, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %call.i.1) #5
  br label %sdw_sprintf.exit.1

if.then.i.1:                                      ; preds = %sdw_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.1, i32 noundef %sub.i.1, ptr noundef nonnull @.str.10, i32 noundef 1) #5
  br label %sdw_sprintf.exit.1

sdw_sprintf.exit.1:                               ; preds = %if.then.i.1, %if.else.i.1
  %retval.0.i.1 = phi i32 [ %call1.i.1, %if.then.i.1 ], [ %call4.i.1, %if.else.i.1 ]
  %add4.1 = add i32 %retval.0.i.1, %add4
  %call.i.2 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  %add.ptr.i.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add4.1
  %sub.i.2 = sub i32 12288, %add4.1
  br i1 %cmp.i.2, label %if.then.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %sdw_sprintf.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.2, i32 noundef %sub.i.2, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %call.i.2) #5
  br label %sdw_sprintf.exit.2

if.then.i.2:                                      ; preds = %sdw_sprintf.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.2, i32 noundef %sub.i.2, ptr noundef nonnull @.str.10, i32 noundef 2) #5
  br label %sdw_sprintf.exit.2

sdw_sprintf.exit.2:                               ; preds = %if.then.i.2, %if.else.i.2
  %retval.0.i.2 = phi i32 [ %call1.i.2, %if.then.i.2 ], [ %call4.i.2, %if.else.i.2 ]
  %add4.2 = add i32 %retval.0.i.2, %add4.1
  %call.i.3 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.3, 0
  %add.ptr.i.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add4.2
  %sub.i.3 = sub i32 12288, %add4.2
  br i1 %cmp.i.3, label %if.then.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %sdw_sprintf.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.3, i32 noundef %sub.i.3, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef %call.i.3) #5
  br label %sdw_sprintf.exit.3

if.then.i.3:                                      ; preds = %sdw_sprintf.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.3, i32 noundef %sub.i.3, ptr noundef nonnull @.str.10, i32 noundef 3) #5
  br label %sdw_sprintf.exit.3

sdw_sprintf.exit.3:                               ; preds = %if.then.i.3, %if.else.i.3
  %retval.0.i.3 = phi i32 [ %call1.i.3, %if.then.i.3 ], [ %call4.i.3, %if.else.i.3 ]
  %add4.3 = add i32 %retval.0.i.3, %add4.2
  %call.i.4 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp.i.4 = icmp slt i32 %call.i.4, 0
  %add.ptr.i.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add4.3
  %sub.i.4 = sub i32 12288, %add4.3
  br i1 %cmp.i.4, label %if.then.i.4, label %if.else.i.4

if.else.i.4:                                      ; preds = %sdw_sprintf.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.4, i32 noundef %sub.i.4, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef %call.i.4) #5
  br label %sdw_sprintf.exit.4

if.then.i.4:                                      ; preds = %sdw_sprintf.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.4, i32 noundef %sub.i.4, ptr noundef nonnull @.str.10, i32 noundef 4) #5
  br label %sdw_sprintf.exit.4

sdw_sprintf.exit.4:                               ; preds = %if.then.i.4, %if.else.i.4
  %retval.0.i.4 = phi i32 [ %call1.i.4, %if.then.i.4 ], [ %call4.i.4, %if.else.i.4 ]
  %add4.4 = add i32 %retval.0.i.4, %add4.3
  %call.i.5 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp.i.5 = icmp slt i32 %call.i.5, 0
  %add.ptr.i.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add4.4
  %sub.i.5 = sub i32 12288, %add4.4
  br i1 %cmp.i.5, label %if.then.i.5, label %if.else.i.5

if.else.i.5:                                      ; preds = %sdw_sprintf.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.5, i32 noundef %sub.i.5, ptr noundef nonnull @.str.11, i32 noundef 5, i32 noundef %call.i.5) #5
  br label %sdw_sprintf.exit.5

if.then.i.5:                                      ; preds = %sdw_sprintf.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.5, i32 noundef %sub.i.5, ptr noundef nonnull @.str.10, i32 noundef 5) #5
  br label %sdw_sprintf.exit.5

sdw_sprintf.exit.5:                               ; preds = %if.then.i.5, %if.else.i.5
  %retval.0.i.5 = phi i32 [ %call1.i.5, %if.then.i.5 ], [ %call4.i.5, %if.else.i.5 ]
  %add4.5 = add i32 %retval.0.i.5, %add4.4
  %add.ptr5 = getelementptr i8, ptr %call1.i.i.i, i32 %add4.5
  %sub6 = sub i32 12288, %add4.5
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.6) #5
  %add8 = add i32 %call7, %add4.5
  %call.i213 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp.i214 = icmp slt i32 %call.i213, 0
  %add.ptr.i215 = getelementptr i8, ptr %call1.i.i.i, i32 %add8
  %sub.i216 = sub i32 12288, %add8
  br i1 %cmp.i214, label %if.then.i218, label %if.else.i220

if.then.i218:                                     ; preds = %sdw_sprintf.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i217 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i215, i32 noundef %sub.i216, ptr noundef nonnull @.str.10, i32 noundef 32) #5
  br label %sdw_sprintf.exit222

if.else.i220:                                     ; preds = %sdw_sprintf.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i219 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i215, i32 noundef %sub.i216, ptr noundef nonnull @.str.11, i32 noundef 32, i32 noundef %call.i213) #5
  br label %sdw_sprintf.exit222

sdw_sprintf.exit222:                              ; preds = %if.else.i220, %if.then.i218
  %retval.0.i221 = phi i32 [ %call1.i217, %if.then.i218 ], [ %call4.i219, %if.else.i220 ]
  %add10 = add i32 %retval.0.i221, %add8
  %call.i223 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp.i224 = icmp slt i32 %call.i223, 0
  %add.ptr.i225 = getelementptr i8, ptr %call1.i.i.i, i32 %add10
  %sub.i226 = sub i32 12288, %add10
  br i1 %cmp.i224, label %if.then.i228, label %if.else.i230

if.then.i228:                                     ; preds = %sdw_sprintf.exit222
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225, i32 noundef %sub.i226, ptr noundef nonnull @.str.10, i32 noundef 34) #5
  br label %sdw_sprintf.exit232

if.else.i230:                                     ; preds = %sdw_sprintf.exit222
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225, i32 noundef %sub.i226, ptr noundef nonnull @.str.11, i32 noundef 34, i32 noundef %call.i223) #5
  br label %sdw_sprintf.exit232

sdw_sprintf.exit232:                              ; preds = %if.else.i230, %if.then.i228
  %retval.0.i231 = phi i32 [ %call1.i227, %if.then.i228 ], [ %call4.i229, %if.else.i230 ]
  %add15 = add i32 %retval.0.i231, %add10
  %call.i223.1 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.1)
  %cmp.i224.1 = icmp slt i32 %call.i223.1, 0
  %add.ptr.i225.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add15
  %sub.i226.1 = sub i32 12288, %add15
  br i1 %cmp.i224.1, label %if.then.i228.1, label %if.else.i230.1

if.else.i230.1:                                   ; preds = %sdw_sprintf.exit232
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.1, i32 noundef %sub.i226.1, ptr noundef nonnull @.str.11, i32 noundef 35, i32 noundef %call.i223.1) #5
  br label %sdw_sprintf.exit232.1

if.then.i228.1:                                   ; preds = %sdw_sprintf.exit232
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.1, i32 noundef %sub.i226.1, ptr noundef nonnull @.str.10, i32 noundef 35) #5
  br label %sdw_sprintf.exit232.1

sdw_sprintf.exit232.1:                            ; preds = %if.then.i228.1, %if.else.i230.1
  %retval.0.i231.1 = phi i32 [ %call1.i227.1, %if.then.i228.1 ], [ %call4.i229.1, %if.else.i230.1 ]
  %add15.1 = add i32 %retval.0.i231.1, %add15
  %call.i223.2 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.2)
  %cmp.i224.2 = icmp slt i32 %call.i223.2, 0
  %add.ptr.i225.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.1
  %sub.i226.2 = sub i32 12288, %add15.1
  br i1 %cmp.i224.2, label %if.then.i228.2, label %if.else.i230.2

if.else.i230.2:                                   ; preds = %sdw_sprintf.exit232.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.2, i32 noundef %sub.i226.2, ptr noundef nonnull @.str.11, i32 noundef 36, i32 noundef %call.i223.2) #5
  br label %sdw_sprintf.exit232.2

if.then.i228.2:                                   ; preds = %sdw_sprintf.exit232.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.2, i32 noundef %sub.i226.2, ptr noundef nonnull @.str.10, i32 noundef 36) #5
  br label %sdw_sprintf.exit232.2

sdw_sprintf.exit232.2:                            ; preds = %if.then.i228.2, %if.else.i230.2
  %retval.0.i231.2 = phi i32 [ %call1.i227.2, %if.then.i228.2 ], [ %call4.i229.2, %if.else.i230.2 ]
  %add15.2 = add i32 %retval.0.i231.2, %add15.1
  %call.i223.3 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.3)
  %cmp.i224.3 = icmp slt i32 %call.i223.3, 0
  %add.ptr.i225.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.2
  %sub.i226.3 = sub i32 12288, %add15.2
  br i1 %cmp.i224.3, label %if.then.i228.3, label %if.else.i230.3

if.else.i230.3:                                   ; preds = %sdw_sprintf.exit232.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.3, i32 noundef %sub.i226.3, ptr noundef nonnull @.str.11, i32 noundef 37, i32 noundef %call.i223.3) #5
  br label %sdw_sprintf.exit232.3

if.then.i228.3:                                   ; preds = %sdw_sprintf.exit232.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.3, i32 noundef %sub.i226.3, ptr noundef nonnull @.str.10, i32 noundef 37) #5
  br label %sdw_sprintf.exit232.3

sdw_sprintf.exit232.3:                            ; preds = %if.then.i228.3, %if.else.i230.3
  %retval.0.i231.3 = phi i32 [ %call1.i227.3, %if.then.i228.3 ], [ %call4.i229.3, %if.else.i230.3 ]
  %add15.3 = add i32 %retval.0.i231.3, %add15.2
  %call.i223.4 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.4)
  %cmp.i224.4 = icmp slt i32 %call.i223.4, 0
  %add.ptr.i225.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.3
  %sub.i226.4 = sub i32 12288, %add15.3
  br i1 %cmp.i224.4, label %if.then.i228.4, label %if.else.i230.4

if.else.i230.4:                                   ; preds = %sdw_sprintf.exit232.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.4, i32 noundef %sub.i226.4, ptr noundef nonnull @.str.11, i32 noundef 38, i32 noundef %call.i223.4) #5
  br label %sdw_sprintf.exit232.4

if.then.i228.4:                                   ; preds = %sdw_sprintf.exit232.3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.4, i32 noundef %sub.i226.4, ptr noundef nonnull @.str.10, i32 noundef 38) #5
  br label %sdw_sprintf.exit232.4

sdw_sprintf.exit232.4:                            ; preds = %if.then.i228.4, %if.else.i230.4
  %retval.0.i231.4 = phi i32 [ %call1.i227.4, %if.then.i228.4 ], [ %call4.i229.4, %if.else.i230.4 ]
  %add15.4 = add i32 %retval.0.i231.4, %add15.3
  %call.i223.5 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.5)
  %cmp.i224.5 = icmp slt i32 %call.i223.5, 0
  %add.ptr.i225.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.4
  %sub.i226.5 = sub i32 12288, %add15.4
  br i1 %cmp.i224.5, label %if.then.i228.5, label %if.else.i230.5

if.else.i230.5:                                   ; preds = %sdw_sprintf.exit232.4
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.5, i32 noundef %sub.i226.5, ptr noundef nonnull @.str.11, i32 noundef 39, i32 noundef %call.i223.5) #5
  br label %sdw_sprintf.exit232.5

if.then.i228.5:                                   ; preds = %sdw_sprintf.exit232.4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.5, i32 noundef %sub.i226.5, ptr noundef nonnull @.str.10, i32 noundef 39) #5
  br label %sdw_sprintf.exit232.5

sdw_sprintf.exit232.5:                            ; preds = %if.then.i228.5, %if.else.i230.5
  %retval.0.i231.5 = phi i32 [ %call1.i227.5, %if.then.i228.5 ], [ %call4.i229.5, %if.else.i230.5 ]
  %add15.5 = add i32 %retval.0.i231.5, %add15.4
  %call.i223.6 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.6)
  %cmp.i224.6 = icmp slt i32 %call.i223.6, 0
  %add.ptr.i225.6 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.5
  %sub.i226.6 = sub i32 12288, %add15.5
  br i1 %cmp.i224.6, label %if.then.i228.6, label %if.else.i230.6

if.else.i230.6:                                   ; preds = %sdw_sprintf.exit232.5
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i229.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.6, i32 noundef %sub.i226.6, ptr noundef nonnull @.str.11, i32 noundef 40, i32 noundef %call.i223.6) #5
  br label %sdw_sprintf.exit232.6

if.then.i228.6:                                   ; preds = %sdw_sprintf.exit232.5
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i227.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i225.6, i32 noundef %sub.i226.6, ptr noundef nonnull @.str.10, i32 noundef 40) #5
  br label %sdw_sprintf.exit232.6

sdw_sprintf.exit232.6:                            ; preds = %if.then.i228.6, %if.else.i230.6
  %retval.0.i231.6 = phi i32 [ %call1.i227.6, %if.then.i228.6 ], [ %call4.i229.6, %if.else.i230.6 ]
  %add15.6 = add i32 %retval.0.i231.6, %add15.5
  %add.ptr19 = getelementptr i8, ptr %call1.i.i.i, i32 %add15.6
  %sub20 = sub i32 12288, %add15.6
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.7) #5
  %add22 = add i32 %call21, %add15.6
  %call.i233 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %cmp.i234 = icmp slt i32 %call.i233, 0
  %add.ptr.i235 = getelementptr i8, ptr %call1.i.i.i, i32 %add22
  %sub.i236 = sub i32 12288, %add22
  br i1 %cmp.i234, label %if.then.i238, label %if.else.i240

if.then.i238:                                     ; preds = %sdw_sprintf.exit232.6
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i237 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i235, i32 noundef %sub.i236, ptr noundef nonnull @.str.10, i32 noundef 48) #5
  br label %sdw_sprintf.exit242

if.else.i240:                                     ; preds = %sdw_sprintf.exit232.6
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i239 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i235, i32 noundef %sub.i236, ptr noundef nonnull @.str.11, i32 noundef 48, i32 noundef %call.i233) #5
  br label %sdw_sprintf.exit242

sdw_sprintf.exit242:                              ; preds = %if.else.i240, %if.then.i238
  %retval.0.i241 = phi i32 [ %call1.i237, %if.then.i238 ], [ %call4.i239, %if.else.i240 ]
  %add24 = add i32 %retval.0.i241, %add22
  %call.i243 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %cmp.i244 = icmp slt i32 %call.i243, 0
  %add.ptr.i245 = getelementptr i8, ptr %call1.i.i.i, i32 %add24
  %sub.i246 = sub i32 12288, %add24
  br i1 %cmp.i244, label %if.then.i248, label %if.else.i250

if.then.i248:                                     ; preds = %sdw_sprintf.exit242
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245, i32 noundef %sub.i246, ptr noundef nonnull @.str.10, i32 noundef 50) #5
  br label %sdw_sprintf.exit252

if.else.i250:                                     ; preds = %sdw_sprintf.exit242
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245, i32 noundef %sub.i246, ptr noundef nonnull @.str.11, i32 noundef 50, i32 noundef %call.i243) #5
  br label %sdw_sprintf.exit252

sdw_sprintf.exit252:                              ; preds = %if.else.i250, %if.then.i248
  %retval.0.i251 = phi i32 [ %call1.i247, %if.then.i248 ], [ %call4.i249, %if.else.i250 ]
  %add29 = add i32 %retval.0.i251, %add24
  %call.i243.1 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.1)
  %cmp.i244.1 = icmp slt i32 %call.i243.1, 0
  %add.ptr.i245.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add29
  %sub.i246.1 = sub i32 12288, %add29
  br i1 %cmp.i244.1, label %if.then.i248.1, label %if.else.i250.1

if.else.i250.1:                                   ; preds = %sdw_sprintf.exit252
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.1, i32 noundef %sub.i246.1, ptr noundef nonnull @.str.11, i32 noundef 51, i32 noundef %call.i243.1) #5
  br label %sdw_sprintf.exit252.1

if.then.i248.1:                                   ; preds = %sdw_sprintf.exit252
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.1, i32 noundef %sub.i246.1, ptr noundef nonnull @.str.10, i32 noundef 51) #5
  br label %sdw_sprintf.exit252.1

sdw_sprintf.exit252.1:                            ; preds = %if.then.i248.1, %if.else.i250.1
  %retval.0.i251.1 = phi i32 [ %call1.i247.1, %if.then.i248.1 ], [ %call4.i249.1, %if.else.i250.1 ]
  %add29.1 = add i32 %retval.0.i251.1, %add29
  %call.i243.2 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.2)
  %cmp.i244.2 = icmp slt i32 %call.i243.2, 0
  %add.ptr.i245.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.1
  %sub.i246.2 = sub i32 12288, %add29.1
  br i1 %cmp.i244.2, label %if.then.i248.2, label %if.else.i250.2

if.else.i250.2:                                   ; preds = %sdw_sprintf.exit252.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.2, i32 noundef %sub.i246.2, ptr noundef nonnull @.str.11, i32 noundef 52, i32 noundef %call.i243.2) #5
  br label %sdw_sprintf.exit252.2

if.then.i248.2:                                   ; preds = %sdw_sprintf.exit252.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.2, i32 noundef %sub.i246.2, ptr noundef nonnull @.str.10, i32 noundef 52) #5
  br label %sdw_sprintf.exit252.2

sdw_sprintf.exit252.2:                            ; preds = %if.then.i248.2, %if.else.i250.2
  %retval.0.i251.2 = phi i32 [ %call1.i247.2, %if.then.i248.2 ], [ %call4.i249.2, %if.else.i250.2 ]
  %add29.2 = add i32 %retval.0.i251.2, %add29.1
  %call.i243.3 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.3)
  %cmp.i244.3 = icmp slt i32 %call.i243.3, 0
  %add.ptr.i245.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.2
  %sub.i246.3 = sub i32 12288, %add29.2
  br i1 %cmp.i244.3, label %if.then.i248.3, label %if.else.i250.3

if.else.i250.3:                                   ; preds = %sdw_sprintf.exit252.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.3, i32 noundef %sub.i246.3, ptr noundef nonnull @.str.11, i32 noundef 53, i32 noundef %call.i243.3) #5
  br label %sdw_sprintf.exit252.3

if.then.i248.3:                                   ; preds = %sdw_sprintf.exit252.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.3, i32 noundef %sub.i246.3, ptr noundef nonnull @.str.10, i32 noundef 53) #5
  br label %sdw_sprintf.exit252.3

sdw_sprintf.exit252.3:                            ; preds = %if.then.i248.3, %if.else.i250.3
  %retval.0.i251.3 = phi i32 [ %call1.i247.3, %if.then.i248.3 ], [ %call4.i249.3, %if.else.i250.3 ]
  %add29.3 = add i32 %retval.0.i251.3, %add29.2
  %call.i243.4 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.4)
  %cmp.i244.4 = icmp slt i32 %call.i243.4, 0
  %add.ptr.i245.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.3
  %sub.i246.4 = sub i32 12288, %add29.3
  br i1 %cmp.i244.4, label %if.then.i248.4, label %if.else.i250.4

if.else.i250.4:                                   ; preds = %sdw_sprintf.exit252.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.4, i32 noundef %sub.i246.4, ptr noundef nonnull @.str.11, i32 noundef 54, i32 noundef %call.i243.4) #5
  br label %sdw_sprintf.exit252.4

if.then.i248.4:                                   ; preds = %sdw_sprintf.exit252.3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.4, i32 noundef %sub.i246.4, ptr noundef nonnull @.str.10, i32 noundef 54) #5
  br label %sdw_sprintf.exit252.4

sdw_sprintf.exit252.4:                            ; preds = %if.then.i248.4, %if.else.i250.4
  %retval.0.i251.4 = phi i32 [ %call1.i247.4, %if.then.i248.4 ], [ %call4.i249.4, %if.else.i250.4 ]
  %add29.4 = add i32 %retval.0.i251.4, %add29.3
  %call.i243.5 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.5)
  %cmp.i244.5 = icmp slt i32 %call.i243.5, 0
  %add.ptr.i245.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.4
  %sub.i246.5 = sub i32 12288, %add29.4
  br i1 %cmp.i244.5, label %if.then.i248.5, label %if.else.i250.5

if.else.i250.5:                                   ; preds = %sdw_sprintf.exit252.4
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.5, i32 noundef %sub.i246.5, ptr noundef nonnull @.str.11, i32 noundef 55, i32 noundef %call.i243.5) #5
  br label %sdw_sprintf.exit252.5

if.then.i248.5:                                   ; preds = %sdw_sprintf.exit252.4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.5, i32 noundef %sub.i246.5, ptr noundef nonnull @.str.10, i32 noundef 55) #5
  br label %sdw_sprintf.exit252.5

sdw_sprintf.exit252.5:                            ; preds = %if.then.i248.5, %if.else.i250.5
  %retval.0.i251.5 = phi i32 [ %call1.i247.5, %if.then.i248.5 ], [ %call4.i249.5, %if.else.i250.5 ]
  %add29.5 = add i32 %retval.0.i251.5, %add29.4
  %call.i243.6 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.6)
  %cmp.i244.6 = icmp slt i32 %call.i243.6, 0
  %add.ptr.i245.6 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.5
  %sub.i246.6 = sub i32 12288, %add29.5
  br i1 %cmp.i244.6, label %if.then.i248.6, label %if.else.i250.6

if.else.i250.6:                                   ; preds = %sdw_sprintf.exit252.5
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i249.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.6, i32 noundef %sub.i246.6, ptr noundef nonnull @.str.11, i32 noundef 56, i32 noundef %call.i243.6) #5
  br label %sdw_sprintf.exit252.6

if.then.i248.6:                                   ; preds = %sdw_sprintf.exit252.5
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i247.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i245.6, i32 noundef %sub.i246.6, ptr noundef nonnull @.str.10, i32 noundef 56) #5
  br label %sdw_sprintf.exit252.6

sdw_sprintf.exit252.6:                            ; preds = %if.then.i248.6, %if.else.i250.6
  %retval.0.i251.6 = phi i32 [ %call1.i247.6, %if.then.i248.6 ], [ %call4.i249.6, %if.else.i250.6 ]
  %add29.6 = add i32 %retval.0.i251.6, %add29.5
  %add.ptr33 = getelementptr i8, ptr %call1.i.i.i, i32 %add29.6
  %sub34 = sub i32 12288, %add29.6
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.8) #5
  %add36 = add i32 %call35, %add29.6
  br label %for.body39

for.body39:                                       ; preds = %sdw_sprintf.exit262.for.body39_crit_edge, %sdw_sprintf.exit252.6
  %i.3313 = phi i32 [ 64, %sdw_sprintf.exit252.6 ], [ %inc43, %sdw_sprintf.exit262.for.body39_crit_edge ]
  %ret.3312 = phi i32 [ %add36, %sdw_sprintf.exit252.6 ], [ %add41, %sdw_sprintf.exit262.for.body39_crit_edge ]
  %call.i253 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %i.3313) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %cmp.i254 = icmp slt i32 %call.i253, 0
  %add.ptr.i255 = getelementptr i8, ptr %call1.i.i.i, i32 %ret.3312
  %sub.i256 = sub i32 12288, %ret.3312
  br i1 %cmp.i254, label %if.then.i258, label %if.else.i260

if.then.i258:                                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i257 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i255, i32 noundef %sub.i256, ptr noundef nonnull @.str.10, i32 noundef %i.3313) #5
  br label %sdw_sprintf.exit262

if.else.i260:                                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i259 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i255, i32 noundef %sub.i256, ptr noundef nonnull @.str.11, i32 noundef %i.3313, i32 noundef %call.i253) #5
  br label %sdw_sprintf.exit262

sdw_sprintf.exit262:                              ; preds = %if.else.i260, %if.then.i258
  %retval.0.i261 = phi i32 [ %call1.i257, %if.then.i258 ], [ %call4.i259, %if.else.i260 ]
  %add41 = add i32 %retval.0.i261, %ret.3312
  %inc43 = add nuw nsw i32 %i.3313, 1
  %exitcond.not = icmp eq i32 %inc43, 76
  br i1 %exitcond.not, label %for.body47.preheader, label %sdw_sprintf.exit262.for.body39_crit_edge

sdw_sprintf.exit262.for.body39_crit_edge:         ; preds = %sdw_sprintf.exit262
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

for.body47.preheader:                             ; preds = %sdw_sprintf.exit262
  %call.i263 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp.i264 = icmp slt i32 %call.i263, 0
  %add.ptr.i265 = getelementptr i8, ptr %call1.i.i.i, i32 %add41
  %sub.i266 = sub i32 12288, %add41
  br i1 %cmp.i264, label %if.then.i268, label %if.else.i270

if.then.i268:                                     ; preds = %for.body47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265, i32 noundef %sub.i266, ptr noundef nonnull @.str.10, i32 noundef 80) #5
  br label %sdw_sprintf.exit272

if.else.i270:                                     ; preds = %for.body47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265, i32 noundef %sub.i266, ptr noundef nonnull @.str.11, i32 noundef 80, i32 noundef %call.i263) #5
  br label %sdw_sprintf.exit272

sdw_sprintf.exit272:                              ; preds = %if.else.i270, %if.then.i268
  %retval.0.i271 = phi i32 [ %call1.i267, %if.then.i268 ], [ %call4.i269, %if.else.i270 ]
  %add49 = add i32 %retval.0.i271, %add41
  %call.i263.1 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.1)
  %cmp.i264.1 = icmp slt i32 %call.i263.1, 0
  %add.ptr.i265.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add49
  %sub.i266.1 = sub i32 12288, %add49
  br i1 %cmp.i264.1, label %if.then.i268.1, label %if.else.i270.1

if.else.i270.1:                                   ; preds = %sdw_sprintf.exit272
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.1, i32 noundef %sub.i266.1, ptr noundef nonnull @.str.11, i32 noundef 81, i32 noundef %call.i263.1) #5
  br label %sdw_sprintf.exit272.1

if.then.i268.1:                                   ; preds = %sdw_sprintf.exit272
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.1, i32 noundef %sub.i266.1, ptr noundef nonnull @.str.10, i32 noundef 81) #5
  br label %sdw_sprintf.exit272.1

sdw_sprintf.exit272.1:                            ; preds = %if.then.i268.1, %if.else.i270.1
  %retval.0.i271.1 = phi i32 [ %call1.i267.1, %if.then.i268.1 ], [ %call4.i269.1, %if.else.i270.1 ]
  %add49.1 = add i32 %retval.0.i271.1, %add49
  %call.i263.2 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.2)
  %cmp.i264.2 = icmp slt i32 %call.i263.2, 0
  %add.ptr.i265.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add49.1
  %sub.i266.2 = sub i32 12288, %add49.1
  br i1 %cmp.i264.2, label %if.then.i268.2, label %if.else.i270.2

if.else.i270.2:                                   ; preds = %sdw_sprintf.exit272.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.2, i32 noundef %sub.i266.2, ptr noundef nonnull @.str.11, i32 noundef 82, i32 noundef %call.i263.2) #5
  br label %sdw_sprintf.exit272.2

if.then.i268.2:                                   ; preds = %sdw_sprintf.exit272.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.2, i32 noundef %sub.i266.2, ptr noundef nonnull @.str.10, i32 noundef 82) #5
  br label %sdw_sprintf.exit272.2

sdw_sprintf.exit272.2:                            ; preds = %if.then.i268.2, %if.else.i270.2
  %retval.0.i271.2 = phi i32 [ %call1.i267.2, %if.then.i268.2 ], [ %call4.i269.2, %if.else.i270.2 ]
  %add49.2 = add i32 %retval.0.i271.2, %add49.1
  %call.i263.3 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.3)
  %cmp.i264.3 = icmp slt i32 %call.i263.3, 0
  %add.ptr.i265.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add49.2
  %sub.i266.3 = sub i32 12288, %add49.2
  br i1 %cmp.i264.3, label %if.then.i268.3, label %if.else.i270.3

if.else.i270.3:                                   ; preds = %sdw_sprintf.exit272.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.3, i32 noundef %sub.i266.3, ptr noundef nonnull @.str.11, i32 noundef 83, i32 noundef %call.i263.3) #5
  br label %sdw_sprintf.exit272.3

if.then.i268.3:                                   ; preds = %sdw_sprintf.exit272.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.3, i32 noundef %sub.i266.3, ptr noundef nonnull @.str.10, i32 noundef 83) #5
  br label %sdw_sprintf.exit272.3

sdw_sprintf.exit272.3:                            ; preds = %if.then.i268.3, %if.else.i270.3
  %retval.0.i271.3 = phi i32 [ %call1.i267.3, %if.then.i268.3 ], [ %call4.i269.3, %if.else.i270.3 ]
  %add49.3 = add i32 %retval.0.i271.3, %add49.2
  %call.i263.4 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.4)
  %cmp.i264.4 = icmp slt i32 %call.i263.4, 0
  %add.ptr.i265.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add49.3
  %sub.i266.4 = sub i32 12288, %add49.3
  br i1 %cmp.i264.4, label %if.then.i268.4, label %if.else.i270.4

if.else.i270.4:                                   ; preds = %sdw_sprintf.exit272.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.4, i32 noundef %sub.i266.4, ptr noundef nonnull @.str.11, i32 noundef 84, i32 noundef %call.i263.4) #5
  br label %sdw_sprintf.exit272.4

if.then.i268.4:                                   ; preds = %sdw_sprintf.exit272.3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.4, i32 noundef %sub.i266.4, ptr noundef nonnull @.str.10, i32 noundef 84) #5
  br label %sdw_sprintf.exit272.4

sdw_sprintf.exit272.4:                            ; preds = %if.then.i268.4, %if.else.i270.4
  %retval.0.i271.4 = phi i32 [ %call1.i267.4, %if.then.i268.4 ], [ %call4.i269.4, %if.else.i270.4 ]
  %add49.4 = add i32 %retval.0.i271.4, %add49.3
  %call.i263.5 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef 85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.5)
  %cmp.i264.5 = icmp slt i32 %call.i263.5, 0
  %add.ptr.i265.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add49.4
  %sub.i266.5 = sub i32 12288, %add49.4
  br i1 %cmp.i264.5, label %if.then.i268.5, label %if.else.i270.5

if.else.i270.5:                                   ; preds = %sdw_sprintf.exit272.4
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i269.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.5, i32 noundef %sub.i266.5, ptr noundef nonnull @.str.11, i32 noundef 85, i32 noundef %call.i263.5) #5
  br label %sdw_sprintf.exit272.5

if.then.i268.5:                                   ; preds = %sdw_sprintf.exit272.4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i267.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i265.5, i32 noundef %sub.i266.5, ptr noundef nonnull @.str.10, i32 noundef 85) #5
  br label %sdw_sprintf.exit272.5

sdw_sprintf.exit272.5:                            ; preds = %if.then.i268.5, %if.else.i270.5
  %retval.0.i271.5 = phi i32 [ %call1.i267.5, %if.then.i268.5 ], [ %call4.i269.5, %if.else.i270.5 ]
  %add49.5 = add i32 %retval.0.i271.5, %add49.4
  br label %for.body56

for.body56:                                       ; preds = %for.inc104.for.body56_crit_edge, %sdw_sprintf.exit272.5
  %indvars.iv334 = phi i32 [ 313, %sdw_sprintf.exit272.5 ], [ %indvars.iv.next335, %for.inc104.for.body56_crit_edge ]
  %indvars.iv = phi i32 [ 297, %sdw_sprintf.exit272.5 ], [ %indvars.iv.next, %for.inc104.for.body56_crit_edge ]
  %i.5331 = phi i32 [ 1, %sdw_sprintf.exit272.5 ], [ %inc105, %for.inc104.for.body56_crit_edge ]
  %ret.5330 = phi i32 [ %add49.5, %sdw_sprintf.exit272.5 ], [ %add100, %for.inc104.for.body56_crit_edge ]
  %add.ptr57 = getelementptr i8, ptr %call1.i.i.i, i32 %ret.5330
  %sub58 = sub i32 12288, %ret.5330
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.9, i32 noundef %i.5331) #5
  %add60 = add i32 %call59, %ret.5330
  %mul = shl nuw nsw i32 %i.5331, 8
  %call.i273 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp.i274 = icmp slt i32 %call.i273, 0
  %add.ptr.i275 = getelementptr i8, ptr %call1.i.i.i, i32 %add60
  %sub.i276 = sub i32 12288, %add60
  br i1 %cmp.i274, label %if.then.i278, label %if.else.i280

if.then.i278:                                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275, i32 noundef %sub.i276, ptr noundef nonnull @.str.10, i32 noundef %mul) #5
  br label %for.body66.1

if.else.i280:                                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275, i32 noundef %sub.i276, ptr noundef nonnull @.str.11, i32 noundef %mul, i32 noundef %call.i273) #5
  br label %for.body66.1

for.body66.1:                                     ; preds = %if.else.i280, %if.then.i278
  %retval.0.i281 = phi i32 [ %call1.i277, %if.then.i278 ], [ %call4.i279, %if.else.i280 ]
  %add68 = add i32 %retval.0.i281, %add60
  %inc70 = or i32 %mul, 1
  %call.i273.1 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %inc70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.1)
  %cmp.i274.1 = icmp slt i32 %call.i273.1, 0
  %add.ptr.i275.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add68
  %sub.i276.1 = sub i32 12288, %add68
  br i1 %cmp.i274.1, label %if.then.i278.1, label %if.else.i280.1

if.else.i280.1:                                   ; preds = %for.body66.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.1, i32 noundef %sub.i276.1, ptr noundef nonnull @.str.11, i32 noundef %inc70, i32 noundef %call.i273.1) #5
  br label %sdw_sprintf.exit282.1

if.then.i278.1:                                   ; preds = %for.body66.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.1, i32 noundef %sub.i276.1, ptr noundef nonnull @.str.10, i32 noundef %inc70) #5
  br label %sdw_sprintf.exit282.1

sdw_sprintf.exit282.1:                            ; preds = %if.then.i278.1, %if.else.i280.1
  %retval.0.i281.1 = phi i32 [ %call1.i277.1, %if.then.i278.1 ], [ %call4.i279.1, %if.else.i280.1 ]
  %add68.1 = add i32 %retval.0.i281.1, %add68
  %inc70.1 = or i32 %mul, 2
  %call.i273.2 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %inc70.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.2)
  %cmp.i274.2 = icmp slt i32 %call.i273.2, 0
  %add.ptr.i275.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add68.1
  %sub.i276.2 = sub i32 12288, %add68.1
  br i1 %cmp.i274.2, label %if.then.i278.2, label %if.else.i280.2

if.else.i280.2:                                   ; preds = %sdw_sprintf.exit282.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.2, i32 noundef %sub.i276.2, ptr noundef nonnull @.str.11, i32 noundef %inc70.1, i32 noundef %call.i273.2) #5
  br label %sdw_sprintf.exit282.2

if.then.i278.2:                                   ; preds = %sdw_sprintf.exit282.1
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.2, i32 noundef %sub.i276.2, ptr noundef nonnull @.str.10, i32 noundef %inc70.1) #5
  br label %sdw_sprintf.exit282.2

sdw_sprintf.exit282.2:                            ; preds = %if.then.i278.2, %if.else.i280.2
  %retval.0.i281.2 = phi i32 [ %call1.i277.2, %if.then.i278.2 ], [ %call4.i279.2, %if.else.i280.2 ]
  %add68.2 = add i32 %retval.0.i281.2, %add68.1
  %inc70.2 = or i32 %mul, 3
  %call.i273.3 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %inc70.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.3)
  %cmp.i274.3 = icmp slt i32 %call.i273.3, 0
  %add.ptr.i275.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add68.2
  %sub.i276.3 = sub i32 12288, %add68.2
  br i1 %cmp.i274.3, label %if.then.i278.3, label %if.else.i280.3

if.else.i280.3:                                   ; preds = %sdw_sprintf.exit282.2
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.3, i32 noundef %sub.i276.3, ptr noundef nonnull @.str.11, i32 noundef %inc70.2, i32 noundef %call.i273.3) #5
  br label %sdw_sprintf.exit282.3

if.then.i278.3:                                   ; preds = %sdw_sprintf.exit282.2
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.3, i32 noundef %sub.i276.3, ptr noundef nonnull @.str.10, i32 noundef %inc70.2) #5
  br label %sdw_sprintf.exit282.3

sdw_sprintf.exit282.3:                            ; preds = %if.then.i278.3, %if.else.i280.3
  %retval.0.i281.3 = phi i32 [ %call1.i277.3, %if.then.i278.3 ], [ %call4.i279.3, %if.else.i280.3 ]
  %add68.3 = add i32 %retval.0.i281.3, %add68.2
  %inc70.3 = or i32 %mul, 4
  %call.i273.4 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %inc70.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.4)
  %cmp.i274.4 = icmp slt i32 %call.i273.4, 0
  %add.ptr.i275.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add68.3
  %sub.i276.4 = sub i32 12288, %add68.3
  br i1 %cmp.i274.4, label %if.then.i278.4, label %if.else.i280.4

if.else.i280.4:                                   ; preds = %sdw_sprintf.exit282.3
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.4, i32 noundef %sub.i276.4, ptr noundef nonnull @.str.11, i32 noundef %inc70.3, i32 noundef %call.i273.4) #5
  br label %sdw_sprintf.exit282.4

if.then.i278.4:                                   ; preds = %sdw_sprintf.exit282.3
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.4, i32 noundef %sub.i276.4, ptr noundef nonnull @.str.10, i32 noundef %inc70.3) #5
  br label %sdw_sprintf.exit282.4

sdw_sprintf.exit282.4:                            ; preds = %if.then.i278.4, %if.else.i280.4
  %retval.0.i281.4 = phi i32 [ %call1.i277.4, %if.then.i278.4 ], [ %call4.i279.4, %if.else.i280.4 ]
  %add68.4 = add i32 %retval.0.i281.4, %add68.3
  %inc70.4 = or i32 %mul, 5
  %call.i273.5 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %inc70.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273.5)
  %cmp.i274.5 = icmp slt i32 %call.i273.5, 0
  %add.ptr.i275.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add68.4
  %sub.i276.5 = sub i32 12288, %add68.4
  br i1 %cmp.i274.5, label %if.then.i278.5, label %if.else.i280.5

if.else.i280.5:                                   ; preds = %sdw_sprintf.exit282.4
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i279.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.5, i32 noundef %sub.i276.5, ptr noundef nonnull @.str.11, i32 noundef %inc70.4, i32 noundef %call.i273.5) #5
  br label %for.body82.preheader

if.then.i278.5:                                   ; preds = %sdw_sprintf.exit282.4
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i277.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i275.5, i32 noundef %sub.i276.5, ptr noundef nonnull @.str.10, i32 noundef %inc70.4) #5
  br label %for.body82.preheader

for.body82.preheader:                             ; preds = %if.then.i278.5, %if.else.i280.5
  %retval.0.i281.5 = phi i32 [ %call1.i277.5, %if.then.i278.5 ], [ %call4.i279.5, %if.else.i280.5 ]
  %add68.5 = add i32 %retval.0.i281.5, %add68.4
  %add.ptr72 = getelementptr i8, ptr %call1.i.i.i, i32 %add68.5
  %sub73 = sub i32 12288, %add68.5
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72, i32 noundef %sub73, ptr noundef nonnull @.str.6) #5
  %add77 = or i32 %mul, 32
  %add75 = add i32 %call74, %add68.5
  br label %for.body82

for.body82:                                       ; preds = %sdw_sprintf.exit292.for.body82_crit_edge, %for.body82.preheader
  %j.1323 = phi i32 [ %inc86, %sdw_sprintf.exit292.for.body82_crit_edge ], [ %add77, %for.body82.preheader ]
  %ret.7322 = phi i32 [ %add84, %sdw_sprintf.exit292.for.body82_crit_edge ], [ %add75, %for.body82.preheader ]
  %call.i283 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %j.1323) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %cmp.i284 = icmp slt i32 %call.i283, 0
  %add.ptr.i285 = getelementptr i8, ptr %call1.i.i.i, i32 %ret.7322
  %sub.i286 = sub i32 12288, %ret.7322
  br i1 %cmp.i284, label %if.then.i288, label %if.else.i290

if.then.i288:                                     ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i287 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i285, i32 noundef %sub.i286, ptr noundef nonnull @.str.10, i32 noundef %j.1323) #5
  br label %sdw_sprintf.exit292

if.else.i290:                                     ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i289 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i285, i32 noundef %sub.i286, ptr noundef nonnull @.str.11, i32 noundef %j.1323, i32 noundef %call.i283) #5
  br label %sdw_sprintf.exit292

sdw_sprintf.exit292:                              ; preds = %if.else.i290, %if.then.i288
  %retval.0.i291 = phi i32 [ %call1.i287, %if.then.i288 ], [ %call4.i289, %if.else.i290 ]
  %add84 = add i32 %retval.0.i291, %ret.7322
  %inc86 = add nuw nsw i32 %j.1323, 1
  %exitcond333 = icmp eq i32 %inc86, %indvars.iv
  br i1 %exitcond333, label %for.body98.preheader, label %sdw_sprintf.exit292.for.body82_crit_edge

sdw_sprintf.exit292.for.body82_crit_edge:         ; preds = %sdw_sprintf.exit292
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body82

for.body98.preheader:                             ; preds = %sdw_sprintf.exit292
  %add.ptr88 = getelementptr i8, ptr %call1.i.i.i, i32 %add84
  %sub89 = sub i32 12288, %add84
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.7) #5
  %add93 = or i32 %mul, 48
  %add91 = add i32 %call90, %add84
  br label %for.body98

for.body98:                                       ; preds = %sdw_sprintf.exit302.for.body98_crit_edge, %for.body98.preheader
  %j.2327 = phi i32 [ %inc102, %sdw_sprintf.exit302.for.body98_crit_edge ], [ %add93, %for.body98.preheader ]
  %ret.8326 = phi i32 [ %add100, %sdw_sprintf.exit302.for.body98_crit_edge ], [ %add91, %for.body98.preheader ]
  %call.i293 = tail call i32 @sdw_read(ptr noundef %1, i32 noundef %j.2327) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %cmp.i294 = icmp slt i32 %call.i293, 0
  %add.ptr.i295 = getelementptr i8, ptr %call1.i.i.i, i32 %ret.8326
  %sub.i296 = sub i32 12288, %ret.8326
  br i1 %cmp.i294, label %if.then.i298, label %if.else.i300

if.then.i298:                                     ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i297 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i295, i32 noundef %sub.i296, ptr noundef nonnull @.str.10, i32 noundef %j.2327) #5
  br label %sdw_sprintf.exit302

if.else.i300:                                     ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i299 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i295, i32 noundef %sub.i296, ptr noundef nonnull @.str.11, i32 noundef %j.2327, i32 noundef %call.i293) #5
  br label %sdw_sprintf.exit302

sdw_sprintf.exit302:                              ; preds = %if.else.i300, %if.then.i298
  %retval.0.i301 = phi i32 [ %call1.i297, %if.then.i298 ], [ %call4.i299, %if.else.i300 ]
  %add100 = add i32 %retval.0.i301, %ret.8326
  %inc102 = add nuw nsw i32 %j.2327, 1
  %exitcond336 = icmp eq i32 %inc102, %indvars.iv334
  br i1 %exitcond336, label %for.inc104, label %sdw_sprintf.exit302.for.body98_crit_edge

sdw_sprintf.exit302.for.body98_crit_edge:         ; preds = %sdw_sprintf.exit302
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98

for.inc104:                                       ; preds = %sdw_sprintf.exit302
  %inc105 = add nuw nsw i32 %i.5331, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 256
  %indvars.iv.next335 = add nuw nsw i32 %indvars.iv334, 256
  %exitcond337.not = icmp eq i32 %inc105, 15
  br i1 %exitcond337.not, label %for.end106, label %for.inc104.for.body56_crit_edge

for.inc104.for.body56_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body56

for.end106:                                       ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s_file, ptr noundef nonnull @.str.1, ptr noundef nonnull %call1.i.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end106, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end106 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/debugfs.c", i32 22, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/debugfs.c", i32 130, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/debugfs.c", i32 133, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soundwire/debugfs.c", i32 145, i32 40}
!8 = !{ptr @sdw_debugfs_root, !9, !"sdw_debugfs_root", i1 false, i1 false}
!9 = !{!"../drivers/soundwire/debugfs.c", i32 12, i32 23}
!10 = !{ptr @sdw_slave_reg_fops, !11, !"sdw_slave_reg_fops", i1 false, i1 false}
!11 = !{!"../drivers/soundwire/debugfs.c", i32 119, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soundwire/debugfs.c", i32 58, i32 31}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soundwire/debugfs.c", i32 61, i32 44}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/debugfs.c", i32 66, i32 44}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soundwire/debugfs.c", i32 72, i32 44}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soundwire/debugfs.c", i32 80, i32 44}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soundwire/debugfs.c", i32 97, i32 45}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soundwire/debugfs.c", i32 41, i32 45}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soundwire/debugfs.c", i32 44, i32 5}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
