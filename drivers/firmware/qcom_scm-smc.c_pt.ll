; ModuleID = '/llk/IR_all_yes/drivers/firmware/qcom_scm-smc.c_pt.bc'
source_filename = "../drivers/firmware/qcom_scm-smc.c"
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
%struct.arm_smccc_quirk = type { i32, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.qcom_scm_desc = type { i32, i32, i32, [10 x i64], i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qcom_scm_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qcom_scm_lock, i64 52), ptr getelementptr (i8, ptr @qcom_scm_lock, i64 52) }, ptr @qcom_scm_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_scm_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_scm_lock\00", [18 x i8] zeroinitializer }, align 32
@switch.table.__scm_smc_call = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 -16, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -12, i32 -95, i32 -22, i32 -22, i32 -5, i32 0], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 326, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"qcom_scm_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [35 x i8] c"../drivers/firmware/qcom_scm-smc.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 25, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"switch.table.__scm_smc_call\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @qcom_scm_lock, ptr @.str.2, ptr @.str.3, ptr @switch.table.__scm_smc_call], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_scm_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__scm_smc_call to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__scm_smc_call(ptr noundef %dev, ptr nocapture noundef readonly %desc, i32 noundef %qcom_convention, ptr noundef writeonly %res, i1 noundef zeroext %atomic) local_unnamed_addr #0 align 64 {
entry:
  %quirk.i134 = alloca %struct.arm_smccc_quirk, align 8
  %quirk.i = alloca %struct.arm_smccc_quirk, align 8
  %smc_res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arginfo = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %arginfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arginfo, align 8
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qcom_convention)
  %cmp = icmp eq i32 %qcom_convention, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res) #6
  %2 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 1
  %3 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 2
  %4 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 3
  %shl = select i1 %atomic, i32 -2147483648, i32 0
  %shl4 = select i1 %cmp, i32 0, i32 1073741824
  %owner = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 4
  %5 = call ptr @memset(ptr %smc_res, i32 255, i32 16)
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %owner, align 8
  %and5 = shl i32 %7, 24
  %shl6 = and i32 %and5, 1056964608
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 8
  %and8 = shl i32 %9, 8
  %shl9 = and i32 %and8, 65280
  %cmd = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  %and10 = and i32 %11, 255
  %or11 = or i32 %shl, %shl4
  %or = or i32 %or11, %shl6
  %or7 = or i32 %or, %and10
  %or13 = or i32 %or7, %shl9
  %arrayidx19 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx19, align 8
  %conv = trunc i64 %13 to i32
  %arrayidx19.1 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx19.1, align 8
  %conv.1 = trunc i64 %15 to i32
  %arrayidx19.2 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx19.2, align 8
  %conv.2 = trunc i64 %17 to i32
  %arrayidx19.3 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx19.3, align 8
  %conv.3 = trunc i64 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp22 = icmp ugt i32 %and, 4
  br i1 %cmp22, label %if.then, label %entry.if.end66_crit_edge, !prof !17

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then:                                          ; preds = %entry
  %cond = select i1 %atomic, i32 2592, i32 3264
  %call = tail call fastcc noalias ptr @kzalloc(i32 noundef %cond)
  %tobool28.not = icmp eq ptr %call, null
  br i1 %tobool28.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx19.3, align 8
  br i1 %cmp, label %for.body37.preheader, label %for.body50.preheader

for.body50.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %call, align 8
  %arrayidx53.1 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx53.1, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %arrayidx54.1 = getelementptr i64, ptr %call, i32 1
  %27 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx54.1, align 8
  %arrayidx53.2 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx53.2, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %arrayidx54.2 = getelementptr i64, ptr %call, i32 2
  %31 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx54.2, align 8
  %arrayidx53.3 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 6
  %32 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx53.3, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %arrayidx54.3 = getelementptr i64, ptr %call, i32 3
  %35 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx54.3, align 8
  %arrayidx53.4 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx53.4, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %arrayidx54.4 = getelementptr i64, ptr %call, i32 4
  %39 = ptrtoint ptr %arrayidx54.4 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx54.4, align 8
  %arrayidx53.5 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %arrayidx53.5 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx53.5, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %arrayidx54.5 = getelementptr i64, ptr %call, i32 5
  %43 = ptrtoint ptr %arrayidx54.5 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx54.5, align 8
  %arrayidx53.6 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 9
  %44 = ptrtoint ptr %arrayidx53.6 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx53.6, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  %arrayidx54.6 = getelementptr i64, ptr %call, i32 6
  %47 = ptrtoint ptr %arrayidx54.6 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx54.6, align 8
  br label %if.end58

