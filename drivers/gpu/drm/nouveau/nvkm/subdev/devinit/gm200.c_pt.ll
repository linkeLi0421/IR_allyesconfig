; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pmuR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@gm200_devinit_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: VBIOS PMU init data not found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gm200_devinit_post\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm200_devinit_post._entry_ptr = internal global ptr @gm200_devinit_post._entry, section ".printk_index", align 4
@gm200_devinit_post._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: VBIOS PMU/DEVINIT not found\0A\00", [63 x i8] zeroinitializer }, align 32
@gm200_devinit_post._entry_ptr.7 = internal global ptr @gm200_devinit_post._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gm200_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr null, ptr @gf100_devinit_preinit, ptr @nv50_devinit_init, ptr @gm200_devinit_post, ptr null, ptr null, ptr @gf100_devinit_pll_set, ptr @gm107_devinit_disable }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 130, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 137, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 161, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"gm200_devinit\00", align 1
@___asan_gen_.37 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 173, i32 1 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @gm200_devinit_post._entry, ptr @gm200_devinit_post._entry.5, ptr @gm200_devinit_post._entry_ptr, ptr @gm200_devinit_post._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @gm200_devinit], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_devinit_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_devinit_post._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_devinit_preos(ptr nocapture noundef readonly %init, i1 noundef zeroext %post) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pmu_load(ptr noundef %init, i8 noundef zeroext 1, i1 noundef zeroext %post, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmu_load(ptr nocapture noundef readonly %init, i8 noundef zeroext %type, i1 noundef zeroext %post, ptr noundef writeonly %init_addr_pmu, ptr nocapture noundef writeonly %args_addr_pmu) unnamed_addr #0 align 64 {
entry:
  %pmu = alloca %struct.nvbios_pmuR, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pmu) #4
  %4 = call ptr @memset(ptr %pmu, i32 255, i32 44)
  %call = call zeroext i1 @nvbios_pmuRm(ptr noundef %3, i8 noundef zeroext %type, ptr noundef nonnull %pmu) #4
  %5 = and i1 %call, %post
  %.mux = select i1 %call, i32 0, i32 -22
  br i1 %5, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %6 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmu, align 4
  %boot_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 1
  %8 = ptrtoint ptr %boot_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boot_addr, align 4
  %boot_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 2
  %10 = ptrtoint ptr %boot_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boot_size, align 4
  call fastcc void @pmu_code(ptr noundef %init, i32 noundef %7, i32 noundef %9, i32 noundef %11, i1 noundef zeroext false)
  %code_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 3
  %12 = ptrtoint ptr %code_addr_pmu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code_addr_pmu, align 4
  %code_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 4
  %14 = ptrtoint ptr %code_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code_addr, align 4
  %code_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 5
  %16 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code_size, align 4
  call fastcc void @pmu_code(ptr noundef %init, i32 noundef %13, i32 noundef %15, i32 noundef %17, i1 noundef zeroext true)
  %data_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 7
  %18 = ptrtoint ptr %data_addr_pmu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_addr_pmu, align 4
  %data_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 8
  %20 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_addr, align 4
  %data_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 9
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_size, align 4
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bios2.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @arm_heavy_mb() #4
  %or.i = or i32 %19, 16777216
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %28 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 1089984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp13.not.i = icmp eq i32 %23, 0
  br i1 %cmp13.not.i, label %if.end4.pmu_data.exit_crit_edge, label %if.end4.do.body3.i_crit_edge

if.end4.do.body3.i_crit_edge:                     ; preds = %if.end4
  br label %do.body3.i

if.end4.pmu_data.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %pmu_data.exit

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %if.end4.do.body3.i_crit_edge
  %i.014.i = phi i32 [ %add8.i, %do.body3.i.do.body3.i_crit_edge ], [ 0, %if.end4.do.body3.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @arm_heavy_mb() #4
  %add.i = add i32 %i.014.i, %21
  %call.i = call i32 @nvbios_rd32(ptr noundef %27, i32 noundef %add.i) #4
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %31, i32 1089988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %call.i) #4, !srcloc !26
  %add8.i = add i32 %i.014.i, 4
  %cmp.i = icmp ult i32 %add8.i, %23
  br i1 %cmp.i, label %do.body3.i.do.body3.i_crit_edge, label %do.body3.i.pmu_data.exit_crit_edge

do.body3.i.pmu_data.exit_crit_edge:               ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pmu_data.exit

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3.i

pmu_data.exit:                                    ; preds = %do.body3.i.pmu_data.exit_crit_edge, %if.end4.pmu_data.exit_crit_edge
  %tobool5.not = icmp eq ptr %init_addr_pmu, null
  %init_addr_pmu10 = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 6
  %32 = ptrtoint ptr %init_addr_pmu10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %init_addr_pmu10, align 4
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %pmu_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %init_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %init_addr_pmu, align 4
  %args_addr_pmu8 = getelementptr inbounds %struct.nvbios_pmuR, ptr %pmu, i32 0, i32 10
  %35 = ptrtoint ptr %args_addr_pmu8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %args_addr_pmu8, align 4
  %37 = ptrtoint ptr %args_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %args_addr_pmu, align 4
  br label %cleanup

