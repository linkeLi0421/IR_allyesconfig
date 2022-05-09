; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/alx/hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/alx/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.alx_hw = type { ptr, ptr, [6 x i8], [6 x i8], i16, i16, i8, i8, i32, i32, [2 x i32], i32, i32, i8, i8, i32, %struct.spinlock, %struct.mdio_if_info, [2 x i16], i8, %struct.alx_hw_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.alx_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@alx_read_phy_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 911, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid PHY speed/duplex: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alx_read_phy_link\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/atheros/alx/hw.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alx_read_phy_link._entry_ptr = internal global ptr @alx_read_phy_link._entry, section ".printk_index", align 4
@switch.table.alx_setup_speed_duplex = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 33554432, i32 50331648, i32 0, i32 67108864, i32 0, i32 0, i32 0, i32 83886080], [32 x i8] zeroinitializer }, align 32
@switch.table.alx_phy_configured = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 24, i32 0, i32 32, i32 0, i32 0, i32 0, i32 40], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [41 x i8] c"../drivers/net/ethernet/atheros/alx/hw.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 911, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [36 x i8] c"switch.table.alx_setup_speed_duplex\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"switch.table.alx_phy_configured\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @alx_read_phy_link._entry, ptr @alx_read_phy_link._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.alx_setup_speed_duplex, ptr @switch.table.alx_phy_configured], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_read_phy_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.alx_setup_speed_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.alx_phy_configured to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_read_phy_reg(ptr noundef %hw, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_data, align 2
  %link_speed.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %1 = ptrtoint ptr %link_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, -1
  %cond.i.i = select i1 %cmp.not.i.i, i32 117440512, i32 0
  %conv7.i.i = zext i16 %reg to i32
  %shl8.i.i = shl nuw i32 %conv7.i.i, 16
  %or6.i.i = or i32 %shl8.i.i, %cond.i.i
  %or11.i.i = or i32 %or6.i.i, 14680064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #5
  %hw_addr.i29.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i29.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %5, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %3) #5, !srcloc !18
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.03.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %hw_addr.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i29.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %if.end14.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #5
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 120
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.__alx_read_phy_reg.exit_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end.i.i.i.__alx_read_phy_reg.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_read_phy_reg.exit

if.end14.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw_addr.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i29.i.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %12, i32 5140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #5, !srcloc !19
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv16.i.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16.i.i, ptr %phy_data, align 2
  br label %__alx_read_phy_reg.exit

__alx_read_phy_reg.exit:                          ; preds = %if.end14.i.i, %if.end.i.i.i.__alx_read_phy_reg.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end14.i.i ], [ -110, %if.end.i.i.i.__alx_read_phy_reg.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret i32 %retval.0.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_write_phy_reg(ptr noundef %hw, i16 noundef zeroext %reg, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %link_speed.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, -1
  %cond.i.i = select i1 %cmp.not.i.i, i32 117440512, i32 0
  %conv12.i.i = zext i16 %reg to i32
  %shl13.i.i = shl nuw i32 %conv12.i.i, 16
  %conv15.i.i = zext i16 %phy_data to i32
  %or11.i.i = or i32 %shl13.i.i, %conv15.i.i
  %or14.i.i = or i32 %or11.i.i, %cond.i.i
  %or18.i.i = or i32 %or14.i.i, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #5
  %hw_addr.i26.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i26.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %2) #5, !srcloc !18
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.03.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i26.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.__alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i

for.body.i.i.i.__alx_write_phy_reg.exit_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_reg.exit

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 120
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.__alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end.i.i.i.__alx_write_phy_reg.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_reg.exit

__alx_write_phy_reg.exit:                         ; preds = %if.end.i.i.i.__alx_write_phy_reg.exit_crit_edge, %for.body.i.i.i.__alx_write_phy_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.body.i.i.i.__alx_write_phy_reg.exit_crit_edge ], [ -110, %if.end.i.i.i.__alx_write_phy_reg.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext %dev, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %pdata, align 2
  %link_speed.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %1 = ptrtoint ptr %link_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, -1
  %conv.i.i = zext i8 %dev to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %conv1.i.i = zext i16 %reg to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %hw_addr.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 5192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #5, !srcloc !18
  %or4.i.i = select i1 %cmp.not.i.i, i32 1205862400, i32 1088421888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #5
  %7 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %8, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %6) #5, !srcloc !18
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.03.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %if.end14.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #5
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 120
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.__alx_read_phy_ext.exit_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end.i.i.i.__alx_read_phy_ext.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_read_phy_ext.exit

if.end14.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %15, i32 5140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i) #5, !srcloc !19
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv16.i.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv16.i.i, ptr %pdata, align 2
  br label %__alx_read_phy_ext.exit

__alx_read_phy_ext.exit:                          ; preds = %if.end14.i.i, %if.end.i.i.i.__alx_read_phy_ext.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end14.i.i ], [ -110, %if.end.i.i.i.__alx_read_phy_ext.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext %dev, i16 noundef zeroext %reg, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %link_speed.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, -1
  %cond.i.i = select i1 %cmp.not.i.i, i32 117440512, i32 0
  %conv.i.i = zext i8 %dev to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %conv1.i.i = zext i16 %reg to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %hw_addr.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 5192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #5, !srcloc !18
  %conv5.i.i = zext i16 %data to i32
  %or4.i.i = or i32 %cond.i.i, %conv5.i.i
  %or9.i.i = or i32 %or4.i.i, 1086324736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #5
  %6 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %7, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %5) #5, !srcloc !18
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.03.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 5140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.__alx_write_phy_ext.exit_crit_edge, label %if.end.i.i.i

for.body.i.i.i.__alx_write_phy_ext.exit_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_ext.exit

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #5
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 120
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.__alx_write_phy_ext.exit_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end.i.i.i.__alx_write_phy_ext.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_ext.exit

__alx_write_phy_ext.exit:                         ; preds = %if.end.i.i.i.__alx_write_phy_ext.exit_crit_edge, %for.body.i.i.i.__alx_write_phy_ext.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.body.i.i.i.__alx_write_phy_ext.exit_crit_edge ], [ -110, %if.end.i.i.i.__alx_write_phy_ext.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_get_perm_macaddr(ptr nocapture noundef readonly %hw, ptr nocapture noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 5256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %4 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %5, i32 5260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #5, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %add.ptr.i = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %3, ptr %add.ptr.i, align 1
  %conv.i = trunc i32 %7 to i16
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv.i, ptr %addr, align 1
  %10 = load i32, ptr %addr, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %alx_read_macaddr.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

alx_read_macaddr.exit:                            ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %or.i.i.i = or i32 %10, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %alx_read_macaddr.exit.if.end_crit_edge, label %alx_read_macaddr.exit.cleanup_crit_edge

alx_read_macaddr.exit.cleanup_crit_edge:          ; preds = %alx_read_macaddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_read_macaddr.exit.if.end_crit_edge:           ; preds = %alx_read_macaddr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %alx_read_macaddr.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i3596 = getelementptr i8, ptr %15, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3596) #5, !srcloc !19
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and.i97 = and i32 %17, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %cmp1.i98 = icmp eq i32 %and.i97, 0
  br i1 %cmp1.i98, label %if.end.if.end3_crit_edge, label %if.end.if.end3.i_crit_edge

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  br label %if.end3.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

for.body.i:                                       ; preds = %if.end3.i
  %18 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %19, i32 536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !19
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and.i = and i32 %21, 6144
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.alx_wait_reg.exit_crit_edge, label %for.body.i.if.end3.i_crit_edge

for.body.i.if.end3.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

for.body.i.alx_wait_reg.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit

if.end3.i:                                        ; preds = %for.body.i.if.end3.i_crit_edge, %if.end.if.end3.i_crit_edge
  %i.010.i99 = phi i32 [ %inc.i, %for.body.i.if.end3.i_crit_edge ], [ 0, %if.end.if.end3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  %inc.i = add nuw nsw i32 %i.010.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end3.i.alx_wait_reg.exit_crit_edge, label %for.body.i

if.end3.i.alx_wait_reg.exit_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit

alx_wait_reg.exit:                                ; preds = %if.end3.i.alx_wait_reg.exit_crit_edge, %for.body.i.alx_wait_reg.exit_crit_edge
  %val.0 = phi i32 [ -1, %if.end3.i.alx_wait_reg.exit_crit_edge ], [ %21, %for.body.i.alx_wait_reg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.010.i99)
  %cmp.i.le = icmp ult i32 %i.010.i99, 99
  br i1 %cmp.i.le, label %alx_wait_reg.exit.if.end3_crit_edge, label %alx_wait_reg.exit.cleanup_crit_edge

alx_wait_reg.exit.cleanup_crit_edge:              ; preds = %alx_wait_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_wait_reg.exit.if.end3_crit_edge:              ; preds = %alx_wait_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %alx_wait_reg.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %val.0123 = phi i32 [ %val.0, %alx_wait_reg.exit.if.end3_crit_edge ], [ %17, %if.end.if.end3_crit_edge ]
  %or = or i32 %val.0123, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %24 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %25, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %23) #5, !srcloc !18
  %26 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i40103 = getelementptr i8, ptr %27, i32 536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40103) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %29 = and i32 %28, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.i42104 = icmp eq i32 %29, 0
  br i1 %cmp1.i42104, label %if.end3.if.end6_crit_edge, label %if.end3.if.end3.i48_crit_edge

if.end3.if.end3.i48_crit_edge:                    ; preds = %if.end3
  br label %if.end3.i48

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.body.i43:                                     ; preds = %if.end3.i48
  %30 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %31, i32 536
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %33 = and i32 %32, 524288
  %cmp1.i42 = icmp eq i32 %33, 0
  br i1 %cmp1.i42, label %for.body.i43.alx_wait_reg.exit50_crit_edge, label %for.body.i43.if.end3.i48_crit_edge

for.body.i43.if.end3.i48_crit_edge:               ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i48

for.body.i43.alx_wait_reg.exit50_crit_edge:       ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit50

if.end3.i48:                                      ; preds = %for.body.i43.if.end3.i48_crit_edge, %if.end3.if.end3.i48_crit_edge
  %i.010.i39105 = phi i32 [ %inc.i45, %for.body.i43.if.end3.i48_crit_edge ], [ 0, %if.end3.if.end3.i48_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  %inc.i45 = add nuw nsw i32 %i.010.i39105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i45)
  %exitcond.not.i47 = icmp eq i32 %inc.i45, 100
  br i1 %exitcond.not.i47, label %if.end3.i48.alx_wait_reg.exit50_crit_edge, label %for.body.i43

if.end3.i48.alx_wait_reg.exit50_crit_edge:        ; preds = %if.end3.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit50

alx_wait_reg.exit50:                              ; preds = %if.end3.i48.alx_wait_reg.exit50_crit_edge, %for.body.i43.alx_wait_reg.exit50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.010.i39105)
  %cmp.i46.le = icmp ult i32 %i.010.i39105, 99
  br i1 %cmp.i46.le, label %alx_wait_reg.exit50.if.end6_crit_edge, label %alx_wait_reg.exit50.cleanup_crit_edge

alx_wait_reg.exit50.cleanup_crit_edge:            ; preds = %alx_wait_reg.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_wait_reg.exit50.if.end6_crit_edge:            ; preds = %alx_wait_reg.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %alx_wait_reg.exit50.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %35 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %36, i32 5256
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #5, !srcloc !19
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %39 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i12.i53 = getelementptr i8, ptr %40, i32 5260
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i53) #5, !srcloc !19
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %38, ptr %add.ptr.i, align 1
  %conv.i55 = trunc i32 %42 to i16
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %conv.i55, ptr %addr, align 1
  %45 = load i32, ptr %addr, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i.i56 = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i.i56, label %alx_read_macaddr.exit62, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