for.body37.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv41 = trunc i64 %21 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv41)
  %49 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %call, align 4
  %arrayidx40.1 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx40.1, align 8
  %conv41.1 = trunc i64 %51 to i32
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv41.1)
  %arrayidx42.1 = getelementptr i32, ptr %call, i32 1
  %53 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx42.1, align 4
  %arrayidx40.2 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 5
  %54 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx40.2, align 8
  %conv41.2 = trunc i64 %55 to i32
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv41.2)
  %arrayidx42.2 = getelementptr i32, ptr %call, i32 2
  %57 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx42.2, align 4
  %arrayidx40.3 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx40.3, align 8
  %conv41.3 = trunc i64 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv41.3)
  %arrayidx42.3 = getelementptr i32, ptr %call, i32 3
  %61 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx42.3, align 4
  %arrayidx40.4 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 7
  %62 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx40.4, align 8
  %conv41.4 = trunc i64 %63 to i32
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv41.4)
  %arrayidx42.4 = getelementptr i32, ptr %call, i32 4
  %65 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx42.4, align 4
  %arrayidx40.5 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx40.5, align 8
  %conv41.5 = trunc i64 %67 to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv41.5)
  %arrayidx42.5 = getelementptr i32, ptr %call, i32 5
  %69 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx42.5, align 4
  %arrayidx40.6 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 9
  %70 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx40.6, align 8
  %conv41.6 = trunc i64 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv41.6)
  %arrayidx42.6 = getelementptr i32, ptr %call, i32 6
  %73 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx42.6, align 4
  br label %if.end58

if.end58:                                         ; preds = %for.body37.preheader, %for.body50.preheader
  %call59 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef nonnull %call)
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59)
  %cmp.i.not = icmp eq i32 %call59, -1
  br i1 %cmp.i.not, label %if.then62, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

if.end66:                                         ; preds = %if.end58.if.end66_crit_edge, %entry.if.end66_crit_edge
  %smc.sroa.18.0 = phi i32 [ %conv.3, %entry.if.end66_crit_edge ], [ %call59, %if.end58.if.end66_crit_edge ]
  %args_phys.0 = phi i32 [ 0, %entry.if.end66_crit_edge ], [ %call59, %if.end58.if.end66_crit_edge ]
  %args_virt.0 = phi ptr [ null, %entry.if.end66_crit_edge ], [ %call, %if.end58.if.end66_crit_edge ]
  %alloc_len.0 = phi i32 [ -1, %entry.if.end66_crit_edge ], [ 56, %if.end58.if.end66_crit_edge ]
  br i1 %atomic, label %if.then.i, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end66
  %state.i = getelementptr inbounds %struct.arm_smccc_quirk, ptr %quirk.i, i32 0, i32 1
  br label %do.body.i

if.then.i:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %quirk.i134) #6
  %74 = ptrtoint ptr %quirk.i134 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 4294967296, ptr %quirk.i134, align 8
  %state.i135 = getelementptr inbounds %struct.arm_smccc_quirk, ptr %quirk.i134, i32 0, i32 1
  call void @__arm_smccc_smc(i32 noundef %or13, i32 noundef %1, i32 noundef %conv, i32 noundef %conv.1, i32 noundef %conv.2, i32 noundef %smc.sroa.18.0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef nonnull %quirk.i134) #6
  %75 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %smc_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.peel.i142 = icmp eq i32 %76, 1
  br i1 %cmp.peel.i142, label %if.then.i.do.body.i144_crit_edge, label %if.then.i.__scm_smc_do_quirk.exit145_crit_edge

if.then.i.__scm_smc_do_quirk.exit145_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do_quirk.exit145

if.then.i.do.body.i144_crit_edge:                 ; preds = %if.then.i
  br label %do.body.i144

do.body.i144:                                     ; preds = %do.body.i144.do.body.i144_crit_edge, %if.then.i.do.body.i144_crit_edge
  %77 = ptrtoint ptr %state.i135 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i135, align 4
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %1, i32 noundef %conv, i32 noundef %conv.1, i32 noundef %conv.2, i32 noundef %smc.sroa.18.0, i32 noundef %78, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef nonnull %quirk.i134) #6
  %79 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %smc_res, align 4
  %cmp.i143 = icmp eq i32 %80, 1
  br i1 %cmp.i143, label %do.body.i144.do.body.i144_crit_edge, label %do.body.i144.__scm_smc_do_quirk.exit145_crit_edge, !llvm.loop !18

do.body.i144.__scm_smc_do_quirk.exit145_crit_edge: ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do_quirk.exit145

do.body.i144.do.body.i144_crit_edge:              ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i144

