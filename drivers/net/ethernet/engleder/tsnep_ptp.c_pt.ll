; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/engleder/tsnep_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/engleder/tsnep_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tsnep_adapter = type { ptr, [6 x i8], ptr, i8, i32, ptr, i32, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, [2 x %struct.tsnep_gcl], i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.spinlock, i32, [8 x %struct.tsnep_tx], i32, [8 x %struct.tsnep_rx], i32, [8 x %struct.tsnep_queue] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsnep_gcl = type { ptr, i64, i64, i64, [256 x %struct.tsnep_gcl_operation], i32, i64, i64, i8 }
%struct.tsnep_gcl_operation = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.tsnep_tx = type { ptr, ptr, [16 x ptr], [16 x i32], %struct.spinlock, [256 x %struct.tsnep_tx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_tx_entry = type { ptr, ptr, i32, i8, i32, ptr, i32, i32 }
%struct.tsnep_rx = type { ptr, ptr, [16 x ptr], [16 x i32], [256 x %struct.tsnep_rx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_rx_entry = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tsnep_queue = type { ptr, ptr, ptr, %struct.napi_struct, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsnep\00", [26 x i8] zeroinitializer }, align 32
@tsnep_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->ptp_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PHC added\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PHC removed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 185, i32 51 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 196, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 201, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 206, i32 32 }
@___asan_gen_.25 = private constant [45 x i8] c"../drivers/net/ethernet/engleder/tsnep_ptp.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 216, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 156, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str.1, ptr @tsnep_ptp_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsnep_get_system_time(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !30
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %high.0 = phi i32 [ %3, %entry ], [ %10, %do.body.do.body_crit_edge ]
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !30
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %cmp.not = icmp eq i32 %10, %high.0
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = zext i32 %9 to i64
  %12 = zext i32 %6 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %time, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsnep_ptp_ioctl(ptr noundef %netdev, ptr noundef readonly %ifr, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !32
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !32
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !32
  %tobool.not = icmp eq ptr %ifr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35248
  br i1 %cmp, label %if.then1, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then1:                                         ; preds = %if.end
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then1.if.then11.i.i_crit_edge:                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then1
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #9, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !34

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #6
  %8 = call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !35
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %6, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !34

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then1.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.then1.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp ult i32 %13, 2
  br i1 %switch, label %sw.epilog, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog9_crit_edge
    i32 1, label %sw.epilog.sw.bb6_crit_edge
    i32 3, label %sw.epilog.sw.bb6_crit_edge34
    i32 4, label %sw.epilog.sw.bb6_crit_edge35
    i32 5, label %sw.epilog.sw.bb6_crit_edge36
    i32 6, label %sw.epilog.sw.bb6_crit_edge37
    i32 7, label %sw.epilog.sw.bb6_crit_edge38
    i32 8, label %sw.epilog.sw.bb6_crit_edge39
    i32 9, label %sw.epilog.sw.bb6_crit_edge40
    i32 10, label %sw.epilog.sw.bb6_crit_edge41
    i32 11, label %sw.epilog.sw.bb6_crit_edge42
    i32 12, label %sw.epilog.sw.bb6_crit_edge43
    i32 13, label %sw.epilog.sw.bb6_crit_edge44
    i32 14, label %sw.epilog.sw.bb6_crit_edge45
    i32 15, label %sw.epilog.sw.bb6_crit_edge46
  ]

sw.epilog.sw.bb6_crit_edge46:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge45:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge44:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge43:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge42:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge41:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge40:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge39:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge38:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge37:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge36:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge35:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge34:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.epilog.sw.epilog9_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog.sw.bb6_crit_edge, %sw.epilog.sw.bb6_crit_edge34, %sw.epilog.sw.bb6_crit_edge35, %sw.epilog.sw.bb6_crit_edge36, %sw.epilog.sw.bb6_crit_edge37, %sw.epilog.sw.bb6_crit_edge38, %sw.epilog.sw.bb6_crit_edge39, %sw.epilog.sw.bb6_crit_edge40, %sw.epilog.sw.bb6_crit_edge41, %sw.epilog.sw.bb6_crit_edge42, %sw.epilog.sw.bb6_crit_edge43, %sw.epilog.sw.bb6_crit_edge44, %sw.epilog.sw.bb6_crit_edge45, %sw.epilog.sw.bb6_crit_edge46
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %3, align 4
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb6, %sw.epilog.sw.epilog9_crit_edge
  %hwtstamp_config = getelementptr i8, ptr %netdev, i32 6684
  %18 = call ptr @memcpy(ptr %hwtstamp_config, ptr %config, i32 12)
  br label %if.end10

if.end10:                                         ; preds = %sw.epilog9, %if.end.if.end10_crit_edge
  %ifr_ifru11 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %19 = ptrtoint ptr %ifr_ifru11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ifr_ifru11, align 4
  %hwtstamp_config12 = getelementptr i8, ptr %netdev, i32 6684
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i23 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i23, label %if.end10.cleanup_crit_edge, label %if.end.i.i27

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i27:                                     ; preds = %if.end10
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 12, i32 -1226833920) #9, !srcloc !38
  %asmresult.i.i25 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i25)
  %cmp.i.i26 = icmp eq i32 %asmresult.i.i25, 0
  br i1 %cmp.i.i26, label %copy_to_user.exit, label %if.end.i.i27.cleanup_crit_edge

if.end.i.i27.cleanup_crit_edge:                   ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i28 = call zeroext i1 @__kasan_check_read(ptr noundef %hwtstamp_config12, i32 noundef 12) #6
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef %hwtstamp_config12, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool14.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool14.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ], [ -34, %sw.epilog.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end10.cleanup_crit_edge ], [ -14, %if.end.i.i27.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsnep_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 16, i32 2
  %0 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_filter, align 4
  %tx_type = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_type, align 4
  %ptp_clock_info = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18
  %name = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 1
  %2 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 6)
  %3 = ptrtoint ptr %ptp_clock_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ptp_clock_info, align 4
  %max_adj = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 62499999, ptr %max_adj, align 4
  %adjfine = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 9
  %5 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tsnep_ptp_adjfine, ptr %adjfine, align 4
  %adjtime = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 12
  %6 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tsnep_ptp_adjtime, ptr %adjtime, align 4
  %gettimex64 = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 14
  %7 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tsnep_ptp_gettimex64, ptr %gettimex64, align 4
  %settime64 = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 18, i32 16
  %8 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tsnep_ptp_settime64, ptr %settime64, align 4
  %ptp_lock = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @tsnep_ptp_init.__key, i16 noundef signext 3) #6
  %pdev = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 7
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call11 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev) #6
  %ptp_clock = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 17
  %11 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %ptp_clock, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #10
  %14 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp_clock, align 8
  %16 = ptrtoint ptr %15 to i32
  store ptr null, ptr %ptp_clock, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.else.if.end20_crit_edge, label %if.then18

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.4) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else.if.end20_crit_edge, %if.then
  %retval1.0 = phi i32 [ %16, %if.then ], [ 0, %if.then18 ], [ 0, %if.else.if.end20_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ptp_adjfine(ptr nocapture noundef readonly %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 13
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shl) #9, !srcloc !39
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shl, i64 %1, i32 0) #9, !srcloc !40
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 12
  %3 = trunc i64 %div1581.i.i to i32
  %extract.t12 = and i32 %3, 2147483647
  %4 = and i32 %scaled_ppm, -2147483648
  %rate_offset.0.off0 = or i32 %extract.t12, %4
  %addr = getelementptr i8, ptr %ptp, i32 -4356
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %rate_offset.0.off0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #6, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr i8, ptr %ptp, i32 108
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #6
  %addr.i = getelementptr i8, ptr %ptp, i32 -4356
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !30
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %high.0.i = phi i32 [ %3, %entry ], [ %10, %do.body.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !30
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %cmp.not.i = icmp eq i32 %10, %high.0.i
  br i1 %cmp.not.i, label %tsnep_get_system_time.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

tsnep_get_system_time.exit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = zext i32 %9 to i64
  %12 = zext i32 %6 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #6
  %add = add i64 %15, %delta
  %shr = lshr i64 %add, 32
  %conv6 = trunc i64 %shr to i32
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 8
  %add.ptr7 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %18) #6, !srcloc !42
  %conv8 = trunc i64 %add to i32
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr.i, align 8
  %add.ptr10 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv8) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %21) #6, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ptp_gettimex64(ptr nocapture noundef readonly %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp9 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr i8, ptr %ptp, i32 -4356
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !30
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %tobool.not.i = icmp eq ptr %sts, null
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %ptp_read_system_postts.exit.do.body_crit_edge, %entry
  %high.0 = phi i32 [ %3, %entry ], [ %10, %ptp_read_system_postts.exit.do.body_crit_edge ]
  br i1 %tobool.not.i, label %do.body.ptp_read_system_prets.exit_crit_edge, label %if.then.i

