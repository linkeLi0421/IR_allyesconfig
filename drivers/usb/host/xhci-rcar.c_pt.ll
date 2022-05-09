; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-rcar.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-rcar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware232 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v1.dlmem\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware233 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v2.dlmem\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware234 = internal constant [45 x i8] c"xhci_plat_hcd.firmware=r8a779x_usb3_v3.dlmem\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,xhci-r8a7790\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,xhci-r8a7791\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,xhci-r8a7793\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"renesas,rcar-gen2-xhci\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_quirks_match = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.7, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r8a779x_usb3_v2.dlmem\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"r8a779x_usb3_v3.dlmem\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 105, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 106, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 107, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 108, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"rcar_quirks_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 80, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 149, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 151, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 82, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [32 x i8] c"../drivers/usb/host/xhci-rcar.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 82, i32 13 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_firmware232, ptr @__UNIQUE_ID_firmware233, ptr @__UNIQUE_ID_firmware234, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rcar_quirks_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_quirks_match to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_rcar_start(ptr nocapture noundef readonly %hcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %3 = or i32 %2, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #4, !srcloc !36
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

lor.lhs.false.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.then6_crit_edge

lor.lhs.false.i.if.then6_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %xhci_rcar_is_gen2.exit, label %lor.lhs.false3.i.if.then6_crit_edge

lor.lhs.false3.i.if.then6_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

xhci_rcar_is_gen2.exit:                           ; preds = %lor.lhs.false3.i
  %call6.i = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.i.not = icmp eq i32 %call6.i, 0
  br i1 %tobool7.i.not, label %xhci_rcar_is_gen2.exit.if.end7_crit_edge, label %xhci_rcar_is_gen2.exit.if.then6_crit_edge

xhci_rcar_is_gen2.exit.if.then6_crit_edge:        ; preds = %xhci_rcar_is_gen2.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

xhci_rcar_is_gen2.exit.if.end7_crit_edge:         ; preds = %xhci_rcar_is_gen2.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %xhci_rcar_is_gen2.exit.if.then6_crit_edge, %lor.lhs.false3.i.if.then6_crit_edge, %lor.lhs.false.i.if.then6_crit_edge, %if.then.if.then6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777985) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 2632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 67240704) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 197376) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %17, i32 2728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 119570451) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr16.i = getelementptr i8, ptr %19, i32 2736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 8192) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr20.i = getelementptr i8, ptr %21, i32 2744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 268435456) #4, !srcloc !36
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %xhci_rcar_is_gen2.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_rcar_init_quirk(ptr noundef %hcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 1000000
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr40.i = getelementptr i8, ptr %3, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %5 = and i32 %4, 16777472
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777472, i32 %5)
  %cmp42.i = icmp eq i32 %5, 16777472
  br i1 %cmp42.i, label %if.end.xhci_rcar_wait_for_pll_active.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.xhci_rcar_wait_for_pll_active.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %xhci_rcar_wait_for_pll_active.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then8.i, label %cond.false.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %8, i32 260
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %10 = and i32 %9, 16777472
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  br label %xhci_rcar_wait_for_pll_active.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #4
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %16 = and i32 %15, 16777472
  %cmp.i = icmp eq i32 %16, 16777472
  br i1 %cmp.i, label %cond.false.i.if.end2_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end2_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

xhci_rcar_wait_for_pll_active.exit:               ; preds = %if.then8.i, %if.end.xhci_rcar_wait_for_pll_active.exit_crit_edge
  %and25.pre-phi.i = phi i32 [ %6, %if.end.xhci_rcar_wait_for_pll_active.exit_crit_edge ], [ %11, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %and25.pre-phi.i)
  %cmp26.i = icmp eq i32 %and25.pre-phi.i, 65537
  br i1 %cmp26.i, label %xhci_rcar_wait_for_pll_active.exit.if.end2_crit_edge, label %xhci_rcar_wait_for_pll_active.exit.return_crit_edge

xhci_rcar_wait_for_pll_active.exit.return_crit_edge: ; preds = %xhci_rcar_wait_for_pll_active.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

xhci_rcar_wait_for_pll_active.exit.if.end2_crit_edge: ; preds = %xhci_rcar_wait_for_pll_active.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.end2:                                          ; preds = %xhci_rcar_wait_for_pll_active.exit.if.end2_crit_edge, %cond.false.i.if.end2_crit_edge
  %call3 = tail call fastcc i32 @xhci_rcar_download_firmware(ptr noundef %hcd)
  br label %return

