; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/manage.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/manage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@e1000_mng_enable_host_if.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000_mng_enable_host_if\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/e1000e/manage.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ARC subsystem not valid.\0A\00", [38 x i8] zeroinitializer }, align 32
@e1000_mng_enable_host_if.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"E1000_HOST_EN bit disabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000_mng_enable_host_if.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Previous command timeout failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 44, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 51, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [46 x i8] c"../drivers/net/ethernet/intel/e1000e/manage.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 63, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000e_check_mng_mode_generic(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 23380
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %3 = and i32 %2, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %3)
  %cmp = icmp eq i32 %3, 100663296
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mng_cookie = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8
  %tx_pkt_filtering = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %tx_pkt_filtering, align 1
  %check_mng_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %1 = ptrtoint ptr %check_mng_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_mng_mode, align 4
  %call = tail call zeroext i1 %2(ptr noundef %hw) #4
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tx_pkt_filtering, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @e1000_mng_enable_host_if(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %if.then9

for.cond.preheader:                               ; preds = %if.end
  %hw_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %add.ptr19 = getelementptr i8, ptr %5, i32 36592
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !21
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %8 = ptrtoint ptr %mng_cookie to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mng_cookie, align 4
  %9 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr, align 4
  %add.ptr19.1 = getelementptr i8, ptr %10, i32 36596
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.1) #4, !srcloc !21
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %add.ptr23.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %add.ptr23.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr23.1, align 4
  %14 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr, align 4
  %add.ptr19.2 = getelementptr i8, ptr %15, i32 36600
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.2) #4, !srcloc !21
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %add.ptr23.2 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %add.ptr23.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr23.2, align 4
  %19 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr, align 4
  %add.ptr19.3 = getelementptr i8, ptr %20, i32 36604
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.3) #4, !srcloc !21
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %add.ptr23.3 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 5
  %23 = ptrtoint ptr %add.ptr23.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr23.3, align 4
  %checksum = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 7
  %24 = trunc i32 %22 to i8
  %25 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %checksum, align 1
  %tobool.not.i = icmp eq ptr %mng_cookie, null
  br i1 %tobool.not.i, label %for.cond.preheader.e1000_calculate_checksum.exit_crit_edge, label %for.body.i.preheader

for.cond.preheader.e1000_calculate_checksum.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_calculate_checksum.exit

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tx_pkt_filtering, align 1
  br label %cleanup

for.body.i.preheader:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %mng_cookie to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mng_cookie, align 1
  %arrayidx.i.1 = getelementptr i8, ptr %mng_cookie, i32 1
  %29 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.1, align 1
  %add.i.1 = add i8 %28, %30
  %arrayidx.i.2 = getelementptr i8, ptr %mng_cookie, i32 2
  %31 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.2, align 1
  %add.i.2 = add i8 %add.i.1, %32
  %arrayidx.i.3 = getelementptr i8, ptr %mng_cookie, i32 3
  %33 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.3, align 1
  %add.i.3 = add i8 %add.i.2, %34
  %35 = ptrtoint ptr %add.ptr23.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr23.1, align 1
  %add.i.4 = add i8 %add.i.3, %36
  %arrayidx.i.5 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.5, align 1
  %add.i.5 = add i8 %add.i.4, %38
  %arrayidx.i.6 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 3
  %39 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.6, align 1
  %add.i.6 = add i8 %add.i.5, %40
  %arrayidx.i.7 = getelementptr i8, ptr %mng_cookie, i32 7
  %41 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.7, align 1
  %add.i.7 = add i8 %add.i.6, %42
  %43 = ptrtoint ptr %add.ptr23.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr23.2, align 1
  %add.i.8 = add i8 %add.i.7, %44
  %arrayidx.i.9 = getelementptr i8, ptr %mng_cookie, i32 9
  %45 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.9, align 1
  %add.i.9 = add i8 %add.i.8, %46
  %arrayidx.i.10 = getelementptr i8, ptr %mng_cookie, i32 10
  %47 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.10, align 1
  %add.i.10 = add i8 %add.i.9, %48
  %arrayidx.i.11 = getelementptr i8, ptr %mng_cookie, i32 11
  %49 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.11, align 1
  %add.i.11 = add i8 %add.i.10, %50
  %51 = ptrtoint ptr %add.ptr23.3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr23.3, align 1
  %add.i.12 = add i8 %add.i.11, %52
  %arrayidx.i.13 = getelementptr i8, ptr %mng_cookie, i32 13
  %53 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.13, align 1
  %add.i.13 = add i8 %add.i.12, %54
  %arrayidx.i.14 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 6
  %55 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.14, align 1
  %add.i.14 = add i8 %add.i.13, %56
  %arrayidx.i.15 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.15, align 1
  %add.i.15 = add i8 %add.i.14, %58
  %conv4.i = sub i8 0, %add.i.15
  br label %e1000_calculate_checksum.exit