if.end9:                                          ; preds = %pmu_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @arm_heavy_mb() #4
  %pri.i19 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %41, i32 1089796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %33) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %pri.i19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i19, align 4
  %add.ptr6.i = getelementptr i8, ptr %43, i32 1089804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %pri.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i19, align 4
  %add.ptr11.i = getelementptr i8, ptr %45, i32 1089792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 2) #4, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end9 ], [ %.mux, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pmu) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_devinit_post(ptr noundef %base, i1 noundef zeroext %post) #0 align 64 {
entry:
  %bit_I = alloca %struct.bit_entry, align 2
  %exec = alloca i32, align 4
  %args = alloca i32, align 4
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %bios4 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_I) #4
  %4 = getelementptr inbounds %struct.bit_entry, ptr %bit_I, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bit_entry, ptr %bit_I, i32 0, i32 3
  %6 = call ptr @memset(ptr %bit_I, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exec) #4
  %7 = ptrtoint ptr %exec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %exec, align 4, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %args, align 4, !annotation !31
  %call = call i32 @bit_entry(ptr noundef %3, i8 noundef zeroext 73, ptr noundef nonnull %bit_I) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %9 = getelementptr inbounds %struct.bit_entry, ptr %bit_I, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not = icmp eq i8 %11, 1
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %13)
  %cmp8 = icmp ult i16 %13, 28
  br i1 %cmp8, label %lor.lhs.false6.do.body_crit_edge, label %if.end17

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not = icmp eq i32 %15, 0
  br i1 %cmp10.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false6
  %call19 = call fastcc i32 @pmu_load(ptr noundef %base, i8 noundef zeroext 4, i1 noundef zeroext %post, ptr noundef nonnull %exec, ptr noundef nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end38, label %do.body22

do.body22:                                        ; preds = %if.end17
  %debug24 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %debug24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25.not = icmp eq i32 %21, 0
  br i1 %cmp25.not, label %do.body22.cleanup_crit_edge, label %do.end30

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end30:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device3, align 4
  %dev32 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32, align 8
  %name33 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef %name33) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end17
  br i1 %post, label %if.then40, label %if.end38.if.end130_crit_edge

if.end38.if.end130_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then40:                                        ; preds = %if.end38
  %26 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %args, align 4
  %add = add i32 %27, 8
  %call41 = call fastcc i32 @pmu_args(ptr noundef %base, i32 noundef %add, i32 noundef 8)
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %5, align 2
  %conv42 = zext i16 %29 to i32
  %add43 = add nuw nsw i32 %conv42, 20
  %call44 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add43) #4
  %conv45 = zext i16 %call44 to i32
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %5, align 2
  %conv47 = zext i16 %31 to i32
  %add48 = add nuw nsw i32 %conv47, 22
  %call49 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add48) #4
  %conv50 = zext i16 %call49 to i32
  call fastcc void @pmu_data(ptr noundef %base, i32 noundef %call41, i32 noundef %conv45, i32 noundef %conv50)
  %call56 = call fastcc i32 @pmu_args(ptr noundef %base, i32 noundef %add, i32 noundef 16)
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %5, align 2
  %conv59 = zext i16 %33 to i32
  %add60 = add nuw nsw i32 %conv59, 24
  %call61 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add60) #4
  %conv62 = zext i16 %call61 to i32
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %5, align 2
  %conv65 = zext i16 %35 to i32
  %add66 = add nuw nsw i32 %conv65, 26
  %call67 = call zeroext i16 @nvbios_rd16(ptr noundef %3, i32 noundef %add66) #4
  %conv68 = zext i16 %call67 to i32
  call fastcc void @pmu_data(ptr noundef %base, i32 noundef %call56, i32 noundef %conv62, i32 noundef %conv68)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr75 = getelementptr i8, ptr %37, i32 1089600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 20480) #4, !srcloc !26
  %38 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exec, align 4
  call fastcc void @pmu_exec(ptr noundef %base, i32 noundef %39)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %40 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body76

do.body76:                                        ; preds = %do.cond84.do.body76_crit_edge, %if.then40
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %42, i32 1089600
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %and = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool81.not = icmp eq i32 %and, 0
  br i1 %tobool81.not, label %do.cond84, label %if.end124.thread

if.end124.thread:                                 ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %if.end130

do.cond84:                                        ; preds = %do.body76
  %call85 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp86 = icmp sgt i64 %call85, -1
  br i1 %cmp86, label %do.cond84.do.body76_crit_edge, label %do.end101

do.cond84.do.body76_crit_edge:                    ; preds = %do.cond84
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body76

do.end101:                                        ; preds = %do.cond84
  %44 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_wait, align 8
  %device103 = getelementptr inbounds %struct.nvkm_timer, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %device103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device103, align 4
  %dev104 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev104, align 8
  %call105 = call ptr @dev_driver_string(ptr noundef %49) #4
  %50 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_wait, align 8
  %device108 = getelementptr inbounds %struct.nvkm_timer, ptr %51, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %device108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device108, align 4
  %dev109 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev109, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end101.if.end124_crit_edge

