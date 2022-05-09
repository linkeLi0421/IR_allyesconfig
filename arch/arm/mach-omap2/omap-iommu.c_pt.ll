; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap-iommu.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.pwrdm_link = type { ptr, ptr, %struct.list_head }

@_get_pwrdm.cache = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @_get_pwrdm.cache, ptr @_get_pwrdm.cache }, [24 x i8] zeroinitializer }, align 32
@iommu_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@_get_pwrdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no fck found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_get_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-omap2/omap-iommu.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_get_pwrdm._entry_ptr = internal global ptr @_get_pwrdm._entry, section ".printk_index", align 4
@_get_pwrdm._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no hwclk data\0A\00", [17 x i8] zeroinitializer }, align 32
@_get_pwrdm._entry_ptr.7 = internal global ptr @_get_pwrdm._entry.5, section ".printk_index", align 4
@_get_pwrdm._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clkdm not found: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@_get_pwrdm._entry_ptr.10 = internal global ptr @_get_pwrdm._entry.8, section ".printk_index", align 4
@_get_pwrdm._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwrdm not found: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@_get_pwrdm._entry_ptr.13 = internal global ptr @_get_pwrdm._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iommu_lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,dra7-dsp-iommu\00", [46 x i8] zeroinitializer }, align 32
@emu_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@omap_iommu_dra7_emu_swsup_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@emu_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 60, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"iommu_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 78, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 85, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 91, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 97, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 23, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 33, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 24, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 37, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"emu_count\00", align 1
@___asan_gen_.72 = private constant [36 x i8] c"../arch/arm/mach-omap2/omap-iommu.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 25, i32 17 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @_get_pwrdm._entry, ptr @_get_pwrdm._entry.11, ptr @_get_pwrdm._entry.5, ptr @_get_pwrdm._entry.8, ptr @_get_pwrdm._entry_ptr, ptr @_get_pwrdm._entry_ptr.10, ptr @_get_pwrdm._entry_ptr.13, ptr @_get_pwrdm._entry_ptr.7, ptr @_get_pwrdm.cache, ptr @iommu_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @emu_clkdm, ptr @.str.16, ptr @emu_count], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_pwrdm.cache to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_pwrdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_pwrdm._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_pwrdm._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_pwrdm._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_iommu_set_pwrdm_constraint(ptr noundef %pdev, i1 noundef zeroext %request, ptr nocapture noundef %pwrst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iommu_lock) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @_get_pwrdm.cache, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, @_get_pwrdm.cache
  br i1 %cmp7.not.i, label %for.end.thread.i, label %for.body.i

for.end.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iommu_lock, i32 noundef %call3.i) #5
  br label %if.end18.i

for.body.i:                                       ; preds = %for.cond.i
  %entry1.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry1.0.i, align 4
  %cmp10.i = icmp eq ptr %2, %dev
  br i1 %cmp10.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %pwrdm12.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %pwrdm12.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm12.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iommu_lock, i32 noundef %call3.i) #5
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.end.i.if.end18.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end.i.if.end18.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %for.end.i.if.end18.i_crit_edge, %for.end.thread.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 4
  %call19.i = tail call ptr @of_clk_get(ptr noundef %8, i32 noundef 0) #5
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end24.i, label %if.end25.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end25.i:                                       ; preds = %if.end18.i
  %call27.i = tail call ptr @__clk_get_hw(ptr noundef %call19.i) #5
  tail call void @clk_put(ptr noundef %call19.i) #5
  %tobool30.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool30.not.i, label %if.end25.i.do.end35.i_crit_edge, label %lor.lhs.false.i

if.end25.i.do.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

lor.lhs.false.i:                                  ; preds = %if.end25.i
  %clkdm_name.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call27.i, i32 0, i32 9
  %9 = ptrtoint ptr %clkdm_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm_name.i, align 4
  %tobool31.not.i = icmp eq ptr %10, null
  br i1 %tobool31.not.i, label %lor.lhs.false.i.do.end35.i_crit_edge, label %if.end36.i

lor.lhs.false.i.do.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

do.end35.i:                                       ; preds = %lor.lhs.false.i.do.end35.i_crit_edge, %if.end25.i.do.end35.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end36.i:                                       ; preds = %lor.lhs.false.i
  %call38.i = tail call ptr @clkdm_lookup(ptr noundef nonnull %10) #5
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %do.end43.i, label %if.end45.i

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %clkdm_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm_name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %12) #8
  br label %cleanup

if.end45.i:                                       ; preds = %if.end36.i
  %call46.i = tail call ptr @clkdm_get_pwrdm(ptr noundef nonnull %call38.i) #5
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %do.end51.i, label %if.end52.i

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call38.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call38.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %14) #8
  br label %cleanup

if.end52.i:                                       ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 16) #9
  %tobool54.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool54.not.i, label %if.end52.i.if.end_crit_edge, label %if.then55.i

if.end52.i.if.end_crit_edge:                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then55.i:                                      ; preds = %if.end52.i
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %call7.i.i, align 8
  %pwrdm57.i = getelementptr inbounds %struct.pwrdm_link, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %pwrdm57.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call46.i, ptr %pwrdm57.i, align 4
  %call66.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iommu_lock) #5
  %node71.i = getelementptr inbounds %struct.pwrdm_link, ptr %call7.i.i, i32 0, i32 2
  %18 = load ptr, ptr @_get_pwrdm.cache, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node71.i, ptr noundef nonnull @_get_pwrdm.cache, ptr noundef %18) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then55.i.list_add.exit.i_crit_edge