e1000_calculate_checksum.exit:                    ; preds = %for.body.i.preheader, %for.cond.preheader.e1000_calculate_checksum.exit_crit_edge
  %retval.0.i = phi i8 [ %conv4.i, %for.body.i.preheader ], [ 0, %for.cond.preheader.e1000_calculate_checksum.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %24)
  %cmp28.not = icmp eq i8 %retval.0.i, %24
  br i1 %cmp28.not, label %lor.lhs.false, label %e1000_calculate_checksum.exit.if.then32_crit_edge

e1000_calculate_checksum.exit.if.then32_crit_edge: ; preds = %e1000_calculate_checksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false:                                    ; preds = %e1000_calculate_checksum.exit
  %59 = ptrtoint ptr %mng_cookie to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mng_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1414349129, i32 %60)
  %cmp30.not = icmp eq i32 %60, 1414349129
  br i1 %cmp30.not, label %if.end38, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %e1000_calculate_checksum.exit.if.then32_crit_edge
  %61 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %tx_pkt_filtering, align 1
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %status, align 4
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool40.not = icmp eq i8 %64, 0
  br i1 %tobool40.not, label %if.then41, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %tx_pkt_filtering, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %66 = ptrtoint ptr %tx_pkt_filtering to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tx_pkt_filtering, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool47 = icmp ne i8 %67, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then32, %if.then9, %if.then
  %retval.0 = phi i1 [ false, %if.then9 ], [ true, %if.then32 ], [ %tobool47, %if.end44 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_mng_enable_host_if(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arc_subsystem_valid = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 22
  %0 = ptrtoint ptr %arc_subsystem_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arc_subsystem_valid, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body1, label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_mng_enable_host_if, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !25

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug353, ptr noundef %5, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 36608
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.body13, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %11, i32 36608
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.not = icmp eq i32 %13, 0
  br i1 %tobool37.not, label %for.body.preheader.cleanup_crit_edge, label %if.end39

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_mng_enable_host_if, %if.then25)) #4
          to label %cleanup [label %if.then25], !srcloc !25

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %netdev27 = getelementptr inbounds %struct.e1000_adapter, ptr %15, i32 0, i32 64
  %16 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug354, ptr noundef %17, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end39:                                         ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.1 = getelementptr i8, ptr %20, i32 36608
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.1) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %22 = and i32 %21, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not.1 = icmp eq i32 %22, 0
  br i1 %tobool37.not.1, label %if.end39.cleanup_crit_edge, label %if.end39.1

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.1:                                       ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.2 = getelementptr i8, ptr %25, i32 36608
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.2) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %27 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not.2 = icmp eq i32 %27, 0
  br i1 %tobool37.not.2, label %if.end39.1.cleanup_crit_edge, label %if.end39.2

if.end39.1.cleanup_crit_edge:                     ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.2:                                       ; preds = %if.end39.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  %29 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.3 = getelementptr i8, ptr %30, i32 36608
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.3) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool37.not.3 = icmp eq i32 %32, 0
  br i1 %tobool37.not.3, label %if.end39.2.cleanup_crit_edge, label %if.end39.3

if.end39.2.cleanup_crit_edge:                     ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.3:                                       ; preds = %if.end39.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
  %34 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.4 = getelementptr i8, ptr %35, i32 36608
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.4) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not.4 = icmp eq i32 %37, 0
  br i1 %tobool37.not.4, label %if.end39.3.cleanup_crit_edge, label %if.end39.4

