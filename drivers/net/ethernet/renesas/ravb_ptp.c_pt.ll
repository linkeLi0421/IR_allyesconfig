; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/renesas/ravb_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/renesas/ravb_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.124 }
%union.anon.124 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ptp_clock_request = type { i32, %union.anon.121 }
%union.anon.121 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.122, %struct.ptp_clock_time, i32, i32, %union.anon.123 }
%union.anon.122 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.123 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ravb_hw_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i16 }
%struct.ravb_ptp_perout = type { i32, i32 }

@ravb_ptp_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"ravb clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50000000, i32 0, i32 1, i32 1, i32 0, i32 0, ptr null, ptr null, ptr @ravb_ptp_adjfreq, ptr null, ptr @ravb_ptp_adjtime, ptr @ravb_ptp_gettime64, ptr null, ptr null, ptr @ravb_ptp_settime64, ptr @ravb_ptp_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ptp: start value (nsec) is over limit. Maximum size of start is only 32 bits\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ptp: period value (nsec) is over limit. Maximum size of period is only 32 bits\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"ravb_ptp_info\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 292, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 239, i32 9 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [43 x i8] c"../drivers/net/ethernet/renesas/ravb_ptp.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 245, i32 9 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ravb_ptp_info, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ravb_ptp_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ravb_ptp_interrupt(ptr nocapture noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %1, i32 944
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %4, i32 940
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #5
  %8 = getelementptr inbounds i8, ptr %event, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %8, align 8
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %event, align 8
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %index, align 4
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %13, i32 948
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #5, !srcloc !15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %conv = zext i32 %15 to i64
  %16 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %16, align 8
  %ptp = getelementptr i8, ptr %ndev, i32 2640
  %18 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp, align 8
  call void @ptp_clock_event(ptr noundef %19, ptr noundef nonnull %event) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %period = getelementptr i8, ptr %ndev, i32 2768
  %20 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.then7.if.end16_crit_edge, label %if.then11

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %if.then7
  %perout9 = getelementptr i8, ptr %ndev, i32 2764
  %22 = ptrtoint ptr %perout9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %perout9, align 4
  %add = add i32 %23, %21
  store i32 %add, ptr %perout9, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %current_addend.i = getelementptr i8, ptr %ndev, i32 2756
  %26 = ptrtoint ptr %current_addend.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_addend.i, align 4
  %addr.i.i = getelementptr i8, ptr %25, i32 2312
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 912
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !15
  %31 = call i32 @llvm.bswap.i32(i32 %30) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %and.i = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end7.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %27, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %add)
  %cmp.not.i = icmp ult i32 %shr.i, %add
  %sub.i = xor i32 %shr.i, -1
  %32 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %add) #5
  %add.i = add nuw nsw i32 %shr.i, 1
  %ns.addr.0.i = select i1 %cmp.not.i, i32 %32, i32 %add.i
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %34, i32 920
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %35 = call i32 @llvm.bswap.i32(i32 %ns.addr.0.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %35) #5, !srcloc !18
  %or.i = or i32 %31, 16
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %37, i32 912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %38 = call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %38) #5, !srcloc !18
  br label %if.end16