alx_read_macaddr.exit62:                          ; preds = %if.end6
  %add.ptr.i.i.i57 = getelementptr i8, ptr %addr, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.i57 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i.i57, align 2
  %conv.i.i.i58 = zext i16 %48 to i32
  %or.i.i.i59 = or i32 %45, %conv.i.i.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i59)
  %cmp.i.i.i60.not = icmp eq i32 %or.i.i.i59, 0
  br i1 %cmp.i.i.i60.not, label %alx_read_macaddr.exit62.if.end9_crit_edge, label %alx_read_macaddr.exit62.cleanup_crit_edge

alx_read_macaddr.exit62.cleanup_crit_edge:        ; preds = %alx_read_macaddr.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_read_macaddr.exit62.if.end9_crit_edge:        ; preds = %alx_read_macaddr.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %alx_read_macaddr.exit62.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  %49 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %50, i32 516
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #5, !srcloc !19
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and = and i32 %52, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end22_crit_edge, label %for.body.i71.preheader

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.body.i71.preheader:                           ; preds = %if.end9
  %53 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i68108 = getelementptr i8, ptr %54, i32 516
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68108) #5, !srcloc !19
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and.i69109 = and i32 %56, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69109)
  %cmp1.i70110 = icmp eq i32 %and.i69109, 0
  br i1 %cmp1.i70110, label %for.body.i71.preheader.if.end14_crit_edge, label %for.body.i71.preheader.if.end3.i76_crit_edge

for.body.i71.preheader.if.end3.i76_crit_edge:     ; preds = %for.body.i71.preheader
  br label %if.end3.i76

for.body.i71.preheader.if.end14_crit_edge:        ; preds = %for.body.i71.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.i71:                                     ; preds = %if.end3.i76
  %57 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %58, i32 516
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #5, !srcloc !19
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and.i69 = and i32 %60, 33
  %cmp1.i70 = icmp eq i32 %and.i69, 0
  br i1 %cmp1.i70, label %for.body.i71.alx_wait_reg.exit78_crit_edge, label %for.body.i71.if.end3.i76_crit_edge

for.body.i71.if.end3.i76_crit_edge:               ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i76

for.body.i71.alx_wait_reg.exit78_crit_edge:       ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit78

if.end3.i76:                                      ; preds = %for.body.i71.if.end3.i76_crit_edge, %for.body.i71.preheader.if.end3.i76_crit_edge
  %i.010.i67111 = phi i32 [ %inc.i73, %for.body.i71.if.end3.i76_crit_edge ], [ 0, %for.body.i71.preheader.if.end3.i76_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #5
  %inc.i73 = add nuw nsw i32 %i.010.i67111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i73)
  %exitcond.not.i75 = icmp eq i32 %inc.i73, 100
  br i1 %exitcond.not.i75, label %if.end3.i76.alx_wait_reg.exit78_crit_edge, label %for.body.i71

if.end3.i76.alx_wait_reg.exit78_crit_edge:        ; preds = %if.end3.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit78

alx_wait_reg.exit78:                              ; preds = %if.end3.i76.alx_wait_reg.exit78_crit_edge, %for.body.i71.alx_wait_reg.exit78_crit_edge
  %val.1 = phi i32 [ %52, %if.end3.i76.alx_wait_reg.exit78_crit_edge ], [ %60, %for.body.i71.alx_wait_reg.exit78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.010.i67111)
  %cmp.i74.le = icmp ult i32 %i.010.i67111, 99
  br i1 %cmp.i74.le, label %alx_wait_reg.exit78.if.end14_crit_edge, label %alx_wait_reg.exit78.cleanup_crit_edge

alx_wait_reg.exit78.cleanup_crit_edge:            ; preds = %alx_wait_reg.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_wait_reg.exit78.if.end14_crit_edge:           ; preds = %alx_wait_reg.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %alx_wait_reg.exit78.if.end14_crit_edge, %for.body.i71.preheader.if.end14_crit_edge
  %val.1126 = phi i32 [ %val.1, %alx_wait_reg.exit78.if.end14_crit_edge ], [ %56, %for.body.i71.preheader.if.end14_crit_edge ]
  %or15 = or i32 %val.1126, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %or15) #5
  %63 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %64, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %62) #5, !srcloc !18
  %65 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i84116 = getelementptr i8, ptr %66, i32 516
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84116) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %68 = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp1.i86117 = icmp eq i32 %68, 0
  br i1 %cmp1.i86117, label %if.end14.if.end18_crit_edge, label %if.end14.if.end3.i92_crit_edge

if.end14.if.end3.i92_crit_edge:                   ; preds = %if.end14
  br label %if.end3.i92

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i87:                                     ; preds = %if.end3.i92
  %69 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %70, i32 516
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %72 = and i32 %71, 16777216
  %cmp1.i86 = icmp eq i32 %72, 0
  br i1 %cmp1.i86, label %for.body.i87.alx_wait_reg.exit94_crit_edge, label %for.body.i87.if.end3.i92_crit_edge

for.body.i87.if.end3.i92_crit_edge:               ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i92

for.body.i87.alx_wait_reg.exit94_crit_edge:       ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit94

if.end3.i92:                                      ; preds = %for.body.i87.if.end3.i92_crit_edge, %if.end14.if.end3.i92_crit_edge
  %i.010.i83118 = phi i32 [ %inc.i89, %for.body.i87.if.end3.i92_crit_edge ], [ 0, %if.end14.if.end3.i92_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #5
  %inc.i89 = add nuw nsw i32 %i.010.i83118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i89)
  %exitcond.not.i91 = icmp eq i32 %inc.i89, 100
  br i1 %exitcond.not.i91, label %if.end3.i92.alx_wait_reg.exit94_crit_edge, label %for.body.i87

if.end3.i92.alx_wait_reg.exit94_crit_edge:        ; preds = %if.end3.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_wait_reg.exit94

alx_wait_reg.exit94:                              ; preds = %if.end3.i92.alx_wait_reg.exit94_crit_edge, %for.body.i87.alx_wait_reg.exit94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.010.i83118)
  %cmp.i90.le = icmp ult i32 %i.010.i83118, 99
  br i1 %cmp.i90.le, label %alx_wait_reg.exit94.if.end18_crit_edge, label %alx_wait_reg.exit94.cleanup_crit_edge

alx_wait_reg.exit94.cleanup_crit_edge:            ; preds = %alx_wait_reg.exit94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alx_wait_reg.exit94.if.end18_crit_edge:           ; preds = %alx_wait_reg.exit94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %alx_wait_reg.exit94.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %call19 = tail call fastcc zeroext i1 @alx_read_macaddr(ptr noundef %hw, ptr noundef %addr)
  br i1 %call19, label %if.end18.cleanup_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %alx_wait_reg.exit94.cleanup_crit_edge, %alx_wait_reg.exit78.cleanup_crit_edge, %alx_read_macaddr.exit62.cleanup_crit_edge, %alx_wait_reg.exit50.cleanup_crit_edge, %alx_wait_reg.exit.cleanup_crit_edge, %alx_read_macaddr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end22 ], [ 0, %alx_read_macaddr.exit.cleanup_crit_edge ], [ -5, %alx_wait_reg.exit.cleanup_crit_edge ], [ -5, %alx_wait_reg.exit50.cleanup_crit_edge ], [ 0, %alx_read_macaddr.exit62.cleanup_crit_edge ], [ -5, %alx_wait_reg.exit78.cleanup_crit_edge ], [ -5, %alx_wait_reg.exit94.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @alx_read_macaddr(ptr nocapture noundef readonly %hw, ptr nocapture noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 5260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !19
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %add.ptr = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %3, ptr %add.ptr, align 1
  %conv = trunc i32 %7 to i16
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %addr, align 1
  %10 = load i32, ptr %addr, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %entry.is_valid_ether_addr.exit_crit_edge

entry.is_valid_ether_addr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_valid_ether_addr.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  br label %is_valid_ether_addr.exit

is_valid_ether_addr.exit:                         ; preds = %land.rhs.i, %entry.is_valid_ether_addr.exit_crit_edge
  %14 = phi i1 [ false, %entry.is_valid_ether_addr.exit_crit_edge ], [ %cmp.i.i, %land.rhs.i ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_set_macaddr(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %addr, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 5256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !18
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %addr, align 1
  %conv = zext i16 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv) #5
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 5260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_reset_mac(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %4 = icmp ult i8 %3, 16
  %5 = and i8 %3, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %6 = icmp eq i8 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %10, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 0) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %12, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 128) #5, !srcloc !18
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 5536
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %16 = and i32 %15, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %18, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %16) #5, !srcloc !18
  %19 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %20, i32 5520
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %22 = and i32 %21, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %24, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %22) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 8589920) #5
  %rx_ctrl.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 9
  %26 = ptrtoint ptr %rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_ctrl.i, align 8
  %and3.i = and i32 %27, -4
  store i32 %and3.i, ptr %rx_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #5
  %29 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %30, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %28) #5, !srcloc !18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i16 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %32, i32 5136
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %34 = and i32 %33, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i16 %i.029.i, 1
  %cmp.i = icmp ult i16 %i.029.i, 49
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %37, i32 5600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 16777216) #5, !srcloc !18
  br i1 %6, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %39, i32 4856
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #5, !srcloc !19
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and = and i32 %41, 4104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %and11 = and i32 %41, -4105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %and11) #5
  %43 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %44, i32 4856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %42) #5, !srcloc !18
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %pmctrl.0 = phi i32 [ %41, %if.then10 ], [ %41, %if.then7.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %45 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %46, i32 5120
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %48 = or i32 %47, 1090519040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %50, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %48) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #5
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end13
  %i.0153 = phi i32 [ 0, %if.end13 ], [ %inc, %if.end21.for.body_crit_edge ]
  %52 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %53, i32 5600
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp18 = icmp eq i32 %54, 0
  br i1 %cmp18, label %for.end, label %if.end21

if.end21:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.end21.cleanup_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.0153)
  %cmp23158 = icmp ult i32 %i.0153, 50
  br i1 %cmp23158, label %for.end.for.body25_crit_edge, label %for.end34

for.end.for.body25_crit_edge:                     ; preds = %for.end
  br label %for.body25

for.body25:                                       ; preds = %if.end31.for.body25_crit_edge, %for.end.for.body25_crit_edge
  %i.1159 = phi i32 [ %inc33, %if.end31.for.body25_crit_edge ], [ %i.0153, %for.end.for.body25_crit_edge ]
  %56 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %57, i32 5120
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #5, !srcloc !19
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and27 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %if.end38.loopexit, label %if.end31

if.end31:                                         ; preds = %for.body25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #5
  %inc33 = add nuw nsw i32 %i.1159, 1
  %exitcond165.not = icmp eq i32 %inc33, 50
  br i1 %exitcond165.not, label %if.end31.cleanup_crit_edge, label %if.end31.for.body25_crit_edge

if.end31.for.body25_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.0153)
  %cmp35 = icmp eq i32 %i.0153, 50
  br i1 %cmp35, label %for.end34.cleanup_crit_edge, label %for.end34.if.end38_crit_edge

for.end34.if.end38_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

for.end34.cleanup_crit_edge:                      ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38.loopexit:                                ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = or i32 %59, 4096
  br label %if.end38

