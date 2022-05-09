; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/mod.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/mod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_irq_state = type { i16, i16, i16, i16, i16 }

@usbhs_mod_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq request err\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usbhs_mod_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/renesas_usbhs/mod.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_mod_probe._entry_ptr = internal global ptr @usbhs_mod_probe._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [35 x i8] c"../drivers/usb/renesas_usbhs/mod.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 147, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @usbhs_mod_probe._entry, ptr @usbhs_mod_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_mod_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_mod_autonomy_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_vbus = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %irq_vbus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @usbhsm_autonomy_irq_vbus, ptr %irq_vbus, align 4
  %get_vbus = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %get_vbus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @usbhsm_autonomy_get_vbus, ptr %get_vbus, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef null)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsm_autonomy_irq_vbus(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %irq_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %call = tail call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhsm_autonomy_get_vbus(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usbhs_pdev_to_priv(ptr noundef %pdev) #8
  %call1 = tail call zeroext i16 @usbhs_read(ptr noundef %call, i32 noundef 64) #8
  %0 = and i16 %call1, 128
  %and = zext i16 %0 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_irq_callback_update(ptr noundef %priv, ptr noundef readonly %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 48, i16 noundef zeroext 0) #8
  %curt.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %usbhs_mod_is_host.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

usbhs_mod_is_host.exit:                           ; preds = %entry
  %mod_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %mod_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_info.i, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  br i1 %cmp.i.not, label %usbhs_mod_is_host.exit.if.then_crit_edge, label %usbhs_mod_is_host.exit.if.end_crit_edge

usbhs_mod_is_host.exit.if.end_crit_edge:          ; preds = %usbhs_mod_is_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

usbhs_mod_is_host.exit.if.then_crit_edge:         ; preds = %usbhs_mod_is_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %usbhs_mod_is_host.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 50, i16 noundef zeroext 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %usbhs_mod_is_host.exit.if.end_crit_edge
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 58, i16 noundef zeroext 0) #8
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 54, i16 noundef zeroext 0) #8
  %irq_vbus = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %irq_vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_vbus, align 4
  %tobool1.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool1.not, i16 0, i16 -32768
  %tobool5.not = icmp eq ptr %mod, null
  br i1 %tobool5.not, label %if.end.if.end66_crit_edge, label %if.then6

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then6:                                         ; preds = %if.end
  %irq_ctrl_stage = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 4
  %6 = ptrtoint ptr %irq_ctrl_stage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_ctrl_stage, align 4
  %tobool7.not = icmp eq ptr %7, null
  %8 = or i16 %spec.select, 2048
  %spec.select111 = select i1 %tobool7.not, i16 %spec.select, i16 %8
  %irq_dev_state = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 3
  %9 = ptrtoint ptr %irq_dev_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_dev_state, align 4
  %tobool13.not = icmp eq ptr %10, null
  %11 = or i16 %spec.select111, 4096
  %intenb0.2 = select i1 %tobool13.not, i16 %spec.select111, i16 %11
  %irq_empty = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 5
  %12 = ptrtoint ptr %irq_empty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_empty, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.then6.if.end27_crit_edge, label %land.lhs.true

if.then6.if.end27_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then6
  %irq_bempsts = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 6
  %14 = ptrtoint ptr %irq_bempsts to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %irq_bempsts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool21.not = icmp eq i16 %15, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end27_crit_edge, label %if.then22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 58, i16 noundef zeroext %15) #8
  %16 = or i16 %intenb0.2, 1024
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true.if.end27_crit_edge, %if.then6.if.end27_crit_edge
  %intenb0.3 = phi i16 [ %16, %if.then22 ], [ %intenb0.2, %land.lhs.true.if.end27_crit_edge ], [ %intenb0.2, %if.then6.if.end27_crit_edge ]
  %irq_ready = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 7
  %17 = ptrtoint ptr %irq_ready to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_ready, align 4
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %if.end27.if.end37_crit_edge, label %land.lhs.true29

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true29:                                  ; preds = %if.end27
  %irq_brdysts = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 8
  %19 = ptrtoint ptr %irq_brdysts to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %irq_brdysts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool31.not = icmp eq i16 %20, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end37_crit_edge, label %if.then32