if.end16:                                         ; preds = %if.end7.i, %if.then11.if.end16_crit_edge, %if.then7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %39 = and i32 %7, -64513
  %neg = xor i32 %39, -64513
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %41, i32 944
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %42 = call i32 @llvm.bswap.i32(i32 %neg) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %42) #5, !srcloc !18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ravb_ptp_init(ptr noundef %ndev, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr i8, ptr %ndev, i32 2640
  %info = getelementptr i8, ptr %ndev, i32 2644
  %0 = call ptr @memcpy(ptr %info, ptr @ravb_ptp_info, i32 108)
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %2, i32 924
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !15
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %default_addend = getelementptr i8, ptr %ndev, i32 2752
  %5 = ptrtoint ptr %default_addend to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %default_addend, align 8
  %current_addend = getelementptr i8, ptr %ndev, i32 2756
  %6 = ptrtoint ptr %current_addend to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %current_addend, align 4
  %lock = getelementptr i8, ptr %ndev, i32 2772
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call11 = tail call i32 @ravb_wait(ptr noundef %ndev, i32 noundef 912, i32 noundef 3, i32 noundef 0) #5
  tail call void @ravb_modify(ptr noundef %ndev, i32 noundef 912, i32 noundef 768, i32 noundef 256) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call15 = tail call ptr @ptp_clock_register(ptr noundef %info, ptr noundef %dev) #5
  %7 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %ptp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ravb_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ravb_modify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ravb_ptp_stop(ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #5, !srcloc !18
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #5, !srcloc !18
  %ptp = getelementptr i8, ptr %ndev, i32 2640
  %4 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp, align 8
  %call1 = tail call i32 @ptp_clock_unregister(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_ptp_adjfreq(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -340
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %2 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %default_addend = getelementptr i8, ptr %ptp, i32 108
  %3 = ptrtoint ptr %default_addend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_addend, align 8
  %conv = zext i32 %4 to i64
  %conv3 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, %conv3
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #8, !srcloc !19
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #8, !srcloc !20
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %conv4 = trunc i64 %div1581.i.i to i32
  %7 = sub i32 0, %conv4
  %cond.p = select i1 %cmp, i32 %7, i32 %conv4
  %cond = add i32 %cond.p, %4
  %lock = getelementptr i8, ptr %ptp, i32 128
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %current_addend = getelementptr i8, ptr %ptp, i32 112
  %8 = ptrtoint ptr %current_addend to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %current_addend, align 4
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 912
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !15
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = and i32 %cond, 268435455
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %14, i32 924
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and21) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %15) #5, !srcloc !18
  %or = or i32 %12, 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %17, i32 912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %18) #5, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -340
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #5
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %lock = getelementptr i8, ptr %ptp, i32 128
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call6 = call fastcc i32 @ravb_ptp_time_read(ptr noundef %add.ptr, ptr noundef nonnull %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %.fca.0.load = load i64, ptr %ts, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !21
  %add = add i64 %retval.0.i.i, %delta
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %add) #5
  %call10 = call fastcc i32 @ravb_ptp_time_write(ptr noundef %add.ptr, ptr noundef nonnull %ts)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call6, %entry.if.end_crit_edge ], [ %call10, %if.then ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #5
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_ptp_gettime64(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -340
  %lock = getelementptr i8, ptr %ptp, i32 128
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call6 = tail call fastcc i32 @ravb_ptp_time_read(ptr noundef %add.ptr, ptr noundef %ts)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_ptp_settime64(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -340
  %lock = getelementptr i8, ptr %ptp, i32 128
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call6 = tail call fastcc i32 @ravb_ptp_time_write(ptr noundef %add.ptr, ptr noundef %ts)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ravb_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %req, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -340
  %info1.i = getelementptr i8, ptr %ptp, i32 748
  %4 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info1.i, align 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %flags3.i = getelementptr inbounds %struct.ptp_extts_request, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %tobool.not.i = icmp ult i32 %9, 16
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %extts.i = getelementptr i8, ptr %ptp, i32 116
  %12 = ptrtoint ptr %extts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %on)
  %cmp.i = icmp eq i32 %13, %on
  br i1 %cmp.i, label %if.end6.i.return_crit_edge, label %if.end10.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end10.i:                                       ; preds = %if.end6.i
  %14 = ptrtoint ptr %extts.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %on, ptr %extts.i, align 4
  %lock.i = getelementptr i8, ptr %ptp, i32 128
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %multi_irqs.i = getelementptr inbounds %struct.ravb_hw_info, ptr %5, i32 0, i32 16
  %15 = ptrtoint ptr %multi_irqs.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %multi_irqs.i, align 8
  %16 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool21.not.i = icmp eq i16 %16, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool23.not.i = icmp ne i32 %on, 0
  %cond.i = zext i1 %tobool23.not.i to i32
  tail call void @ravb_modify(ptr noundef %7, i32 noundef 940, i32 noundef 1, i32 noundef %cond.i) #5
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool24.not.i = icmp eq i32 %on, 0
  %addr.i46.i = getelementptr i8, ptr %7, i32 2312
  %17 = ptrtoint ptr %addr.i46.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr.i46.i, align 8
  br i1 %tobool24.not.i, label %if.else26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 972
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !18
  br label %if.end28.i

if.else26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i47.i = getelementptr i8, ptr %18, i32 976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 16777216) #5, !srcloc !18
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else26.i, %if.then25.i, %if.then22.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call18.i) #5
  br label %return

sw.bb1:                                           ; preds = %entry
  %19 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  %add.ptr.i7 = getelementptr i8, ptr %ptp, i32 -340
  %info1.i8 = getelementptr i8, ptr %ptp, i32 748
  %20 = ptrtoint ptr %info1.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info1.i8, align 8
  %22 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i7, align 8
  %flags3.i9 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %flags3.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags3.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i10 = icmp eq i32 %25, 0
  br i1 %tobool.not.i10, label %if.end.i12, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i12:                                       ; preds = %sw.bb1
  %index.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i11 = icmp eq i32 %27, 0
  br i1 %tobool4.not.i11, label %if.end6.i13, label %if.end.i12.return_crit_edge

