; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_gpio_func = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_quirk = type { i8, i8 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_gpio_ntfy_rep = type { i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_gpio_ntfy_req = type { i8, i8 }

@nvkm_gpio = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_gpio_dtor, ptr null, ptr null, ptr null, ptr @nvkm_gpio_init, ptr @nvkm_gpio_fini, ptr @nvkm_gpio_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_gpio_intr_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_gpio_intr_ctor, ptr null, ptr @nvkm_gpio_intr_init, ptr @nvkm_gpio_intr_fini }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NvPowerChecks\00", [18 x i8] zeroinitializer }, align 32
@power_checks = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 76, i32 121], [20 x i8] zeroinitializer }, align 32
@nvkm_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s: GPU is missing power, check its power cables.  Boot with nouveau.config=NvPowerChecks=0 to disable.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_gpio_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_gpio_init._entry_ptr = internal global ptr @nvkm_gpio_init._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"nvkm_gpio\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 235, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"nvkm_gpio_intr_func\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 141, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 203, i32 43 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"power_checks\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 186, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 214, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nvkm_gpio_init._entry, ptr @nvkm_gpio_init._entry_ptr, ptr @nvkm_gpio, ptr @nvkm_gpio_intr_func, ptr @.str, ptr @power_checks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpio_intr_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_checks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_gpio_reset(ptr noundef %gpio, i8 noundef zeroext %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %reset = getelementptr inbounds %struct.nvkm_gpio_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %gpio, i8 noundef zeroext %func) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_find(ptr nocapture noundef readonly %gpio, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #5
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ver, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #5
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %len, align 1, !annotation !29
  %6 = and i8 %line, %tag
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i16 @dcb_gpio_match(ptr noundef %3, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line, ptr noundef nonnull %ver, ptr noundef nonnull %len, ptr noundef %func) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %quirk = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quirk, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.end8
  %tv_gpio = getelementptr inbounds %struct.nvkm_device_quirk, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tv_gpio to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tv_gpio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %tag)
  %cmp16 = icmp eq i8 %tag, 12
  %or.cond36 = and i1 %cmp16, %tobool13.not
  br i1 %or.cond36, label %if.then18, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %func, align 1
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %func, i32 1
  %13 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %func, i32 2
  %14 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %func, i32 3
  %15 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %func, i32 4
  %16 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %land.lhs.true10.cleanup_crit_edge ], [ -2, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_match(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_set(ptr noundef %gpio, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %ver.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #5
  %0 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 3
  %device1.i = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %func, i32 255, i32 5)
  %5 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #5
  %9 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ver.i, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #5
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %len.i, align 1, !annotation !29
  %11 = and i8 %line, %tag
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %entry.nvkm_gpio_find.exit.thread_crit_edge, label %if.end.i

entry.nvkm_gpio_find.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call zeroext i16 @dcb_gpio_match(ptr noundef %8, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line, ptr noundef nonnull %ver.i, ptr noundef nonnull %len.i, ptr noundef nonnull %func) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end8.i:                                        ; preds = %if.end.i
  %quirk.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %quirk.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, label %land.lhs.true10.i

if.end8.i.nvkm_gpio_find.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

land.lhs.true10.i:                                ; preds = %if.end8.i
  %tv_gpio.i = getelementptr inbounds %struct.nvkm_device_quirk, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tv_gpio.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tv_gpio.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not.i = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %tag)
  %cmp16.i = icmp eq i8 %tag, 12
  %or.cond36.i = and i1 %cmp16.i, %tobool13.not.i
  br i1 %or.cond36.i, label %if.then18.i, label %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge

land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.then18.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %func, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %2, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %3, align 1
  br label %if.then

nvkm_gpio_find.exit.thread:                       ; preds = %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge, %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, %entry.nvkm_gpio_find.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge ], [ -2, %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge ], [ -22, %entry.nvkm_gpio_find.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  br label %if.end

if.then:                                          ; preds = %if.then18.i, %if.end.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  %arrayidx = getelementptr %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 %state
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %and = lshr i32 %conv, 1
  %and.lobit = and i32 %and, 1
  %and5 = and i32 %conv, 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %0, align 1
  %conv12 = zext i8 %25 to i32
  %26 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpio, align 4
  %drive.i = getelementptr inbounds %struct.nvkm_gpio_func, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drive.i, align 4
  %call.i18 = call i32 %29(ptr noundef %gpio, i32 noundef %conv12, i32 noundef %and.lobit, i32 noundef %and5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %nvkm_gpio_find.exit.thread
  %ret.0 = phi i32 [ %call.i18, %if.then ], [ %retval.0.i.ph, %nvkm_gpio_find.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_get(ptr noundef %gpio, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line) local_unnamed_addr #0 align 64 {
entry:
  %ver.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #5
  %0 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 3
  %device1.i = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %func, i32 255, i32 5)
  %5 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1.i, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #5
  %9 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ver.i, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #5
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %len.i, align 1, !annotation !29
  %11 = and i8 %line, %tag
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %entry.nvkm_gpio_find.exit.thread_crit_edge, label %if.end.i

entry.nvkm_gpio_find.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call zeroext i16 @dcb_gpio_match(ptr noundef %8, i32 noundef %idx, i8 noundef zeroext %tag, i8 noundef zeroext %line, ptr noundef nonnull %ver.i, ptr noundef nonnull %len.i, ptr noundef nonnull %func) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end8.i:                                        ; preds = %if.end.i
  %quirk.i = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %quirk.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, label %land.lhs.true10.i

if.end8.i.nvkm_gpio_find.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

land.lhs.true10.i:                                ; preds = %if.end8.i
  %tv_gpio.i = getelementptr inbounds %struct.nvkm_device_quirk, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tv_gpio.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tv_gpio.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not.i = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %tag)
  %cmp16.i = icmp eq i8 %tag, 12
  %or.cond36.i = and i1 %cmp16.i, %tobool13.not.i
  br i1 %or.cond36.i, label %if.then18.i, label %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge

land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.then18.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %func, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %2, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %3, align 1
  br label %if.then

nvkm_gpio_find.exit.thread:                       ; preds = %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge, %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, %entry.nvkm_gpio_find.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge ], [ -2, %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge ], [ -22, %entry.nvkm_gpio_find.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  br label %if.end9

if.then:                                          ; preds = %if.then18.i, %if.end.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpio, align 4
  %sense.i = getelementptr inbounds %struct.nvkm_gpio_func, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sense.i, align 4
  %call.i15 = call i32 %27(ptr noundef %gpio, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i15)
  %cmp3 = icmp sgt i32 %call.i15, -1
  br i1 %cmp3, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %30 = and i8 %29, 1
  %and = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i15, i32 %and)
  %cmp7 = icmp eq i32 %call.i15, %and
  %conv8 = zext i1 %cmp7 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then.if.end9_crit_edge, %nvkm_gpio_find.exit.thread
  %ret.0 = phi i32 [ %conv8, %if.then5 ], [ %call.i15, %if.then.if.end9_crit_edge ], [ %retval.0.i.ph, %nvkm_gpio_find.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpio_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #8
  %1 = ptrtoint ptr %pgpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgpio, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %subdev = getelementptr inbounds %struct.nvkm_gpio, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_gpio, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #5
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %func, align 4
  %event = getelementptr inbounds %struct.nvkm_gpio, ptr %call7.i.i, i32 0, i32 2
  %call2 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_gpio_intr_func, i32 noundef 2, i32 noundef %4, ptr noundef %event) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_gpio_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %event = getelementptr i8, ptr %subdev, i32 52
  tail call void @nvkm_event_fini(ptr noundef %event) #5
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_init(ptr noundef %subdev) #0 align 64 {
entry:
  %ver.i.i = alloca i8, align 1
  %len.i.i = alloca i8, align 1
  %func.i = alloca %struct.dcb_gpio_func, align 1
  %ver.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #5
  %0 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 3
  %device = getelementptr %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %4 = call ptr @memset(ptr %func, i32 255, i32 5)
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgopt, align 4
  %call1 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %8, ptr noundef nonnull @.str, i1 noundef zeroext true) #5
  br i1 %call1, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %9 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func.i, i32 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.038 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @power_checks, i32 0, i32 %i.038
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %14 to i8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bios2.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #5
  %19 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %ver.i, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #5
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %len.i, align 1, !annotation !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %21 = icmp eq i8 %conv, -1
  br i1 %21, label %for.body.nvkm_gpio_find.exit.thread_crit_edge, label %if.end.i