if.end38:                                         ; preds = %if.end38.loopexit, %for.end34.if.end38_crit_edge
  %val.3150 = phi i32 [ 4096, %for.end34.if.end38_crit_edge ], [ %phi.bo, %if.end38.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #5
  br i1 %6, label %if.then40, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %val.3150) #5
  %63 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %64, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %62) #5, !srcloc !18
  %and42 = and i32 %pmctrl.0, 4104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then40.if.end46_crit_edge, label %if.then44

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %pmctrl.0) #5
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %67, i32 4856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %65) #5, !srcloc !18
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then40.if.end46_crit_edge, %if.end38.if.end46_crit_edge
  %68 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i130 = getelementptr i8, ptr %69, i32 6604
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %71 = and i32 %70, -50331649
  %72 = or i32 %71, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %74, i32 6604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %72) #5, !srcloc !18
  %75 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %76, i32 6592
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #5, !srcloc !19
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp.i131 = icmp ugt i8 %3, 15
  br i1 %cmp.i131, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %or4.i = and i32 %78, -14680073
  %and5.i = or i32 %or4.i, 14680064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %79 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #5
  %80 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %81, i32 6592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %79) #5, !srcloc !18
  %or6.i = or i32 %78, 14680072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #5
  %83 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %84, i32 6592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %82) #5, !srcloc !18
  %85 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %86, i32 6600
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #5, !srcloc !19
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and8.i = and i32 %88, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %89 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #5
  %90 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %91, i32 6600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %89) #5, !srcloc !18
  %or9.i = or i32 %88, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %92 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #5
  %93 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %94, i32 6600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %92) #5, !srcloc !18
  br label %alx_reset_osc.exit

if.else.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i = and i32 %78, -4105
  %or14.i = or i32 %and13.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #5
  %96 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %97, i32 6592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %95) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %98 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  %99 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %100, i32 6592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %98) #5, !srcloc !18
  br label %alx_reset_osc.exit

alx_reset_osc.exit:                               ; preds = %if.else.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 4294960) #5
  %102 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %103, i32 6604
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %105 = and i32 %104, -50331649
  %106 = or i32 %105, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %108, i32 6604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %106) #5, !srcloc !18
  %109 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %110, i32 6592
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #5, !srcloc !19
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %spec.select.v = select i1 %4, i32 -4105, i32 -9
  %spec.select = and i32 %112, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %113 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  %114 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %115, i32 6592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %113) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 4294960) #5
  %117 = ptrtoint ptr %rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  %120 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %121, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %119) #5, !srcloc !18
  %122 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %123, i32 5156
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %125 = or i32 %124, 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %126 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %127, i32 5156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %125) #5, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %alx_reset_osc.exit, %for.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %alx_reset_osc.exit ], [ -5, %for.end34.cleanup_crit_edge ], [ -5, %if.end31.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_reset_phy(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_val) #5
  %0 = ptrtoint ptr %phy_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_val, align 2, !annotation !21
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 5132
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %4 = and i32 %3, 1518599679
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or1 = or i32 %5, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or1) #5
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %8, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %6) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %or2 = or i32 %5, 7169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or2) #5
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %12, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %10) #5, !srcloc !18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 80
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 41, i16 noundef zeroext 4765)
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext -17525)
  %call5 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32670, i16 noundef zeroext 3)
  %14 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %15, i32 5184
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %19, i32 5184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %17) #5, !srcloc !18
  %call8 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext 60, i16 noundef zeroext 0)
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 18, i16 noundef zeroext 19460)
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 11334)
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 54, i16 noundef zeroext -7892)
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 751)
  call fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext 61, ptr noundef nonnull %phy_val)
  %20 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_val, align 2
  %22 = and i16 %21, -129
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 61, i16 noundef zeroext %22)
  %call17 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32729, i16 noundef zeroext -30203)
  %call18 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32733, i16 noundef zeroext 0)
  %lnk_patch = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 19
  %23 = ptrtoint ptr %lnk_patch to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lnk_patch, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32765, ptr noundef nonnull %phy_val)
  %25 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %phy_val, align 2
  %27 = or i16 %26, -32768
  %call23 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32765, i16 noundef zeroext %27)
  call fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext 61, ptr noundef nonnull %phy_val)
  %28 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_val, align 2
  %30 = or i16 %29, -32768
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 61, i16 noundef zeroext %30)
  %call29 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32763, ptr noundef nonnull %phy_val)
  %31 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %phy_val, align 2
  %33 = or i16 %32, 16384
  %call33 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32763, i16 noundef zeroext %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %mdio_lock.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %34 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not.i.i.i = icmp eq i32 %35, -1
  %or18.i.i.i = select i1 %cmp.not.i.i.i, i32 131206144, i32 13765632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i) #5
  %37 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %38, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %36) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end
  %i.03.i.i.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %39 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %40, i32 5140
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit

alx_write_phy_reg.exit:                           ; preds = %if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge, %for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i.i = icmp eq i32 %1, -1
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 117440512, i32 0
  %conv15.i.i.i = zext i16 %reg to i32
  %or11.i.i.i = or i32 %cond.i.i.i, %conv15.i.i.i
  %or18.i.i.i = or i32 %or11.i.i.i, 14483456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i) #5
  %hw_addr.i26.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %2) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry
  %i.03.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i.__alx_write_phy_dbg.exit_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

if.end.i.i.i.i.__alx_write_phy_dbg.exit_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_dbg.exit

if.end.i:                                         ; preds = %for.body.i.i.i.i
  %10 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not.i.i2.i = icmp eq i32 %11, -1
  %cond.i.i3.i = select i1 %cmp.not.i.i2.i, i32 117440512, i32 0
  %conv15.i.i4.i = zext i16 %data to i32
  %or11.i.i5.i = or i32 %cond.i.i3.i, %conv15.i.i4.i
  %or18.i.i7.i = or i32 %or11.i.i5.i, 14548992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i7.i) #5
  %13 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i9.i = getelementptr i8, ptr %14, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i9.i, i32 %12) #5, !srcloc !18
  br label %for.body.i.i.i13.i

for.body.i.i.i13.i:                               ; preds = %if.end.i.i.i16.i.for.body.i.i.i13.i_crit_edge, %if.end.i
  %i.03.i.i.i10.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i.i14.i, %if.end.i.i.i16.i.for.body.i.i.i13.i_crit_edge ]
  %15 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i11.i = getelementptr i8, ptr %16, i32 5140
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i11.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i12.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i12.i, label %for.body.i.i.i13.i.__alx_write_phy_dbg.exit_crit_edge, label %if.end.i.i.i16.i

for.body.i.i.i13.i.__alx_write_phy_dbg.exit_crit_edge: ; preds = %for.body.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_dbg.exit

if.end.i.i.i16.i:                                 ; preds = %for.body.i.i.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #5
  %inc.i.i.i14.i = add nuw nsw i32 %i.03.i.i.i10.i, 1
  %exitcond.not.i.i.i15.i = icmp eq i32 %inc.i.i.i14.i, 120
  br i1 %exitcond.not.i.i.i15.i, label %if.end.i.i.i16.i.__alx_write_phy_dbg.exit_crit_edge, label %if.end.i.i.i16.i.for.body.i.i.i13.i_crit_edge

if.end.i.i.i16.i.for.body.i.i.i13.i_crit_edge:    ; preds = %if.end.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i13.i

if.end.i.i.i16.i.__alx_write_phy_dbg.exit_crit_edge: ; preds = %if.end.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_write_phy_dbg.exit

__alx_write_phy_dbg.exit:                         ; preds = %if.end.i.i.i16.i.__alx_write_phy_dbg.exit_crit_edge, %for.body.i.i.i13.i.__alx_write_phy_dbg.exit_crit_edge, %if.end.i.i.i.i.__alx_write_phy_dbg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i.i = icmp eq i32 %1, -1
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 117440512, i32 0
  %conv15.i.i.i = zext i16 %reg to i32
  %or11.i.i.i = or i32 %cond.i.i.i, %conv15.i.i.i
  %or18.i.i.i = or i32 %or11.i.i.i, 14483456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i) #5
  %hw_addr.i26.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %2) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry
  %i.03.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i.__alx_read_phy_dbg.exit_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

if.end.i.i.i.i.__alx_read_phy_dbg.exit_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_read_phy_dbg.exit

if.end.i:                                         ; preds = %for.body.i.i.i.i
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %pdata, align 2
  %11 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.not.i.i2.i = icmp eq i32 %12, -1
  %or11.i.i4.i = select i1 %cmp.not.i.i2.i, i32 134086656, i32 16646144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i4.i) #5
  %14 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i30.i.i.i = getelementptr i8, ptr %15, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i, i32 %13) #5, !srcloc !18
  br label %for.body.i.i.i8.i

for.body.i.i.i8.i:                                ; preds = %if.end.i.i.i11.i.for.body.i.i.i8.i_crit_edge, %if.end.i
  %i.03.i.i.i5.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i.i9.i, %if.end.i.i.i11.i.for.body.i.i.i8.i_crit_edge ]
  %16 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i6.i = getelementptr i8, ptr %17, i32 5140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i6.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i7.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i7.i, label %if.end14.i.i.i, label %if.end.i.i.i11.i

if.end.i.i.i11.i:                                 ; preds = %for.body.i.i.i8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #5
  %inc.i.i.i9.i = add nuw nsw i32 %i.03.i.i.i5.i, 1
  %exitcond.not.i.i.i10.i = icmp eq i32 %inc.i.i.i9.i, 120
  br i1 %exitcond.not.i.i.i10.i, label %if.end.i.i.i11.i.__alx_read_phy_dbg.exit_crit_edge, label %if.end.i.i.i11.i.for.body.i.i.i8.i_crit_edge

if.end.i.i.i11.i.for.body.i.i.i8.i_crit_edge:     ; preds = %if.end.i.i.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i8.i

if.end.i.i.i11.i.__alx_read_phy_dbg.exit_crit_edge: ; preds = %if.end.i.i.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__alx_read_phy_dbg.exit

if.end14.i.i.i:                                   ; preds = %for.body.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %22, i32 5140
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i) #5, !srcloc !19
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv16.i.i.i = trunc i32 %24 to i16
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv16.i.i.i, ptr %pdata, align 2
  br label %__alx_read_phy_dbg.exit

__alx_read_phy_dbg.exit:                          ; preds = %if.end14.i.i.i, %if.end.i.i.i11.i.__alx_read_phy_dbg.exit_crit_edge, %if.end.i.i.i.i.__alx_read_phy_dbg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_reset_pcie(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %val16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16) #5
  %4 = ptrtoint ptr %val16 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val16, align 2, !annotation !21
  %call1 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %val16) #5
  %5 = ptrtoint ptr %val16 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val16, align 2
  %conv2 = zext i16 %6 to i32
  %and = and i32 %conv2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and4 = and i32 %conv2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = and i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = and i16 %6, -1032
  %8 = or i16 %7, 7
  %9 = ptrtoint ptr %val16 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %val16, align 2
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %call10 = call i32 @pci_write_config_word(ptr noundef %11, i32 noundef 4, i16 noundef zeroext %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 5280
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %16, i32 5280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 0) #5, !srcloc !18
  %17 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %18, i32 4356
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %20 = and i32 %19, -524289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %22, i32 4356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %20) #5, !srcloc !18
  %23 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %24, i32 268
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %26 = and i32 %25, -270532609
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %28, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %26) #5, !srcloc !18
  %29 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %30, i32 5120
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #5, !srcloc !19
  %32 = call i32 @llvm.bswap.i32(i32 %31) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %33 = icmp ult i8 %3, 16
  br i1 %33, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %revision.i79 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %revision.i79 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %revision.i79, align 4
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not = icmp eq i8 %38, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true
  %39 = and i32 %32, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4128, i32 %39)
  %.not = icmp eq i32 %39, 4128
  br i1 %.not, label %if.then21.if.end43_crit_edge, label %if.then28

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %or30 = or i32 %32, 4128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %40 = call i32 @llvm.bswap.i32(i32 %or30) #5
  %41 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %42, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %40) #5, !srcloc !18
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %43 = and i32 %32, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %43)
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %if.else.if.end43_crit_edge, label %if.then39

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and40 = and i32 %32, -4129
  %or41 = or i32 %and40, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %45 = call i32 @llvm.bswap.i32(i32 %or41) #5
  %46 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %47, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %45) #5, !srcloc !18
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else.if.end43_crit_edge, %if.then28, %if.then21.if.end43_crit_edge
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 8
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %revision.i.i, align 4
  %52 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 4856
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %55 = and i32 %54, 122093584
  %56 = call i32 @llvm.bswap.i32(i32 %55) #5
  %or11.i = or i32 %56, 217358400
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %51)
  %57 = icmp ult i8 %51, 16
  br i1 %57, label %land.lhs.true.i, label %if.end43.alx_enable_aspm.exit_crit_edge