if.end39.3.cleanup_crit_edge:                     ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.4:                                       ; preds = %if.end39.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #4
  %39 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.5 = getelementptr i8, ptr %40, i32 36608
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.5) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %42 = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool37.not.5 = icmp eq i32 %42, 0
  br i1 %tobool37.not.5, label %if.end39.4.cleanup_crit_edge, label %if.end39.5

if.end39.4.cleanup_crit_edge:                     ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.5:                                       ; preds = %if.end39.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #4
  %44 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.6 = getelementptr i8, ptr %45, i32 36608
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.6) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %47 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool37.not.6 = icmp eq i32 %47, 0
  br i1 %tobool37.not.6, label %if.end39.5.cleanup_crit_edge, label %if.end39.6

if.end39.5.cleanup_crit_edge:                     ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.6:                                       ; preds = %if.end39.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #4
  %49 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.7 = getelementptr i8, ptr %50, i32 36608
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.7) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %52 = and i32 %51, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not.7 = icmp eq i32 %52, 0
  br i1 %tobool37.not.7, label %if.end39.6.cleanup_crit_edge, label %if.end39.7

if.end39.6.cleanup_crit_edge:                     ; preds = %if.end39.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.7:                                       ; preds = %if.end39.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.8 = getelementptr i8, ptr %55, i32 36608
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.8) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %57 = and i32 %56, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool37.not.8 = icmp eq i32 %57, 0
  br i1 %tobool37.not.8, label %if.end39.7.cleanup_crit_edge, label %if.end39.8

if.end39.7.cleanup_crit_edge:                     ; preds = %if.end39.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.8:                                       ; preds = %if.end39.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  %59 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i82.9 = getelementptr i8, ptr %60, i32 36608
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.9) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %62 = and i32 %61, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool37.not.9 = icmp eq i32 %62, 0
  br i1 %tobool37.not.9, label %if.end39.8.cleanup_crit_edge, label %do.body45