for.body.nvkm_gpio_find.exit.thread_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.end.i:                                         ; preds = %for.body
  %call.i = call zeroext i16 @dcb_gpio_match(ptr noundef %18, i32 noundef 0, i8 noundef zeroext %conv, i8 noundef zeroext -1, ptr noundef nonnull %ver.i, ptr noundef nonnull %len.i, ptr noundef nonnull %func) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end8.i:                                        ; preds = %if.end.i
  %quirk.i = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %quirk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %quirk.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, label %land.lhs.true10.i

if.end8.i.nvkm_gpio_find.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

land.lhs.true10.i:                                ; preds = %if.end8.i
  %tv_gpio.i = getelementptr inbounds %struct.nvkm_device_quirk, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %tv_gpio.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tv_gpio.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not.i = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv)
  %cmp16.i = icmp eq i8 %conv, 12
  %or.cond36.i = and i1 %cmp16.i, %tobool13.not.i
  br i1 %or.cond36.i, label %if.then18.i, label %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge

land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread

if.then18.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 12, ptr %func, align 1
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %0, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %1, align 1
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %2, align 1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %3, align 1
  br label %if.end6

nvkm_gpio_find.exit.thread:                       ; preds = %land.lhs.true10.i.nvkm_gpio_find.exit.thread_crit_edge, %if.end8.i.nvkm_gpio_find.exit.thread_crit_edge, %for.body.nvkm_gpio_find.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  br label %for.inc