__scm_smc_do_quirk.exit145:                       ; preds = %do.body.i144.__scm_smc_do_quirk.exit145_crit_edge, %if.then.i.__scm_smc_do_quirk.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %quirk.i134) #6
  br label %__scm_smc_do.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.i.preheader
  %retry_count.0.i = phi i32 [ %inc.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  call void @mutex_lock_nested(ptr noundef nonnull @qcom_scm_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %quirk.i) #6
  %81 = ptrtoint ptr %quirk.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 4294967296, ptr %quirk.i, align 8
  call void @__arm_smccc_smc(i32 noundef %or13, i32 noundef %1, i32 noundef %conv, i32 noundef %conv.1, i32 noundef %conv.2, i32 noundef %smc.sroa.18.0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef nonnull %quirk.i) #6
  %82 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smc_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.peel.i = icmp eq i32 %83, 1
  br i1 %cmp.peel.i, label %do.body.i.do.body.i133_crit_edge, label %do.body.i.__scm_smc_do_quirk.exit_crit_edge

do.body.i.__scm_smc_do_quirk.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do_quirk.exit

do.body.i.do.body.i133_crit_edge:                 ; preds = %do.body.i
  br label %do.body.i133

do.body.i133:                                     ; preds = %do.body.i133.do.body.i133_crit_edge, %do.body.i.do.body.i133_crit_edge
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state.i, align 4
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %1, i32 noundef %conv, i32 noundef %conv.1, i32 noundef %conv.2, i32 noundef %smc.sroa.18.0, i32 noundef %85, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef nonnull %quirk.i) #6
  %86 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %smc_res, align 4
  %cmp.i132 = icmp eq i32 %87, 1
  br i1 %cmp.i132, label %do.body.i133.do.body.i133_crit_edge, label %do.body.i133.__scm_smc_do_quirk.exit_crit_edge, !llvm.loop !18

do.body.i133.__scm_smc_do_quirk.exit_crit_edge:   ; preds = %do.body.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do_quirk.exit

do.body.i133.do.body.i133_crit_edge:              ; preds = %do.body.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i133

__scm_smc_do_quirk.exit:                          ; preds = %do.body.i133.__scm_smc_do_quirk.exit_crit_edge, %do.body.i.__scm_smc_do_quirk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %quirk.i) #6
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #6
  %88 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %smc_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %89)
  %cmp.i131 = icmp ne i32 %89, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %retry_count.0.i)
  %cmp2.i = icmp ugt i32 %retry_count.0.i, 20
  %or.cond.i = select i1 %cmp.i131, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %__scm_smc_do_quirk.exit.__scm_smc_do.exit_crit_edge, label %do.cond.i

__scm_smc_do_quirk.exit.__scm_smc_do.exit_crit_edge: ; preds = %__scm_smc_do_quirk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do.exit

do.cond.i:                                        ; preds = %__scm_smc_do_quirk.exit
  %inc.i = add nuw nsw i32 %retry_count.0.i, 1
  call void @msleep(i32 noundef 30) #6
  %90 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr.i = load i32, ptr %smc_res, align 4
  %cmp7.i = icmp eq i32 %.pr.i, -12
  br i1 %cmp7.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.__scm_smc_do.exit_crit_edge

do.cond.i.__scm_smc_do.exit_crit_edge:            ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__scm_smc_do.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

__scm_smc_do.exit:                                ; preds = %do.cond.i.__scm_smc_do.exit_crit_edge, %__scm_smc_do_quirk.exit.__scm_smc_do.exit_crit_edge, %__scm_smc_do_quirk.exit145
  %tobool68.not = icmp eq ptr %args_virt.0, null
  br i1 %tobool68.not, label %__scm_smc_do.exit.if.end70_crit_edge, label %if.then69

__scm_smc_do.exit.if.end70_crit_edge:             ; preds = %__scm_smc_do.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then69:                                        ; preds = %__scm_smc_do.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %args_phys.0, i32 noundef %alloc_len.0, i32 noundef 1, i32 noundef 0) #6
  call void @kfree(ptr noundef nonnull %args_virt.0) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %__scm_smc_do.exit.if.end70_crit_edge
  %tobool71.not = icmp eq ptr %res, null
  br i1 %tobool71.not, label %if.end70.if.end81_crit_edge, label %if.then72

if.end70.if.end81_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %2, align 4
  %conv73 = zext i32 %92 to i64
  %93 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv73, ptr %res, align 8
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %3, align 4
  %conv75 = zext i32 %95 to i64
  %arrayidx77 = getelementptr [3 x i64], ptr %res, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv75, ptr %arrayidx77, align 8
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %4, align 4
  %conv78 = zext i32 %98 to i64
  %arrayidx80 = getelementptr [3 x i64], ptr %res, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv78, ptr %arrayidx80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then72, %if.end70.if.end81_crit_edge
  %100 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %smc_res, align 4
  %switch.tableidx = add i32 %101, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %102 = icmp ult i32 %switch.tableidx, 13
  br i1 %102, label %switch.lookup, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.__scm_smc_call, i32 0, i32 %switch.tableidx
  %103 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %103)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end81.cleanup_crit_edge, %if.then62, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then62 ], [ -12, %if.then.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.end81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @kzalloc(i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !20

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %or = or i32 %flags, 256
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 12
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or, i32 noundef 4096) #9
  ret ptr %call7.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #6
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !20

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16, ptr noundef %retval.0.i) #6
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef 56) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 56, i32 noundef 1, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/qcom_scm-smc.c", i32 25, i32 8}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qcom_scm_lock, !5, !"qcom_scm_lock", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = !{!"branch_weights", i32 2000, i32 1}
