; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.149, %struct.anon.150, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.149 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.150 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.138, i32, i32, i32, i32, i32, i32, %union.anon.142, i32, i32, [11 x i32], %union.anon.146 }>
%union.anon.138 = type { %struct.anon.141 }
%struct.anon.141 = type { i64 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32, i8 }
%union.anon.146 = type <{ %struct.anon.148, [12 x i8] }>
%struct.anon.148 = type { i48 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.157, %struct.anon.157 }
%struct.anon.157 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nv40_ram = type { %struct.nvkm_ram, i32, i32 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
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

@nv40_ram_func = internal constant { %struct.nvkm_ram_func, [56 x i8] } { %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_ram_calc, ptr @nv40_ram_prog, ptr @nv40_ram_tidy }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv40_ram_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: mclk pll data not found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv40_ram_calc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv40_ram_calc._entry_ptr = internal global ptr @nv40_ram_calc._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.nv40_ram_new = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 8, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 64, i64 65, i64 66, i64 67, i64 69, i64 71, i64 73, i64 75]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"nv40_ram_func\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 184, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 45, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 99, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"switch.table.nv40_ram_new\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @nv40_ram_calc._entry, ptr @nv40_ram_calc._entry_ptr, ptr @nv40_ram_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.nv40_ram_new], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_ram_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_ram_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv40_ram_new to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_ram_new_(ptr noundef %fb, i32 noundef %type, i64 noundef %size, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 680) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pram, align 4
  %call2 = tail call i32 @nvkm_ram_ctor(ptr noundef nonnull @nv40_ram_func, ptr noundef %fb, i32 noundef %type, i64 noundef %size, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_ram_new(ptr noundef %fb, ptr nocapture noundef %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4632
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1049100
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  %and7 = lshr i32 %4, 8
  %8 = and i32 %and7, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nv40_ram_new, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 680) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %nv40_ram_new_.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nv40_ram_new_.exit:                               ; preds = %entry
  %and = and i32 %7, -16777216
  %conv = zext i32 %and to i64
  %11 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %pram, align 4
  %call2.i = tail call i32 @nvkm_ram_ctor(ptr noundef nonnull @nv40_ram_func, ptr noundef %fb, i32 noundef %switch.load, i64 noundef %conv, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %nv40_ram_new_.exit.cleanup_crit_edge

nv40_ram_new_.exit.cleanup_crit_edge:             ; preds = %nv40_ram_new_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nv40_ram_new_.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 1049088
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %and17 = and i32 %14, 3
  %add = add nuw nsw i32 %and17, 1
  %15 = ptrtoint ptr %pram to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pram, align 4
  %parts = getelementptr inbounds %struct.nvkm_ram, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %parts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %parts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nv40_ram_new_.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %nv40_ram_new_.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_ram_calc(ptr nocapture noundef %base, i32 noundef %freq) #0 align 64 {
entry:
  %pll = alloca %struct.nvbios_pll, align 4
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %log2P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll) #7
  %6 = call ptr @memset(ptr %pll, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #7
  %7 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %N1, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #7
  %8 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %M1, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #7
  %9 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %N2, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #7
  %10 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %M2, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log2P) #7
  %11 = ptrtoint ptr %log2P to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %log2P, align 4, !annotation !25
  %call = call i32 @nvbios_pll_parse(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %pll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %subdev2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %call10 = call i32 @nv04_pll_calc(ptr noundef %subdev2, ptr noundef nonnull %pll, i32 noundef %freq, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %log2P) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %log2P, align 4
  %shl = shl i32 %19, 16
  %or = or i32 %shl, -2147483648
  %ctrl = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 1
  %bias_p = getelementptr inbounds %struct.nvbios_pll, ptr %pll, i32 0, i32 5
  %20 = ptrtoint ptr %bias_p to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bias_p, align 2
  %conv = zext i8 %21 to i32
  %add = add i32 %19, %conv
  %max_p = getelementptr inbounds %struct.nvbios_pll, ptr %pll, i32 0, i32 4
  %22 = ptrtoint ptr %max_p to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_p, align 1
  %conv14 = zext i8 %23 to i32
  %24 = call i32 @llvm.smin.i32(i32 %add, i32 %conv14)
  %shl18 = shl i32 %24, 20
  %or20 = or i32 %shl18, %or
  %25 = ptrtoint ptr %N2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %N2, align 4
  %27 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %M2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp21 = icmp eq i32 %26, %28
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %or25 = or i32 %or20, 256
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or25, ptr %ctrl, align 8
  %30 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %N1, align 4
  %shl26 = shl i32 %31, 8
  %32 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %M1, align 4
  %or27 = or i32 %shl26, %33
  %coef = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 2
  %34 = ptrtoint ptr %coef to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or27, ptr %coef, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %or29 = or i32 %or20, 1073741824
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or29, ptr %ctrl, align 8
  %shl30 = shl i32 %26, 24
  %shl31 = shl i32 %28, 16
  %or32 = or i32 %shl31, %shl30
  %36 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %N1, align 4
  %shl33 = shl i32 %37, 8
  %or34 = or i32 %or32, %shl33
  %38 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %M1, align 4
  %or35 = or i32 %or34, %39
  %coef36 = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 2
  %40 = ptrtoint ptr %coef36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or35, ptr %coef36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log2P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_ram_prog(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  %M = alloca %struct.bit_entry, align 2
  %sr1 = alloca [2 x i8], align 1
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait93 = alloca %struct.nvkm_timer_wait, align 8
  %init = alloca %struct.nvbios_init, align 4
  %_wait375 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %bios4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %M) #7
  %6 = getelementptr inbounds %struct.bit_entry, ptr %M, i32 0, i32 3
  %7 = call ptr @memset(ptr %M, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sr1) #7
  %8 = ptrtoint ptr %sr1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %sr1, align 1, !annotation !25
  %9 = getelementptr inbounds [2 x i8], ptr %sr1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !25
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 6293512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  br label %do.body

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %if.end26.do.body_crit_edge ]
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 6293512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp14.not = icmp eq i32 %13, %16
  br i1 %cmp14.not, label %if.end26, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 1) #7, !srcloc !29
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 787397
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %22 = ptrtoint ptr %sr1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sr1, align 1
  %23 = lshr i8 %21, 5
  %.lobit = and i8 %23, 1
  %24 = xor i8 %.lobit, 1
  %25 = zext i8 %24 to i32
  br label %do.end