land.lhs.true29.if.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 54, i16 noundef zeroext %20) #8
  %21 = or i16 %intenb0.3, 256
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %land.lhs.true29.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %intenb0.4 = phi i16 [ %21, %if.then32 ], [ %intenb0.3, %land.lhs.true29.if.end37_crit_edge ], [ %intenb0.3, %if.end27.if.end37_crit_edge ]
  %22 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i115 = icmp eq ptr %23, null
  br i1 %tobool.not.i115, label %if.end37.if.then40_crit_edge, label %usbhs_mod_is_host.exit121

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

usbhs_mod_is_host.exit121:                        ; preds = %if.end37
  %mod_info.i116 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %24 = ptrtoint ptr %mod_info.i116 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mod_info.i116, align 4
  %cmp.i117.not = icmp eq ptr %25, %23
  br i1 %cmp.i117.not, label %usbhs_mod_is_host.exit121.if.then40_crit_edge, label %usbhs_mod_is_host.exit121.if.end66_crit_edge

usbhs_mod_is_host.exit121.if.end66_crit_edge:     ; preds = %usbhs_mod_is_host.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

usbhs_mod_is_host.exit121.if.then40_crit_edge:    ; preds = %usbhs_mod_is_host.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %usbhs_mod_is_host.exit121.if.then40_crit_edge, %if.end37.if.then40_crit_edge
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 9
  %26 = ptrtoint ptr %irq_attch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_attch, align 4
  %tobool41.not = icmp eq ptr %27, null
  %spec.select112 = select i1 %tobool41.not, i16 0, i16 2048
  %irq_dtch = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 10
  %28 = ptrtoint ptr %irq_dtch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_dtch, align 4
  %tobool47.not = icmp eq ptr %29, null
  %30 = or i16 %spec.select112, 4096
  %intenb1.1 = select i1 %tobool47.not, i16 %spec.select112, i16 %30
  %irq_sign = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 11
  %31 = ptrtoint ptr %irq_sign to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_sign, align 4
  %tobool53.not = icmp eq ptr %32, null
  %33 = or i16 %intenb1.1, 32
  %intenb1.2 = select i1 %tobool53.not, i16 %intenb1.1, i16 %33
  %irq_sack = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 12
  %34 = ptrtoint ptr %irq_sack to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_sack, align 4
  %tobool59.not = icmp eq ptr %35, null
  %36 = or i16 %intenb1.2, 16
  %spec.select113 = select i1 %tobool59.not, i16 %intenb1.2, i16 %36
  br label %if.end66

if.end66:                                         ; preds = %if.then40, %usbhs_mod_is_host.exit121.if.end66_crit_edge, %if.end.if.end66_crit_edge
  %intenb0.5 = phi i16 [ %intenb0.4, %usbhs_mod_is_host.exit121.if.end66_crit_edge ], [ %spec.select, %if.end.if.end66_crit_edge ], [ %intenb0.4, %if.then40 ]
  %intenb1.3 = phi i16 [ 0, %usbhs_mod_is_host.exit121.if.end66_crit_edge ], [ 0, %if.end.if.end66_crit_edge ], [ %spec.select113, %if.then40 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %intenb0.5)
  %tobool67.not = icmp eq i16 %intenb0.5, 0
  br i1 %tobool67.not, label %if.end66.if.end69_crit_edge, label %if.then68

if.end66.if.end69_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 48, i16 noundef zeroext %intenb0.5) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66.if.end69_crit_edge
  %37 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i123 = icmp eq ptr %38, null
  br i1 %tobool.not.i123, label %if.end69.usbhs_mod_is_host.exit129_crit_edge, label %if.end.i127

if.end69.usbhs_mod_is_host.exit129_crit_edge:     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhs_mod_is_host.exit129