if.end39.8.cleanup_crit_edge:                     ; preds = %if.end39.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body45:                                        ; preds = %if.end39.8
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_mng_enable_host_if, %if.then57)) #4
          to label %cleanup [label %if.then57], !srcloc !25

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 4
  %netdev59 = getelementptr inbounds %struct.e1000_adapter, ptr %65, i32 0, i32 64
  %66 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug355, ptr noundef %67, ptr noundef nonnull @.str.5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45, %if.end39.8.cleanup_crit_edge, %if.end39.7.cleanup_crit_edge, %if.end39.6.cleanup_crit_edge, %if.end39.5.cleanup_crit_edge, %if.end39.4.cleanup_crit_edge, %if.end39.3.cleanup_crit_edge, %if.end39.2.cleanup_crit_edge, %if.end39.1.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then25, %do.body13, %for.body.preheader.cleanup_crit_edge, %if.then5, %do.body1
  %retval.0 = phi i32 [ -11, %if.then5 ], [ -11, %if.then25 ], [ -11, %if.then57 ], [ -11, %do.body1 ], [ -11, %do.body13 ], [ -11, %do.body45 ], [ 0, %if.end39.8.cleanup_crit_edge ], [ 0, %if.end39.7.cleanup_crit_edge ], [ 0, %if.end39.6.cleanup_crit_edge ], [ 0, %if.end39.5.cleanup_crit_edge ], [ 0, %if.end39.4.cleanup_crit_edge ], [ 0, %if.end39.3.cleanup_crit_edge ], [ 0, %if.end39.2.cleanup_crit_edge ], [ 0, %if.end39.1.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_mng_write_dhcp_info(ptr noundef %hw, ptr nocapture noundef readonly %buffer, i16 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr.sroa.25.6.insert.ext = zext i16 %length to i32
  %call = tail call fastcc i32 @e1000_mng_enable_host_if(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i16 %length, -1777
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1776, i16 %0)
  %1 = icmp ult i16 %0, -1776
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end35.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end35.i:                                       ; preds = %if.end
  %and37.i = and i16 %length, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %length)
  %cmp493.not.i = icmp ult i16 %length, 4
  br i1 %cmp493.not.i, label %if.end35.i.for.end76.i_crit_edge, label %for.cond52.preheader.preheader.i

if.end35.i.for.end76.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end76.i

for.cond52.preheader.preheader.i:                 ; preds = %if.end35.i
  %2 = lshr i16 %length, 2
  %wide.trip.count.i = zext i16 %2 to i32
  br label %for.cond52.preheader.i

for.cond52.preheader.i:                           ; preds = %for.cond52.preheader.i.for.cond52.preheader.i_crit_edge, %for.cond52.preheader.preheader.i
  %hdr.sroa.0.sroa.6.0 = phi i8 [ 0, %for.cond52.preheader.preheader.i ], [ %add64.3.i, %for.cond52.preheader.i.for.cond52.preheader.i_crit_edge ]
  %indvars.iv.i = phi i32 [ 0, %for.cond52.preheader.preheader.i ], [ %indvars.iv.next.i, %for.cond52.preheader.i.for.cond52.preheader.i_crit_edge ]
  %bufptr.24.i = phi ptr [ %buffer, %for.cond52.preheader.preheader.i ], [ %incdec.ptr57.3.i, %for.cond52.preheader.i.for.cond52.preheader.i_crit_edge ]
  %incdec.ptr57.i = getelementptr i8, ptr %bufptr.24.i, i32 1
  %3 = ptrtoint ptr %bufptr.24.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bufptr.24.i, align 1
  %add64.i = add i8 %4, %hdr.sroa.0.sroa.6.0
  %incdec.ptr57.1.i = getelementptr i8, ptr %bufptr.24.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr57.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr57.i, align 1
  %add64.1.i = add i8 %add64.i, %6
  %incdec.ptr57.2.i = getelementptr i8, ptr %bufptr.24.i, i32 3
  %7 = ptrtoint ptr %incdec.ptr57.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr57.1.i, align 1
  %add64.2.i = add i8 %add64.1.i, %8
  %incdec.ptr57.3.i = getelementptr i8, ptr %bufptr.24.i, i32 4
  %9 = ptrtoint ptr %incdec.ptr57.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr57.2.i, align 1
  %add64.3.i = add i8 %add64.2.i, %10
  %add71.i = shl nuw nsw i32 %indvars.iv.i, 2
  %add73.i = add nuw nsw i32 %add71.i, 34824
  %data.sroa.17.0.insert.ext.i = zext i8 %10 to i32
  %data.sroa.13.0.insert.ext.i = zext i8 %8 to i32
  %data.sroa.13.0.insert.shift.i = shl nuw nsw i32 %data.sroa.13.0.insert.ext.i, 8
  %data.sroa.9.0.insert.ext.i = zext i8 %6 to i32
  %data.sroa.9.0.insert.shift.i = shl nuw nsw i32 %data.sroa.9.0.insert.ext.i, 16
  %data.sroa.0.0.insert.ext.i = zext i8 %4 to i32
  %data.sroa.0.0.insert.shift.i = shl nuw i32 %data.sroa.0.0.insert.ext.i, 24
  %data.sroa.13.0.insert.insert.i = or i32 %data.sroa.9.0.insert.shift.i, %data.sroa.0.0.insert.shift.i
  %data.sroa.9.0.insert.insert.i = or i32 %data.sroa.13.0.insert.insert.i, %data.sroa.17.0.insert.ext.i
  %data.sroa.0.0.insert.insert.i = or i32 %data.sroa.9.0.insert.insert.i, %data.sroa.13.0.insert.shift.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add73.i, i32 noundef %data.sroa.0.0.insert.insert.i) #4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end76.loopexit.i, label %for.cond52.preheader.i.for.cond52.preheader.i_crit_edge

for.cond52.preheader.i.for.cond52.preheader.i_crit_edge: ; preds = %for.cond52.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond52.preheader.i

for.end76.loopexit.i:                             ; preds = %for.cond52.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo.i = shl nuw nsw i32 %wide.trip.count.i, 2
  %phi.bo36.i = add nuw nsw i32 %phi.bo.i, 34824
  br label %for.end76.i