if.end6:                                          ; preds = %if.then18.i, %if.end.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #5
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %func, align 1
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func.i) #5
  %35 = call ptr @memset(ptr %func.i, i32 255, i32 5)
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %bios2.i.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %bios2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i.i) #5
  %40 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %ver.i.i, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i.i) #5
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %len.i.i, align 1, !annotation !29
  %42 = and i8 %34, %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %if.end6.nvkm_gpio_find.exit.thread.i_crit_edge, label %if.end.i.i

if.end6.nvkm_gpio_find.exit.thread.i_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread.i

if.end.i.i:                                       ; preds = %if.end6
  %call.i.i = call zeroext i16 @dcb_gpio_match(ptr noundef %39, i32 noundef 0, i8 noundef zeroext %32, i8 noundef zeroext %34, ptr noundef nonnull %ver.i.i, ptr noundef nonnull %len.i.i, ptr noundef nonnull %func.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %quirk.i.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 1
  %44 = ptrtoint ptr %quirk.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %quirk.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %45, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.nvkm_gpio_find.exit.thread.i_crit_edge, label %land.lhs.true10.i.i

if.end8.i.i.nvkm_gpio_find.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread.i

land.lhs.true10.i.i:                              ; preds = %if.end8.i.i
  %tv_gpio.i.i = getelementptr inbounds %struct.nvkm_device_quirk, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %tv_gpio.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tv_gpio.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool13.not.i.i = icmp ne i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %32)
  %cmp16.i.i = icmp eq i8 %32, 12
  %or.cond36.i.i = and i1 %cmp16.i.i, %tobool13.not.i.i
  br i1 %or.cond36.i.i, label %if.then18.i.i, label %land.lhs.true10.i.i.nvkm_gpio_find.exit.thread.i_crit_edge

land.lhs.true10.i.i.nvkm_gpio_find.exit.thread.i_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_find.exit.thread.i

if.then18.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %func.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 12, ptr %func.i, align 1
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %9, align 1
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %10, align 1
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %11, align 1
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %12, align 1
  br label %if.then.i

nvkm_gpio_find.exit.thread.i:                     ; preds = %land.lhs.true10.i.i.nvkm_gpio_find.exit.thread.i_crit_edge, %if.end8.i.i.nvkm_gpio_find.exit.thread.i_crit_edge, %if.end6.nvkm_gpio_find.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i.i) #5
  br label %nvkm_gpio_get.exit.thread

if.then.i:                                        ; preds = %if.then18.i.i, %if.end.i.i.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i.i) #5
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %9, align 1
  %conv.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %sense.i.i = getelementptr inbounds %struct.nvkm_gpio_func, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sense.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sense.i.i, align 4
  %call.i15.i = call i32 %58(ptr noundef %add.ptr, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i15.i)
  %cmp3.i = icmp sgt i32 %call.i15.i, -1
  br i1 %cmp3.i, label %nvkm_gpio_get.exit, label %if.then.i.nvkm_gpio_get.exit.thread_crit_edge

if.then.i.nvkm_gpio_get.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_gpio_get.exit.thread

nvkm_gpio_get.exit.thread:                        ; preds = %if.then.i.nvkm_gpio_get.exit.thread_crit_edge, %nvkm_gpio_find.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func.i) #5
  br label %do.body

nvkm_gpio_get.exit:                               ; preds = %if.then.i
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %11, align 1
  %61 = and i8 %60, 1
  %and.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i15.i, i32 %and.i)
  %cmp7.i.not = icmp eq i32 %call.i15.i, %and.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func.i) #5
  br i1 %cmp7.i.not, label %nvkm_gpio_get.exit.do.body_crit_edge, label %nvkm_gpio_get.exit.for.inc_crit_edge