if.end.i12.return_crit_edge:                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end6.i13:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool7.not.i = icmp eq i32 %on, 0
  br i1 %tobool7.not.i, label %do.body46.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i13
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %19, align 8
  %mul.i = mul i64 %29, 1000000000
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsec.i, align 8
  %conv.i = zext i32 %31 to i64
  %add.i = add i64 %mul.i, %conv.i
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %period.i, align 8
  %mul10.i = mul i64 %33, 1000000000
  %nsec12.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %nsec12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nsec12.i, align 8
  %conv13.i = zext i32 %35 to i64
  %add14.i = add i64 %mul10.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp.i14 = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp.i14, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str) #9
  br label %return

if.end17.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add14.i)
  %cmp18.i = icmp ugt i64 %add14.i, 4294967295
  br i1 %cmp18.i, label %if.then20.i, label %do.body22.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.1) #9
  br label %return

do.body22.i:                                      ; preds = %if.end17.i
  %lock.i15 = getelementptr i8, ptr %ptp, i32 128
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i15) #5
  %perout30.i = getelementptr i8, ptr %ptp, i32 120
  %36 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i, align 8
  %arrayidx.i = getelementptr [1 x %struct.ravb_ptp_perout], ptr %perout30.i, i32 0, i32 %37
  %conv32.i = trunc i64 %add.i to i32
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv32.i, ptr %arrayidx.i, align 4
  %conv33.i = trunc i64 %add14.i to i32
  %period34.i = getelementptr inbounds %struct.ravb_ptp_perout, ptr %arrayidx.i, i32 0, i32 1
  %39 = ptrtoint ptr %period34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv33.i, ptr %period34.i, align 4
  %40 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i7, align 8
  %current_addend.i.i = getelementptr i8, ptr %ptp, i32 112
  %42 = ptrtoint ptr %current_addend.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_addend.i.i, align 4
  %addr.i.i.i = getelementptr i8, ptr %41, i32 2312
  %44 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 912
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !15
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %and.i.i = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then38.i, label %do.body22.i.if.end73.i_crit_edge

do.body22.i.if.end73.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.i

if.then38.i:                                      ; preds = %do.body22.i
  %shr.i.i = lshr i32 %43, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv32.i)
  %cmp.not.i.i = icmp ult i32 %shr.i.i, %conv32.i
  %sub.i.i = xor i32 %shr.i.i, -1
  %48 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %conv32.i) #5
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %ns.addr.0.i.i = select i1 %cmp.not.i.i, i32 %48, i32 %add.i.i
  %49 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %50, i32 920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %ns.addr.0.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %51) #5, !srcloc !18
  %or.i.i = or i32 %47, 16
  %52 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %53, i32 912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %54) #5, !srcloc !18
  %multi_irqs.i16 = getelementptr inbounds %struct.ravb_hw_info, ptr %21, i32 0, i32 16
  %55 = ptrtoint ptr %multi_irqs.i16 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i17 = load i16, ptr %multi_irqs.i16, align 8
  %56 = and i16 %bf.load.i17, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool39.not.i = icmp eq i16 %56, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.else.i19

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ravb_modify(ptr noundef %23, i32 noundef 940, i32 noundef 4, i32 noundef 4) #5
  br label %if.end73.i

if.else.i19:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i.i = getelementptr i8, ptr %23, i32 2312
  %57 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr.i.i, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %58, i32 972
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 67108864) #5, !srcloc !18
  br label %if.end73.i

do.body46.i:                                      ; preds = %if.end6.i13
  %lock52.i = getelementptr i8, ptr %ptp, i32 128
  %call54.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock52.i) #5
  %perout60.i = getelementptr i8, ptr %ptp, i32 120
  %59 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index.i, align 8
  %arrayidx62.i = getelementptr [1 x %struct.ravb_ptp_perout], ptr %perout60.i, i32 0, i32 %60
  %period63.i = getelementptr inbounds %struct.ravb_ptp_perout, ptr %arrayidx62.i, i32 0, i32 1
  %61 = ptrtoint ptr %period63.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %period63.i, align 4
  %multi_irqs64.i = getelementptr inbounds %struct.ravb_hw_info, ptr %21, i32 0, i32 16
  %62 = ptrtoint ptr %multi_irqs64.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load65.i = load i16, ptr %multi_irqs64.i, align 8
  %63 = and i16 %bf.load65.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool69.not.i = icmp eq i16 %63, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.else71.i