if.then55.i.list_add.exit.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node71.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %node71.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %node71.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.pwrdm_link, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @_get_pwrdm.cache, ptr %prev3.i.i.i, align 4
  store volatile ptr %node71.i, ptr @_get_pwrdm.cache, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then55.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iommu_lock, i32 noundef %call66.i) #5
  br label %if.end

if.end:                                           ; preds = %list_add.exit.i, %if.end52.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %retval.0.i = phi ptr [ %4, %for.end.i.if.end_crit_edge ], [ %call46.i, %list_add.exit.i ], [ %call46.i, %if.end52.i.if.end_crit_edge ]
  br i1 %request, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef nonnull %retval.0.i) #5
  %conv = trunc i32 %call3 to i8
  %22 = ptrtoint ptr %pwrst to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %pwrst, align 1
  tail call fastcc void @omap_iommu_dra7_emu_swsup_config(ptr noundef %pdev, i1 noundef zeroext true)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %23 = ptrtoint ptr %pwrst to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pwrst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp = icmp ugt i8 %24, 1
  br i1 %cmp, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select = select i1 %request, i8 3, i8 %24
  %call13 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef nonnull %retval.0.i, i8 noundef zeroext %spec.select) #5
  br label %out

out:                                              ; preds = %if.end8, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4.out_crit_edge ], [ %call13, %if.end8 ]
  br i1 %request, label %out.cleanup_crit_edge, label %if.then15

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @omap_iommu_dra7_emu_swsup_config(ptr noundef %pdev, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %out.cleanup_crit_edge, %do.end51.i, %do.end43.i, %do.end35.i, %do.end24.i
  %retval.0 = phi i32 [ %ret.0, %if.then15 ], [ %ret.0, %out.cleanup_crit_edge ], [ -19, %do.end24.i ], [ -19, %do.end51.i ], [ -19, %do.end43.i ], [ -19, %do.end35.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_iommu_dra7_emu_swsup_config(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @emu_clkdm, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then2, label %if.end.do.body49_crit_edge

if.end.do.body49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.16) #5
  store ptr %call3, ptr @emu_clkdm, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %land.rhs, label %if.then2.do.body49_crit_edge

if.then2.do.body49_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

land.rhs:                                         ; preds = %if.then2
  %.b75 = load i1, ptr @omap_iommu_dra7_emu_swsup_config.__already_done, align 1
  br i1 %.b75, label %land.rhs.cleanup_crit_edge, label %if.then14, !prof !44

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @omap_iommu_dra7_emu_swsup_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 38, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body49:                                        ; preds = %if.then2.do.body49_crit_edge, %if.end.do.body49_crit_edge
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @iommu_lock) #5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @emu_count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5
  tail call void @llvm.prefetch.p0(ptr nonnull @emu_count, i32 1, i32 3, i32 1) #5
  br i1 %enable, label %land.lhs.true, label %land.lhs.true64.critedge

land.lhs.true:                                    ; preds = %do.body49
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @emu_count, ptr nonnull @emu_count, i32 1, ptr nonnull elementtype(i32) @emu_count) #5, !srcloc !45
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp60 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load ptr, ptr @emu_clkdm, align 4
  tail call void @clkdm_deny_idle(ptr noundef %4) #5
  br label %if.end70

land.lhs.true64.critedge:                         ; preds = %do.body49
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @emu_count, ptr nonnull @emu_count, i32 1, ptr nonnull elementtype(i32) @emu_count) #5, !srcloc !47
  %asmresult.i.i.i.i78 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i78)
  %cmp66 = icmp eq i32 %asmresult.i.i.i.i78, 0
  br i1 %cmp66, label %if.then68, label %land.lhs.true64.critedge.if.end70_crit_edge

land.lhs.true64.critedge.if.end70_crit_edge:      ; preds = %land.lhs.true64.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then68:                                        ; preds = %land.lhs.true64.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load ptr, ptr @emu_clkdm, align 4
  tail call void @clkdm_allow_idle(ptr noundef %6) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %land.lhs.true64.critedge.if.end70_crit_edge, %if.then62, %land.lhs.true.if.end70_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @iommu_lock, i32 noundef %call52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then14, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_get_pwrdm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @_get_pwrdm.cache, !1, !"cache", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 60, i32 9}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 78, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @_get_pwrdm._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @_get_pwrdm._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 85, i32 3}
!12 = !{ptr @_get_pwrdm._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @_get_pwrdm._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 91, i32 3}
!16 = !{ptr @_get_pwrdm._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @_get_pwrdm._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 97, i32 3}
!20 = !{ptr @_get_pwrdm._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @_get_pwrdm._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 23, i32 8}
!24 = !{ptr @iommu_lock, !23, !"iommu_lock", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 33, i32 35}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 37, i32 28}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 38, i32 7}
!31 = !{ptr @emu_clkdm, !32, !"emu_clkdm", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 24, i32 28}
!33 = !{ptr @emu_count, !34, !"emu_count", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/omap-iommu.c", i32 25, i32 17}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2148478325, i64 2148478357, i64 2148478386, i64 2148478420, i64 2148478451, i64 2148478474}
!46 = !{i64 2148563245}
!47 = !{i64 2148480790, i64 2148480822, i64 2148480851, i64 2148480885, i64 2148480916, i64 2148480939}
!48 = !{i64 2148566286}