if.end43.alx_enable_aspm.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_enable_aspm.exit

land.lhs.true.i:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %revision.i42.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %revision.i42.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %revision.i42.i, align 4
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not.i = icmp eq i8 %62, 0
  %or19.i = or i32 %56, 217358448
  %spec.select.i = select i1 %tobool.i.not.i, i32 %or11.i, i32 %or19.i
  br label %alx_enable_aspm.exit

alx_enable_aspm.exit:                             ; preds = %land.lhs.true.i, %if.end43.alx_enable_aspm.exit_crit_edge
  %pmctrl.0.i = phi i32 [ %or11.i, %if.end43.alx_enable_aspm.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %or25.i = or i32 %pmctrl.0.i, 1073745928
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %63 = call i32 @llvm.bswap.i32(i32 %or25.i) #5
  %64 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %65, i32 4856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %63) #5, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 2147480) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_enable_aspm(ptr nocapture noundef readonly %hw, i1 noundef zeroext %l0s_en, i1 noundef zeroext %l1_en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4856
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %7 = and i32 %6, 122093584
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or11 = or i32 %8, 217358400
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %9 = icmp ult i8 %3, 16
  br i1 %9, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %revision.i42 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %revision.i42 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision.i42, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not = icmp eq i8 %14, 0
  %or19 = or i32 %8, 217358448
  %spec.select = select i1 %tobool.i.not, i32 %or11, i32 %or19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %pmctrl.0 = phi i32 [ %or11, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %or21 = or i32 %pmctrl.0, 1073745920
  %spec.select41 = select i1 %l0s_en, i32 %or21, i32 %pmctrl.0
  %or25 = or i32 %spec.select41, 1073741832
  %pmctrl.2 = select i1 %l1_en, i32 %or25, i32 %spec.select41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %pmctrl.2) #5
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 4856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %15) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_start_mac(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %3) #5, !srcloc !18
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %7, i32 5520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %9 = or i32 %8, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %11, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %9) #5, !srcloc !18
  %rx_ctrl = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 9
  %12 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ctrl, align 8
  %duplex = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 13
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  %and = and i32 %13, -3145764
  %masksel = select i1 %cmp, i32 32, i32 0
  %link_speed = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %16 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %17)
  %cmp6 = icmp eq i32 %17, 1000
  %cond = select i1 %cmp6, i32 2097152, i32 1048576
  %mac.0 = or i32 %and, %masksel
  %or9 = or i32 %mac.0, %cond
  %or10 = or i32 %or9, 3
  %18 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or10, ptr %rx_ctrl, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or10) #5
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %21, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %19) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_cfg_mac_flowcontrol(ptr nocapture noundef %hw, i8 noundef zeroext %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %fc to i32
  %rx_ctrl1 = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %rx_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ctrl1, align 8
  %and2 = and i32 %1, -13
  %and = shl nuw nsw i32 %conv, 3
  %2 = and i32 %and, 8
  %and2.sink = or i32 %and2, %2
  %rx_ctrl10 = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 9
  %and4 = shl nuw nsw i32 %conv, 1
  %3 = and i32 %and4, 4
  %and11.sink = or i32 %and2.sink, %3
  %4 = ptrtoint ptr %rx_ctrl10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and11.sink, ptr %rx_ctrl10, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and11.sink) #5
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_setup_speed_duplex(ptr noundef %hw, i32 noundef %ethadv, i8 noundef zeroext %flowctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i.i = icmp eq i32 %1, -1
  %or18.i.i.i = select i1 %cmp.not.i.i.i, i32 131923968, i32 14483456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i) #5
  %hw_addr.i26.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %2) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry
  %i.03.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit

alx_write_phy_reg.exit:                           ; preds = %if.end.i.i.i.i.alx_write_phy_reg.exit_crit_edge, %for.body.i.i.i.i.alx_write_phy_reg.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  %10 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 6148
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %13 = and i32 %12, -57376
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and2 = and i32 %ethadv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else48, label %if.then

if.then:                                          ; preds = %alx_write_phy_reg.exit
  %and.i = shl i32 %ethadv, 5
  %15 = and i32 %and.i, 480
  %and16.i = lshr i32 %ethadv, 3
  %16 = and i32 %and16.i, 1024
  %17 = or i32 %15, %16
  %18 = and i32 %and16.i, 2048
  %19 = or i32 %17, %18
  %20 = trunc i32 %19 to i16
  %conv5 = or i16 %20, 1
  %conv6 = zext i8 %flowctrl to i32
  %and7 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.if.end33_crit_edge, label %if.then9

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then9:                                         ; preds = %if.then
  %and11 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and25 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select.v = select i1 %tobool26.not, i16 24577, i16 8193
  %spec.select = or i16 %spec.select.v, %20
  br label %if.end33

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i16 %20, 16385
  %spec.select106 = select i1 %tobool26.not, i16 %conv5, i16 %21
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then13, %if.then.if.end33_crit_edge
  %adv.0 = phi i16 [ %conv5, %if.then.if.end33_crit_edge ], [ %spec.select, %if.then13 ], [ %spec.select106, %if.else ]
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i, align 2
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.i.not = icmp eq i16 %26, 0
  %27 = shl i32 %ethadv, 4
  %conv37 = and i32 %27, 768
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %28 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.not.i.i.i110 = icmp eq i32 %29, -1
  %cond.i.i.i111 = select i1 %cmp.not.i.i.i110, i32 117440512, i32 0
  %conv15.i.i.i = zext i16 %adv.0 to i32
  %or11.i.i.i = or i32 %cond.i.i.i111, %conv15.i.i.i
  %or18.i.i.i113 = or i32 %or11.i.i.i, 12845056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i113) #5
  %31 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i115 = getelementptr i8, ptr %32, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i115, i32 %30) #5, !srcloc !18
  br label %for.body.i.i.i.i119

for.body.i.i.i.i119:                              ; preds = %if.end.i.i.i.i122.for.body.i.i.i.i119_crit_edge, %if.end33
  %i.03.i.i.i.i116 = phi i32 [ 0, %if.end33 ], [ %inc.i.i.i.i120, %if.end.i.i.i.i122.for.body.i.i.i.i119_crit_edge ]
  %33 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i117 = getelementptr i8, ptr %34, i32 5140
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i117) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i118 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i118, label %lor.lhs.false, label %if.end.i.i.i.i122

if.end.i.i.i.i122:                                ; preds = %for.body.i.i.i.i119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #5
  %inc.i.i.i.i120 = add nuw nsw i32 %i.03.i.i.i.i116, 1
  %exitcond.not.i.i.i.i121 = icmp eq i32 %inc.i.i.i.i120, 120
  br i1 %exitcond.not.i.i.i.i121, label %alx_write_phy_reg.exit124, label %if.end.i.i.i.i122.for.body.i.i.i.i119_crit_edge

if.end.i.i.i.i122.for.body.i.i.i.i119_crit_edge:  ; preds = %if.end.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i119

alx_write_phy_reg.exit124:                        ; preds = %if.end.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %if.end75

lor.lhs.false:                                    ; preds = %for.body.i.i.i.i119
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %38 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.not.i.i.i127 = icmp eq i32 %39, -1
  %cond.i.i.i128 = select i1 %cmp.not.i.i.i127, i32 117440512, i32 0
  %conv37.op.op = or i32 %conv37, 13172736
  %or14.i.i.i131 = select i1 %tobool.i.not, i32 13172736, i32 %conv37.op.op
  %or18.i.i.i132 = or i32 %or14.i.i.i131, %cond.i.i.i128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i132) #5
  %41 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i134 = getelementptr i8, ptr %42, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i134, i32 %40) #5, !srcloc !18
  br label %for.body.i.i.i.i138

for.body.i.i.i.i138:                              ; preds = %if.end.i.i.i.i141.for.body.i.i.i.i138_crit_edge, %lor.lhs.false
  %i.03.i.i.i.i135 = phi i32 [ 0, %lor.lhs.false ], [ %inc.i.i.i.i139, %if.end.i.i.i.i141.for.body.i.i.i.i138_crit_edge ]
  %43 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i136 = getelementptr i8, ptr %44, i32 5140
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i136) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i.i137 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i.i137, label %lor.lhs.false43, label %if.end.i.i.i.i141

if.end.i.i.i.i141:                                ; preds = %for.body.i.i.i.i138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #5
  %inc.i.i.i.i139 = add nuw nsw i32 %i.03.i.i.i.i135, 1
  %exitcond.not.i.i.i.i140 = icmp eq i32 %inc.i.i.i.i139, 120
  br i1 %exitcond.not.i.i.i.i140, label %alx_write_phy_reg.exit143, label %if.end.i.i.i.i141.for.body.i.i.i.i138_crit_edge

if.end.i.i.i.i141.for.body.i.i.i.i138_crit_edge:  ; preds = %if.end.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i138

alx_write_phy_reg.exit143:                        ; preds = %if.end.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %if.end75

lor.lhs.false43:                                  ; preds = %for.body.i.i.i.i138
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %48 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.not.i.i.i146 = icmp eq i32 %49, -1
  %or18.i.i.i149 = select i1 %cmp.not.i.i.i146, i32 130060800, i32 12620288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i149) #5
  %51 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i151 = getelementptr i8, ptr %52, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i151, i32 %50) #5, !srcloc !18
  br label %for.body.i.i.i.i155

for.body.i.i.i.i155:                              ; preds = %if.end.i.i.i.i158.for.body.i.i.i.i155_crit_edge, %lor.lhs.false43
  %i.03.i.i.i.i152 = phi i32 [ 0, %lor.lhs.false43 ], [ %inc.i.i.i.i156, %if.end.i.i.i.i158.for.body.i.i.i.i155_crit_edge ]
  %53 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i153 = getelementptr i8, ptr %54, i32 5140
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i153) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i.i154 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i.i154, label %for.body.i.i.i.i155.if.then71_crit_edge, label %if.end.i.i.i.i158

for.body.i.i.i.i155.if.then71_crit_edge:          ; preds = %for.body.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

if.end.i.i.i.i158:                                ; preds = %for.body.i.i.i.i155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #5
  %inc.i.i.i.i156 = add nuw nsw i32 %i.03.i.i.i.i152, 1
  %exitcond.not.i.i.i.i157 = icmp eq i32 %inc.i.i.i.i156, 120
  br i1 %exitcond.not.i.i.i.i157, label %alx_write_phy_reg.exit160, label %if.end.i.i.i.i158.for.body.i.i.i.i155_crit_edge

if.end.i.i.i.i158.for.body.i.i.i.i155_crit_edge:  ; preds = %if.end.i.i.i.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i155

alx_write_phy_reg.exit160:                        ; preds = %if.end.i.i.i.i158
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %if.end75

if.else48:                                        ; preds = %alx_write_phy_reg.exit
  %58 = add i32 %ethadv, -4
  %switch.and = and i32 %58, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %59 = select i1 %switch.selectcmp, i16 -24576, i16 -32768
  %60 = zext i32 %ethadv to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ethadv, label %if.else48.if.end67_crit_edge [
    i32 2, label %if.else48.if.then63_crit_edge
    i32 8, label %if.else48.if.then63_crit_edge217
  ]