if.end26:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %cnt.0, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %if.end26.do.end_crit_edge, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %if.then
  %crtc_mask.1 = phi i32 [ %25, %if.then ], [ 0, %if.end26.do.end_crit_edge ]
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr5.1 = getelementptr i8, ptr %28, i32 6301704
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  br label %do.body.1

do.body.1:                                        ; preds = %if.end26.1.do.body.1_crit_edge, %do.end
  %cnt.0.1 = phi i32 [ 0, %do.end ], [ %inc.1, %if.end26.1.do.body.1_crit_edge ]
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr11.1 = getelementptr i8, ptr %31, i32 6301704
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.1) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %32)
  %cmp14.not.1 = icmp eq i32 %29, %32
  br i1 %cmp14.not.1, label %if.end26.1, label %if.then.1

if.then.1:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr18.1 = getelementptr i8, ptr %34, i32 795588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.1, i8 1) #7, !srcloc !29
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr22.1 = getelementptr i8, ptr %36, i32 795589
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22.1) #7, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %9, align 1
  %39 = and i8 %37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.1 = icmp eq i8 %39, 0
  %or.1 = or i32 %crtc_mask.1, 2
  %spec.select599 = select i1 %tobool.not.1, i32 %or.1, i32 %crtc_mask.1
  br label %do.end.1

if.end26.1:                                       ; preds = %do.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #7
  %inc.1 = add nuw nsw i32 %cnt.0.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 33
  br i1 %exitcond.1.not, label %if.end26.1.do.end.1_crit_edge, label %if.end26.1.do.body.1_crit_edge

if.end26.1.do.body.1_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.1

if.end26.1.do.end.1_crit_edge:                    ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.1

do.end.1:                                         ; preds = %if.end26.1.do.end.1_crit_edge, %if.then.1
  %crtc_mask.1.1 = phi i32 [ %spec.select599, %if.then.1 ], [ %crtc_mask.1, %if.end26.1.do.end.1_crit_edge ]
  br label %for.body33