return:                                           ; preds = %if.end2, %xhci_rcar_wait_for_pll_active.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 0, %entry.return_crit_edge ], [ -110, %xhci_rcar_wait_for_pll_active.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_rcar_download_firmware(ptr noundef %hcd) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %regs1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %priv2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 15, i32 21, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !45
  %add.ptr = getelementptr i8, ptr %3, i32 592
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %hcd_to_xhci.exit.cleanup_crit_edge

hcd_to_xhci.exit.cleanup_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %hcd_to_xhci.exit
  %call6 = tail call ptr @soc_device_match(ptr noundef nonnull @rcar_quirks_match) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.if.else17_crit_edge, label %if.end10

if.end.if.else17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.end10:                                         ; preds = %if.end
  %data9 = getelementptr inbounds %struct.soc_device_attribute, ptr %call6, i32 0, i32 5
  %9 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data9, align 4
  %11 = ptrtoint ptr %10 to i32
  %and11 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %if.end10
  %and14 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.else17_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else.if.else17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.else17:                                        ; preds = %if.else.if.else17_crit_edge, %if.end.if.else17_crit_edge
  %12 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.else.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %firmware_name.0 = phi ptr [ %13, %if.else17 ], [ @.str.4, %if.end10.if.end20_crit_edge ], [ @.str.5, %if.else.if.end20_crit_edge ]
  %call21 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %firmware_name.0, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %15 = or i32 %14, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #4, !srcloc !36
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp237.not = icmp eq i32 %19, 0
  br i1 %cmp237.not, label %if.end24.for.end102_crit_edge, label %for.cond32.preheader.lr.ph

if.end24.for.end102_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end102

for.cond32.preheader.lr.ph:                       ; preds = %if.end24
  %add.ptr45 = getelementptr i8, ptr %3, i32 600
  br label %for.cond32.preheader

for.cond:                                         ; preds = %for.end92
  %add101 = add i32 %index.0238, 4
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %cmp = icmp ult i32 %add101, %23
  br i1 %cmp, label %for.cond.for.cond32.preheader_crit_edge, label %for.cond.for.end102_crit_edge

for.cond.for.end102_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end102

for.cond.for.cond32.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond.for.cond32.preheader_crit_edge, %for.cond32.preheader.lr.ph
  %24 = phi i32 [ %19, %for.cond32.preheader.lr.ph ], [ %23, %for.cond.for.cond32.preheader_crit_edge ]
  %25 = phi ptr [ %17, %for.cond32.preheader.lr.ph ], [ %21, %for.cond.for.cond32.preheader_crit_edge ]
  %index.0238 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %add101, %for.cond.for.cond32.preheader_crit_edge ]
  %data38 = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %add = or i32 %index.0238, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp36 = icmp ult i32 %add, %24
  br i1 %cmp36, label %if.then37, label %for.cond32.preheader.for.inc_crit_edge

for.cond32.preheader.for.inc_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then37:                                        ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data38, align 4
  %arrayidx = getelementptr i8, ptr %27, i32 %add
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %shl = shl nuw i32 %conv, 24
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %for.cond32.preheader.for.inc_crit_edge
  %data.1 = phi i32 [ %shl, %if.then37 ], [ 0, %for.cond32.preheader.for.inc_crit_edge ]
  %add.1 = or i32 %index.0238, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %24)
  %cmp36.1 = icmp ult i32 %add.1, %24
  br i1 %cmp36.1, label %if.then37.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then37.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data38, align 4
  %arrayidx.1 = getelementptr i8, ptr %31, i32 %add.1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %33 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 16
  %or40.1 = or i32 %shl.1, %data.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then37.1, %for.inc.for.inc.1_crit_edge
  %data.1.1 = phi i32 [ %or40.1, %if.then37.1 ], [ %data.1, %for.inc.for.inc.1_crit_edge ]
  %add.2 = or i32 %index.0238, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %24)
  %cmp36.2 = icmp ult i32 %add.2, %24
  br i1 %cmp36.2, label %if.then37.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then37.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data38, align 4
  %arrayidx.2 = getelementptr i8, ptr %35, i32 %add.2
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %37 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 8
  %or40.2 = or i32 %shl.2, %data.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then37.2, %for.inc.1.for.inc.2_crit_edge
  %data.1.2 = phi i32 [ %or40.2, %if.then37.2 ], [ %data.1.1, %for.inc.1.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0238, i32 %24)
  %cmp36.3 = icmp ult i32 %index.0238, %24
  br i1 %cmp36.3, label %if.then37.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then37.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data38, align 4
  %arrayidx.3 = getelementptr i8, ptr %39, i32 %index.0238
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %41 to i32
  %or40.3 = or i32 %data.1.2, %conv.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then37.3, %for.inc.2.for.inc.3_crit_edge
  %data.1.3 = phi i32 [ %or40.3, %if.then37.3 ], [ %data.1.2, %for.inc.2.for.inc.3_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  call void @arm_heavy_mb() #4
  %42 = call i32 @llvm.bswap.i32(i32 %data.1.3)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %42) #4, !srcloc !36
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %44 = or i32 %43, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #4, !srcloc !36
  %call57 = call i64 @ktime_get() #4
  %add.i = add i64 %call57, 10000000
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %and66235 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66235)
  %tobool67.not236 = icmp eq i32 %and66235, 0
  br i1 %tobool67.not236, label %for.inc.3.for.end92_crit_edge, label %for.inc.3.land.lhs.true_crit_edge

for.inc.3.land.lhs.true_crit_edge:                ; preds = %for.inc.3
  br label %land.lhs.true

