; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-hsdk.c_pt.bc'
source_filename = "../drivers/reset/reset-hsdk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hsdk_rst = type { ptr, ptr, %struct.spinlock, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_reset_hsdk__183_134_hsdk_reset_driver_init6 = internal global ptr @hsdk_reset_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author184 = internal constant [65 x i8] c"reset_hsdk.author=Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [54 x i8] c"reset_hsdk.description=Synopsys HSDK SDP reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [41 x i8] c"reset_hsdk.file=drivers/reset/reset-hsdk\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"reset_hsdk.license=GPL v2\00", section ".modinfo", align 1
@hsdk_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hsdk_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hsdk_reset_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsdk-reset\00", [21 x i8] zeroinitializer }, align 32
@hsdk_reset_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,hsdk-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hsdk_reset_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rst->lock\00", [21 x i8] zeroinitializer }, align 32
@hsdk_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @hsdk_reset_reset, ptr null, ptr @hsdk_reset_reset, ptr null }, [16 x i8] zeroinitializer }, align 32
@rst_map = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 33554432, i32 -2147483648], [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"hsdk_reset_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 127, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 130, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"hsdk_reset_dt_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 122, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 111, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"hsdk_reset_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 87, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"rst_map\00", align 1
@___asan_gen_.21 = private constant [30 x i8] c"../drivers/reset/reset-hsdk.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 30, i32 18 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__initcall__kmod_reset_hsdk__183_134_hsdk_reset_driver_init6, ptr @hsdk_reset_driver, ptr @.str, ptr @hsdk_reset_dt_match, ptr @hsdk_reset_probe.__key, ptr @.str.1, ptr @hsdk_reset_ops, ptr @rst_map], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_reset_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_reset_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hsdk_reset_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #4
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #4
  %regs_rst = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs_rst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %regs_rst, align 4
  %cmp.i48 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %if.then15, label %do.body

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call12 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hsdk_reset_probe.__key, i16 noundef signext 3) #4
  %rcdev = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 3
  %owner = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %5 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hsdk_reset_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node23 = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %of_node23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node23, align 4
  %nr_resets = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %nr_resets, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.hsdk_rst, ptr %call.i, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %of_reset_n_cells, align 4
  %call27 = tail call i32 @reset_controller_register(ptr noundef %rcdev) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then15 ], [ %call27, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsdk_reset_reset(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -52
  %lock = getelementptr i8, ptr %rcdev, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr [9 x i32], ptr @rst_map, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !32
  %regs_rst.i = getelementptr i8, ptr %rcdev, i32 -48
  %5 = ptrtoint ptr %regs_rst.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_rst.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %8 = and i32 %7, -16842752
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regs_rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_rst.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !32
  %call5.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call5.i, 10000000
  %12 = ptrtoint ptr %regs_rst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_rst.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not52.i = icmp eq i32 %15, 0
  br i1 %tobool.not52.i, label %entry.for.end.thread.i_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call16.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call16.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #4
  %17 = ptrtoint ptr %regs_rst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_rst.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %20 = and i32 %19, 16777216
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.thread.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.for.end.thread.i_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %regs_rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs_rst.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not.i = icmp eq i32 %24, 0
  br i1 %tobool36.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.hsdk_reset_do.exit_crit_edge

for.end.i.hsdk_reset_do.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hsdk_reset_do.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %cond.false.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  br label %hsdk_reset_do.exit

hsdk_reset_do.exit:                               ; preds = %for.end.thread.i, %for.end.i.hsdk_reset_do.exit_crit_edge
  %25 = phi i32 [ 0, %for.end.thread.i ], [ -110, %for.end.i.hsdk_reset_do.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_reset_hsdk__183_134_hsdk_reset_driver_init6, !1, !"__initcall__kmod_reset_hsdk__183_134_hsdk_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-hsdk.c", i32 134, i32 1}
!2 = !{ptr @__UNIQUE_ID_author184, !3, !"__UNIQUE_ID_author184", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-hsdk.c", i32 136, i32 1}
!4 = !{ptr @__UNIQUE_ID_description185, !5, !"__UNIQUE_ID_description185", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-hsdk.c", i32 137, i32 1}
!6 = !{ptr @__UNIQUE_ID_file186, !7, !"__UNIQUE_ID_file186", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-hsdk.c", i32 138, i32 1}
!8 = !{ptr @__UNIQUE_ID_license187, !7, !"__UNIQUE_ID_license187", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/reset/reset-hsdk.c", i32 130, i32 11}
!11 = !{ptr @hsdk_reset_driver, !12, !"hsdk_reset_driver", i1 false, i1 false}
!12 = !{!"../drivers/reset/reset-hsdk.c", i32 127, i32 31}
!13 = !{ptr @hsdk_reset_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/reset/reset-hsdk.c", i32 111, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hsdk_reset_ops, !17, !"hsdk_reset_ops", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-hsdk.c", i32 87, i32 39}
!18 = !{ptr @rst_map, !19, !"rst_map", i1 false, i1 false}
!19 = !{!"../drivers/reset/reset-hsdk.c", i32 30, i32 18}
!20 = !{ptr @hsdk_reset_dt_match, !21, !"hsdk_reset_dt_match", i1 false, i1 false}
!21 = !{!"../drivers/reset/reset-hsdk.c", i32 122, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2152863560}
!32 = !{i64 2977604}
!33 = !{i64 2978022}
!34 = !{i64 2152864259}
!35 = !{i64 2152865286}
!36 = !{i64 2152867556}
!37 = !{i64 2152868050}
