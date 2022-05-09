; ModuleID = '/llk/IR_all_yes/drivers/usb/core/buffer.c_pt.bc'
source_filename = "../drivers/usb/core/buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.67, i32 }
%union.anon.67 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pool_max.0 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buffer-%d\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"pool_max.0\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [29 x i8] c"../drivers/usb/core/buffer.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 77, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @pool_max.0, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_max.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_init_pool_max() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pool_max.0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hcd_buffer_create(ptr nocapture noundef %hcd) local_unnamed_addr #1 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #6
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 28
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %localmem_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %localmem_pool, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 9
  %3 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i, align 8
  %flags.i = getelementptr inbounds %struct.hc_driver, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 1
  %.b = load i1, ptr @pool_max.0, align 4
  br i1 %.b, label %for.cond.preheader.if.end3.1_crit_edge, label %if.end3

for.cond.preheader.if.end3.1_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.1

if.end3:                                          ; preds = %for.cond.preheader
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 32)
  %7 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysdev, align 4
  %call6 = call ptr @dma_pool_create(ptr noundef nonnull %name, ptr noundef %8, i32 noundef 32, i32 noundef 32, i32 noundef 0) #6
  %arrayidx7 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 0
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %arrayidx7, align 4
  %tobool10.not = icmp eq ptr %call6, null
  br i1 %tobool10.not, label %if.end3.if.then11_crit_edge, label %if.end3.if.end3.1_crit_edge

if.end3.if.end3.1_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.1

if.end3.if.then11_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end3.3.if.then11_crit_edge, %if.end3.2.if.then11_crit_edge, %if.end3.1.if.then11_crit_edge, %if.end3.if.then11_crit_edge
  %arrayidx.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  call void @dma_pool_destroy(ptr noundef %11) #6
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 4
  call void @dma_pool_destroy(ptr noundef %14) #6
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2.i, align 4
  call void @dma_pool_destroy(ptr noundef %17) #6
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3.i, align 4
  call void @dma_pool_destroy(ptr noundef %20) #6
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.3.i, align 4
  br label %cleanup

if.end3.1:                                        ; preds = %if.end3.if.end3.1_crit_edge, %for.cond.preheader.if.end3.1_crit_edge
  %call4.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 128)
  %22 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sysdev, align 4
  %call6.1 = call ptr @dma_pool_create(ptr noundef nonnull %name, ptr noundef %23, i32 noundef 128, i32 noundef 128, i32 noundef 0) #6
  %arrayidx7.1 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 1
  %24 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6.1, ptr %arrayidx7.1, align 4
  %tobool10.not.1 = icmp eq ptr %call6.1, null
  br i1 %tobool10.not.1, label %if.end3.1.if.then11_crit_edge, label %if.end3.2

if.end3.1.if.then11_crit_edge:                    ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end3.2:                                        ; preds = %if.end3.1
  %call4.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 512)
  %25 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sysdev, align 4
  %call6.2 = call ptr @dma_pool_create(ptr noundef nonnull %name, ptr noundef %26, i32 noundef 512, i32 noundef 512, i32 noundef 0) #6
  %arrayidx7.2 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 2
  %27 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call6.2, ptr %arrayidx7.2, align 4
  %tobool10.not.2 = icmp eq ptr %call6.2, null
  br i1 %tobool10.not.2, label %if.end3.2.if.then11_crit_edge, label %if.end3.3

if.end3.2.if.then11_crit_edge:                    ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end3.3:                                        ; preds = %if.end3.2
  %call4.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 2048)
  %28 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sysdev, align 4
  %call6.3 = call ptr @dma_pool_create(ptr noundef nonnull %name, ptr noundef %29, i32 noundef 2048, i32 noundef 2048, i32 noundef 0) #6
  %arrayidx7.3 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 3
  %30 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call6.3, ptr %arrayidx7.3, align 4
  %tobool10.not.3 = icmp eq ptr %call6.3, null
  br i1 %tobool10.not.3, label %if.end3.3.if.then11_crit_edge, label %if.end3.3.cleanup_crit_edge

if.end3.3.cleanup_crit_edge:                      ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.3.if.then11_crit_edge:                    ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

cleanup:                                          ; preds = %if.end3.3.cleanup_crit_edge, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hcd_buffer_destroy(ptr nocapture noundef %hcd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @dma_pool_destroy(ptr noundef %1) #6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  tail call void @dma_pool_destroy(ptr noundef %4) #6
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @dma_pool_destroy(ptr noundef %7) #6
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 26, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @dma_pool_destroy(ptr noundef %10) #6
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hcd_buffer_alloc(ptr nocapture noundef readonly %bus, i32 noundef %size, i32 noundef %mem_flags, ptr noundef %dma) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, ptr %bus, i32 0, i32 28
  %0 = ptrtoint ptr %localmem_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %localmem_pool, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %1, i32 noundef %size, ptr noundef %dma) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %bus, i32 0, i32 9
  %2 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i, align 8
  %flags.i = getelementptr inbounds %struct.hc_driver, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then6, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4
  %.b = load i1, ptr @pool_max.0, align 4
  %6 = select i1 %.b, i32 0, i32 32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp10.not = icmp ult i32 %6, %size
  br i1 %cmp10.not, label %for.inc, label %for.body.preheader.if.then11_crit_edge

