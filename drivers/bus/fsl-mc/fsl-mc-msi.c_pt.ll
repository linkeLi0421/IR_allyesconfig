; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/fsl-mc-msi.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/fsl-mc-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.46, %struct.anon.47, %union.anon.48 }
%union.anon.46 = type { i32 }
%struct.anon.47 = type { i16, i32 }
%union.anon.48 = type { ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.49] }
%union.anon.49 = type { i32 }
%struct.dprc_irq_cfg = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.fsl_mc_bus = type { %struct.fsl_mc_device, [4 x %struct.fsl_mc_resource_pool], ptr, %struct.mutex, %struct.dprc_attributes, %struct.fsl_mc_uapi, i32 }
%struct.fsl_mc_resource_pool = type { i32, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.dprc_attributes = type { i32, i32, i32, i64 }
%struct.fsl_mc_uapi = type { %struct.miscdevice, ptr, %struct.mutex, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.fsl_mc_device_irq = type { i32, ptr, i8, %struct.fsl_mc_resource }
%struct.fsl_mc_resource = type { i32, i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/bus/fsl-mc/fsl-mc-msi.c\00", [32 x i8] zeroinitializer }, align 32
@fsl_mc_msi_domain_alloc_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate IRQs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsl_mc_msi_domain_alloc_irqs\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_mc_msi_domain_alloc_irqs._entry_ptr = internal global ptr @fsl_mc_msi_domain_alloc_irqs._entry, section ".printk_index", align 4
@__fsl_mc_msi_write_msg._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 95, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dprc_set_irq() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__fsl_mc_msi_write_msg\00", [41 x i8] zeroinitializer }, align 32
@__fsl_mc_msi_write_msg._entry_ptr = internal global ptr @__fsl_mc_msi_write_msg._entry, section ".printk_index", align 4
@__fsl_mc_msi_write_msg._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 110, ptr @.str.3, ptr @.str.4 }, align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dprc_obj_set_irq() failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__fsl_mc_msi_write_msg._entry_ptr.9 = internal global ptr @__fsl_mc_msi_write_msg._entry.7, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 167, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 237, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 94, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [35 x i8] c"../drivers/bus/fsl-mc/fsl-mc-msi.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 109, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__fsl_mc_msi_write_msg._entry, ptr @__fsl_mc_msi_write_msg._entry.7, ptr @__fsl_mc_msi_write_msg._entry_ptr, ptr @__fsl_mc_msi_write_msg._entry_ptr.9, ptr @fsl_mc_msi_domain_alloc_irqs._entry, ptr @fsl_mc_msi_domain_alloc_irqs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_msi_domain_alloc_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsl_mc_msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %do.end, !prof !27

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %and23 = and i32 %3, -65
  store i32 %and23, ptr %info, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end, %entry.if.end24_crit_edge
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and26 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then28.if.end29_crit_edge, label %if.end.i

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end.i:                                         ; preds = %if.then28
  %set_desc.i = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_desc.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end29_crit_edge

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fsl_mc_msi_set_desc, ptr %set_desc.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then3.i, %if.end.i.if.end29_crit_edge, %if.then28.if.end29_crit_edge, %if.end24.if.end29_crit_edge
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %and31 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  %chip1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip1.i, align 4
  %tobool.not.i49 = icmp eq ptr %14, null
  br i1 %tobool.not.i49, label %if.then33.if.end34_crit_edge, label %if.end.i51

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end.i51:                                       ; preds = %if.then33
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_write_msi_msg.i, align 4
  %tobool2.not.i50 = icmp eq ptr %16, null
  br i1 %tobool2.not.i50, label %if.then3.i52, label %if.end.i51.if.end34_crit_edge

if.end.i51.if.end34_crit_edge:                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then3.i52:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fsl_mc_msi_write_msg, ptr %irq_write_msi_msg.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then3.i52, %if.end.i51.if.end34_crit_edge, %if.then33.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %or = or i32 %19, 1536
  store i32 %or, ptr %info, align 4
  %call = tail call ptr @msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #5
  %tobool36.not = icmp eq ptr %call, null
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call, i32 noundef 7) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsl_mc_find_msi_domain(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %root_dprc_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_dprc_dev) #5
  %0 = ptrtoint ptr %root_dprc_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_dprc_dev, align 4, !annotation !28
  call void @fsl_mc_get_root_dprc(ptr noundef %dev, ptr noundef nonnull %root_dprc_dev) #5
  %1 = ptrtoint ptr %root_dprc_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root_dprc_dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %icid = getelementptr inbounds %struct.fsl_mc_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %icid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icid, align 4
  %call = call ptr @of_msi_map_get_device_domain(ptr noundef %dev, i32 noundef %8, i32 noundef 7) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call4 = call ptr @of_msi_get_domain(ptr noundef %4, ptr noundef %10, i32 noundef 7) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %msi_domain.0 = phi ptr [ %call, %if.then.if.end7_crit_edge ], [ %call4, %if.then2 ], [ null, %entry.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_dprc_dev) #5
  ret ptr %msi_domain.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_get_root_dprc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_msi_map_get_device_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_msi_get_domain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_msi_domain_alloc_irqs(ptr noundef %dev, i32 noundef %irq_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msi.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @msi_setup_device_data(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 0) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @msi_domain_alloc_irqs(ptr noundef nonnull %1, ptr noundef %dev, i32 noundef %irq_count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call9, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_setup_device_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_mc_msi_domain_free_irqs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msi.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msi_domain_free_irqs(ptr noundef nonnull %1, ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fsl_mc_msi_set_desc(ptr nocapture noundef writeonly %arg, ptr noundef %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %arg, align 4
  %dev = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %desc, i32 0, i32 8
  %3 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %msi_index.i, align 4
  %conv.i = zext i16 %4 to i32
  %icid.i = getelementptr inbounds %struct.fsl_mc_device, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %icid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icid.i, align 4
  %mul.i = mul i32 %6, 10000
  %add.i = add i32 %mul.i, %conv.i
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %hwirq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_mc_msi_write_msg(ptr nocapture noundef readonly %irq_data, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  %irq_cfg.i = alloca %struct.dprc_irq_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  %dev = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %irq_resources = getelementptr inbounds %struct.fsl_mc_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %irq_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_resources, align 8
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %msi_index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msi_index, align 4
  %idxprom = zext i16 %9 to i32
  %msg4 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %msg4, ptr %msg, i32 12)
  %mc_dev.i = getelementptr %struct.fsl_mc_device_irq, ptr %7, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %mc_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %irq_cfg.i) #5
  %13 = getelementptr inbounds %struct.dprc_irq_cfg, ptr %irq_cfg.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.dprc_irq_cfg, ptr %irq_cfg.i, i32 0, i32 2
  %15 = ptrtoint ptr %msg4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %17 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i = icmp eq i32 %19, 0
  %tobool.not.i = icmp eq ptr %12, null
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.__fsl_mc_msi_write_msg.exit_crit_edge, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

land.lhs.true.i.__fsl_mc_msi_write_msg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__fsl_mc_msi_write_msg.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.old.i = icmp eq ptr %12, null
  br i1 %tobool.not.old.i, label %if.end.i.__fsl_mc_msi_write_msg.exit_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end.i.__fsl_mc_msi_write_msg.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__fsl_mc_msi_write_msg.exit

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %land.lhs.true.i.if.end4.i_crit_edge
  %20 = ptrtoint ptr %irq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %irq_cfg.i, align 4
  %21 = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %13, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %14, align 4
  %cmp10.i = icmp eq ptr %12, %5
  %mc_io.i = getelementptr inbounds %struct.fsl_mc_device, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mc_io.i, align 4
  %mc_handle.i = getelementptr inbounds %struct.fsl_mc_device, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %mc_handle.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mc_handle.i, align 8
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end4.i
  %dev_irq_index.i = getelementptr %struct.fsl_mc_device_irq, ptr %7, i32 %idxprom, i32 2
  %32 = ptrtoint ptr %dev_irq_index.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dev_irq_index.i, align 4
  %call.i = call i32 @dprc_set_irq(ptr noundef %29, i32 noundef 129, i16 noundef zeroext %31, i8 noundef zeroext %33, ptr noundef nonnull %irq_cfg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.i = icmp slt i32 %call.i, 0
  br i1 %cmp13.i, label %do.end.i, label %if.then12.i.__fsl_mc_msi_write_msg.exit_crit_edge

if.then12.i.__fsl_mc_msi_write_msg.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__fsl_mc_msi_write_msg.exit

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i32 noundef %call.i) #8
  br label %__fsl_mc_msi_write_msg.exit

if.else.i:                                        ; preds = %if.end4.i
  %obj_desc.i = getelementptr inbounds %struct.fsl_mc_device, ptr %12, i32 0, i32 6
  %id.i = getelementptr inbounds %struct.fsl_mc_device, ptr %12, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 8
  %dev_irq_index20.i = getelementptr %struct.fsl_mc_device_irq, ptr %7, i32 %idxprom, i32 2
  %36 = ptrtoint ptr %dev_irq_index20.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dev_irq_index20.i, align 4
  %call21.i = call i32 @dprc_set_obj_irq(ptr noundef %29, i32 noundef 129, i16 noundef zeroext %31, ptr noundef %obj_desc.i, i32 noundef %35, i8 noundef zeroext %37, ptr noundef nonnull %irq_cfg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end27.i, label %if.else.i.__fsl_mc_msi_write_msg.exit_crit_edge

if.else.i.__fsl_mc_msi_write_msg.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__fsl_mc_msi_write_msg.exit

do.end27.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, i32 noundef %call21.i) #8
  br label %__fsl_mc_msi_write_msg.exit

__fsl_mc_msi_write_msg.exit:                      ; preds = %do.end27.i, %if.else.i.__fsl_mc_msi_write_msg.exit_crit_edge, %do.end.i, %if.then12.i.__fsl_mc_msi_write_msg.exit_crit_edge, %if.end.i.__fsl_mc_msi_write_msg.exit_crit_edge, %land.lhs.true.i.__fsl_mc_msi_write_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %irq_cfg.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_set_irq(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_set_obj_irq(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/fsl-mc-msi.c", i32 167, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bus/fsl-mc/fsl-mc-msi.c", i32 237, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @fsl_mc_msi_domain_alloc_irqs._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @fsl_mc_msi_domain_alloc_irqs._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bus/fsl-mc/fsl-mc-msi.c", i32 94, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__fsl_mc_msi_write_msg._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @__fsl_mc_msi_write_msg._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/fsl-mc/fsl-mc-msi.c", i32 109, i32 4}
!16 = !{ptr @__fsl_mc_msi_write_msg._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__fsl_mc_msi_write_msg._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"auto-init"}
