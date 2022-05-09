; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.145, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.145 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.142, %struct.anon.142, %struct.anon.142, %struct.anon.143, %struct.anon.144, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.140 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.140 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.142 = type { i32, i32 }
%struct.anon.143 = type { i32, i32, i32 }
%struct.anon.144 = type { i32, i32, [3 x i8] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ch %d fini: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gf119_disp_dmac_fini\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_fini._entry_ptr = internal global ptr @gf119_disp_dmac_fini._entry, section ".printk_index", align 4
@gf119_disp_dmac_func = dso_local constant { %struct.nv50_disp_chan_func, [44 x i8] } { %struct.nv50_disp_chan_func { ptr @gf119_disp_dmac_init, ptr @gf119_disp_dmac_fini, ptr @gf119_disp_chan_intr, ptr @nv50_disp_chan_user, ptr @gf119_disp_dmac_bind }, [44 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 82, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: ch %d init: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gf119_disp_dmac_init\00", [43 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_init._entry_ptr = internal global ptr @gf119_disp_dmac_init._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 49, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 53, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"gf119_disp_dmac_func\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 90, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 81, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @gf119_disp_dmac_fini._entry, ptr @gf119_disp_dmac_fini._entry_ptr, ptr @gf119_disp_dmac_init._entry, ptr @gf119_disp_dmac_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gf119_disp_dmac_func, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_dmac_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_dmac_func to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_dmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_dmac_bind(ptr nocapture noundef readonly %chan, ptr noundef %object, i32 noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %ramht = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ramht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ramht, align 4
  %user = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user, align 4
  %shl = shl i32 %5, 27
  %or = or i32 %shl, 1
  %call = tail call i32 @nvkm_ramht_insert(ptr noundef %3, ptr noundef %object, i32 noundef %5, i32 noundef -9, i32 noundef %handle, i32 noundef %or) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_dmac_fini(ptr nocapture noundef %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %chid = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid, align 4
  %user5 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %user5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user5, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 6358160
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %and = and i32 %10, -4113
  %or = or i32 %and, 4096
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or) #4, !srcloc !29
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %and22 = and i32 %15, -4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %and22) #4, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %18 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body27

do.body27:                                        ; preds = %do.cond36.do.body27_crit_edge, %entry
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 %add
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %and35 = and i32 %21, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not = icmp eq i32 %and35, 0
  br i1 %tobool.not, label %if.end71.thread, label %do.cond36

if.end71.thread:                                  ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %if.end93

do.cond36:                                        ; preds = %do.body27
  %call37 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call37, -1
  br i1 %cmp, label %do.cond36.do.body27_crit_edge, label %do.end49

do.cond36.do.body27_crit_edge:                    ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

do.end49:                                         ; preds = %do.cond36
  %22 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_wait, align 8
  %device51 = getelementptr inbounds %struct.nvkm_timer, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device51, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call52 = call ptr @dev_driver_string(ptr noundef %27) #4
  %28 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_wait, align 8
  %device55 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device55, align 4
  %dev56 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev56, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end49.do.body75_crit_edge

do.end49.do.body75_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.end.i:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %do.body75

do.body75:                                        ; preds = %if.end.i, %do.end49.do.body75_crit_edge
  %retval.0.i = phi ptr [ %37, %if.end.i ], [ %35, %do.end49.do.body75_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call52, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp76.not = icmp eq i32 %39, 0
  br i1 %cmp76.not, label %do.body75.if.end93_crit_edge, label %do.end80

do.body75.if.end93_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

do.end80:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device2, align 4
  %dev82 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev82, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr87 = getelementptr i8, ptr %45, i32 %add
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %7, i32 noundef %46) #7
  br label %if.end93

if.end93:                                         ; preds = %do.end80, %do.body75.if.end93_crit_edge, %if.end71.thread
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %mul96 = shl i32 %5, 12
  %add97 = add i32 %mul96, 6553600
  %add.ptr98 = getelementptr i8, ptr %48, i32 %add97
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %50 = ptrtoint ptr %suspend_put to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %suspend_put, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf119_disp_dmac_init(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %chid = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chid, align 4
  %user5 = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %user5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %push = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 7
  %8 = ptrtoint ptr %push to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %push, align 8
  %conv = trunc i64 %9 to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 6358164
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 6358168
  %add.ptr12 = getelementptr i8, ptr %13, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 65536) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add18 = add i32 %mul, 6358172
  %add.ptr19 = getelementptr i8, ptr %15, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 1) #4, !srcloc !29
  %add21 = add i32 %mul, 6358160
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 %add21
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #4, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %or = or i32 %18, 16
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %20, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %or) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %suspend_put = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 8
  %21 = ptrtoint ptr %suspend_put to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %suspend_put, align 8
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %mul34 = shl i32 %5, 12
  %add35 = add i32 %mul34, 6553600
  %add.ptr36 = getelementptr i8, ptr %24, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %22) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %26, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 19) #4, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %27 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body44

do.body44:                                        ; preds = %do.cond53.do.body44_crit_edge, %entry
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %29, i32 %add21
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool.not = icmp sgt i32 %30, -1
  br i1 %tobool.not, label %if.end91.thread, label %do.cond53

if.end91.thread:                                  ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  br label %cleanup

do.cond53:                                        ; preds = %do.body44
  %call54 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call54, -1
  br i1 %cmp, label %do.cond53.do.body44_crit_edge, label %do.end69

do.cond53.do.body44_crit_edge:                    ; preds = %do.cond53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44

do.end69:                                         ; preds = %do.cond53
  %31 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_wait, align 8
  %device71 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device71, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %call72 = call ptr @dev_driver_string(ptr noundef %36) #4
  %37 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_wait, align 8
  %device75 = getelementptr inbounds %struct.nvkm_timer, ptr %38, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device75, align 4
  %dev76 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev76, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end69.do.body96_crit_edge

do.end69.do.body96_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

if.end.i:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %do.body96

do.body96:                                        ; preds = %if.end.i, %do.end69.do.body96_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %do.end69.do.body96_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call72, ptr noundef %retval.0.i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 5
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp97.not = icmp eq i32 %48, 0
  br i1 %cmp97.not, label %do.body96.cleanup_crit_edge, label %do.end102

do.body96.cleanup_crit_edge:                      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device2, align 4
  %dev104 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev104, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 4
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr109 = getelementptr i8, ptr %54, i32 %add21
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #4, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %7, i32 noundef %55) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %do.body96.cleanup_crit_edge, %if.end91.thread
  %retval.0 = phi i32 [ -16, %do.end102 ], [ -16, %do.body96.cleanup_crit_edge ], [ 0, %if.end91.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_disp_chan_intr(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_disp_chan_user(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c", i32 49, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c", i32 53, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gf119_disp_dmac_fini._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @gf119_disp_dmac_fini._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @gf119_disp_dmac_func, !11, !"gf119_disp_dmac_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c", i32 90, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dmacgf119.c", i32 81, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gf119_disp_dmac_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gf119_disp_dmac_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 5386891}
!27 = !{i64 2156259398}
!28 = !{i64 2156259800}
!29 = !{i64 5386473}
!30 = !{i64 2156260691}
!31 = !{i64 2156261093}
!32 = !{i64 2156263104}
!33 = !{i64 2156266884}
!34 = !{i64 2156267323}
!35 = !{i64 2156267701}
!36 = !{i64 2156268150}
!37 = !{i64 2156268599}
!38 = !{i64 2156269458}
!39 = !{i64 2156269860}
!40 = !{i64 2156270355}
!41 = !{i64 2156270811}
!42 = !{i64 2156272790}
!43 = !{i64 2156276570}