for.body.preheader.if.then11_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dma, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %mem_flags) #9
  br label %cleanup

if.then11:                                        ; preds = %for.inc.2.if.then11_crit_edge, %for.inc.1.if.then11_crit_edge, %for.inc.if.then11_crit_edge, %for.body.preheader.if.then11_crit_edge
  %i.035.lcssa = phi i32 [ 0, %for.body.preheader.if.then11_crit_edge ], [ 1, %for.inc.if.then11_crit_edge ], [ 2, %for.inc.1.if.then11_crit_edge ], [ 3, %for.inc.2.if.then11_crit_edge ]
  %arrayidx12 = getelementptr %struct.usb_hcd, ptr %bus, i32 0, i32 26, i32 %i.035.lcssa
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef %mem_flags, ptr noundef %dma) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp10.not.1 = icmp ugt i32 %size, 128
  br i1 %cmp10.not.1, label %for.inc.1, label %for.inc.if.then11_crit_edge

for.inc.if.then11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %size)
  %cmp10.not.2 = icmp ugt i32 %size, 512
  br i1 %cmp10.not.2, label %for.inc.2, label %for.inc.1.if.then11_crit_edge

for.inc.1.if.then11_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %size)
  %cmp10.not.3 = icmp ugt i32 %size, 2048
  br i1 %cmp10.not.3, label %for.inc.3, label %for.inc.2.if.then11_crit_edge

for.inc.2.if.then11_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 1
  %10 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysdev, align 4
  %and.i33 = lshr i32 %mem_flags, 5
  %12 = and i32 %and.i33, 256
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef %size, ptr noundef %dma, i32 noundef %mem_flags, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then11, %if.then6, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then1 ], [ %call13, %if.then11 ], [ %call.i, %for.inc.3 ], [ null, %entry.cleanup_crit_edge ], [ %call9.i, %if.then6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hcd_buffer_free(ptr nocapture noundef readonly %bus, i32 noundef %size, ptr noundef %addr, i32 noundef %dma) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, ptr %bus, i32 0, i32 28
  %0 = ptrtoint ptr %localmem_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %localmem_pool, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %addr to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %size, ptr noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %bus, i32 0, i32 9
  %3 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i, align 8
  %flags.i = getelementptr inbounds %struct.hc_driver, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then6, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4
  %.b = load i1, ptr @pool_max.0, align 4
  %7 = select i1 %.b, i32 0, i32 32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %size)
  %cmp8.not = icmp ult i32 %7, %size
  br i1 %cmp8.not, label %for.inc, label %for.body.preheader.if.then9_crit_edge

for.body.preheader.if.then9_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %addr) #6
  br label %cleanup

if.then9:                                         ; preds = %for.inc.2.if.then9_crit_edge, %for.inc.1.if.then9_crit_edge, %for.inc.if.then9_crit_edge, %for.body.preheader.if.then9_crit_edge
  %i.028.lcssa = phi i32 [ 0, %for.body.preheader.if.then9_crit_edge ], [ 1, %for.inc.if.then9_crit_edge ], [ 2, %for.inc.1.if.then9_crit_edge ], [ 3, %for.inc.2.if.then9_crit_edge ]
  %arrayidx10 = getelementptr %struct.usb_hcd, ptr %bus, i32 0, i32 26, i32 %i.028.lcssa
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef nonnull %addr, i32 noundef %dma) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp8.not.1 = icmp ugt i32 %size, 128
  br i1 %cmp8.not.1, label %for.inc.1, label %for.inc.if.then9_crit_edge

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %size)
  %cmp8.not.2 = icmp ugt i32 %size, 512
  br i1 %cmp8.not.2, label %for.inc.2, label %for.inc.1.if.then9_crit_edge

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %size)
  %cmp8.not.3 = icmp ugt i32 %size, 2048
  br i1 %cmp8.not.3, label %for.inc.3, label %for.inc.2.if.then9_crit_edge

for.inc.2.if.then9_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 1
  %10 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysdev, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %size, ptr noundef nonnull %addr, i32 noundef %dma, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then9, %if.then6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/buffer.c", i32 77, i32 32}
!2 = distinct !{null, !3, !"pool_max", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/buffer.c", i32 29, i32 15}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