if.else48.if.then63_crit_edge217:                 ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63

if.else48.if.then63_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63

if.else48.if.end67_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then63:                                        ; preds = %if.else48.if.then63_crit_edge, %if.else48.if.then63_crit_edge217
  %61 = or i16 %59, 256
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.else48.if.end67_crit_edge
  %cr.1 = phi i16 [ %61, %if.then63 ], [ %59, %if.else48.if.end67_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %62 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.not.i.i.i163 = icmp eq i32 %63, -1
  %cond.i.i.i164 = select i1 %cmp.not.i.i.i163, i32 117440512, i32 0
  %conv15.i.i.i165 = zext i16 %cr.1 to i32
  %or14.i.i.i166 = or i32 %cond.i.i.i164, %conv15.i.i.i165
  %or18.i.i.i167 = or i32 %or14.i.i.i166, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i167) #5
  %65 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i169 = getelementptr i8, ptr %66, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i169, i32 %64) #5, !srcloc !18
  br label %for.body.i.i.i.i173

for.body.i.i.i.i173:                              ; preds = %if.end.i.i.i.i176.for.body.i.i.i.i173_crit_edge, %if.end67
  %i.03.i.i.i.i170 = phi i32 [ 0, %if.end67 ], [ %inc.i.i.i.i174, %if.end.i.i.i.i176.for.body.i.i.i.i173_crit_edge ]
  %67 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i171 = getelementptr i8, ptr %68, i32 5140
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i171) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i.i.i172 = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i.i.i172, label %for.body.i.i.i.i173.if.then71_crit_edge, label %if.end.i.i.i.i176

for.body.i.i.i.i173.if.then71_crit_edge:          ; preds = %for.body.i.i.i.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

if.end.i.i.i.i176:                                ; preds = %for.body.i.i.i.i173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #5
  %inc.i.i.i.i174 = add nuw nsw i32 %i.03.i.i.i.i170, 1
  %exitcond.not.i.i.i.i175 = icmp eq i32 %inc.i.i.i.i174, 120
  br i1 %exitcond.not.i.i.i.i175, label %if.end69, label %if.end.i.i.i.i176.for.body.i.i.i.i173_crit_edge

if.end.i.i.i.i176.for.body.i.i.i.i173_crit_edge:  ; preds = %if.end.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i173

if.end69:                                         ; preds = %if.end.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %if.end75

if.then71:                                        ; preds = %for.body.i.i.i.i173.if.then71_crit_edge, %for.body.i.i.i.i155.if.then71_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %72 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.not.i.i.i181 = icmp eq i32 %73, -1
  %or18.i.i.i184 = select i1 %cmp.not.i.i.i181, i32 131924031, i32 14483519
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %74 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i.i184) #5
  %75 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i27.i.i.i186 = getelementptr i8, ptr %76, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i186, i32 %74) #5, !srcloc !18
  br label %for.body.i.i.i.i190

for.body.i.i.i.i190:                              ; preds = %if.end.i.i.i.i193.for.body.i.i.i.i190_crit_edge, %if.then71
  %i.03.i.i.i.i187 = phi i32 [ 0, %if.then71 ], [ %inc.i.i.i.i191, %if.end.i.i.i.i193.for.body.i.i.i.i190_crit_edge ]
  %77 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i.i.i.i.i188 = getelementptr i8, ptr %78, i32 5140
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i188) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %80 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i.i.i189 = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i.i.i189, label %for.body.i.i.i.i190.alx_write_phy_reg.exit195_crit_edge, label %if.end.i.i.i.i193

for.body.i.i.i.i190.alx_write_phy_reg.exit195_crit_edge: ; preds = %for.body.i.i.i.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit195

if.end.i.i.i.i193:                                ; preds = %for.body.i.i.i.i190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 2147480) #5
  %inc.i.i.i.i191 = add nuw nsw i32 %i.03.i.i.i.i187, 1
  %exitcond.not.i.i.i.i192 = icmp eq i32 %inc.i.i.i.i191, 120
  br i1 %exitcond.not.i.i.i.i192, label %if.end.i.i.i.i193.alx_write_phy_reg.exit195_crit_edge, label %if.end.i.i.i.i193.for.body.i.i.i.i190_crit_edge

if.end.i.i.i.i193.for.body.i.i.i.i190_crit_edge:  ; preds = %if.end.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i190

if.end.i.i.i.i193.alx_write_phy_reg.exit195_crit_edge: ; preds = %if.end.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_write_phy_reg.exit195

alx_write_phy_reg.exit195:                        ; preds = %if.end.i.i.i.i193.alx_write_phy_reg.exit195_crit_edge, %for.body.i.i.i.i190.alx_write_phy_reg.exit195_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %alx_write_phy_reg.exit195
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i = and i32 %ethadv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 268435456, i32 301989888
  %and5.i = and i32 %ethadv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cfg.1.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 318767104
  %and10.i = shl i32 %ethadv, 24
  %82 = and i32 %and10.i, 67108864
  %and15.i = and i32 %ethadv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cfg.3.v.i = select i1 %tobool16.not.i, i32 %82, i32 83886080
  %and20.i = shl i32 %ethadv, 23
  %83 = and i32 %and20.i, 134217728
  %cfg.3.i = or i32 %cfg.3.v.i, %83
  %84 = or i32 %cfg.3.i, %cfg.1.i
  %and25.i = and i32 %ethadv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %or28.i = or i32 %84, 83886080
  %cfg.5.i = select i1 %tobool26.not.i, i32 %84, i32 %or28.i
  %and30.i = lshr i32 %ethadv, 3
  %85 = and i32 %and30.i, 3072
  %86 = or i32 %cfg.5.i, %85
  br label %ethadv_to_hw_cfg.exit

if.else.i:                                        ; preds = %alx_write_phy_reg.exit195
  %switch.tableidx = add i32 %ethadv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %87 = icmp ult i32 %switch.tableidx, 8
  br i1 %87, label %switch.lookup, label %if.else.i.ethadv_to_hw_cfg.exit_crit_edge

if.else.i.ethadv_to_hw_cfg.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethadv_to_hw_cfg.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.alx_setup_speed_duplex, i32 0, i32 %switch.tableidx
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ethadv_to_hw_cfg.exit

ethadv_to_hw_cfg.exit:                            ; preds = %switch.lookup, %if.else.i.ethadv_to_hw_cfg.exit_crit_edge, %if.then.i
  %cfg.7.i = phi i32 [ 0, %if.else.i.ethadv_to_hw_cfg.exit_crit_edge ], [ %86, %if.then.i ], [ %switch.load, %switch.lookup ]
  %or74 = or i32 %cfg.7.i, %14
  br label %if.end75

if.end75:                                         ; preds = %ethadv_to_hw_cfg.exit, %if.end69, %alx_write_phy_reg.exit160, %alx_write_phy_reg.exit143, %alx_write_phy_reg.exit124
  %err.0207 = phi i32 [ -110, %if.end69 ], [ 0, %ethadv_to_hw_cfg.exit ], [ -16, %alx_write_phy_reg.exit160 ], [ -16, %alx_write_phy_reg.exit143 ], [ -16, %alx_write_phy_reg.exit124 ]
  %val.0 = phi i32 [ %14, %if.end69 ], [ %or74, %ethadv_to_hw_cfg.exit ], [ %14, %alx_write_phy_reg.exit160 ], [ %14, %alx_write_phy_reg.exit143 ], [ %14, %alx_write_phy_reg.exit124 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %89 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %90 = ptrtoint ptr %hw_addr.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i26.i.i.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %91, i32 6148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %89) #5, !srcloc !18
  ret i32 %err.0207
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_post_phy_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_val) #5
  %0 = ptrtoint ptr %phy_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_val, align 2, !annotation !21
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision.i, align 4
  %.mask = and i8 %4, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %5 = icmp ult i8 %4, 16
  %or.cond150 = or i1 %5, %cmp
  br i1 %or.cond150, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_speed = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp7.not = icmp eq i32 %7, -1
  br i1 %cmp7.not, label %if.else87, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext -32762, ptr noundef nonnull %phy_val)
  %8 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_val, align 2
  %10 = and i16 %9, 255
  call fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext 35, ptr noundef nonnull %phy_val)
  %11 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phy_val, align 2
  %13 = lshr i16 %12, 8
  %14 = and i16 %13, 63
  %15 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_speed, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %16, label %if.then9.if.else_crit_edge [
    i32 1000, label %land.lhs.true21
    i32 100, label %land.lhs.true36
  ]

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true21:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp2(i16 116, i16 %10)
  %cmp23 = icmp ugt i16 %10, 116
  br i1 %cmp23, label %land.lhs.true21.if.then48_crit_edge, label %lor.lhs.false

land.lhs.true21.if.then48_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48

lor.lhs.false:                                    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp26 = icmp eq i16 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %14)
  %cmp30 = icmp ugt i16 %14, 40
  %or.cond = select i1 %cmp26, i1 %cmp30, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48

land.lhs.true36:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp2(i16 152, i16 %10)
  %cmp38 = icmp ugt i16 %10, 152
  br i1 %cmp38, label %land.lhs.true36.if.then48_crit_edge, label %lor.lhs.false40

land.lhs.true36.if.then48_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48

lor.lhs.false40:                                  ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp42 = icmp eq i16 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %14)
  %cmp46 = icmp ugt i16 %14, 44
  %or.cond148 = select i1 %cmp42, i1 %cmp46, i1 false
  br i1 %or.cond148, label %lor.lhs.false40.if.then48_crit_edge, label %lor.lhs.false40.if.else_crit_edge

lor.lhs.false40.if.else_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false40.if.then48_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false40.if.then48_crit_edge, %land.lhs.true36.if.then48_crit_edge, %lor.lhs.false.if.then48_crit_edge, %land.lhs.true21.if.then48_crit_edge
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 21, i16 noundef zeroext 12816)
  %call50 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32742, ptr noundef nonnull %phy_val)
  %18 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_val, align 2
  %20 = or i16 %19, 64
  br label %if.end60

if.else:                                          ; preds = %lor.lhs.false40.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %if.then9.if.else_crit_edge
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 21, i16 noundef zeroext 12832)
  %call55 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32742, ptr noundef nonnull %phy_val)
  %21 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_val, align 2
  %23 = and i16 %22, -65
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then48
  %.sink = phi i16 [ %23, %if.else ], [ %20, %if.then48 ]
  %call59 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32742, i16 noundef zeroext %.sink)
  br i1 %cmp, label %land.lhs.true62, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true62:                                  ; preds = %if.end60
  %lnk_patch = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 19
  %24 = ptrtoint ptr %lnk_patch to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lnk_patch, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  br i1 %tobool63.not, label %land.lhs.true62.cleanup_crit_edge, label %if.then65

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %land.lhs.true62
  %26 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_speed, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %27, label %if.then65.cleanup_crit_edge [
    i32 100, label %if.then69
    i32 1000, label %if.then75
  ]

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 24, i16 noundef zeroext 1514)
  br label %cleanup

if.then75:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext 28, ptr noundef nonnull %phy_val)
  %29 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %phy_val, align 2
  %31 = and i16 %30, -509
  %32 = or i16 %31, 336
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 28, i16 noundef zeroext %32)
  br label %cleanup