for.end76.i:                                      ; preds = %for.end76.loopexit.i, %if.end35.i.for.end76.i_crit_edge
  %hdr.sroa.0.sroa.6.1 = phi i8 [ 0, %if.end35.i.for.end76.i_crit_edge ], [ %add64.3.i, %for.end76.loopexit.i ]
  %bufptr.2.lcssa.i = phi ptr [ %buffer, %if.end35.i.for.end76.i_crit_edge ], [ %incdec.ptr57.3.i, %for.end76.loopexit.i ]
  %conv47.lcssa.i = phi i32 [ 34824, %if.end35.i.for.end76.i_crit_edge ], [ %phi.bo36.i, %for.end76.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and37.i)
  %tobool77.not.i = icmp eq i16 %and37.i, 0
  br i1 %tobool77.not.i, label %for.end76.i.if.end5_crit_edge, label %if.end94.i

for.end76.i.if.end5_crit_edge:                    ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end94.i:                                       ; preds = %for.end76.i
  %11 = ptrtoint ptr %bufptr.2.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bufptr.2.lcssa.i, align 1
  %add99.i = add i8 %12, %hdr.sroa.0.sroa.6.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %and37.i)
  %cmp86.1.not.i = icmp eq i16 %and37.i, 1
  br i1 %cmp86.1.not.i, label %if.end94.i.if.end94.3.i_crit_edge, label %if.end94.1.i

if.end94.i.if.end94.3.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.3.i

if.end94.1.i:                                     ; preds = %if.end94.i
  %incdec.ptr89.i = getelementptr i8, ptr %bufptr.2.lcssa.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr89.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr89.i, align 1
  %add99.1.i = add i8 %14, %add99.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %and37.i)
  %cmp86.2.i = icmp eq i16 %and37.i, 3
  br i1 %cmp86.2.i, label %if.then88.2.i, label %if.end94.1.i.if.end94.3.i_crit_edge

if.end94.1.i.if.end94.3.i_crit_edge:              ; preds = %if.end94.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94.3.i

if.then88.2.i:                                    ; preds = %if.end94.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr89.1.i = getelementptr i8, ptr %bufptr.2.lcssa.i, i32 2
  %15 = ptrtoint ptr %incdec.ptr89.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr89.1.i, align 1
  br label %if.end94.3.i

if.end94.3.i:                                     ; preds = %if.then88.2.i, %if.end94.1.i.if.end94.3.i_crit_edge, %if.end94.i.if.end94.3.i_crit_edge
  %hdr.sroa.0.sroa.6.2 = phi i8 [ %add99.i, %if.end94.i.if.end94.3.i_crit_edge ], [ %add99.1.i, %if.then88.2.i ], [ %add99.1.i, %if.end94.1.i.if.end94.3.i_crit_edge ]
  %data.sroa.9.041.i = phi i8 [ 0, %if.end94.i.if.end94.3.i_crit_edge ], [ %14, %if.then88.2.i ], [ %14, %if.end94.1.i.if.end94.3.i_crit_edge ]
  %data.sroa.13.0.i = phi i8 [ 0, %if.end94.i.if.end94.3.i_crit_edge ], [ %16, %if.then88.2.i ], [ 0, %if.end94.1.i.if.end94.3.i_crit_edge ]
  %add99.2.i = add i8 %data.sroa.13.0.i, %hdr.sroa.0.sroa.6.2
  %data.sroa.13.0.insert.ext28.i = zext i8 %data.sroa.13.0.i to i32
  %data.sroa.13.0.insert.shift29.i = shl nuw nsw i32 %data.sroa.13.0.insert.ext28.i, 8
  %data.sroa.9.0.insert.ext23.i = zext i8 %data.sroa.9.041.i to i32
  %data.sroa.9.0.insert.shift24.i = shl nuw nsw i32 %data.sroa.9.0.insert.ext23.i, 16
  %data.sroa.9.0.insert.insert26.i = or i32 %data.sroa.13.0.insert.shift29.i, %data.sroa.9.0.insert.shift24.i
  %data.sroa.0.0.insert.ext18.i = zext i8 %12 to i32
  %data.sroa.0.0.insert.shift19.i = shl nuw i32 %data.sroa.0.0.insert.ext18.i, 24
  %data.sroa.0.0.insert.insert21.i = or i32 %data.sroa.9.0.insert.insert26.i, %data.sroa.0.0.insert.shift19.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef %conv47.lcssa.i, i32 noundef %data.sroa.0.0.insert.insert21.i) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end94.3.i, %for.end76.i.if.end5_crit_edge
  %hdr.sroa.0.sroa.6.3.ph = phi i8 [ %add99.2.i, %if.end94.3.i ], [ %hdr.sroa.0.sroa.6.1, %for.end76.i.if.end5_crit_edge ]
  %hdr.sroa.25.6.extract.shift = lshr i16 %length, 8
  %hdr.sroa.25.6.extract.trunc = trunc i16 %hdr.sroa.25.6.extract.shift to i8
  %hdr.sroa.25.7.extract.trunc = trunc i16 %length to i8
  %17 = add i8 %hdr.sroa.25.7.extract.trunc, %hdr.sroa.25.6.extract.trunc
  %18 = add i8 %17, %hdr.sroa.0.sroa.6.3.ph
  %add.i.7.i.neg = sub i8 -64, %18
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %hdr.sroa.0.sroa.6.0.insert.ext = zext i8 %add.i.7.i.neg to i32
  %hdr.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %hdr.sroa.0.sroa.6.0.insert.ext, 16
  %hdr.sroa.0.sroa.0.0.insert.insert = or i32 %hdr.sroa.0.sroa.6.0.insert.shift, 1073741824
  tail call void @__ew32(ptr noundef %hw, i32 noundef 34816, i32 noundef %hdr.sroa.0.sroa.0.0.insert.insert) #4
  %19 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @__ew32(ptr noundef %hw, i32 noundef 34820, i32 noundef %hdr.sroa.25.6.insert.ext) #4
  %22 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %25 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 36608
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %28 = or i32 %27, 33554432
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 36608, i32 noundef %29) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @e1000e_enable_mng_pass_thru(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 22560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

if.end:                                           ; preds = %entry
  %has_fwsm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 21
  %4 = ptrtoint ptr %has_fwsm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_fwsm, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %7, i32 23380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %10, i32 23344
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  %13 = and i32 %8, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %13)
  %cmp = icmp eq i32 %13, 67108864
  %or.cond = select i1 %tobool6.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then2.cleanup40_crit_edge, label %if.then2.if.end39_crit_edge

