; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_mdp_dev = type { %struct.mutex, %struct.mutex, ptr, ptr, i16, %struct.list_head, ptr, %struct.list_head, ptr, %struct.v4l2_device, ptr, ptr, i32, i32, ptr, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.mdp_ipi_comm_ack = type { i32, i32, i64, i32, i32 }
%struct.mtk_mdp_vpu = type { ptr, i32, i32, ptr }
%struct.mdp_ipi_init = type { i32, i32, i64 }
%struct.mdp_ipi_comm = type <{ i32, i32, i64, i32 }>

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdp_vpu\00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_vpu_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vpu_ipi_registration fail status=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_mdp_vpu_register\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_vpu_register._entry_ptr = internal global ptr @mtk_mdp_vpu_register._entry, section ".printk_index", align 4
@mtk_mdp_vpu_ipi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 51, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle unknown ipi msg:0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_mdp_vpu_ipi_handler\00", [40 x i8] zeroinitializer }, align 32
@mtk_mdp_vpu_ipi_handler._entry_ptr = internal global ptr @mtk_mdp_vpu_ipi_handler._entry, section ".printk_index", align 4
@mtk_mdp_vpu_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vpu_ipi_send fail status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_mdp_vpu_send_msg\00", [43 x i8] zeroinitializer }, align 32
@mtk_mdp_vpu_send_msg._entry_ptr = internal global ptr @mtk_mdp_vpu_send_msg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 57344, i64 57345, i64 57346]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 67, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 69, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 49, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [48 x i8] c"../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 89, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @mtk_mdp_vpu_ipi_handler._entry, ptr @mtk_mdp_vpu_ipi_handler._entry_ptr, ptr @mtk_mdp_vpu_register._entry, ptr @mtk_mdp_vpu_register._entry_ptr, ptr @mtk_mdp_vpu_send_msg._entry, ptr @mtk_mdp_vpu_send_msg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_vpu_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_vpu_ipi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_vpu_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_vpu_register(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vpu_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vpu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpu_dev, align 4
  %call1 = tail call i32 @vpu_ipi_register(ptr noundef %3, i32 noundef 6, ptr noundef nonnull @mtk_mdp_vpu_ipi_handler, ptr noundef nonnull @.str, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pdev2 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_ipi_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_vpu_ipi_handler(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %ap_inst = getelementptr inbounds %struct.mdp_ipi_comm_ack, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %ap_inst to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %ap_inst, align 4
  %conv = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv to ptr
  %status = getelementptr inbounds %struct.mdp_ipi_comm_ack, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %failure = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %failure to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %failure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 57344, label %sw.bb
    i32 57345, label %if.then.if.end_crit_edge
    i32 57346, label %if.then.if.end_crit_edge13
  ]

if.then.if.end_crit_edge13:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %ap_inst to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %ap_inst, align 4
  %conv.i = trunc i64 %10 to i32
  %11 = inttoptr i32 %conv.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %vpu_inst_addr.i = getelementptr inbounds %struct.mdp_ipi_comm_ack, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %vpu_inst_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vpu_inst_addr.i, align 4
  %call.i = tail call ptr @vpu_mapping_dm_addr(ptr noundef %13, i32 noundef %15) #4
  %vsi.i = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %vsi.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %vsi.i, align 4
  %17 = ptrtoint ptr %vpu_inst_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vpu_inst_addr.i, align 4
  %inst_addr.i = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %inst_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %inst_addr.i, align 4
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %mdp_dev = getelementptr i8, ptr %4, i32 -420
  %20 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdp_dev, align 4
  %pdev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge13, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_vpu_init(ptr noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.mdp_ipi_init, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.mdp_ipi_init, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mdp_ipi_init, ptr %msg, i32 0, i32 2
  %mdp_dev = getelementptr i8, ptr %vpu, i32 -420
  %2 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdp_dev, align 4
  %vpu_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %vpu_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpu_dev, align 4
  %6 = ptrtoint ptr %vpu to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %vpu, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 53248, ptr %msg, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %0, align 4
  %9 = ptrtoint ptr %vpu to i32
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdp_dev, align 4
  %vpulock.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %12, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %vpulock.i, i32 noundef 0) #4
  %13 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vpu, align 4
  %call2.i = call i32 @vpu_ipi_send(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %msg, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %15 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdp_dev, align 4
  br i1 %tobool3.not.i, label %land.lhs.true, label %mtk_mdp_vpu_send_msg.exit

mtk_mdp_vpu_send_msg.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev6.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev6.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %call2.i) #7
  %19 = ptrtoint ptr %mdp_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdp_dev, align 4
  %vpulock9.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %20, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %vpulock9.i) #4
  br label %if.end

land.lhs.true:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %vpulock9.i10 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %16, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %vpulock9.i10) #4
  %failure = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %vpu, i32 0, i32 2
  %21 = ptrtoint ptr %failure to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %failure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %mtk_mdp_vpu_send_msg.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call2.i, %mtk_mdp_vpu_send_msg.exit ], [ %spec.select, %land.lhs.true ], [ -22, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_vpu_deinit(ptr noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtk_mdp_vpu_send_ap_ipi(ptr noundef %vpu, i32 noundef 53249)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_mdp_vpu_send_ap_ipi(ptr noundef %vpu, i32 noundef %msg_id) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.mdp_ipi_comm, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.mdp_ipi_comm, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mdp_ipi_comm, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mdp_ipi_comm, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %msg_id, ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %0, align 4
  %inst_addr = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %vpu, i32 0, i32 1
  %5 = ptrtoint ptr %inst_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inst_addr, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %2, align 4
  %8 = ptrtoint ptr %vpu to i32
  %conv = zext i32 %8 to i64
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %conv, ptr %1, align 4
  %10 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpu, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %mdp_dev.i = getelementptr i8, ptr %vpu, i32 -420
  %12 = ptrtoint ptr %mdp_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdp_dev.i, align 4
  %vpulock.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %13, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %vpulock.i, i32 noundef 0) #4
  %14 = ptrtoint ptr %vpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vpu, align 4
  %call2.i = call i32 @vpu_ipi_send(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %msg, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %16 = ptrtoint ptr %mdp_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdp_dev.i, align 4
  br i1 %tobool3.not.i, label %land.lhs.true, label %mtk_mdp_vpu_send_msg.exit

mtk_mdp_vpu_send_msg.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev6.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev6.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %call2.i) #7
  %20 = ptrtoint ptr %mdp_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdp_dev.i, align 4
  %vpulock9.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %21, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %vpulock9.i) #4
  br label %if.end

land.lhs.true:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %vpulock9.i9 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %17, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %vpulock9.i9) #4
  %failure = getelementptr inbounds %struct.mtk_mdp_vpu, ptr %vpu, i32 0, i32 2
  %22 = ptrtoint ptr %failure to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %failure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not = icmp eq i32 %23, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %mtk_mdp_vpu_send_msg.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call2.i, %mtk_mdp_vpu_send_msg.exit ], [ %spec.select, %land.lhs.true ], [ -22, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_vpu_process(ptr noundef %vpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtk_mdp_vpu_send_ap_ipi(ptr noundef %vpu, i32 noundef 53250)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vpu_mapping_dm_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_ipi_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c", i32 67, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c", i32 69, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mtk_mdp_vpu_register._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtk_mdp_vpu_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c", i32 49, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mtk_mdp_vpu_ipi_handler._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mtk_mdp_vpu_ipi_handler._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c", i32 89, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtk_mdp_vpu_send_msg._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtk_mdp_vpu_send_msg._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