if.else87:                                        ; preds = %if.end
  %call88 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32742, ptr noundef nonnull %phy_val)
  %33 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %phy_val, align 2
  %35 = and i16 %34, -65
  %call92 = tail call i32 @alx_write_phy_ext(ptr noundef %hw, i8 noundef zeroext 7, i16 noundef zeroext -32742, i16 noundef zeroext %35)
  br i1 %cmp, label %land.lhs.true95, label %if.else87.cleanup_crit_edge

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true95:                                  ; preds = %if.else87
  %lnk_patch96 = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 19
  %36 = ptrtoint ptr %lnk_patch96 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %lnk_patch96, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool97.not = icmp eq i8 %37, 0
  br i1 %tobool97.not, label %land.lhs.true95.cleanup_crit_edge, label %if.then99

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 24, i16 noundef zeroext 746)
  call fastcc void @alx_read_phy_dbg(ptr noundef %hw, i16 noundef zeroext 28, ptr noundef nonnull %phy_val)
  %38 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %phy_val, align 2
  %40 = and i16 %39, -509
  %41 = or i16 %40, 184
  tail call fastcc void @alx_write_phy_dbg(ptr noundef %hw, i16 noundef zeroext 28, i16 noundef zeroext %41)
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %land.lhs.true95.cleanup_crit_edge, %if.else87.cleanup_crit_edge, %if.then75, %if.then69, %if.then65.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @alx_phy_configured(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adv_cfg = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 15
  %0 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adv_cfg, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 268435456, i32 301989888
  %and5.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cfg.1.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 318767104
  %and10.i = shl i32 %1, 24
  %2 = and i32 %and10.i, 67108864
  %and15.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cfg.3.v.i = select i1 %tobool16.not.i, i32 %2, i32 83886080
  %and20.i = shl i32 %1, 23
  %3 = and i32 %and20.i, 134217728
  %cfg.3.i = or i32 %cfg.3.v.i, %3
  %4 = or i32 %cfg.3.i, %cfg.1.i
  %and25.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %5 = lshr exact i32 %4, 21
  %6 = or i32 %5, 40
  %phi.bo = select i1 %tobool26.not.i, i32 %5, i32 %6
  %phi.bo17 = and i32 %phi.bo, 255
  br label %ethadv_to_hw_cfg.exit

if.else.i:                                        ; preds = %entry
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 8
  br i1 %7, label %switch.lookup, label %if.else.i.ethadv_to_hw_cfg.exit_crit_edge

if.else.i.ethadv_to_hw_cfg.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethadv_to_hw_cfg.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.alx_phy_configured, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ethadv_to_hw_cfg.exit

ethadv_to_hw_cfg.exit:                            ; preds = %switch.lookup, %if.else.i.ethadv_to_hw_cfg.exit_crit_edge, %if.then.i
  %cfg.7.i = phi i32 [ 0, %if.else.i.ethadv_to_hw_cfg.exit_crit_edge ], [ %phi.bo17, %if.then.i ], [ %switch.load, %switch.lookup ]
  %hw_addr.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 5132
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %ethadv_to_hw_cfg.exit.alx_get_phy_config.exit.thread_crit_edge, label %if.end.i

ethadv_to_hw_cfg.exit.alx_get_phy_config.exit.thread_crit_edge: ; preds = %ethadv_to_hw_cfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_get_phy_config.exit.thread

if.end.i:                                         ; preds = %ethadv_to_hw_cfg.exit
  %13 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %14, i32 6148
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #5, !srcloc !19
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %shr.i = lshr i32 %16, 21
  %and2.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %if.end.i.alx_get_phy_config.exit.thread_crit_edge, label %if.end5.i

if.end.i.alx_get_phy_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_get_phy_config.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %mdio_lock.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i.i) #5
  %link_speed.i.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %17 = ptrtoint ptr %link_speed.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_speed.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not.i.i.i.i = icmp eq i32 %18, -1
  %or11.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 134021120, i32 16580608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i.i) #5
  %20 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i30.i.i.i.i = getelementptr i8, ptr %21, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i.i, i32 %19) #5, !srcloc !18
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end5.i
  %i.03.i.i.i.i.i = phi i32 [ 0, %if.end5.i ], [ %inc.i.i.i.i.i, %if.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %22 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %23, i32 5140
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i.i, label %alx_read_phy_reg.exit.i, label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #5
  %inc.i.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i.i, label %alx_read_phy_reg.exit.thread.i, label %if.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i.i

alx_read_phy_reg.exit.thread.i:                   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i.i) #5
  br label %alx_get_phy_config.exit.thread

alx_read_phy_reg.exit.i:                          ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i32.i.i.i.i = getelementptr i8, ptr %28, i32 5140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i.i) #5, !srcloc !19
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv16.i.i.i.i = trunc i32 %30 to i16
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %conv16.i.i.i.i)
  %cmp7.i = icmp eq i16 %conv16.i.i.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %cfg.7.i, i32 %and2.i)
  %cmp3 = icmp eq i32 %cfg.7.i, %and2.i
  %spec.select = select i1 %cmp7.i, i1 %cmp3, i1 false
  br label %alx_get_phy_config.exit.thread

alx_get_phy_config.exit.thread:                   ; preds = %alx_read_phy_reg.exit.i, %alx_read_phy_reg.exit.thread.i, %if.end.i.alx_get_phy_config.exit.thread_crit_edge, %ethadv_to_hw_cfg.exit.alx_get_phy_config.exit.thread_crit_edge
  %31 = phi i1 [ false, %alx_read_phy_reg.exit.thread.i ], [ false, %if.end.i.alx_get_phy_config.exit.thread_crit_edge ], [ false, %ethadv_to_hw_cfg.exit.alx_get_phy_config.exit.thread_crit_edge ], [ %spec.select, %alx_read_phy_reg.exit.i ]
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_read_phy_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %mdio_lock.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %2 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not.i.i.i = icmp eq i32 %3, -1
  %or11.i.i.i = select i1 %cmp.not.i.i.i, i32 132186112, i32 14745600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #5
  %hw_addr.i29.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i30.i.i.i = getelementptr i8, ptr %6, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i, i32 %4) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry
  %i.03.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %8, i32 5140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %if.end, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %alx_read_phy_reg.exit, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

alx_read_phy_reg.exit:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i.i.i
  %12 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %15 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not.i.i.i50 = icmp eq i32 %16, -1
  %or11.i.i.i53 = select i1 %cmp.not.i.i.i50, i32 132186112, i32 14745600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i53) #5
  %18 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i30.i.i.i55 = getelementptr i8, ptr %19, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i55, i32 %17) #5, !srcloc !18
  br label %for.body.i.i.i.i59

for.body.i.i.i.i59:                               ; preds = %if.end.i.i.i.i62.for.body.i.i.i.i59_crit_edge, %if.end
  %i.03.i.i.i.i56 = phi i32 [ 0, %if.end ], [ %inc.i.i.i.i60, %if.end.i.i.i.i62.for.body.i.i.i.i59_crit_edge ]
  %20 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i.i.i.i.i57 = getelementptr i8, ptr %21, i32 5140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i57) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i.i58 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i.i58, label %if.end5, label %if.end.i.i.i.i62

if.end.i.i.i.i62:                                 ; preds = %for.body.i.i.i.i59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #5
  %inc.i.i.i.i60 = add nuw nsw i32 %i.03.i.i.i.i56, 1
  %exitcond.not.i.i.i.i61 = icmp eq i32 %inc.i.i.i.i60, 120
  br i1 %exitcond.not.i.i.i.i61, label %alx_read_phy_reg.exit67, label %if.end.i.i.i.i62.for.body.i.i.i.i59_crit_edge

if.end.i.i.i.i62.for.body.i.i.i.i59_crit_edge:    ; preds = %if.end.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i59

alx_read_phy_reg.exit67:                          ; preds = %if.end.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %cleanup

if.end5:                                          ; preds = %for.body.i.i.i.i59
  %25 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i32.i.i.i63 = getelementptr i8, ptr %26, i32 5140
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i63) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not = icmp eq i32 %28, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %link_speed.i.i.i, align 8
  %duplex = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 13
  %30 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %duplex, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %31 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.not.i.i.i70 = icmp eq i32 %32, -1
  %or11.i.i.i73 = select i1 %cmp.not.i.i.i70, i32 133234688, i32 15794176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i73) #5
  %34 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i30.i.i.i75 = getelementptr i8, ptr %35, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i75, i32 %33) #5, !srcloc !18
  br label %for.body.i.i.i.i79

for.body.i.i.i.i79:                               ; preds = %if.end.i.i.i.i82.for.body.i.i.i.i79_crit_edge, %if.end8
  %i.03.i.i.i.i76 = phi i32 [ 0, %if.end8 ], [ %inc.i.i.i.i80, %if.end.i.i.i.i82.for.body.i.i.i.i79_crit_edge ]
  %36 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i.i.i.i.i77 = getelementptr i8, ptr %37, i32 5140
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i77) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i.i78 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i.i78, label %if.end12, label %if.end.i.i.i.i82

if.end.i.i.i.i82:                                 ; preds = %for.body.i.i.i.i79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #5
  %inc.i.i.i.i80 = add nuw nsw i32 %i.03.i.i.i.i76, 1
  %exitcond.not.i.i.i.i81 = icmp eq i32 %inc.i.i.i.i80, 120
  br i1 %exitcond.not.i.i.i.i81, label %alx_read_phy_reg.exit87, label %if.end.i.i.i.i82.for.body.i.i.i.i79_crit_edge

if.end.i.i.i.i82.for.body.i.i.i.i79_crit_edge:    ; preds = %if.end.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i79

alx_read_phy_reg.exit87:                          ; preds = %if.end.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  br label %cleanup

if.end12:                                         ; preds = %for.body.i.i.i.i79
  %41 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i32.i.i.i83 = getelementptr i8, ptr %42, i32 5140
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i83) #5, !srcloc !19
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv16.i.i.i84 = trunc i32 %44 to i16
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  %45 = and i16 %conv16.i.i.i84, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool15.not = icmp eq i16 %45, 0
  br i1 %tobool15.not, label %if.end12.do.end_crit_edge, label %if.end17

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end17:                                         ; preds = %if.end12
  %and19 = and i16 %conv16.i.i.i84, -16384
  %46 = zext i16 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %and19, label %if.end17.do.end_crit_edge [
    i16 -32768, label %if.end17.sw.epilog_crit_edge
    i16 16384, label %sw.bb21
    i16 0, label %sw.bb23
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb21, %if.end17.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %sw.bb23 ], [ 100, %sw.bb21 ], [ 1000, %if.end17.sw.epilog_crit_edge ]
  %47 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %link_speed.i.i.i, align 8
  %48 = lshr i16 %conv16.i.i.i84, 13
  %49 = trunc i16 %48 to i8
  %50 = and i8 %49, 1
  %duplex29 = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 13
  %51 = ptrtoint ptr %duplex29 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %duplex29, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %if.end12.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv30 = and i32 %44, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog, %alx_read_phy_reg.exit87, %if.then7, %alx_read_phy_reg.exit67, %alx_read_phy_reg.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ 0, %if.then7 ], [ -110, %alx_read_phy_reg.exit ], [ -110, %alx_read_phy_reg.exit67 ], [ -110, %alx_read_phy_reg.exit87 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alx_clear_phy_intr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #5
  %link_speed.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %link_speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i.i.i = icmp eq i32 %1, -1
  %or11.i.i.i = select i1 %cmp.not.i.i.i, i32 133365760, i32 15925248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #5
  %hw_addr.i29.i.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i30.i.i.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i.i, i32 %2) #5, !srcloc !18
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %entry
  %i.03.i.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %if.end14.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #5
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 120
  br i1 %exitcond.not.i.i.i.i, label %if.end.i.i.i.i.alx_read_phy_reg.exit_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

if.end.i.i.i.i.alx_read_phy_reg.exit_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alx_read_phy_reg.exit

if.end14.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw_addr.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i29.i.i.i, align 4
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  br label %alx_read_phy_reg.exit

