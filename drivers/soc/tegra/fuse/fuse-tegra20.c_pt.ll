; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/fuse-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/fuse-tegra20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_fuse_info = type { ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_fuse_soc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_fuse = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.70, ptr, ptr }
%struct.anon.70 = type { %struct.mutex, %struct.completion, ptr, %struct.dma_slave_config, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@tegra20_fuse_info = internal constant { %struct.tegra_fuse_info, [20 x i8] } { %struct.tegra_fuse_info { ptr @tegra20_fuse_read, i32 504, i32 256 }, [20 x i8] zeroinitializer }, align 32
@tegra_soc_attr_group = external dso_local constant %struct.attribute_group, align 4
@tegra20_fuse_soc = dso_local constant { %struct.tegra_fuse_soc, [32 x i8] } { %struct.tegra_fuse_soc { ptr @tegra20_fuse_init, ptr @tegra20_init_speedo_data, ptr @tegra20_fuse_probe, ptr @tegra20_fuse_info, ptr null, i32 0, ptr @tegra_soc_attr_group, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tegra_sku_info = external dso_local global %struct.tegra_sku_info, align 4
@tegra20_fuse_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&fuse->apbdma.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,tegra20-apbdma\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/soc/tegra/fuse/fuse-tegra20.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apb read dma timed out\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"tegra20_fuse_info\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 157, i32 37 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"tegra20_fuse_soc\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 191, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 151, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 94, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 87, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [41 x i8] c"../drivers/soc/tegra/fuse/fuse-tegra20.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 79, i32 6 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @tegra20_fuse_info, ptr @tegra20_fuse_soc, ptr @tegra20_fuse_probe.__key, ptr @.str, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_fuse_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_fuse_soc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_fuse_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_fuse_init(ptr nocapture noundef %fuse) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_early = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 5
  %0 = ptrtoint ptr %read_early to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tegra20_fuse_read_early, ptr %read_early, align 4
  tail call void @tegra_init_revision() #7
  %soc = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 7
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %speedo_init = getelementptr inbounds %struct.tegra_fuse_soc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %speedo_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %speedo_init, align 4
  tail call void %4(ptr noundef nonnull @tegra_sku_info) #7
  tail call fastcc void @tegra20_fuse_add_randomness() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_init_speedo_data(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_probe(ptr noundef %fuse) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #7
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @dma_filter, ptr noundef null, ptr noundef null) #7
  %apbdma = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8
  %chan = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %chan, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fuse, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @tegra20_fuse_release_channel, ptr noundef %fuse) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  call void @dma_release_channel(ptr noundef %5) #7
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fuse, align 4
  %phys = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 4
  %call.i56 = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 4, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #7
  %virt = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 5
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i56, ptr %virt, align 4
  %tobool13.not = icmp eq ptr %call.i56, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fuse, align 4
  %call.i57 = call i32 @devm_add_action(ptr noundef %11, ptr noundef nonnull @tegra20_fuse_free_coherent, ptr noundef %fuse) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end20, label %devm_add_action_or_reset.exit60

devm_add_action_or_reset.exit60:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fuse, align 4
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt, align 4
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys, align 4
  call void @dma_free_attrs(ptr noundef %13, i32 noundef 4, ptr noundef %15, i32 noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %virt, align 4
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %phys, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %config = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3
  %src_addr_width = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 3
  %20 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 4
  %21 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 5
  %22 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 6
  %23 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dst_maxburst, align 4
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %config, align 4
  %device_fc = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 9
  %25 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %device_fc, align 4
  %wait = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #7
  call void @__mutex_init(ptr noundef %apbdma, ptr noundef nonnull @.str, ptr noundef nonnull @tegra20_fuse_probe.__key) #7
  %read = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 6
  %27 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @tegra20_fuse_read, ptr %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %devm_add_action_or_reset.exit60, %if.end6.cleanup_crit_edge, %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -517, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ -12, %if.end6.cleanup_crit_edge ], [ %call.i57, %devm_add_action_or_reset.exit60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_read_early(ptr nocapture noundef readonly %fuse, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_revision() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_fuse_add_randomness() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %randomness = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %randomness) #7
  %0 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i32], ptr %randomness, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_sku_info to i32))
  %6 = load i32, ptr @tegra_sku_info, align 4
  %7 = ptrtoint ptr %randomness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %randomness, align 4
  %call = tail call i32 @tegra_read_straps() #7
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %0, align 4
  %call2 = tail call i32 @tegra_read_chipid() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %shl = shl i32 %10, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5), align 4
  %or = or i32 %11, %shl
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %shl6 = shl i32 %13, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %14 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %or9 = or i32 %14, %shl6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or9, ptr %3, align 4
  %call10 = tail call i32 @tegra_fuse_read_early(i32 noundef 8) #11
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call10, ptr %4, align 4
  %call12 = tail call i32 @tegra_fuse_read_early(i32 noundef 12) #11
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call12, ptr %5, align 4
  call void @add_device_randomness(ptr noundef nonnull %randomness, i32 noundef 28) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %randomness) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_straps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dma_filter(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %filter_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_fuse_release_channel(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.tegra_fuse, ptr %data, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  tail call void @dma_release_channel(ptr noundef %1) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chan, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_fuse_free_coherent(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %virt = getelementptr inbounds %struct.tegra_fuse, ptr %data, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %phys = getelementptr inbounds %struct.tegra_fuse, ptr %data, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 4, ptr noundef %3, i32 noundef %5, i32 noundef 0) #7
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %virt, align 4
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %phys, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_read(ptr noundef %fuse, i32 noundef %offset) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fuse, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !26
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  br label %cleanup

if.end:                                           ; preds = %entry
  %apbdma = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %apbdma, i32 noundef 0) #7
  %phys = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 2
  %3 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys, align 4
  %add = add i32 %offset, 256
  %add1 = add i32 %add, %4
  %src_addr = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3, i32 1
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1, ptr %src_addr, align 4
  %chan = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %dmaengine_slave_config.exit

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

dmaengine_slave_config.exit:                      ; preds = %if.end
  %config = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 3
  %call.i83 = tail call i32 %11(ptr noundef %7, ptr noundef %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool7.not = icmp eq i32 %call.i83, 0
  br i1 %tobool7.not, label %if.end9, label %dmaengine_slave_config.exit.out_crit_edge

dmaengine_slave_config.exit.out_crit_edge:        ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %dmaengine_slave_config.exit
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %phys13 = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %phys13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phys13, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %16 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %18 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #7
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %16, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %17, align 4
  %tobool.not.i86 = icmp eq ptr %13, null
  br i1 %tobool.not.i86, label %if.end9.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end9.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end9
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 39
  %23 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end9.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %out

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i87 = call ptr %24(ptr noundef nonnull %13, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  %tobool15.not = icmp eq ptr %call.i87, null
  br i1 %tobool15.not, label %dmaengine_prep_slave_single.exit.out_crit_edge, label %if.end17

dmaengine_prep_slave_single.exit.out_crit_edge:   ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i87, i32 0, i32 6
  %25 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @apb_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i87, i32 0, i32 8
  %26 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fuse, ptr %callback_param, align 4
  %wait = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wait, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i87, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_submit.i, align 4
  %call.i89 = call i32 %29(ptr noundef nonnull %call.i87) #7
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 50
  %34 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_issue_pending.i, align 4
  call void %35(ptr noundef %31) #7
  %call25 = call i32 @wait_for_completion_timeout(ptr noundef %wait, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp eq i32 %call25, 0
  br i1 %cmp, label %do.end, label %if.else, !prof !28

do.end:                                           ; preds = %if.end17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4) #7
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 47
  %40 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i90 = icmp eq ptr %41, null
  br i1 %tobool.not.i90, label %do.end.out_crit_edge, label %if.then.i92

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i92:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i91 = call i32 %41(ptr noundef %37) #7
  br label %out

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %virt = getelementptr inbounds %struct.tegra_fuse, ptr %fuse, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virt, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then.i92, %do.end.out_crit_edge, %dmaengine_prep_slave_single.exit.out_crit_edge, %dmaengine_prep_slave_single.exit.thread, %dmaengine_slave_config.exit.out_crit_edge, %if.end.out_crit_edge
  %value.0 = phi i32 [ 0, %dmaengine_slave_config.exit.out_crit_edge ], [ %45, %if.else ], [ 0, %dmaengine_prep_slave_single.exit.out_crit_edge ], [ 0, %dmaengine_prep_slave_single.exit.thread ], [ 0, %do.end.out_crit_edge ], [ 0, %if.then.i92 ], [ 0, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %apbdma) #7
  %46 = ptrtoint ptr %fuse to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fuse, align 4
  %call.i93 = call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %value.0, %out ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apb_dma_complete(ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.tegra_fuse, ptr %args, i32 0, i32 8, i32 1
  tail call void @complete(ptr noundef %wait) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @tegra20_fuse_soc, !1, !"tegra20_fuse_soc", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/fuse-tegra20.c", i32 191, i32 29}
!2 = !{ptr @tegra20_fuse_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/soc/tegra/fuse/fuse-tegra20.c", i32 151, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/soc/tegra/fuse/fuse-tegra20.c", i32 94, i32 37}
!7 = !{ptr @init_completion.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../include/linux/completion.h", i32 87, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/tegra/fuse/fuse-tegra20.c", i32 79, i32 6}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tegra20_fuse_info, !14, !"tegra20_fuse_info", i1 false, i1 false}
!14 = !{!"../drivers/soc/tegra/fuse/fuse-tegra20.c", i32 157, i32 37}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 6302132}
!25 = !{i64 2148466509}
!26 = !{i64 953109, i64 953134, i64 953156, i64 953172, i64 953184, i64 953204, i64 953228, i64 953244, i64 953256}
!27 = !{i64 2148466697}
!28 = !{!"branch_weights", i32 1, i32 2000}