for.body33:                                       ; preds = %for.inc173.for.body33_crit_edge, %do.end.1
  %i.1592 = phi i32 [ 0, %do.end.1 ], [ %inc174, %for.inc173.for.body33_crit_edge ]
  %shl34 = shl nuw nsw i32 1, %i.1592
  %and35 = and i32 %shl34, %crtc_mask.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.body33.for.inc173_crit_edge, label %if.end38

for.body33.for.inc173_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc173

if.end38:                                         ; preds = %for.body33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %41 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  %mul43 = shl i32 %i.1592, 13
  %add44 = add nuw nsw i32 %mul43, 6293512
  br label %do.body39

do.body39:                                        ; preds = %do.cond52.do.body39_crit_edge, %if.end38
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %43, i32 %add44
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %and48 = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body39.if.end91_crit_edge, label %do.cond52

do.body39.if.end91_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.cond52:                                        ; preds = %do.body39
  %call53 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp54 = icmp sgt i64 %call53, -1
  br i1 %cmp54, label %do.cond52.do.body39_crit_edge, label %do.end69

do.cond52.do.body39_crit_edge:                    ; preds = %do.cond52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.end69:                                         ; preds = %do.cond52
  %45 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_wait, align 8
  %device71 = getelementptr inbounds %struct.nvkm_timer, ptr %46, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %device71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device71, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %call72 = call ptr @dev_driver_string(ptr noundef %50) #7
  %51 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_wait, align 8
  %device75 = getelementptr inbounds %struct.nvkm_timer, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %device75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device75, align 4
  %dev76 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev76, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end69.dev_name.exit_crit_edge

do.end69.dev_name.exit_crit_edge:                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end69.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %60, %if.end.i ], [ %58, %do.end69.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call72, ptr noundef %retval.0.i) #7
  br label %if.end91

if.end91:                                         ; preds = %dev_name.exit, %do.body39.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait93) #7
  %61 = call ptr @memset(ptr %_wait93, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait93) #7
  br label %do.body96

do.body96:                                        ; preds = %do.cond112.do.body96_crit_edge, %if.end91
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %63, i32 %add44
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %and105 = and i32 %64, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.cond112, label %do.body96.if.end159_crit_edge

do.body96.if.end159_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

do.cond112:                                       ; preds = %do.body96
  %call113 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait93) #7
  %cmp114 = icmp sgt i64 %call113, -1
  br i1 %cmp114, label %do.cond112.do.body96_crit_edge, label %do.end135

do.cond112.do.body96_crit_edge:                   ; preds = %do.cond112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96

do.end135:                                        ; preds = %do.cond112
  %65 = ptrtoint ptr %_wait93 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_wait93, align 8
  %device138 = getelementptr inbounds %struct.nvkm_timer, ptr %66, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %device138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device138, align 4
  %dev139 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev139, align 8
  %call140 = call ptr @dev_driver_string(ptr noundef %70) #7
  %71 = ptrtoint ptr %_wait93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_wait93, align 8
  %device143 = getelementptr inbounds %struct.nvkm_timer, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %device143 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device143, align 4
  %dev144 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev144, align 8
  %init_name.i564 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %init_name.i564 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i564, align 8
  %tobool.not.i565 = icmp eq ptr %78, null
  br i1 %tobool.not.i565, label %if.end.i566, label %do.end135.dev_name.exit568_crit_edge

do.end135.dev_name.exit568_crit_edge:             ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit568

if.end.i566:                                      ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  br label %dev_name.exit568

dev_name.exit568:                                 ; preds = %if.end.i566, %do.end135.dev_name.exit568_crit_edge
  %retval.0.i567 = phi ptr [ %80, %if.end.i566 ], [ %78, %do.end135.dev_name.exit568_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call140, ptr noundef %retval.0.i567) #7
  br label %if.end159

if.end159:                                        ; preds = %dev_name.exit568, %do.body96.if.end159_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait93) #7
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add163 = add nuw nsw i32 %mul43, 787396
  %add.ptr164 = getelementptr i8, ptr %82, i32 %add163
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr164, i8 1) #7, !srcloc !29
  %arrayidx165 = getelementptr [2 x i8], ptr %sr1, i32 0, i32 %i.1592
  %83 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx165, align 1
  %85 = or i8 %84, 32
  %86 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri, align 4
  %add171 = add nuw nsw i32 %mul43, 787397
  %add.ptr172 = getelementptr i8, ptr %87, i32 %add171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr172, i8 %85) #7, !srcloc !29
  br label %for.inc173