nvkm_gpio_get.exit.for.inc_crit_edge:             ; preds = %nvkm_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

nvkm_gpio_get.exit.do.body_crit_edge:             ; preds = %nvkm_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %nvkm_gpio_get.exit.do.body_crit_edge, %nvkm_gpio_get.exit.thread
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp13.not = icmp eq i32 %63, 0
  br i1 %cmp13.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef %name) #9
  br label %cleanup

for.inc:                                          ; preds = %nvkm_gpio_get.exit.for.inc_crit_edge, %nvkm_gpio_find.exit.thread
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sh_prom = zext i32 %3 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %4 = trunc i64 %notmask to i32
  %conv = xor i32 %4, -1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %mask, align 4
  %intr_mask = getelementptr inbounds %struct.nvkm_gpio_func, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr_mask, align 4
  tail call void %7(ptr noundef %add.ptr, i32 noundef 3, i32 noundef %conv, i32 noundef 0) #5
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %intr_stat = getelementptr inbounds %struct.nvkm_gpio_func, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %intr_stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intr_stat, align 4
  call void %11(ptr noundef %add.ptr, ptr noundef nonnull %mask, ptr noundef nonnull %mask) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr(ptr noundef %subdev) #0 align 64 {
entry:
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %rep = alloca %struct.nvkm_gpio_ntfy_rep, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi) #5
  %0 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hi, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo) #5
  %1 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lo, align 4, !annotation !29
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %intr_stat = getelementptr inbounds %struct.nvkm_gpio_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intr_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_stat, align 4
  call void %5(ptr noundef %add.ptr, ptr noundef nonnull %hi, ptr noundef nonnull %lo) #5
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hi, align 4
  %8 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lo, align 4
  %or22 = or i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22)
  %tobool.not23 = icmp eq i32 %or22, 0
  br i1 %tobool.not23, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %event = getelementptr i8, ptr %subdev, i32 52
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %10 = phi i32 [ %9, %land.rhs.lr.ph ], [ %24, %for.body.land.rhs_crit_edge ]
  %11 = phi i32 [ %7, %land.rhs.lr.ph ], [ %22, %for.body.land.rhs_crit_edge ]
  %i.024 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.body.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %15)
  %cmp = icmp ult i32 %i.024, %15
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rep) #5
  %16 = lshr i32 %11, %i.024
  %17 = and i32 %16, 1
  %18 = lshr i32 %10, %i.024
  %19 = shl i32 %18, 1
  %mul11 = and i32 %19, 2
  %or12 = or i32 %mul11, %17
  %conv = trunc i32 %or12 to i8
  %20 = ptrtoint ptr %rep to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %rep, align 1
  call void @nvkm_event_send(ptr noundef %event, i32 noundef %or12, i32 noundef %i.024, ptr noundef nonnull %rep, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rep) #5
  %inc = add nuw i32 %i.024, 1
  %21 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hi, align 4
  %23 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lo, align 4
  %or = or i32 %24, %22
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpio_intr_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp.not = icmp eq i32 %size, 2
  br i1 %cmp.not, label %if.then20.critedge, label %do.end, !prof !30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.then20.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size21 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %size21, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %conv = zext i8 %2 to i32
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %3 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %types, align 4
  %line = getelementptr inbounds %struct.nvkm_gpio_ntfy_req, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line, align 1
  %conv22 = zext i8 %5 to i32
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv22, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20.critedge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then20.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr_init(ptr noundef %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr_mask = getelementptr inbounds %struct.nvkm_gpio_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_mask, align 4
  %shl = shl nuw i32 1, %index
  tail call void %3(ptr noundef %add.ptr, i32 noundef %type, i32 noundef %shl, i32 noundef %shl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpio_intr_fini(ptr noundef %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr_mask = getelementptr inbounds %struct.nvkm_gpio_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_mask, align 4
  %shl = shl nuw i32 1, %index
  tail call void %3(ptr noundef %add.ptr, i32 noundef %type, i32 noundef %shl, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @nvkm_gpio, !1, !"nvkm_gpio", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 235, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 203, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 214, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvkm_gpio_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_gpio_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 177, i32 12}
!14 = distinct !{null, !15, !"gpio_reset_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 175, i32 35}
!16 = !{ptr @power_checks, !17, !"power_checks", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 186, i32 32}
!18 = !{ptr @nvkm_gpio_intr_func, !19, !"nvkm_gpio_intr_func", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/base.c", i32 141, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 2000, i32 1}
