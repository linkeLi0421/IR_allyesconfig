; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/nhi_ops.c_pt.bc'
source_filename = "../drivers/thunderbolt/nhi_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tb_nhi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }

@icl_nhi_ops = dso_local constant { %struct.tb_nhi_ops, [40 x i8] } { %struct.tb_nhi_ops { ptr @icl_nhi_resume, ptr @icl_nhi_suspend_noirq, ptr @icl_nhi_resume, ptr @icl_nhi_suspend, ptr @icl_nhi_resume, ptr @icl_nhi_shutdown }, [40 x i8] zeroinitializer }, align 32
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tb_switch_type = external dso_local global %struct.device_type, align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"icl_nhi_ops\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../drivers/thunderbolt/nhi_ops.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 178, i32 25 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @icl_nhi_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icl_nhi_resume(ptr nocapture noundef readonly %nhi) #0 align 64 {
entry:
  %max_ltr.i = alloca i32, align 4
  %vs_cap.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vs_cap.i) #4
  %0 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vs_cap.i, align 4, !annotation !11
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 252, ptr noundef nonnull %vs_cap.i) #4
  %3 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vs_cap.i, align 4
  %and.i = and i32 %4, 16777213
  %or1.i = or i32 %and.i, 570425346
  store i32 %or1.i, ptr %vs_cap.i, align 4
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %call4.c20.i = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 252, i32 noundef %or1.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !11
  br label %do.body.i

do.body.i:                                        ; preds = %if.end12.i.do.body.i_crit_edge, %entry
  %retries.0.i = phi i32 [ 350, %entry ], [ %dec.i, %if.end12.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %call8.i = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 200, ptr noundef nonnull %val.i) #4
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool10.not.i = icmp sgt i32 %11, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end

if.end12.i:                                       ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #4
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool13.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool13.not.i, label %icl_nhi_force_power.exit, label %if.end12.i.do.body.i_crit_edge

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

icl_nhi_force_power.exit:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vs_cap.i) #4
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vs_cap.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_ltr.i) #4
  %12 = ptrtoint ptr %max_ltr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %max_ltr.i, align 4, !annotation !11
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %call.i4 = call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef 228, ptr noundef nonnull %max_ltr.i) #4
  %15 = ptrtoint ptr %max_ltr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_ltr.i, align 4
  %and.i5 = and i32 %16, 65535
  store i32 %and.i5, ptr %max_ltr.i, align 4
  %shl.i = shl i32 %16, 16
  %or.i = or i32 %shl.i, %and.i5
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %18, i32 noundef 224, i32 noundef %or.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_ltr.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %icl_nhi_force_power.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %icl_nhi_force_power.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icl_nhi_suspend_noirq(ptr nocapture noundef readonly %nhi, i1 noundef zeroext %wakeup) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %2 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @icl_nhi_suspend(ptr noundef %nhi)
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %root_switch = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_switch, align 8
  %enabled.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i = load i64, ptr %enabled.i, align 4
  %8 = and i64 %bf.load.i, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %bf.cast.not.i = icmp eq i64 %8, 0
  br i1 %bf.cast.not.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %or.i = select i1 %wakeup, i32 5, i32 7
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 240, i32 noundef %or.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %data.i, align 4, !annotation !11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end5
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef 236, ptr noundef nonnull %data.i) #4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data.i, align 4
  %and.i13 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool2.not.i = icmp eq i32 %and.i13, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %clear.i

if.end4.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %15
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end4.i.do.body.i_crit_edge, label %if.end4.i.icl_nhi_lc_mailbox_cmd_complete.exit_crit_edge

if.end4.i.icl_nhi_lc_mailbox_cmd_complete.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %icl_nhi_lc_mailbox_cmd_complete.exit

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

clear.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef 240, i32 noundef 0) #4
  br label %icl_nhi_lc_mailbox_cmd_complete.exit

icl_nhi_lc_mailbox_cmd_complete.exit:             ; preds = %clear.i, %if.end4.i.icl_nhi_lc_mailbox_cmd_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %clear.i ], [ -110, %if.end4.i.icl_nhi_lc_mailbox_cmd_complete.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %cleanup

cleanup:                                          ; preds = %icl_nhi_lc_mailbox_cmd_complete.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %icl_nhi_lc_mailbox_cmd_complete.exit ], [ %call2, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icl_nhi_suspend(ptr nocapture noundef readonly %nhi) #0 align 64 {
entry:
  %vs_cap.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %root_switch.i = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %root_switch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_switch.i, align 8
  %call1.i = tail call i32 @device_for_each_child(ptr noundef %5, ptr noundef null, ptr noundef nonnull @check_for_device) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %root_switch.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_switch.i, align 8
  %enabled.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %enabled.i, align 4
  %9 = and i64 %bf.load.i, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %bf.cast.not.i = icmp eq i64 %9, 0
  br i1 %bf.cast.not.i, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %11, i32 noundef 240, i32 noundef 67) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %data.i, align 4, !annotation !11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %13
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.then3
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %call1.i17 = call i32 @pci_read_config_dword(ptr noundef %15, i32 noundef 236, ptr noundef nonnull %data.i) #4
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %icl_nhi_lc_mailbox_cmd_complete.exit.thread

if.end4.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %18
  %cmp.i18 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i18, label %if.end4.i.do.body.i_crit_edge, label %icl_nhi_lc_mailbox_cmd_complete.exit

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

icl_nhi_lc_mailbox_cmd_complete.exit.thread:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %20, i32 noundef 240, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %if.end7

icl_nhi_lc_mailbox_cmd_complete.exit:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %cleanup

if.end7:                                          ; preds = %icl_nhi_lc_mailbox_cmd_complete.exit.thread, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vs_cap.i) #4
  %21 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %vs_cap.i, align 4, !annotation !11
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %call.i20 = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef 252, ptr noundef nonnull %vs_cap.i) #4
  %24 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vs_cap.i, align 4
  %and2.i = and i32 %25, -3
  store i32 %and2.i, ptr %vs_cap.i, align 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %call4.c.i = call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 252, i32 noundef %and2.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vs_cap.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %icl_nhi_lc_mailbox_cmd_complete.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -110, %icl_nhi_lc_mailbox_cmd_complete.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icl_nhi_shutdown(ptr nocapture noundef readonly %nhi) #0 align 64 {
entry:
  %vs_cap.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vs_cap.i) #4
  %0 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vs_cap.i, align 4, !annotation !11
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 252, ptr noundef nonnull %vs_cap.i) #4
  %3 = ptrtoint ptr %vs_cap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vs_cap.i, align 4
  %and2.i = and i32 %4, -3
  store i32 %and2.i, ptr %vs_cap.i, align 4
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %call4.c.i = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 252, i32 noundef %and2.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vs_cap.i) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_for_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @tb_switch_type
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @icl_nhi_ops, !1, !"icl_nhi_ops", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/nhi_ops.c", i32 178, i32 25}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