for.inc173:                                       ; preds = %if.end159, %for.body33.for.inc173_crit_edge
  %inc174 = add nuw nsw i32 %i.1592, 1
  %exitcond597.not = icmp eq i32 %inc174, 2
  br i1 %exitcond597.not, label %do.body176, label %for.inc173.for.body33_crit_edge

for.inc173.for.body33_crit_edge:                  ; preds = %for.inc173
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

do.body176:                                       ; preds = %for.inc173
  %subdev2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri, align 4
  %add.ptr180 = getelementptr i8, ptr %89, i32 1049300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 1) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr185 = getelementptr i8, ptr %91, i32 1049296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 1) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri, align 4
  %add.ptr190 = getelementptr i8, ptr %93, i32 1049296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 1) #7, !srcloc !35
  %94 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri, align 4
  %add.ptr193 = getelementptr i8, ptr %95, i32 1049104
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @arm_heavy_mb() #7
  %and199 = and i32 %96, 2147483647
  %97 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri, align 4
  %add.ptr202 = getelementptr i8, ptr %98, i32 1049104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %and199) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri, align 4
  %add.ptr208 = getelementptr i8, ptr %100, i32 1049308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 1) #7, !srcloc !35
  %101 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri, align 4
  %add.ptr214 = getelementptr i8, ptr %102, i32 49216
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @arm_heavy_mb() #7
  %and220 = and i32 %103, -49153
  %104 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %105, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 %and220) #7, !srcloc !35
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %106 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chipset, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %107, label %do.body176.sw.default_crit_edge [
    i32 64, label %do.body176.sw.bb_crit_edge
    i32 69, label %do.body176.sw.bb_crit_edge600
    i32 65, label %do.body176.sw.bb_crit_edge601
    i32 66, label %do.body176.sw.bb_crit_edge602
    i32 71, label %do.body176.sw.bb_crit_edge603
    i32 67, label %do.body176.sw.bb269_crit_edge
    i32 73, label %do.body176.sw.bb269_crit_edge604
    i32 75, label %do.body176.sw.bb269_crit_edge605
  ]

do.body176.sw.bb269_crit_edge605:                 ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb269

do.body176.sw.bb269_crit_edge604:                 ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb269

do.body176.sw.bb269_crit_edge:                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb269

do.body176.sw.bb_crit_edge603:                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body176.sw.bb_crit_edge602:                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body176.sw.bb_crit_edge601:                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body176.sw.bb_crit_edge600:                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body176.sw.bb_crit_edge:                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.body176.sw.default_crit_edge:                  ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %do.body176.sw.bb_crit_edge, %do.body176.sw.bb_crit_edge600, %do.body176.sw.bb_crit_edge601, %do.body176.sw.bb_crit_edge602, %do.body176.sw.bb_crit_edge603
  %109 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pri, align 4
  %add.ptr230 = getelementptr i8, ptr %110, i32 16452
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @arm_heavy_mb() #7
  %and236 = and i32 %111, 1065938687
  %ctrl = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 1
  %112 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ctrl, align 8
  %or237 = or i32 %113, %and236
  %114 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri, align 4
  %add.ptr239 = getelementptr i8, ptr %115, i32 16452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 %or237) #7, !srcloc !35
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr246 = getelementptr i8, ptr %117, i32 16428
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @arm_heavy_mb() #7
  %and252 = and i32 %118, 1065938687
  %119 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ctrl, align 8
  %or254 = or i32 %120, %and252
  %121 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri, align 4
  %add.ptr256 = getelementptr i8, ptr %122, i32 16428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr256, i32 %or254) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @arm_heavy_mb() #7
  %coef = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 2
  %123 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %coef, align 4
  %125 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri, align 4
  %add.ptr262 = getelementptr i8, ptr %126, i32 16456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %124) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %coef, align 4
  %129 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pri, align 4
  %add.ptr268 = getelementptr i8, ptr %130, i32 16432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268, i32 %128) #7, !srcloc !35
  br label %sw.bb269

