; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_mdp_comp = type { %struct.list_head, ptr, [2 x ptr], ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@mtk_mdp_comp_clock_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get larb, err %d. type:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_mdp_comp_clock_on\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/mtk-mdp/mtk_mdp_comp.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_clock_on._entry_ptr = internal global ptr @mtk_mdp_comp_clock_on._entry, section ".printk_index", align 4
@mtk_mdp_comp_clock_on._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to enable clock, err %d. type:%d i:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_clock_on._entry_ptr.7 = internal global ptr @mtk_mdp_comp_clock_on._entry.5, section ".printk_index", align 4
@mtk_mdp_comp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_mdp_comp_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_init._entry_ptr = internal global ptr @mtk_mdp_comp_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,larb\00", [18 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Missing mediadek,larb phandle in %pOF node\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_init._entry_ptr.13 = internal global ptr @mtk_mdp_comp_init._entry.11, section ".printk_index", align 4
@mtk_mdp_comp_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 97, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Waiting for larb device %pOF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_mdp_comp_init._entry_ptr.17 = internal global ptr @mtk_mdp_comp_init._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 24, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 34, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 70, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 89, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [49 x i8] c"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 97, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @mtk_mdp_comp_clock_on._entry, ptr @mtk_mdp_comp_clock_on._entry.5, ptr @mtk_mdp_comp_clock_on._entry_ptr, ptr @mtk_mdp_comp_clock_on._entry_ptr.7, ptr @mtk_mdp_comp_init._entry, ptr @mtk_mdp_comp_init._entry.11, ptr @mtk_mdp_comp_init._entry.14, ptr @mtk_mdp_comp_init._entry_ptr, ptr @mtk_mdp_comp_init._entry_ptr.13, ptr @mtk_mdp_comp_init._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_clock_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_clock_on._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_comp_clock_on(ptr noundef %dev, ptr nocapture noundef readonly %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %larb_dev = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %larb_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @mtk_smi_larb_get(ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call, i32 noundef %3) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %type16 = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 4
  %arrayidx = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.for.inc_crit_edge, label %if.end7

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end7:                                          ; preds = %if.end4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.do.end15_crit_edge

if.end7.do.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end7.do.end15_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end7.do.end15_crit_edge ]
  %6 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i.ph, i32 noundef %7, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end15, %if.end.i.for.inc_crit_edge, %if.end4.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end7.1:                                        ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end7.1.do.end15.1_crit_edge

if.end7.1.do.end15.1_crit_edge:                   ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15.1

if.end.i.1:                                       ; preds = %if.end7.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.for.inc.1_crit_edge, label %if.then3.i.1

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %do.end15.1

do.end15.1:                                       ; preds = %if.then3.i.1, %if.end7.1.do.end15.1_crit_edge
  %retval.0.i.ph.1 = phi i32 [ %call1.i.1, %if.then3.i.1 ], [ %call.i.1, %if.end7.1.do.end15.1_crit_edge ]
  %10 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i.ph.1, i32 noundef %11, i32 noundef 1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end15.1, %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_smi_larb_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_comp_clock_off(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %1) #4
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %larb_dev = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 3
  %4 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %larb_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc.1.if.end5_crit_edge, label %if.then3

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_smi_larb_put(ptr noundef nonnull %5) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.inc.1.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_smi_larb_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mdp_comp_init(ptr noundef %dev, ptr noundef %node, ptr nocapture noundef %comp, i32 noundef %comp_type) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_node_get(ptr noundef %node) #4
  %dev_node = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 1
  %0 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dev_node, align 4
  %type = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %comp_type, ptr %type, align 4
  %call1 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end13

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond:                                         ; preds = %if.end13
  %call1.1 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 1) #4
  %arrayidx.1 = getelementptr %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call1.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.if.then_crit_edge, label %if.end13.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end13.1:                                       ; preds = %for.cond
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not.1 = icmp eq i32 %5, 0
  br i1 %cmp15.not.1, label %for.cond.1, label %if.end13.1.for.end_crit_edge

if.end13.1.for.end_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.1:                                       ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %type, align 4
  br label %for.end

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %call1.lcssa = phi ptr [ %call1, %entry.if.then_crit_edge ], [ %call1.1, %for.cond.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ]
  %cmp8.not = icmp eq ptr %call1.lcssa, inttoptr (i32 -517 to ptr)
  br i1 %cmp8.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.lcssa, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %put_dev

if.end13:                                         ; preds = %entry
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.not = icmp eq i32 %11, 0
  br i1 %cmp15.not, label %for.cond, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.cond.1, %if.end13.1.for.end_crit_edge
  %12 = phi i32 [ %.pr, %for.cond.1 ], [ %11, %if.end13.for.end_crit_edge ], [ %5, %if.end13.1.for.end_crit_edge ]
  %larb_dev = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 3
  %13 = ptrtoint ptr %larb_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %larb_dev, align 4
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %for.end.cleanup_crit_edge [
    i32 0, label %for.end.if.end26_crit_edge
    i32 2, label %for.end.if.end26_crit_edge84
    i32 3, label %for.end.if.end26_crit_edge85
  ]

for.end.if.end26_crit_edge85:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.end.if.end26_crit_edge84:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %for.end.if.end26_crit_edge, %for.end.if.end26_crit_edge84, %for.end.if.end26_crit_edge85
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #4
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  br label %do.end31

of_parse_phandle.exit:                            ; preds = %if.end26
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end31_crit_edge, label %if.end32

of_parse_phandle.exit.do.end31_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

do.end31:                                         ; preds = %of_parse_phandle.exit.do.end31_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %node) #7
  br label %put_dev

if.end32:                                         ; preds = %of_parse_phandle.exit
  %call33 = call ptr @of_find_device_by_node(ptr noundef nonnull %17) #4
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end39

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %17) #7
  call void @of_node_put(ptr noundef nonnull %17) #4
  br label %put_dev

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %17) #4
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %call33, i32 0, i32 3
  %18 = ptrtoint ptr %larb_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev40, ptr %larb_dev, align 4
  br label %cleanup

put_dev:                                          ; preds = %do.end38, %do.end31, %if.end
  %ret.0 = phi i32 [ %9, %if.end ], [ -517, %do.end38 ], [ -22, %do.end31 ]
  %19 = ptrtoint ptr %dev_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_node, align 4
  call void @of_node_put(ptr noundef %20) #4
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %if.end39, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %put_dev ], [ 0, %if.end39 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_comp_deinit(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_node = getelementptr inbounds %struct.mtk_mdp_comp, ptr %comp, i32 0, i32 1
  %0 = ptrtoint ptr %dev_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_node, align 4
  tail call void @of_node_put(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 24, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_mdp_comp_clock_on._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_mdp_comp_clock_on._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 34, i32 4}
!10 = !{ptr @mtk_mdp_comp_clock_on._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_mdp_comp_clock_on._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 70, i32 5}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mtk_mdp_comp_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mtk_mdp_comp_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 87, i32 37}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 89, i32 3}
!21 = !{ptr @mtk_mdp_comp_init._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mtk_mdp_comp_init._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_comp.c", i32 97, i32 3}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtk_mdp_comp_init._entry.14, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_mdp_comp_init._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