do.end101.if.end124_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end124

if.end.i:                                         ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.end.i, %do.end101.if.end124_crit_edge
  %retval.0.i = phi ptr [ %59, %if.end.i ], [ %57, %do.end101.if.end124_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call105, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup

if.end130:                                        ; preds = %if.end124.thread, %if.end38.if.end130_crit_edge
  %call.i = call fastcc i32 @pmu_load(ptr noundef %base, i8 noundef zeroext 1, i1 noundef zeroext %post, ptr noundef null, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end124, %do.end30, %do.body22.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end130 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call19, %do.end30 ], [ %call19, %do.body22.cleanup_crit_edge ], [ -110, %if.end124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exec) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_I) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmu_args(ptr nocapture noundef readonly %init, i32 noundef %argp, i32 noundef %argi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1089984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %argp) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 1089988
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %add = add i32 %6, %argi
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 1089984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %add) #4, !srcloc !26
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 1089988
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmu_data(ptr nocapture noundef readonly %init, i32 noundef %pmu, i32 noundef %img, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %or = or i32 %pmu, 16777216
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1089984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp13.not = icmp eq i32 %len, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %i.014 = phi i32 [ %add8, %do.body3.do.body3_crit_edge ], [ 0, %entry.do.body3_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %add = add i32 %i.014, %img
  %call = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %add) #4
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 1089988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %call) #4, !srcloc !26
  %add8 = add i32 %i.014, 4
  %cmp = icmp ult i32 %add8, %len
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %do.body3.for.end_crit_edge

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

for.end:                                          ; preds = %do.body3.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmu_exec(ptr nocapture noundef readonly %init, i32 noundef %init_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1089796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %init_addr) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 1089804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 1089792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 2) #4, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_devinit_new_(ptr noundef nonnull @gm200_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pinit) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_pmuRm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmu_code(ptr nocapture noundef readonly %init, i32 noundef %pmu, i32 noundef %img, i32 noundef %len, i1 noundef zeroext %sec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %or = select i1 %sec, i32 285212672, i32 16777216
  %or3 = or i32 %or, %pmu
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1089920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or3) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp36.not = icmp eq i32 %len, 0
  br i1 %cmp36.not, label %entry.while.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.preheader:                             ; preds = %do.body10
  %and1739 = and i32 %add16, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1739)
  %tobool18.not40 = icmp eq i32 %and1739, 0
  br i1 %tobool18.not40, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.body19_crit_edge

while.cond.preheader.do.body19_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body19

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.body:                                         ; preds = %do.body10.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %add16, %do.body10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %i.037, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %do.body5, label %for.body.do.body10_crit_edge

for.body.do.body10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %add = add i32 %i.037, %pmu
  %shr = lshr i32 %add, 8
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 1089928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %shr) #4, !srcloc !26
  br label %do.body10

do.body10:                                        ; preds = %do.body5, %for.body.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %add13 = add i32 %i.037, %img
  %call = tail call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %add13) #4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 1089924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %call) #4, !srcloc !26
  %add16 = add i32 %i.037, 4
  %cmp = icmp ult i32 %add16, %len
  br i1 %cmp, label %do.body10.for.body_crit_edge, label %while.cond.preheader

do.body10.for.body_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body19:                                        ; preds = %do.body19.do.body19_crit_edge, %while.cond.preheader.do.body19_crit_edge
  %i.141 = phi i32 [ %add24, %do.body19.do.body19_crit_edge ], [ %add16, %while.cond.preheader.do.body19_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 1089924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #4, !srcloc !26
  %add24 = add i32 %i.141, 4
  %and17 = and i32 %add24, 252
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body19.while.end_crit_edge, label %do.body19.do.body19_crit_edge

do.body19.do.body19_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body19

do.body19.while.end_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body19.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_devinit_preinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gm107_devinit_disable(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c", i32 130, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gm200_devinit_post._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gm200_devinit_post._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c", i32 137, i32 3}
!10 = !{ptr @gm200_devinit_post._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gm200_devinit_post._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c", i32 161, i32 7}
!14 = !{ptr @gm200_devinit, !15, !"gm200_devinit", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gm200.c", i32 173, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2156231762}
!26 = !{i64 5388864}
!27 = !{i64 2156232213}
!28 = !{i64 2156234821}
!29 = !{i64 2156235233}
!30 = !{i64 2156235646}
!31 = !{!"auto-init"}
!32 = !{i64 2156241978}
!33 = !{i64 5389282}
!34 = !{i64 2156243855}
!35 = !{i64 2156232630}
!36 = !{i64 2156233824}
!37 = !{i64 2156234077}
!38 = !{i64 2156234481}
!39 = !{i64 2156230007}
!40 = !{i64 2156230459}
!41 = !{i64 2156230908}
!42 = !{i64 2156231337}