sw.bb269:                                         ; preds = %sw.bb, %do.body176.sw.bb269_crit_edge, %do.body176.sw.bb269_crit_edge604, %do.body176.sw.bb269_crit_edge605
  %131 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pri, align 4
  %add.ptr275 = getelementptr i8, ptr %132, i32 16440
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr275) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @arm_heavy_mb() #7
  %and281 = and i32 %133, 1065938687
  %ctrl282 = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 1
  %134 = ptrtoint ptr %ctrl282 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ctrl282, align 8
  %or283 = or i32 %135, %and281
  %136 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri, align 4
  %add.ptr285 = getelementptr i8, ptr %137, i32 16440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 %or283) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %coef290 = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 2
  %138 = ptrtoint ptr %coef290 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %coef290, align 4
  %140 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri, align 4
  %add.ptr292 = getelementptr i8, ptr %141, i32 16444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 %139) #7, !srcloc !35
  br label %sw.default

sw.default:                                       ; preds = %sw.bb269, %do.body176.sw.default_crit_edge
  %142 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pri, align 4
  %add.ptr298 = getelementptr i8, ptr %143, i32 16416
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr298) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @arm_heavy_mb() #7
  %and304 = and i32 %144, 1065938687
  %ctrl305 = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 1
  %145 = ptrtoint ptr %ctrl305 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ctrl305, align 8
  %or306 = or i32 %146, %and304
  %147 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pri, align 4
  %add.ptr308 = getelementptr i8, ptr %148, i32 16416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr308, i32 %or306) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void @arm_heavy_mb() #7
  %coef313 = getelementptr inbounds %struct.nv40_ram, ptr %base, i32 0, i32 2
  %149 = ptrtoint ptr %coef313 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %coef313, align 4
  %151 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pri, align 4
  %add.ptr315 = getelementptr i8, ptr %152, i32 16420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 %150) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 21474800) #7
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add.ptr321 = getelementptr i8, ptr %155, i32 49216
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr321) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  %or328 = or i32 %156, 49152
  %157 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri, align 4
  %add.ptr330 = getelementptr i8, ptr %158, i32 49216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 %or328) #7, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %159 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri, align 4
  %add.ptr336 = getelementptr i8, ptr %160, i32 1049308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr336, i32 0) #7, !srcloc !35
  %161 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pri, align 4
  %add.ptr342 = getelementptr i8, ptr %162, i32 1049104
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr342) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %or349 = or i32 %163, -2147483648
  %164 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pri, align 4
  %add.ptr351 = getelementptr i8, ptr %165, i32 1049104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr351, i32 %or349) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %166(i32 noundef 21474800) #7
  %call353 = call i32 @bit_entry(ptr noundef %5, i8 noundef zeroext 77, ptr noundef nonnull %M) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.then355, label %sw.default.if.end365_crit_edge

sw.default.if.end365_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.then355:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #7
  %167 = getelementptr inbounds i8, ptr %init, i32 24
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %167, align 4, !annotation !25
  %169 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %subdev2, ptr %init, align 4
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %170 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %6, align 2
  %conv358 = zext i16 %171 to i32
  %call360 = call zeroext i16 @nvbios_rd16(ptr noundef %5, i32 noundef %conv358) #7
  %conv361 = zext i16 %call360 to i32
  %172 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv361, ptr %offset, align 4
  %outp = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %173 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %outp, align 4
  %or362 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %174 = ptrtoint ptr %or362 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -1, ptr %or362, align 4
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %175 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %link, align 4
  %head = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %176 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %head, align 4
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %177 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %execute, align 4
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %178 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %call364 = call i32 @nvbios_exec(ptr noundef nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #7
  br label %if.end365

if.end365:                                        ; preds = %if.then355, %sw.default.if.end365_crit_edge
  %and371 = and i32 %crtc_mask.1.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %if.end365.for.inc452_crit_edge, label %if.end374

if.end365.for.inc452_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc452

if.end374:                                        ; preds = %if.end365
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait375) #7
  %179 = call ptr @memset(ptr %_wait375, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait375) #7
  br label %do.body378

