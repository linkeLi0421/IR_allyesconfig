; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_devfreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.55 }
%union.anon.55 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"operating-points-v2\00", [44 x i8] zeroinitializer }, align 32
@lima_devfreq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ldevfreq->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mali\00", [27 x i8] zeroinitializer }, align 32
@lima_devfreq_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @lima_devfreq_target, ptr @lima_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@lima_devfreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 158, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't initialize GPU devfreq\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lima_devfreq_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/lima/lima_devfreq.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_devfreq_init._entry_ptr = internal global ptr @lima_devfreq_init._entry, section ".printk_index", align 4
@lima_devfreq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 166, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register cooling device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lima_devfreq_init._entry_ptr.13 = internal global ptr @lima_devfreq_init._entry.10, section ".printk_index", align 4
@lima_devfreq_get_dev_status.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lima\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lima_devfreq_get_dev_status\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"busy %lu total %lu %lu %% freq %lu MHz\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 115, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 119, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 121, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 125, i32 58 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"lima_devfreq_profile\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 83, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 155, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 158, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 166, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [39 x i8] c"../drivers/gpu/drm/lima/lima_devfreq.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 75, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @lima_devfreq_init._entry, ptr @lima_devfreq_init._entry.10, ptr @lima_devfreq_init._entry_ptr, ptr @lima_devfreq_init._entry_ptr.13, ptr @.str, ptr @lima_devfreq_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lima_devfreq_profile, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_devfreq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_devfreq_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_devfreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_devfreq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_devfreq_fini(ptr nocapture noundef %ldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq1 = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18
  %cooling = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %cooling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cooling, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_cooling_unregister(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cooling, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %devfreq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devfreq1, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ldev, align 8
  tail call void @devm_devfreq_remove_device(ptr noundef %6, ptr noundef nonnull %4) #4
  %7 = ptrtoint ptr %devfreq1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %devfreq1, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_devfreq_remove_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_init(ptr noundef %ldev) local_unnamed_addr #0 align 64 {
entry:
  %cur_freq = alloca i32, align 4
  %.compoundliteral = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 8
  %devfreq2 = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_freq) #4
  %call = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str) #4
  br i1 %call, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lima_devfreq_init.__key, i16 noundef signext 3) #4
  %call4 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %1, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.3, ptr %.compoundliteral, align 4
  %call7 = call i32 @devm_pm_opp_set_regulators(ptr noundef %1, ptr noundef nonnull %.compoundliteral, i32 noundef 1) #4
  %3 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %if.end6.cleanup_crit_edge [
    i32 0, label %if.end6.if.end12_crit_edge
    i32 -19, label %if.end6.if.end12_crit_edge78
  ]