do.body.ptp_read_system_prets.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ptp_read_system_prets.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #6
  br label %ptp_read_system_prets.exit

ptp_read_system_prets.exit:                       ; preds = %if.then.i, %do.body.ptp_read_system_prets.exit_crit_edge
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge, label %if.then.i16

ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge: ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ptp_read_system_postts.exit

if.then.i16:                                      ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #6
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i16, %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 8
  %add.ptr6 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !30
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %cmp.not = icmp eq i32 %10, %high.0
  br i1 %cmp.not, label %do.end, label %ptp_read_system_postts.exit.do.body_crit_edge

ptp_read_system_postts.exit.do.body_crit_edge:    ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = zext i32 %9 to i64
  %12 = zext i32 %6 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp9) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp9, i64 noundef %15) #6
  %16 = call ptr @memcpy(ptr %ts, ptr %tmp9, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_ptp_settime64(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  %extract.t = trunc i64 %add.i to i32
  %extract = lshr i64 %add.i, 32
  %extract.t17 = trunc i64 %extract to i32
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.end4.i ], [ -1, %entry.timespec64_to_ns.exit_crit_edge ], [ 0, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %retval.0.i.off32 = phi i32 [ %extract.t17, %if.end4.i ], [ 2147483647, %entry.timespec64_to_ns.exit_crit_edge ], [ -2147483648, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %ptp_lock = getelementptr i8, ptr %ptp, i32 108
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #6
  %addr = getelementptr i8, ptr %ptp, i32 -4356
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.off32) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #6, !srcloc !42
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 8
  %add.ptr11 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.off0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #6, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsnep_ptp_cleanup(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.tsnep_adapter, ptr %adapter, i32 0, i32 17
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 185, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 185, i32 51}
!4 = !{ptr @tsnep_ptp_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 196, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 201, i32 31}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 206, i32 32}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/engleder/tsnep_ptp.c", i32 216, i32 32}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 6245791}
!31 = !{i64 2153786140}
!32 = !{!"auto-init"}
!33 = !{i64 2153241249, i64 2153241274}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 5736804}
!36 = !{i64 5737001}
!37 = !{i64 2153222234}
!38 = !{i64 2153241930, i64 2153241955}
!39 = !{i64 844407, i64 844434}
!40 = !{i64 845102, i64 845129, i64 845162, i64 845183, i64 845210, i64 845236}
!41 = !{i64 2153787495}
!42 = !{i64 6245373}