do.body378:                                       ; preds = %do.cond394.do.body378_crit_edge, %if.end374
  %180 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pri, align 4
  %add.ptr384 = getelementptr i8, ptr %181, i32 6293512
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr384) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and387 = and i32 %182, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and387)
  %tobool388.not = icmp eq i32 %and387, 0
  br i1 %tobool388.not, label %do.cond394, label %do.body378.if.end441_crit_edge

do.body378.if.end441_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441

do.cond394:                                       ; preds = %do.body378
  %call395 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait375) #7
  %cmp396 = icmp sgt i64 %call395, -1
  br i1 %cmp396, label %do.cond394.do.body378_crit_edge, label %do.end417

do.cond394.do.body378_crit_edge:                  ; preds = %do.cond394
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body378

do.end417:                                        ; preds = %do.cond394
  %183 = ptrtoint ptr %_wait375 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %_wait375, align 8
  %device420 = getelementptr inbounds %struct.nvkm_timer, ptr %184, i32 0, i32 1, i32 1
  %185 = ptrtoint ptr %device420 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device420, align 4
  %dev421 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %dev421 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev421, align 8
  %call422 = call ptr @dev_driver_string(ptr noundef %188) #7
  %189 = ptrtoint ptr %_wait375 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %_wait375, align 8
  %device425 = getelementptr inbounds %struct.nvkm_timer, ptr %190, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %device425 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %device425, align 4
  %dev426 = getelementptr inbounds %struct.nvkm_device, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %dev426 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev426, align 8
  %init_name.i569 = getelementptr inbounds %struct.device, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %init_name.i569 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %init_name.i569, align 8
  %tobool.not.i570 = icmp eq ptr %196, null
  br i1 %tobool.not.i570, label %if.end.i571, label %do.end417.dev_name.exit573_crit_edge

do.end417.dev_name.exit573_crit_edge:             ; preds = %do.end417
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit573

if.end.i571:                                      ; preds = %do.end417
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %194, align 4
  br label %dev_name.exit573

dev_name.exit573:                                 ; preds = %if.end.i571, %do.end417.dev_name.exit573_crit_edge
  %retval.0.i572 = phi ptr [ %198, %if.end.i571 ], [ %196, %do.end417.dev_name.exit573_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call422, ptr noundef %retval.0.i572) #7
  br label %if.end441

if.end441:                                        ; preds = %dev_name.exit573, %do.body378.if.end441_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait375) #7
  %199 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pri, align 4
  %add.ptr446 = getelementptr i8, ptr %200, i32 787396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr446, i8 1) #7, !srcloc !29
  %201 = ptrtoint ptr %sr1 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %sr1, align 1
  %203 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pri, align 4
  %add.ptr451 = getelementptr i8, ptr %204, i32 787397
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr451, i8 %202) #7, !srcloc !29
  br label %for.inc452

for.inc452:                                       ; preds = %if.end441, %if.end365.for.inc452_crit_edge
  %and371.1 = and i32 %crtc_mask.1.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371.1)
  %tobool372.not.1 = icmp eq i32 %and371.1, 0
  br i1 %tobool372.not.1, label %for.inc452.for.inc452.1_crit_edge, label %if.end374.1

for.inc452.for.inc452.1_crit_edge:                ; preds = %for.inc452
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc452.1

if.end374.1:                                      ; preds = %for.inc452
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait375) #7
  %205 = call ptr @memset(ptr %_wait375, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait375) #7
  br label %do.body378.1

do.body378.1:                                     ; preds = %do.cond394.1.do.body378.1_crit_edge, %if.end374.1
  %206 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pri, align 4
  %add.ptr384.1 = getelementptr i8, ptr %207, i32 6301704
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr384.1) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and387.1 = and i32 %208, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and387.1)
  %tobool388.not.1 = icmp eq i32 %and387.1, 0
  br i1 %tobool388.not.1, label %do.cond394.1, label %do.body378.1.if.end441.1_crit_edge

do.body378.1.if.end441.1_crit_edge:               ; preds = %do.body378.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end441.1

do.cond394.1:                                     ; preds = %do.body378.1
  %call395.1 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait375) #7
  %cmp396.1 = icmp sgt i64 %call395.1, -1
  br i1 %cmp396.1, label %do.cond394.1.do.body378.1_crit_edge, label %do.end417.1