if.end.i127:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %mod_info.i124 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %39 = ptrtoint ptr %mod_info.i124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mod_info.i124, align 4
  %cmp.i125 = icmp ne ptr %40, %38
  br label %usbhs_mod_is_host.exit129

usbhs_mod_is_host.exit129:                        ; preds = %if.end.i127, %if.end69.usbhs_mod_is_host.exit129_crit_edge
  %retval.0.i128 = phi i1 [ %cmp.i125, %if.end.i127 ], [ false, %if.end69.usbhs_mod_is_host.exit129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %intenb1.3)
  %tobool74.not = icmp eq i16 %intenb1.3, 0
  %or.cond = select i1 %retval.0.i128, i1 true, i1 %tobool74.not
  br i1 %or.cond, label %usbhs_mod_is_host.exit129.if.end76_crit_edge, label %if.then75

usbhs_mod_is_host.exit129.if.end76_crit_edge:     ; preds = %usbhs_mod_is_host.exit129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then75:                                        ; preds = %usbhs_mod_is_host.exit129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usbhs_write(ptr noundef %priv, i32 noundef 50, i16 noundef zeroext %intenb1.3) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %usbhs_mod_is_host.exit129.if.end76_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_mod_non_autonomy_mode(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pfunc = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %pfunc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfunc, align 4
  %get_vbus = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_vbus, align 4
  %get_vbus1 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %get_vbus1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %get_vbus1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usbhs_mod_register(ptr noundef %priv, ptr noundef %mod, i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mod_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %arrayidx = getelementptr [2 x ptr], ptr %mod_info, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mod, ptr %arrayidx, align 4
  %priv2 = getelementptr inbounds %struct.usbhs_mod, ptr %mod, i32 0, i32 13
  %1 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %priv2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch = icmp ult i32 %id, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mod_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %arrayidx = getelementptr [2 x ptr], ptr %mod_info, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ %1, %sw.bb ]
  ret ptr %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_mod_is_host(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %curt.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %curt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curt.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mod_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %mod_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_info, align 4
  %cmp = icmp eq ptr %3, %1
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_mod_get_current(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %curt = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %curt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curt, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_mod_change(ptr nocapture noundef %priv, i32 noundef %id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch = icmp ult i32 %id, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mod_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8
  %arrayidx = getelementptr [2 x ptr], ptr %mod_info, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %mod.0 = phi ptr [ %1, %sw.bb ], [ null, %entry.sw.epilog_crit_edge ]
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  %curt = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %curt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mod.0, ptr %curt, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @usbhs_mod_host_probe(ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usbhs_mod_gadget_probe(ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.mod_init_host_err_crit_edge, label %if.end5

if.end.mod_init_host_err_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mod_init_host_err

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end5.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @usbhs_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %do.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #11
  tail call void @usbhs_mod_gadget_remove(ptr noundef %priv) #8
  br label %mod_init_host_err

mod_init_host_err:                                ; preds = %do.end, %if.end.mod_init_host_err_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.mod_init_host_err_crit_edge ], [ %call.i, %do.end ]
  %call10 = tail call i32 @usbhs_mod_host_remove(ptr noundef %priv) #8
  br label %cleanup

cleanup:                                          ; preds = %mod_init_host_err, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %mod_init_host_err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_host_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_gadget_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhs_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %irq_state = alloca %struct.usbhs_irq_state, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %irq_state) #8
  %0 = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.usbhs_irq_state, ptr %irq_state, i32 0, i32 4
  %curt.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 8, i32 1
  %4 = getelementptr inbounds i8, ptr %irq_state, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 2
  %6 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curt.i.i, align 4
  %lock.i = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call6.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 64) #8
  %8 = ptrtoint ptr %irq_state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call6.i, ptr %irq_state, align 2
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 48) #8
  %9 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %usbhs_mod_is_host.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

usbhs_mod_is_host.exit.i:                         ; preds = %entry
  %mod_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %mod_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mod_info.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %10
  br i1 %cmp.i.not.i, label %usbhs_mod_is_host.exit.i.if.then.i_crit_edge, label %if.else.i

usbhs_mod_is_host.exit.i.if.then.i_crit_edge:     ; preds = %usbhs_mod_is_host.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %usbhs_mod_is_host.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call9.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 66) #8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call9.i, ptr %0, align 2
  %call10.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 50) #8
  br label %if.end.i