if.end6.if.end12_crit_edge78:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.end6.if.end12_crit_edge78
  %call13 = call i32 @devm_pm_opp_of_add_table(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %busy_time.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 3
  %4 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i = call i64 @ktime_get() #4
  %time_last_update.i = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 5
  %5 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %clk_gpu = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 8
  %6 = ptrtoint ptr %clk_gpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_gpu, align 8
  %call17 = call i32 @clk_get_rate(ptr noundef %7) #4
  %8 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call17, ptr %cur_freq, align 4
  %call18 = call ptr @devfreq_recommended_opp(ptr noundef %1, ptr noundef nonnull %cur_freq, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_freq, align 4
  store i32 %11, ptr @lima_devfreq_profile, align 4
  call void @dev_pm_opp_put(ptr noundef %call18) #4
  %gov_data = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 2
  %12 = ptrtoint ptr %gov_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %gov_data, align 8
  %downdifferential = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 2, i32 1
  %13 = ptrtoint ptr %downdifferential to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %downdifferential, align 4
  %call25 = call ptr @devm_devfreq_add_device(ptr noundef %1, ptr noundef nonnull @lima_devfreq_profile, ptr noundef nonnull @.str.4, ptr noundef %gov_data) #4
  %cmp.i76 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %14 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %devfreq2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %devfreq2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call34 = call ptr @of_devfreq_cooling_register(ptr noundef %17, ptr noundef %call25) #4
  %cmp.i77 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.end39, label %if.else

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %cooling40 = getelementptr inbounds %struct.lima_device, ptr %ldev, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %cooling40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %cooling40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end39, %do.end30, %if.then20, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then20 ], [ %14, %do.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %do.body.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %do.end39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_freq) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_devfreq_cooling_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_devfreq_record_busy(ptr noundef %devfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call.i = tail call i64 @ktime_get() #4
  %time_last_update.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 5
  %2 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 6
  %4 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  %sub.i = sub i64 %call.i, %3
  %idle_time.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 4
  %busy_time.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 3
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %6 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %7
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %8 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %inc = add i32 %5, 1
  %9 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %busy_count.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_devfreq_record_idle(ptr noundef %devfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call.i = tail call i64 @ktime_get() #4
  %time_last_update.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 5
  %2 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 6
  %4 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  %sub.i = sub i64 %call.i, %3
  %idle_time.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 4
  %busy_time.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 3
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %6 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %7
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %8 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %dec = add i32 %5, -1
  %9 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp slt i32 %dec, 0
  br i1 %cmp6, label %do.end19, label %do.body2.if.end25_crit_edge, !prof !40

do.body2.if.end25_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.end19:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 200, i32 noundef 9, ptr noundef null) #4
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.body2.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_resume(ptr noundef %devfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %busy_time.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 3
  %2 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #4
  %time_last_update.i = getelementptr inbounds %struct.lima_devfreq, ptr %devfreq, i32 0, i32 5
  %3 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i, ptr %time_last_update.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  %4 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devfreq, align 8
  %call8 = tail call i32 @devfreq_resume_device(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.body2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_suspend(ptr nocapture noundef readonly %devfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @devfreq_suspend_device(ptr noundef nonnull %1) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_devfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_pm_opp_put(ptr noundef %call) #4
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %freq, align 4
  %call3 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_devfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_gpu = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk_gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_gpu, align 8
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #4
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 2
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %current_frequency, align 4
  %lock = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call.i = tail call i64 @ktime_get() #4
  %time_last_update.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18, i32 5
  %5 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18, i32 6
  %7 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  %sub.i = sub i64 %call.i, %6
  %idle_time.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18, i32 4
  %busy_time.i = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 18, i32 3
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %9 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %10
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %11 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %12 = ptrtoint ptr %busy_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %busy_time.i, align 8
  %14 = ptrtoint ptr %idle_time.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %idle_time.i, align 8
  %add = add i64 %15, %13
  %conv9 = trunc i64 %add to i32
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9, ptr %status, align 4
  %17 = load i64, ptr %busy_time.i, align 8
  %conv12 = trunc i64 %17 to i32
  %busy_time13 = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 1
  %18 = ptrtoint ptr %busy_time13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv12, ptr %busy_time13, align 4
  %19 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i47 = tail call i64 @ktime_get() #4
  %20 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i47, ptr %time_last_update.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lima_devfreq_get_dev_status.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lima_devfreq_get_dev_status, %if.then)) #4
          to label %do.end30 [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %busy_time13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busy_time13, align 4
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %div = udiv i32 %26, 100
  %div25 = udiv i32 %24, %div
  %27 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_frequency, align 4
  %div28 = udiv i32 %28, 1000000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lima_devfreq_get_dev_status.__UNIQUE_ID_ddebug204, ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %24, i32 noundef %26, i32 noundef %div25, i32 noundef %div28) #4
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 115, i32 36}
!2 = !{ptr @lima_devfreq_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 119, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 121, i32 37}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 125, i32 58}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 155, i32 8}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 158, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lima_devfreq_init._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @lima_devfreq_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 166, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lima_devfreq_init._entry.10, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @lima_devfreq_init._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lima_devfreq_profile, !25, !"lima_devfreq_profile", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 83, i32 35}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/lima/lima_devfreq.c", i32 75, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lima_devfreq_get_dev_status.__UNIQUE_ID_ddebug204, !27, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2148725109, i64 2148725114, i64 2148725127, i64 2148725171, i64 2148725205, i64 2148725226}