do.cond394.1.do.body378.1_crit_edge:              ; preds = %do.cond394.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body378.1

do.end417.1:                                      ; preds = %do.cond394.1
  %209 = ptrtoint ptr %_wait375 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %_wait375, align 8
  %device420.1 = getelementptr inbounds %struct.nvkm_timer, ptr %210, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %device420.1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %device420.1, align 4
  %dev421.1 = getelementptr inbounds %struct.nvkm_device, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %dev421.1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev421.1, align 8
  %call422.1 = call ptr @dev_driver_string(ptr noundef %214) #7
  %215 = ptrtoint ptr %_wait375 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %_wait375, align 8
  %device425.1 = getelementptr inbounds %struct.nvkm_timer, ptr %216, i32 0, i32 1, i32 1
  %217 = ptrtoint ptr %device425.1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %device425.1, align 4
  %dev426.1 = getelementptr inbounds %struct.nvkm_device, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %dev426.1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev426.1, align 8
  %init_name.i569.1 = getelementptr inbounds %struct.device, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %init_name.i569.1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %init_name.i569.1, align 8
  %tobool.not.i570.1 = icmp eq ptr %222, null
  br i1 %tobool.not.i570.1, label %if.end.i571.1, label %do.end417.1.dev_name.exit573.1_crit_edge

do.end417.1.dev_name.exit573.1_crit_edge:         ; preds = %do.end417.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit573.1

if.end.i571.1:                                    ; preds = %do.end417.1
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %220, align 4
  br label %dev_name.exit573.1

dev_name.exit573.1:                               ; preds = %if.end.i571.1, %do.end417.1.dev_name.exit573.1_crit_edge
  %retval.0.i572.1 = phi ptr [ %224, %if.end.i571.1 ], [ %222, %do.end417.1.dev_name.exit573.1_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call422.1, ptr noundef %retval.0.i572.1) #7
  br label %if.end441.1

if.end441.1:                                      ; preds = %dev_name.exit573.1, %do.body378.1.if.end441.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait375) #7
  %225 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pri, align 4
  %add.ptr446.1 = getelementptr i8, ptr %226, i32 795588
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr446.1, i8 1) #7, !srcloc !29
  %227 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %9, align 1
  %229 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pri, align 4
  %add.ptr451.1 = getelementptr i8, ptr %230, i32 795589
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr451.1, i8 %228) #7, !srcloc !29
  br label %for.inc452.1

for.inc452.1:                                     ; preds = %if.end441.1, %for.inc452.for.inc452.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sr1) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %M) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nv40_ram_tidy(ptr nocapture noundef %base) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nv40_ram_func, !1, !"nv40_ram_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c", i32 184, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c", i32 45, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv40_ram_calc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv40_ram_calc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv40.c", i32 99, i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 5399042}
!22 = !{i64 2156290543}
!23 = !{i64 2156290928}
!24 = !{i64 2156291313}
!25 = !{!"auto-init"}
!26 = !{i64 2156264158}
!27 = !{i64 2156264588}
!28 = !{i64 2152939772}
!29 = !{i64 5398427}
!30 = !{i64 5398822}
!31 = !{i64 2152938167}
!32 = !{i64 2156267205}
!33 = !{i64 2156270058}
!34 = !{i64 2156271469}
!35 = !{i64 5398624}
!36 = !{i64 2156271882}
!37 = !{i64 2156272295}
!38 = !{i64 2156273136}
!39 = !{i64 2156273538}
!40 = !{i64 2156273983}
!41 = !{i64 2156274824}
!42 = !{i64 2156275226}
!43 = !{i64 2156276098}
!44 = !{i64 2156276498}
!45 = !{i64 2156277369}
!46 = !{i64 2156277769}
!47 = !{i64 2156278211}
!48 = !{i64 2156278621}
!49 = !{i64 2156279493}
!50 = !{i64 2156279893}
!51 = !{i64 2156280335}
!52 = !{i64 2156281207}
!53 = !{i64 2156281607}
!54 = !{i64 2156282049}
!55 = !{i64 2156283437}
!56 = !{i64 2156283839}
!57 = !{i64 2156284284}
!58 = !{i64 2156285125}
!59 = !{i64 2156285527}
!60 = !{i64 2156288912}