if.else.i:                                        ; preds = %usbhs_mod_is_host.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %0, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %tobool12.not.i = icmp eq ptr %7, null
  br i1 %tobool12.not.i, label %if.end.i.usbhs_status_get_each_irq.exit_crit_edge, label %if.then13.i

if.end.i.usbhs_status_get_each_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usbhs_status_get_each_irq.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 70) #8
  %call15.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 72) #8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call15.i, ptr %2, align 2
  %call16.i = tail call zeroext i16 @usbhs_read(ptr noundef %data, i32 noundef 74) #8
  %irq_bempsts.i = getelementptr inbounds %struct.usbhs_mod, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %irq_bempsts.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %irq_bempsts.i, align 4
  %and1.i = and i16 %17, %call16.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %and1.i, ptr %3, align 2
  %irq_brdysts.i = getelementptr inbounds %struct.usbhs_mod, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %irq_brdysts.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %irq_brdysts.i, align 4
  %and242.i = and i16 %call14.i, %20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %and242.i, ptr %1, align 2
  br label %usbhs_status_get_each_irq.exit

usbhs_status_get_each_irq.exit:                   ; preds = %if.then13.i, %if.end.i.usbhs_status_get_each_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %22 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %irq_state, align 2
  %24 = and i16 %23, -2048
  %25 = xor i16 %24, -2048
  tail call void @usbhs_write(ptr noundef %data, i32 noundef 64, i16 noundef zeroext %25) #8
  %26 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %usbhs_status_get_each_irq.exit.if.then3_crit_edge, label %usbhs_mod_is_host.exit

usbhs_status_get_each_irq.exit.if.then3_crit_edge: ; preds = %usbhs_status_get_each_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

usbhs_mod_is_host.exit:                           ; preds = %usbhs_status_get_each_irq.exit
  %mod_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 8
  %28 = ptrtoint ptr %mod_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mod_info.i, align 4
  %cmp.i.not = icmp eq ptr %29, %27
  br i1 %cmp.i.not, label %usbhs_mod_is_host.exit.if.then3_crit_edge, label %usbhs_mod_is_host.exit.if.end8_crit_edge

usbhs_mod_is_host.exit.if.end8_crit_edge:         ; preds = %usbhs_mod_is_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