if.then70.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ravb_modify(ptr noundef %23, i32 noundef 940, i32 noundef 4, i32 noundef 0) #5
  br label %if.end73.i

if.else71.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i107.i = getelementptr i8, ptr %23, i32 2312
  %64 = ptrtoint ptr %addr.i107.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr.i107.i, align 8
  %add.ptr.i108.i = getelementptr i8, ptr %65, i32 976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 67108864) #5, !srcloc !18
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else71.i, %if.then70.i, %if.else.i19, %if.then40.i, %do.body22.i.if.end73.i_crit_edge
  %flags.1.i = phi i32 [ %call54.i, %if.else71.i ], [ %call54.i, %if.then70.i ], [ %call26.i, %if.then40.i ], [ %call26.i, %if.else.i19 ], [ %call26.i, %do.body22.i.if.end73.i_crit_edge ]
  %error.1.i = phi i32 [ 0, %if.else71.i ], [ 0, %if.then70.i ], [ 0, %if.then40.i ], [ 0, %if.else.i19 ], [ -16, %do.body22.i.if.end73.i_crit_edge ]
  %lock74.i = getelementptr i8, ptr %ptp, i32 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock74.i, i32 noundef %flags.1.i) #5
  br label %return

return:                                           ; preds = %if.end73.i, %if.then20.i, %if.then16.i, %if.end.i12.return_crit_edge, %sw.bb1.return_crit_edge, %if.end28.i, %if.end6.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end28.i ], [ -95, %sw.bb.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %if.end6.i.return_crit_edge ], [ %error.1.i, %if.end73.i ], [ -95, %sw.bb1.return_crit_edge ], [ -22, %if.end.i12.return_crit_edge ], [ -34, %if.then20.i ], [ -34, %if.then16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_ptp_time_read(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @ravb_wait(ptr noundef %1, i32 noundef 912, i32 noundef 3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ravb_ptp_tcr_request.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ravb_ptp_tcr_request.exit:                        ; preds = %entry
  tail call void @ravb_modify(ptr noundef %1, i32 noundef 912, i32 noundef 3, i32 noundef 3) #5
  %call2.i = tail call i32 @ravb_wait(ptr noundef %1, i32 noundef 912, i32 noundef 3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %ravb_ptp_tcr_request.exit.cleanup_crit_edge

ravb_ptp_tcr_request.exit.cleanup_crit_edge:      ; preds = %ravb_ptp_tcr_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ravb_ptp_tcr_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 952
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !15
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tv_nsec, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %8, i32 956
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 960
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %13 = zext i32 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ravb_ptp_tcr_request.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %ravb_ptp_tcr_request.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ravb_ptp_time_write(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @ravb_wait(ptr noundef %1, i32 noundef 912, i32 noundef 3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ravb_ptp_tcr_request.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ravb_ptp_tcr_request.exit:                        ; preds = %entry
  tail call void @ravb_modify(ptr noundef %1, i32 noundef 912, i32 noundef 1, i32 noundef 1) #5
  %call2.i = tail call i32 @ravb_wait(ptr noundef %1, i32 noundef 912, i32 noundef 3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %ravb_ptp_tcr_request.exit.cleanup_crit_edge

ravb_ptp_tcr_request.exit.cleanup_crit_edge:      ; preds = %ravb_ptp_tcr_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ravb_ptp_tcr_request.exit
  %addr.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 912
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !15
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %9, i32 928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %10) #5, !srcloc !18
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %conv = trunc i64 %12 to i32
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %14, i32 932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %15) #5, !srcloc !18
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ts, align 8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %conv8 = and i32 %19, 65535
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %21, i32 936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv8) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %22) #5, !srcloc !18
  %or = or i32 %5, 4
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %25) #5, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %ravb_ptp_tcr_request.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2.i, %ravb_ptp_tcr_request.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ravb_ptp_info, !1, !"ravb_ptp_info", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/renesas/ravb_ptp.c", i32 292, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/renesas/ravb_ptp.c", i32 239, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/renesas/ravb_ptp.c", i32 245, i32 9}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 4230949}
!16 = !{i64 2151771298}
!17 = !{i64 2151772653}
!18 = !{i64 4230531}
!19 = !{i64 1172898, i64 1172925, i64 1172947, i64 1172975}
!20 = !{i64 1173306, i64 1173333, i64 1173366, i64 1173387, i64 1173414, i64 1173440}
!21 = !{!"branch_weights", i32 1, i32 2000}