if.then2.if.end39_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then2.cleanup40_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

if.else:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %.off = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %data, align 2, !annotation !26
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %18, i32 23344
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %21(ptr noundef %hw, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then15.cleanup.thread_crit_edge

if.then15.cleanup.thread_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end20:                                         ; preds = %if.then15
  %22 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end20
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 2
  %25 = and i16 %24, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %25)
  %cmp25 = icmp eq i16 %25, 16384
  br i1 %cmp25, label %land.lhs.true23.cleanup.thread_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true23.cleanup.thread_crit_edge:         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true23.cleanup.thread_crit_edge, %if.then15.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  br label %cleanup40

cleanup:                                          ; preds = %land.lhs.true23.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  br label %if.end39

if.else30:                                        ; preds = %if.else
  %26 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %if.else30.cleanup40_crit_edge, label %if.else30.if.end39_crit_edge

if.else30.if.end39_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.else30.cleanup40_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup40

if.end39:                                         ; preds = %if.else30.if.end39_crit_edge, %cleanup, %if.then2.if.end39_crit_edge
  br label %cleanup40

cleanup40:                                        ; preds = %if.end39, %if.else30.cleanup40_crit_edge, %cleanup.thread, %if.then2.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi i1 [ false, %if.end39 ], [ false, %entry.cleanup40_crit_edge ], [ true, %if.then2.cleanup40_crit_edge ], [ true, %if.else30.cleanup40_crit_edge ], [ %tobool18.not, %cleanup.thread ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/manage.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug353, !1, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/manage.c", i32 51, i32 3}
!8 = !{ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug354, !7, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/e1000e/manage.c", i32 63, i32 3}
!11 = !{ptr @e1000_mng_enable_host_if.__UNIQUE_ID_ddebug355, !10, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 1900056}
!22 = !{i64 2156908905}
!23 = !{i64 2156918369}
!24 = !{i8 0, i8 2}
!25 = !{i64 2148900258, i64 2148900263, i64 2148900276, i64 2148900320, i64 2148900354, i64 2148900375}
!26 = !{!"auto-init"}