usbhs_mod_is_host.exit.if.then3_crit_edge:        ; preds = %usbhs_mod_is_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %usbhs_mod_is_host.exit.if.then3_crit_edge, %usbhs_status_get_each_irq.exit.if.then3_crit_edge
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %0, align 2
  %32 = and i16 %31, -22416
  %33 = xor i16 %32, -22416
  tail call void @usbhs_write(ptr noundef %data, i32 noundef 66, i16 noundef zeroext %33) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %usbhs_mod_is_host.exit.if.end8_crit_edge
  %34 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %irq_state, align 2
  %36 = and i16 %35, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool12.not = icmp eq i16 %36, 0
  br i1 %tobool12.not, label %if.end8.if.end17_crit_edge, label %if.then13

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 2
  %neg15 = xor i16 %38, -1
  tail call void @usbhs_write(ptr noundef %data, i32 noundef 70, i16 noundef zeroext %neg15) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end8.if.end17_crit_edge
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %2, align 2
  %neg19 = xor i16 %40, -1
  tail call void @usbhs_write(ptr noundef %data, i32 noundef 72, i16 noundef zeroext %neg19) #8
  %41 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %irq_state, align 2
  %43 = and i16 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool24.not = icmp eq i16 %43, 0
  br i1 %tobool24.not, label %if.end17.if.end29_crit_edge, label %if.then25

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %3, align 2
  %neg27 = xor i16 %45, -1
  tail call void @usbhs_write(ptr noundef %data, i32 noundef 74, i16 noundef zeroext %neg27) #8
  %46 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %46)
  %.pr = load i16, ptr %irq_state, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end17.if.end29_crit_edge
  %47 = phi i16 [ %.pr, %if.then25 ], [ %42, %if.end17.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %tobool33.not = icmp sgt i16 %47, -1
  br i1 %tobool33.not, label %if.end29.if.end38_crit_edge, label %if.then34

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.end29
  %irq_vbus = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 8, i32 2
  %48 = ptrtoint ptr %irq_vbus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irq_vbus, align 4
  %tobool35.not = icmp eq ptr %49, null
  br i1 %tobool35.not, label %if.then34.if.end38_crit_edge, label %cond.false

if.then34.if.end38_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

cond.false:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 %49(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end38

if.end38:                                         ; preds = %cond.false, %if.then34.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %50 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %irq_state, align 2
  %52 = and i16 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool42.not = icmp eq i16 %52, 0
  br i1 %tobool42.not, label %if.end38.if.end58_crit_edge, label %if.then43

if.end38.if.end58_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then43:                                        ; preds = %if.end38
  %53 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %curt.i.i, align 4
  %tobool46.not = icmp eq ptr %54, null
  br i1 %tobool46.not, label %if.then43.if.end58_crit_edge, label %cond.false48

if.then43.if.end58_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

cond.false48:                                     ; preds = %if.then43
  %irq_dev_state = getelementptr inbounds %struct.usbhs_mod, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %irq_dev_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_dev_state, align 4
  %tobool49.not = icmp eq ptr %56, null
  br i1 %tobool49.not, label %cond.false48.if.end58_crit_edge, label %cond.false51

cond.false48.if.end58_crit_edge:                  ; preds = %cond.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

cond.false51:                                     ; preds = %cond.false48
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = call i32 %56(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end58

if.end58:                                         ; preds = %cond.false51, %cond.false48.if.end58_crit_edge, %if.then43.if.end58_crit_edge, %if.end38.if.end58_crit_edge
  %57 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %irq_state, align 2
  %59 = and i16 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool62.not = icmp eq i16 %59, 0
  br i1 %tobool62.not, label %if.end58.if.end79_crit_edge, label %if.then63

if.end58.if.end79_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then63:                                        ; preds = %if.end58
  %60 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curt.i.i, align 4
  %tobool67.not = icmp eq ptr %61, null
  br i1 %tobool67.not, label %if.then63.if.end79_crit_edge, label %cond.false69

if.then63.if.end79_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

cond.false69:                                     ; preds = %if.then63
  %irq_ctrl_stage = getelementptr inbounds %struct.usbhs_mod, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %irq_ctrl_stage to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_ctrl_stage, align 4
  %tobool70.not = icmp eq ptr %63, null
  br i1 %tobool70.not, label %cond.false69.if.end79_crit_edge, label %cond.false72

cond.false69.if.end79_crit_edge:                  ; preds = %cond.false69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

cond.false72:                                     ; preds = %cond.false69
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = call i32 %63(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end79

if.end79:                                         ; preds = %cond.false72, %cond.false69.if.end79_crit_edge, %if.then63.if.end79_crit_edge, %if.end58.if.end79_crit_edge
  %64 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %irq_state, align 2
  %66 = and i16 %65, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool83.not = icmp eq i16 %66, 0
  br i1 %tobool83.not, label %if.end79.if.end100_crit_edge, label %if.then84

if.end79.if.end100_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then84:                                        ; preds = %if.end79
  %67 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %curt.i.i, align 4
  %tobool88.not = icmp eq ptr %68, null
  br i1 %tobool88.not, label %if.then84.if.end100_crit_edge, label %cond.false90

if.then84.if.end100_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

cond.false90:                                     ; preds = %if.then84
  %irq_empty = getelementptr inbounds %struct.usbhs_mod, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %irq_empty to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_empty, align 4
  %tobool91.not = icmp eq ptr %70, null
  br i1 %tobool91.not, label %cond.false90.if.end100_crit_edge, label %cond.false93

cond.false90.if.end100_crit_edge:                 ; preds = %cond.false90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

cond.false93:                                     ; preds = %cond.false90
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = call i32 %70(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end100

if.end100:                                        ; preds = %cond.false93, %cond.false90.if.end100_crit_edge, %if.then84.if.end100_crit_edge, %if.end79.if.end100_crit_edge
  %71 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %irq_state, align 2
  %73 = and i16 %72, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool104.not = icmp eq i16 %73, 0
  br i1 %tobool104.not, label %if.end100.if.end121_crit_edge, label %if.then105

if.end100.if.end121_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then105:                                       ; preds = %if.end100
  %74 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %curt.i.i, align 4
  %tobool109.not = icmp eq ptr %75, null
  br i1 %tobool109.not, label %if.then105.if.end145_crit_edge, label %cond.false111

if.then105.if.end145_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

cond.false111:                                    ; preds = %if.then105
  %irq_ready = getelementptr inbounds %struct.usbhs_mod, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %irq_ready to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_ready, align 4
  %tobool112.not = icmp eq ptr %77, null
  br i1 %tobool112.not, label %cond.false111.if.end121_crit_edge, label %cond.false114

cond.false111.if.end121_crit_edge:                ; preds = %cond.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

cond.false114:                                    ; preds = %cond.false111
  call void @__sanitizer_cov_trace_pc() #10
  %call116 = call i32 %77(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end121

if.end121:                                        ; preds = %cond.false114, %cond.false111.if.end121_crit_edge, %if.end100.if.end121_crit_edge
  %78 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr280 = load ptr, ptr %curt.i.i, align 4
  %tobool.not.i267 = icmp eq ptr %.pr280, null
  br i1 %tobool.not.i267, label %if.end121.if.end145_crit_edge, label %usbhs_mod_is_host.exit273

if.end121.if.end145_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

usbhs_mod_is_host.exit273:                        ; preds = %if.end121
  %mod_info.i268 = getelementptr inbounds %struct.usbhs_priv, ptr %data, i32 0, i32 8
  %79 = ptrtoint ptr %mod_info.i268 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mod_info.i268, align 4
  %cmp.i269.not = icmp eq ptr %80, %.pr280
  br i1 %cmp.i269.not, label %if.then124, label %usbhs_mod_is_host.exit273.cleanup_crit_edge

usbhs_mod_is_host.exit273.cleanup_crit_edge:      ; preds = %usbhs_mod_is_host.exit273
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then124:                                       ; preds = %usbhs_mod_is_host.exit273
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %0, align 2
  %83 = and i16 %82, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool128.not = icmp eq i16 %83, 0
  br i1 %tobool128.not, label %if.then124.if.end145_crit_edge, label %cond.false135

if.then124.if.end145_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

cond.false135:                                    ; preds = %if.then124
  %irq_attch = getelementptr inbounds %struct.usbhs_mod, ptr %.pr280, i32 0, i32 9
  %84 = ptrtoint ptr %irq_attch to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %irq_attch, align 4
  %tobool136.not = icmp eq ptr %85, null
  br i1 %tobool136.not, label %cond.false135.if.end145_crit_edge, label %cond.false138

cond.false135.if.end145_crit_edge:                ; preds = %cond.false135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

cond.false138:                                    ; preds = %cond.false135
  call void @__sanitizer_cov_trace_pc() #10
  %call140 = call i32 %85(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end145

if.end145:                                        ; preds = %cond.false138, %cond.false135.if.end145_crit_edge, %if.then124.if.end145_crit_edge, %if.end121.if.end145_crit_edge, %if.then105.if.end145_crit_edge
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %0, align 2
  %88 = and i16 %87, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool149.not = icmp eq i16 %88, 0
  br i1 %tobool149.not, label %if.end145.if.end166_crit_edge, label %if.then150

if.end145.if.end166_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then150:                                       ; preds = %if.end145
  %89 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %curt.i.i, align 4
  %tobool154.not = icmp eq ptr %90, null
  br i1 %tobool154.not, label %if.then150.if.end166_crit_edge, label %cond.false156

if.then150.if.end166_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

cond.false156:                                    ; preds = %if.then150
  %irq_dtch = getelementptr inbounds %struct.usbhs_mod, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %irq_dtch to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %irq_dtch, align 4
  %tobool157.not = icmp eq ptr %92, null
  br i1 %tobool157.not, label %cond.false156.if.end166_crit_edge, label %cond.false159

cond.false156.if.end166_crit_edge:                ; preds = %cond.false156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

cond.false159:                                    ; preds = %cond.false156
  call void @__sanitizer_cov_trace_pc() #10
  %call161 = call i32 %92(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end166

if.end166:                                        ; preds = %cond.false159, %cond.false156.if.end166_crit_edge, %if.then150.if.end166_crit_edge, %if.end145.if.end166_crit_edge
  %93 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %0, align 2
  %95 = and i16 %94, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool170.not = icmp eq i16 %95, 0
  br i1 %tobool170.not, label %if.end166.if.end187_crit_edge, label %if.then171

if.end166.if.end187_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then171:                                       ; preds = %if.end166
  %96 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %curt.i.i, align 4
  %tobool175.not = icmp eq ptr %97, null
  br i1 %tobool175.not, label %if.then171.if.end187_crit_edge, label %cond.false177

if.then171.if.end187_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

cond.false177:                                    ; preds = %if.then171
  %irq_sign = getelementptr inbounds %struct.usbhs_mod, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %irq_sign to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %irq_sign, align 4
  %tobool178.not = icmp eq ptr %99, null
  br i1 %tobool178.not, label %cond.false177.if.end187_crit_edge, label %cond.false180

cond.false177.if.end187_crit_edge:                ; preds = %cond.false177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

cond.false180:                                    ; preds = %cond.false177
  call void @__sanitizer_cov_trace_pc() #10
  %call182 = call i32 %99(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %if.end187

if.end187:                                        ; preds = %cond.false180, %cond.false177.if.end187_crit_edge, %if.then171.if.end187_crit_edge, %if.end166.if.end187_crit_edge
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %0, align 2
  %102 = and i16 %101, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool191.not = icmp eq i16 %102, 0
  br i1 %tobool191.not, label %if.end187.cleanup_crit_edge, label %if.then192

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then192:                                       ; preds = %if.end187
  %103 = ptrtoint ptr %curt.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %curt.i.i, align 4
  %tobool196.not = icmp eq ptr %104, null
  br i1 %tobool196.not, label %if.then192.cleanup_crit_edge, label %cond.false198

if.then192.cleanup_crit_edge:                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false198:                                    ; preds = %if.then192
  %irq_sack = getelementptr inbounds %struct.usbhs_mod, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %irq_sack to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %irq_sack, align 4
  %tobool199.not = icmp eq ptr %106, null
  br i1 %tobool199.not, label %cond.false198.cleanup_crit_edge, label %cond.false201

cond.false198.cleanup_crit_edge:                  ; preds = %cond.false198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false201:                                    ; preds = %cond.false198
  call void @__sanitizer_cov_trace_pc() #10
  %call203 = call i32 %106(ptr noundef %data, ptr noundef nonnull %irq_state) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.false201, %cond.false198.cleanup_crit_edge, %if.then192.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %usbhs_mod_is_host.exit273.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %irq_state) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_gadget_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_host_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_mod_remove(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbhs_mod_host_remove(ptr noundef %priv) #8
  tail call void @usbhs_mod_gadget_remove(ptr noundef %priv) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_status_get_device_state(ptr nocapture noundef readonly %irq_state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %irq_state, align 2
  %2 = and i16 %1, 112
  %and = zext i16 %2 to i32
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_status_get_ctrl_stage(ptr nocapture noundef readonly %irq_state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %irq_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %irq_state, align 2
  %2 = and i16 %1, 7
  %and = zext i16 %2 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhsc_schedule_notify_hotplug(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/mod.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_mod_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_mod_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