alx_read_phy_reg.exit:                            ; preds = %if.end14.i.i.i, %if.end.i.i.i.i.alx_read_phy_reg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end14.i.i.i ], [ -110, %if.end.i.i.i.i.alx_read_phy_reg.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #5
  ret i32 %retval.0.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_disable_rss(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %3 = and i32 %2, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %3) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_configure_basic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision.i, align 4
  %mac_addr = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.alx_hw, ptr %hw, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %hw_addr.i.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 5256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #5, !srcloc !18
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %mac_addr, align 1
  %conv.i = zext i16 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %12 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 5260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %11) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %15, i32 6164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 1056964608) #5, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp.not = icmp ult i8 %3, 16
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %17, i32 5236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 262144) #5, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smb_timer = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 11
  %18 = ptrtoint ptr %smb_timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smb_timer, align 4
  %mul = mul i32 %19, 500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul) #5
  %21 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %22, i32 5572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %20) #5, !srcloc !18
  %23 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %24, i32 5120
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %26 = or i32 %25, -2146697216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %28, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %26) #5, !srcloc !18
  %imt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 5
  %29 = ptrtoint ptr %imt to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %imt, align 2
  %31 = lshr i16 %30, 1
  %32 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %34 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %35, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %33) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %37, i32 5640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 541982720) #5, !srcloc !18
  %ith_tpd = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 8
  %38 = ptrtoint ptr %ith_tpd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ith_tpd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %41 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %42, i32 5576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %40) #5, !srcloc !18
  %43 = ptrtoint ptr %imt to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %imt, align 2
  %conv6 = zext i16 %44 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv6) #5
  %46 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %47, i32 5580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %45) #5, !srcloc !18
  %mtu = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 4
  %48 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mtu, align 4
  %conv7 = zext i16 %49 to i32
  %add9 = add nuw nsw i32 %conv7, 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %add9) #5
  %51 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %52, i32 5276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %50) #5, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %49)
  %cmp10 = icmp ugt i16 %49, 1500
  br i1 %cmp10, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_ctrl = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 9
  %53 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_ctrl, align 8
  %and = and i32 %54, 2147483647
  store i32 %and, ptr %rx_ctrl, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 7146, i16 %49)
  %cmp14 = icmp ult i16 %49, 7146
  %add17 = add nuw nsw i32 %conv7, 29
  %shr18 = lshr i32 %add17, 3
  %phi.bo = or i32 %shr18, 2048
  %val.0 = select i1 %cmp14, i32 %phi.bo, i32 2944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %56 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %57, i32 5524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %55) #5, !srcloc !18
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %call21 = tail call i32 @pcie_get_readrq(ptr noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call21)
  %cmp23 = icmp ult i32 %call21, 512
  br i1 %cmp23, label %if.then25, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 8
  %call27 = tail call i32 @pcie_set_readrq(ptr noundef %61, i32 noundef 512) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end13.if.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %63, i32 5520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 -721420286) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %65, i32 6460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 1426391168) #5, !srcloc !18
  %66 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %67, i32 5412
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #5, !srcloc !19
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and31 = shl i32 %69, 3
  %shl32 = and i32 %and31, 32760
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %shl32)
  %cmp33 = icmp ugt i32 %shl32, 8192
  %val.1.in.v = select i1 %cmp33, i32 -3212, i32 -1536
  %val.1.in = add nsw i32 %val.1.in.v, %shl32
  %val.1 = lshr i32 %val.1.in, 3
  %or44 = or i32 %val.1, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or44) #5
  %71 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %72, i32 5544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %70) #5, !srcloc !18
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %device.i, align 2
  %77 = and i16 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.i.not = icmp eq i16 %77, 0
  %val.2 = select i1 %tobool.i.not, i32 545325244, i32 545325247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %val.2) #5
  %79 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %80, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %78) #5, !srcloc !18
  %81 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %82, i32 5568
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %84 = ashr i32 %call21, 4
  %shl51 = and i32 %84, -293904
  %dma_chnl = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 6
  %85 = ptrtoint ptr %dma_chnl to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dma_chnl, align 8
  %conv55 = zext i8 %86 to i32
  %sub56 = shl i32 %conv55, 26
  %shl57 = add i32 %sub56, -67108864
  %or54 = or i32 %shl51, %shl57
  %or58 = or i32 %or54, 293892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %87 = tail call i32 @llvm.bswap.i32(i32 %or58) #5
  %88 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %89, i32 5568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %87) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %91, i32 6456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 67372132) #5, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_mask_msix(ptr nocapture noundef readonly %hw, i32 noundef %index, i1 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 4
  %add1 = add i32 %mul, 8204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %0 = select i1 %mask, i32 16777216, i32 0
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !18
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @alx_get_phy_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %devs1 = alloca i16, align 2
  %devs2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devs1) #5
  %0 = ptrtoint ptr %devs1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %devs1, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devs2) #5
  %1 = ptrtoint ptr %devs2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %devs2, align 2, !annotation !21
  %phy_id = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 18
  %call = tail call i32 @alx_read_phy_reg(ptr noundef %hw, i16 noundef zeroext 2, ptr noundef %phy_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.alx_hw, ptr %hw, i32 0, i32 18, i32 1
  %call3 = tail call i32 @alx_read_phy_reg(ptr noundef %hw, i16 noundef zeroext 3, ptr noundef %arrayidx2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef nonnull %devs1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %call8 = call i32 @alx_read_phy_ext(ptr noundef %hw, i8 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef nonnull %devs2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %devs1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %devs1, align 2
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %devs2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %devs2, align 2
  %conv12 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv12, 16
  %or = or i32 %shl, %conv
  %mmds = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %mmds, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end11 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false7.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devs2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devs1) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @alx_update_hw_stats(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5888
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv = zext i32 %3 to i64
  %stats = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %stats, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %stats, align 8
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %7, i32 5892
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #5, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv2 = zext i32 %9 to i64
  %rx_bcast = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %rx_bcast to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_bcast, align 8
  %add4 = add i64 %11, %conv2
  store i64 %add4, ptr %rx_bcast, align 8
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %13, i32 5896
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i299) #5, !srcloc !19
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv6 = zext i32 %15 to i64
  %rx_mcast = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_mcast, align 8
  %add8 = add i64 %17, %conv6
  store i64 %add8, ptr %rx_mcast, align 8
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %19, i32 5900
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #5, !srcloc !19
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv10 = zext i32 %21 to i64
  %rx_pause = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 3
  %22 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_pause, align 8
  %add12 = add i64 %23, %conv10
  store i64 %add12, ptr %rx_pause, align 8
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %25, i32 5904
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #5, !srcloc !19
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv14 = zext i32 %27 to i64
  %rx_ctrl = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 4
  %28 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_ctrl, align 8
  %add16 = add i64 %29, %conv14
  store i64 %add16, ptr %rx_ctrl, align 8
  %30 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %31, i32 5908
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #5, !srcloc !19
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv18 = zext i32 %33 to i64
  %rx_fcs_err = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 5
  %34 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_fcs_err, align 8
  %add20 = add i64 %35, %conv18
  store i64 %add20, ptr %rx_fcs_err, align 8
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %37, i32 5912
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #5, !srcloc !19
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv22 = zext i32 %39 to i64
  %rx_len_err = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 6
  %40 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_len_err, align 8
  %add24 = add i64 %41, %conv22
  store i64 %add24, ptr %rx_len_err, align 8
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %43, i32 5916
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #5, !srcloc !19
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv26 = zext i32 %45 to i64
  %rx_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 7
  %46 = ptrtoint ptr %rx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_byte_cnt, align 8
  %add28 = add i64 %47, %conv26
  store i64 %add28, ptr %rx_byte_cnt, align 8
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i311 = getelementptr i8, ptr %49, i32 5920
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i311) #5, !srcloc !19
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv30 = zext i32 %51 to i64
  %rx_runt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 8
  %52 = ptrtoint ptr %rx_runt to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_runt, align 8
  %add32 = add i64 %53, %conv30
  store i64 %add32, ptr %rx_runt, align 8
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %55, i32 5924
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i313) #5, !srcloc !19
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv34 = zext i32 %57 to i64
  %rx_frag = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 9
  %58 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_frag, align 8
  %add36 = add i64 %59, %conv34
  store i64 %add36, ptr %rx_frag, align 8
  %60 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %61, i32 5928
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i315) #5, !srcloc !19
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv38 = zext i32 %63 to i64
  %rx_sz_64B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 10
  %64 = ptrtoint ptr %rx_sz_64B to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rx_sz_64B, align 8
  %add40 = add i64 %65, %conv38
  store i64 %add40, ptr %rx_sz_64B, align 8
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %67, i32 5932
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317) #5, !srcloc !19
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv42 = zext i32 %69 to i64
  %rx_sz_127B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 11
  %70 = ptrtoint ptr %rx_sz_127B to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rx_sz_127B, align 8
  %add44 = add i64 %71, %conv42
  store i64 %add44, ptr %rx_sz_127B, align 8
  %72 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %73, i32 5936
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i319) #5, !srcloc !19
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv46 = zext i32 %75 to i64
  %rx_sz_255B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 12
  %76 = ptrtoint ptr %rx_sz_255B to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rx_sz_255B, align 8
  %add48 = add i64 %77, %conv46
  store i64 %add48, ptr %rx_sz_255B, align 8
  %78 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %79, i32 5940
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #5, !srcloc !19
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv50 = zext i32 %81 to i64
  %rx_sz_511B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 13
  %82 = ptrtoint ptr %rx_sz_511B to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_sz_511B, align 8
  %add52 = add i64 %83, %conv50
  store i64 %add52, ptr %rx_sz_511B, align 8
  %84 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %85, i32 5944
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #5, !srcloc !19
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv54 = zext i32 %87 to i64
  %rx_sz_1023B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 14
  %88 = ptrtoint ptr %rx_sz_1023B to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %rx_sz_1023B, align 8
  %add56 = add i64 %89, %conv54
  store i64 %add56, ptr %rx_sz_1023B, align 8
  %90 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i325 = getelementptr i8, ptr %91, i32 5948
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325) #5, !srcloc !19
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv58 = zext i32 %93 to i64
  %rx_sz_1518B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 15
  %94 = ptrtoint ptr %rx_sz_1518B to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_sz_1518B, align 8
  %add60 = add i64 %95, %conv58
  store i64 %add60, ptr %rx_sz_1518B, align 8
  %96 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i327 = getelementptr i8, ptr %97, i32 5952
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #5, !srcloc !19
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv62 = zext i32 %99 to i64
  %rx_sz_max = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 16
  %100 = ptrtoint ptr %rx_sz_max to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rx_sz_max, align 8
  %add64 = add i64 %101, %conv62
  store i64 %add64, ptr %rx_sz_max, align 8
  %102 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i329 = getelementptr i8, ptr %103, i32 5956
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #5, !srcloc !19
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv66 = zext i32 %105 to i64
  %rx_ov_sz = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 17
  %106 = ptrtoint ptr %rx_ov_sz to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rx_ov_sz, align 8
  %add68 = add i64 %107, %conv66
  store i64 %add68, ptr %rx_ov_sz, align 8
  %108 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i331 = getelementptr i8, ptr %109, i32 5960
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #5, !srcloc !19
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv70 = zext i32 %111 to i64
  %rx_ov_rxf = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 18
  %112 = ptrtoint ptr %rx_ov_rxf to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %rx_ov_rxf, align 8
  %add72 = add i64 %113, %conv70
  store i64 %add72, ptr %rx_ov_rxf, align 8
  %114 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i333 = getelementptr i8, ptr %115, i32 5964
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333) #5, !srcloc !19
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv74 = zext i32 %117 to i64
  %rx_ov_rrd = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 19
  %118 = ptrtoint ptr %rx_ov_rrd to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %rx_ov_rrd, align 8
  %add76 = add i64 %119, %conv74
  store i64 %add76, ptr %rx_ov_rrd, align 8
  %120 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %121, i32 5968
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i335) #5, !srcloc !19
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv78 = zext i32 %123 to i64
  %rx_align_err = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 20
  %124 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %rx_align_err, align 8
  %add80 = add i64 %125, %conv78
  store i64 %add80, ptr %rx_align_err, align 8
  %126 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i337 = getelementptr i8, ptr %127, i32 5972
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i337) #5, !srcloc !19
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv82 = zext i32 %129 to i64
  %rx_bc_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 21
  %130 = ptrtoint ptr %rx_bc_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rx_bc_byte_cnt, align 8
  %add84 = add i64 %131, %conv82
  store i64 %add84, ptr %rx_bc_byte_cnt, align 8
  %132 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i339 = getelementptr i8, ptr %133, i32 5976
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #5, !srcloc !19
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv86 = zext i32 %135 to i64
  %rx_mc_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 22
  %136 = ptrtoint ptr %rx_mc_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %rx_mc_byte_cnt, align 8
  %add88 = add i64 %137, %conv86
  store i64 %add88, ptr %rx_mc_byte_cnt, align 8
  %138 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i341 = getelementptr i8, ptr %139, i32 5980
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #5, !srcloc !19
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv90 = zext i32 %141 to i64
  %rx_err_addr = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 23
  %142 = ptrtoint ptr %rx_err_addr to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %rx_err_addr, align 8
  %add92 = add i64 %143, %conv90
  store i64 %add92, ptr %rx_err_addr, align 8
  %144 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i343 = getelementptr i8, ptr %145, i32 5984
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i343) #5, !srcloc !19
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv94 = zext i32 %147 to i64
  %tx_ok = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 24
  %148 = ptrtoint ptr %tx_ok to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tx_ok, align 8
  %add96 = add i64 %149, %conv94
  store i64 %add96, ptr %tx_ok, align 8
  %150 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i345 = getelementptr i8, ptr %151, i32 5988
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i345) #5, !srcloc !19
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv98 = zext i32 %153 to i64
  %tx_bcast = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 25
  %154 = ptrtoint ptr %tx_bcast to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tx_bcast, align 8
  %add100 = add i64 %155, %conv98
  store i64 %add100, ptr %tx_bcast, align 8
  %156 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i347 = getelementptr i8, ptr %157, i32 5992
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347) #5, !srcloc !19
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv102 = zext i32 %159 to i64
  %tx_mcast = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 26
  %160 = ptrtoint ptr %tx_mcast to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %tx_mcast, align 8
  %add104 = add i64 %161, %conv102
  store i64 %add104, ptr %tx_mcast, align 8
  %162 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i349 = getelementptr i8, ptr %163, i32 5996
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349) #5, !srcloc !19
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv106 = zext i32 %165 to i64
  %tx_pause = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 27
  %166 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %tx_pause, align 8
  %add108 = add i64 %167, %conv106
  store i64 %add108, ptr %tx_pause, align 8
  %168 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i351 = getelementptr i8, ptr %169, i32 6000
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351) #5, !srcloc !19
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv110 = zext i32 %171 to i64
  %tx_exc_defer = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 28
  %172 = ptrtoint ptr %tx_exc_defer to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %tx_exc_defer, align 8
  %add112 = add i64 %173, %conv110
  store i64 %add112, ptr %tx_exc_defer, align 8
  %174 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i353 = getelementptr i8, ptr %175, i32 6004
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i353) #5, !srcloc !19
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv114 = zext i32 %177 to i64
  %tx_ctrl = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 29
  %178 = ptrtoint ptr %tx_ctrl to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %tx_ctrl, align 8
  %add116 = add i64 %179, %conv114
  store i64 %add116, ptr %tx_ctrl, align 8
  %180 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i355 = getelementptr i8, ptr %181, i32 6008
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i355) #5, !srcloc !19
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv118 = zext i32 %183 to i64
  %tx_defer = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 30
  %184 = ptrtoint ptr %tx_defer to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %tx_defer, align 8
  %add120 = add i64 %185, %conv118
  store i64 %add120, ptr %tx_defer, align 8
  %186 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i357 = getelementptr i8, ptr %187, i32 6012
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357) #5, !srcloc !19
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv122 = zext i32 %189 to i64
  %tx_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 31
  %190 = ptrtoint ptr %tx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %tx_byte_cnt, align 8
  %add124 = add i64 %191, %conv122
  store i64 %add124, ptr %tx_byte_cnt, align 8
  %192 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i359 = getelementptr i8, ptr %193, i32 6016
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i359) #5, !srcloc !19
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv126 = zext i32 %195 to i64
  %tx_sz_64B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 32
  %196 = ptrtoint ptr %tx_sz_64B to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %tx_sz_64B, align 8
  %add128 = add i64 %197, %conv126
  store i64 %add128, ptr %tx_sz_64B, align 8
  %198 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i361 = getelementptr i8, ptr %199, i32 6020
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i361) #5, !srcloc !19
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv130 = zext i32 %201 to i64
  %tx_sz_127B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 33
  %202 = ptrtoint ptr %tx_sz_127B to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %tx_sz_127B, align 8
  %add132 = add i64 %203, %conv130
  store i64 %add132, ptr %tx_sz_127B, align 8
  %204 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i363 = getelementptr i8, ptr %205, i32 6024
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i363) #5, !srcloc !19
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv134 = zext i32 %207 to i64
  %tx_sz_255B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 34
  %208 = ptrtoint ptr %tx_sz_255B to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %tx_sz_255B, align 8
  %add136 = add i64 %209, %conv134
  store i64 %add136, ptr %tx_sz_255B, align 8
  %210 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i365 = getelementptr i8, ptr %211, i32 6028
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365) #5, !srcloc !19
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv138 = zext i32 %213 to i64
  %tx_sz_511B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 35
  %214 = ptrtoint ptr %tx_sz_511B to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %tx_sz_511B, align 8
  %add140 = add i64 %215, %conv138
  store i64 %add140, ptr %tx_sz_511B, align 8
  %216 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i367 = getelementptr i8, ptr %217, i32 6032
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i367) #5, !srcloc !19
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv142 = zext i32 %219 to i64
  %tx_sz_1023B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 36
  %220 = ptrtoint ptr %tx_sz_1023B to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %tx_sz_1023B, align 8
  %add144 = add i64 %221, %conv142
  store i64 %add144, ptr %tx_sz_1023B, align 8
  %222 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i369 = getelementptr i8, ptr %223, i32 6036
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i369) #5, !srcloc !19
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv146 = zext i32 %225 to i64
  %tx_sz_1518B = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 37
  %226 = ptrtoint ptr %tx_sz_1518B to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %tx_sz_1518B, align 8
  %add148 = add i64 %227, %conv146
  store i64 %add148, ptr %tx_sz_1518B, align 8
  %228 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i371 = getelementptr i8, ptr %229, i32 6040
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i371) #5, !srcloc !19
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv150 = zext i32 %231 to i64
  %tx_sz_max = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 38
  %232 = ptrtoint ptr %tx_sz_max to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %tx_sz_max, align 8
  %add152 = add i64 %233, %conv150
  store i64 %add152, ptr %tx_sz_max, align 8
  %234 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i373 = getelementptr i8, ptr %235, i32 6044
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373) #5, !srcloc !19
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv154 = zext i32 %237 to i64
  %tx_single_col = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 39
  %238 = ptrtoint ptr %tx_single_col to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %tx_single_col, align 8
  %add156 = add i64 %239, %conv154
  store i64 %add156, ptr %tx_single_col, align 8
  %240 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i375 = getelementptr i8, ptr %241, i32 6048
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #5, !srcloc !19
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv158 = zext i32 %243 to i64
  %tx_multi_col = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 40
  %244 = ptrtoint ptr %tx_multi_col to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %tx_multi_col, align 8
  %add160 = add i64 %245, %conv158
  store i64 %add160, ptr %tx_multi_col, align 8
  %246 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i377 = getelementptr i8, ptr %247, i32 6052
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i377) #5, !srcloc !19
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv162 = zext i32 %249 to i64
  %tx_late_col = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 41
  %250 = ptrtoint ptr %tx_late_col to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %tx_late_col, align 8
  %add164 = add i64 %251, %conv162
  store i64 %add164, ptr %tx_late_col, align 8
  %252 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i379 = getelementptr i8, ptr %253, i32 6056
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #5, !srcloc !19
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv166 = zext i32 %255 to i64
  %tx_abort_col = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 42
  %256 = ptrtoint ptr %tx_abort_col to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %tx_abort_col, align 8
  %add168 = add i64 %257, %conv166
  store i64 %add168, ptr %tx_abort_col, align 8
  %258 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i381 = getelementptr i8, ptr %259, i32 6060
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i381) #5, !srcloc !19
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv170 = zext i32 %261 to i64
  %tx_underrun = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 43
  %262 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %tx_underrun, align 8
  %add172 = add i64 %263, %conv170
  store i64 %add172, ptr %tx_underrun, align 8
  %264 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i383 = getelementptr i8, ptr %265, i32 6064
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383) #5, !srcloc !19
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv174 = zext i32 %267 to i64
  %tx_trd_eop = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 44
  %268 = ptrtoint ptr %tx_trd_eop to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %tx_trd_eop, align 8
  %add176 = add i64 %269, %conv174
  store i64 %add176, ptr %tx_trd_eop, align 8
  %270 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %271, i32 6068
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385) #5, !srcloc !19
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv178 = zext i32 %273 to i64
  %tx_len_err = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 45
  %274 = ptrtoint ptr %tx_len_err to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %tx_len_err, align 8
  %add180 = add i64 %275, %conv178
  store i64 %add180, ptr %tx_len_err, align 8
  %276 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i387 = getelementptr i8, ptr %277, i32 6072
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i387) #5, !srcloc !19
  %279 = tail call i32 @llvm.bswap.i32(i32 %278) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv182 = zext i32 %279 to i64
  %tx_trunc = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 46
  %280 = ptrtoint ptr %tx_trunc to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %tx_trunc, align 8
  %add184 = add i64 %281, %conv182
  store i64 %add184, ptr %tx_trunc, align 8
  %282 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i389 = getelementptr i8, ptr %283, i32 6076
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i389) #5, !srcloc !19
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv186 = zext i32 %285 to i64
  %tx_bc_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 47
  %286 = ptrtoint ptr %tx_bc_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %tx_bc_byte_cnt, align 8
  %add188 = add i64 %287, %conv186
  store i64 %add188, ptr %tx_bc_byte_cnt, align 8
  %288 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i391 = getelementptr i8, ptr %289, i32 6080
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #5, !srcloc !19
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv190 = zext i32 %291 to i64
  %tx_mc_byte_cnt = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 48
  %292 = ptrtoint ptr %tx_mc_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %tx_mc_byte_cnt, align 8
  %add192 = add i64 %293, %conv190
  store i64 %add192, ptr %tx_mc_byte_cnt, align 8
  %294 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i393 = getelementptr i8, ptr %295, i32 6084
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i393) #5, !srcloc !19
  %297 = tail call i32 @llvm.bswap.i32(i32 %296) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %conv194 = zext i32 %297 to i64
  %update = getelementptr inbounds %struct.alx_hw, ptr %hw, i32 0, i32 20, i32 49
  %298 = ptrtoint ptr %update to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %update, align 8
  %add196 = add i64 %299, %conv194
  store i64 %add196, ptr %update, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/alx/hw.c", i32 911, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @alx_read_phy_link._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @alx_read_phy_link._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2156799611}
!18 = !{i64 6073379}
!19 = !{i64 6073797}
!20 = !{i64 2156800441}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{i64 2156801072}