for.inc.3.for.end92_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end92

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %for.inc.3.land.lhs.true_crit_edge
  %call71 = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call71, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call71, %add.i
  br i1 %cmp3.i, label %if.then75, label %cond.false

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  br label %for.end92

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748) #4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %and66 = and i32 %51, 256
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %cond.false.for.end92_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cond.false.for.end92_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end92

for.end92:                                        ; preds = %cond.false.for.end92_crit_edge, %if.then75, %for.inc.3.for.end92_crit_edge
  %val.0 = phi i32 [ %48, %if.then75 ], [ %46, %for.inc.3.for.end92_crit_edge ], [ %51, %cond.false.for.end92_crit_edge ]
  %and94 = and i32 %val.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %for.cond, label %for.end92.for.end102_crit_edge

for.end92.for.end102_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end102

for.end102:                                       ; preds = %for.end92.for.end102_crit_edge, %for.cond.for.end102_crit_edge, %if.end24.for.end102_crit_edge
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %53 = and i32 %52, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %53) #4, !srcloc !36
  %call117 = call i64 @ktime_get() #4
  %add.i217 = add i64 %call117, 10000000
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %55 = and i32 %54, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool127.not240 = icmp eq i32 %55, 0
  br i1 %tobool127.not240, label %for.end102.land.lhs.true131_crit_edge, label %for.end102.for.end156.thread_crit_edge

for.end102.for.end156.thread_crit_edge:           ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end156.thread

for.end102.land.lhs.true131_crit_edge:            ; preds = %for.end102
  br label %land.lhs.true131

land.lhs.true131:                                 ; preds = %cond.false150.land.lhs.true131_crit_edge, %for.end102.land.lhs.true131_crit_edge
  %call132 = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call132, i64 %add.i217)
  %cmp3.i219 = icmp sgt i64 %call132, %add.i217
  br i1 %cmp3.i219, label %for.end156, label %cond.false150

cond.false150:                                    ; preds = %land.lhs.true131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748) #4
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %58 = and i32 %57, 268435456
  %tobool127.not = icmp eq i32 %58, 0
  br i1 %tobool127.not, label %cond.false150.land.lhs.true131_crit_edge, label %cond.false150.for.end156.thread_crit_edge

cond.false150.for.end156.thread_crit_edge:        ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end156.thread

cond.false150.land.lhs.true131_crit_edge:         ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true131

for.end156:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #6
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %60 = and i32 %59, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool159.not = icmp eq i32 %60, 0
  %spec.select = select i1 %tobool159.not, i32 -110, i32 0
  br label %for.end156.thread

for.end156.thread:                                ; preds = %for.end156, %cond.false150.for.end156.thread_crit_edge, %for.end102.for.end156.thread_crit_edge
  %61 = phi i32 [ 0, %for.end102.for.end156.thread_crit_edge ], [ %spec.select, %for.end156 ], [ 0, %cond.false150.for.end156.thread_crit_edge ]
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %63) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end156.thread, %if.end20.cleanup_crit_edge, %hcd_to_xhci.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %61, %for.end156.thread ], [ 0, %hcd_to_xhci.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_rcar_resume_quirk(ptr noundef %hcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xhci_rcar_download_firmware(ptr noundef %hcd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xhci_rcar_start(ptr noundef %hcd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_firmware232, !1, !"__UNIQUE_ID_firmware232", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-rcar.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware233, !3, !"__UNIQUE_ID_firmware233", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-rcar.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware234, !5, !"__UNIQUE_ID_firmware234", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-rcar.c", i32 30, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-rcar.c", i32 105, i32 39}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-rcar.c", i32 106, i32 33}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/xhci-rcar.c", i32 107, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-rcar.c", i32 108, i32 33}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/xhci-rcar.c", i32 149, i32 19}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/xhci-rcar.c", i32 151, i32 19}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/xhci-rcar.c", i32 82, i32 36}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/xhci-rcar.c", i32 82, i32 13}
!22 = !{ptr @rcar_quirks_match, !23, !"rcar_quirks_match", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/xhci-rcar.c", i32 80, i32 42}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4181719}
!34 = !{i64 2154184308}
!35 = !{i64 2154184640}
!36 = !{i64 4181301}
!37 = !{i64 2154181154}
!38 = !{i64 2154181588}
!39 = !{i64 2154182022}
!40 = !{i64 2154182456}
!41 = !{i64 2154182981}
!42 = !{i64 2154183557}
!43 = !{i64 2154196518}
!44 = !{i64 2154197004}
!45 = !{!"auto-init"}
!46 = !{i64 2154185342}
!47 = !{i64 2154186037}
!48 = !{i64 2154186264}
!49 = !{i64 2154186653}
!50 = !{i64 2154187298}
!51 = !{i64 2154187525}
!52 = !{i64 2154189592}
!53 = !{i64 2154190058}
!54 = !{i64 2154191124}
!55 = !{i64 2154191351}
!56 = !{i64 2154193426}
!57 = !{i64 2154193904}
