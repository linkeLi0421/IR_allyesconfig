; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf100_privring = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr null, ptr null, ptr null, ptr null, ptr @gf100_privring_init, ptr null, ptr @gf100_privring_intr }, [36 x i8] zeroinitializer }, align 32
@gf100_privring_intr_hub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 34, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: HUB%d: %06x %08x (%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gf100_privring_intr_hub\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_privring_intr_hub._entry_ptr = internal global ptr @gf100_privring_intr_hub._entry, section ".printk_index", align 4
@gf100_privring_intr_rop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 44, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ROP%d: %06x %08x (%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gf100_privring_intr_rop\00", [40 x i8] zeroinitializer }, align 32
@gf100_privring_intr_rop._entry_ptr = internal global ptr @gf100_privring_intr_rop._entry, section ".printk_index", align 4
@gf100_privring_intr_gpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: GPC%d: %06x %08x (%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gf100_privring_intr_gpc\00", [40 x i8] zeroinitializer }, align 32
@gf100_privring_intr_gpc._entry_ptr = internal global ptr @gf100_privring_intr_gpc._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 93, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"gf100_privring\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 112, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 34, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 44, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 54, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @gf100_privring_intr_gpc._entry, ptr @gf100_privring_intr_gpc._entry_ptr, ptr @gf100_privring_intr_hub._entry, ptr @gf100_privring_intr_hub._entry_ptr, ptr @gf100_privring_intr_rop._entry, ptr @gf100_privring_intr_rop._entry_ptr, ptr @.str, ptr @.str.1, ptr @gf100_privring, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_privring to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_privring_intr_hub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_privring_intr_rop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_privring_intr_gpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_privring_intr(ptr noundef %privring) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1186904
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1186908
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 1186928
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 1186932
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 1186936
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %and184 = and i32 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool.not185 = icmp ne i32 %and184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp186 = icmp ne i32 %10, 0
  %or.cond187 = select i1 %tobool.not185, i1 %cmp186, i1 false
  br i1 %or.cond187, label %for.body.lr.ph, label %entry.for.cond25.preheader_crit_edge

entry.for.cond25.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond25.preheader

for.body.lr.ph:                                   ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 4
  br label %for.body

for.cond25.preheader:                             ; preds = %if.end.for.cond25.preheader_crit_edge, %entry.for.cond25.preheader_crit_edge
  %intr0.0.lcssa = phi i32 [ %4, %entry.for.cond25.preheader_crit_edge ], [ %intr0.1, %if.end.for.cond25.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %intr0.0.lcssa)
  %tobool27.not192 = icmp ugt i32 %intr0.0.lcssa, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp29193 = icmp ne i32 %13, 0
  %or.cond152194 = select i1 %tobool27.not192, i1 %cmp29193, i1 false
  br i1 %or.cond152194, label %for.body31.lr.ph, label %for.cond25.preheader.for.cond43.preheader_crit_edge

for.cond25.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond43.preheader

for.body31.lr.ph:                                 ; preds = %for.cond25.preheader
  %debug.i163 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 5
  %name.i166 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 4
  br label %for.body31

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %intr0.0191 = phi i32 [ %4, %for.body.lr.ph ], [ %intr0.1, %if.end.for.body_crit_edge ]
  %i.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %shl = shl i32 256, %i.0188
  %and22 = and i32 %intr0.0191, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  %17 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i, align 4
  %mul.i = shl i32 %i.0188, 10
  %add.i = add i32 %mul.i, 1188128
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add5.i = add i32 %mul.i, 1188132
  %add.ptr6.i = getelementptr i8, ptr %23, i32 %add5.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add12.i = add i32 %mul.i, 1188136
  %add.ptr13.i = getelementptr i8, ptr %26, i32 %add12.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %28 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i = icmp ugt i32 %29, 3
  br i1 %cmp.i, label %do.end.i, label %if.then.gf100_privring_intr_hub.exit_crit_edge

if.then.gf100_privring_intr_hub.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %gf100_privring_intr_hub.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device1, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef %i.0188, i32 noundef %21, i32 noundef %24, i32 noundef %27) #7
  br label %gf100_privring_intr_hub.exit

gf100_privring_intr_hub.exit:                     ; preds = %do.end.i, %if.then.gf100_privring_intr_hub.exit_crit_edge
  %neg = xor i32 %shl, -1
  %and24 = and i32 %intr0.0191, %neg
  br label %if.end

if.end:                                           ; preds = %gf100_privring_intr_hub.exit, %for.body.if.end_crit_edge
  %intr0.1 = phi i32 [ %and24, %gf100_privring_intr_hub.exit ], [ %intr0.0191, %for.body.if.end_crit_edge ]
  %inc = add nuw i32 %i.0188, 1
  %and = and i32 %intr0.1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp = icmp ult i32 %inc, %10
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.for.cond25.preheader_crit_edge

if.end.for.cond25.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond25.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond43.preheader:                             ; preds = %if.end39.for.cond43.preheader_crit_edge, %for.cond25.preheader.for.cond43.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool44.not199 = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp46200 = icmp ne i32 %16, 0
  %or.cond153201 = select i1 %tobool44.not199, i1 %cmp46200, i1 false
  br i1 %or.cond153201, label %for.body48.lr.ph, label %for.cond43.preheader.for.end59_crit_edge

for.cond43.preheader.for.end59_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end59

for.body48.lr.ph:                                 ; preds = %for.cond43.preheader
  %debug.i177 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 5
  %name.i180 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 4
  br label %for.body48

for.body31:                                       ; preds = %if.end39.for.body31_crit_edge, %for.body31.lr.ph
  %intr0.2198 = phi i32 [ %intr0.0.lcssa, %for.body31.lr.ph ], [ %intr0.3, %if.end39.for.body31_crit_edge ]
  %i.1195 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc41, %if.end39.for.body31_crit_edge ]
  %shl33 = shl i32 65536, %i.1195
  %and34 = and i32 %intr0.2198, %shl33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.body31.if.end39_crit_edge, label %if.then36

for.body31.if.end39_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then36:                                        ; preds = %for.body31
  %34 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device1, align 4
  %pri.i155 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %pri.i155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri.i155, align 4
  %mul.i156 = shl i32 %i.1195, 10
  %add.i157 = add i32 %mul.i156, 1196320
  %add.ptr.i158 = getelementptr i8, ptr %37, i32 %add.i157
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %39 = ptrtoint ptr %pri.i155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i155, align 4
  %add5.i159 = add i32 %mul.i156, 1196324
  %add.ptr6.i160 = getelementptr i8, ptr %40, i32 %add5.i159
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i160) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %42 = ptrtoint ptr %pri.i155 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri.i155, align 4
  %add12.i161 = add i32 %mul.i156, 1196328
  %add.ptr13.i162 = getelementptr i8, ptr %43, i32 %add12.i161
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i162) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %45 = ptrtoint ptr %debug.i163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp.i164 = icmp ugt i32 %46, 3
  br i1 %cmp.i164, label %do.end.i167, label %if.then36.gf100_privring_intr_rop.exit_crit_edge

if.then36.gf100_privring_intr_rop.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %gf100_privring_intr_rop.exit

do.end.i167:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device1, align 4
  %dev.i165 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev.i165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i165, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef %name.i166, i32 noundef %i.1195, i32 noundef %38, i32 noundef %41, i32 noundef %44) #7
  br label %gf100_privring_intr_rop.exit

gf100_privring_intr_rop.exit:                     ; preds = %do.end.i167, %if.then36.gf100_privring_intr_rop.exit_crit_edge
  %neg37 = xor i32 %shl33, -1
  %and38 = and i32 %intr0.2198, %neg37
  br label %if.end39

if.end39:                                         ; preds = %gf100_privring_intr_rop.exit, %for.body31.if.end39_crit_edge
  %intr0.3 = phi i32 [ %and38, %gf100_privring_intr_rop.exit ], [ %intr0.2198, %for.body31.if.end39_crit_edge ]
  %inc41 = add nuw i32 %i.1195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %intr0.3)
  %tobool27.not = icmp ugt i32 %intr0.3, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %inc41, i32 %13)
  %cmp29 = icmp ult i32 %inc41, %13
  %or.cond152 = select i1 %tobool27.not, i1 %cmp29, i1 false
  br i1 %or.cond152, label %if.end39.for.body31_crit_edge, label %if.end39.for.cond43.preheader_crit_edge

if.end39.for.cond43.preheader_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond43.preheader

if.end39.for.body31_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31

for.body48:                                       ; preds = %if.end56.for.body48_crit_edge, %for.body48.lr.ph
  %intr1.0205 = phi i32 [ %7, %for.body48.lr.ph ], [ %intr1.1, %if.end56.for.body48_crit_edge ]
  %i.2202 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc58, %if.end56.for.body48_crit_edge ]
  %shl50 = shl nuw i32 1, %i.2202
  %and51 = and i32 %intr1.0205, %shl50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.body48.if.end56_crit_edge, label %if.then53

for.body48.if.end56_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then53:                                        ; preds = %for.body48
  %51 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device1, align 4
  %pri.i169 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %pri.i169 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri.i169, align 4
  %mul.i170 = shl i32 %i.2202, 10
  %add.i171 = add i32 %mul.i170, 1212704
  %add.ptr.i172 = getelementptr i8, ptr %54, i32 %add.i171
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %56 = ptrtoint ptr %pri.i169 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i169, align 4
  %add5.i173 = add i32 %mul.i170, 1212708
  %add.ptr6.i174 = getelementptr i8, ptr %57, i32 %add5.i173
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i174) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %59 = ptrtoint ptr %pri.i169 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri.i169, align 4
  %add12.i175 = add i32 %mul.i170, 1212712
  %add.ptr13.i176 = getelementptr i8, ptr %60, i32 %add12.i175
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i176) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  %62 = ptrtoint ptr %debug.i177 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.i178 = icmp ugt i32 %63, 3
  br i1 %cmp.i178, label %do.end.i181, label %if.then53.gf100_privring_intr_gpc.exit_crit_edge

if.then53.gf100_privring_intr_gpc.exit_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %gf100_privring_intr_gpc.exit

do.end.i181:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device1, align 4
  %dev.i179 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i179, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.8, ptr noundef %name.i180, i32 noundef %i.2202, i32 noundef %55, i32 noundef %58, i32 noundef %61) #7
  br label %gf100_privring_intr_gpc.exit

gf100_privring_intr_gpc.exit:                     ; preds = %do.end.i181, %if.then53.gf100_privring_intr_gpc.exit_crit_edge
  %neg54 = xor i32 %shl50, -1
  %and55 = and i32 %intr1.0205, %neg54
  br label %if.end56

if.end56:                                         ; preds = %gf100_privring_intr_gpc.exit, %for.body48.if.end56_crit_edge
  %intr1.1 = phi i32 [ %and55, %gf100_privring_intr_gpc.exit ], [ %intr1.0205, %for.body48.if.end56_crit_edge ]
  %inc58 = add nuw i32 %i.2202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr1.1)
  %tobool44.not = icmp ne i32 %intr1.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %16)
  %cmp46 = icmp ult i32 %inc58, %16
  %or.cond153 = select i1 %tobool44.not, i1 %cmp46, i1 false
  br i1 %or.cond153, label %if.end56.for.body48_crit_edge, label %if.end56.for.end59_crit_edge

if.end56.for.end59_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end59

if.end56.for.body48_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body48

for.end59:                                        ; preds = %if.end56.for.end59_crit_edge, %for.cond43.preheader.for.end59_crit_edge
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %add.ptr62 = getelementptr i8, ptr %69, i32 1186892
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %and65 = and i32 %70, -64
  %or = or i32 %and65, 2
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %72, i32 1186892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or) #4, !srcloc !48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %73 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  br label %do.body69

do.body69:                                        ; preds = %do.cond79.do.body69_crit_edge, %for.end59
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %75, i32 1186892
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #4, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %and75 = and i32 %76, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body69.if.end114_crit_edge, label %do.cond79

do.body69.if.end114_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

do.cond79:                                        ; preds = %do.body69
  %call80 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp81 = icmp sgt i64 %call80, -1
  br i1 %cmp81, label %do.cond79.do.body69_crit_edge, label %do.end93

do.cond79.do.body69_crit_edge:                    ; preds = %do.cond79
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body69

do.end93:                                         ; preds = %do.cond79
  %77 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %_wait, align 8
  %device94 = getelementptr inbounds %struct.nvkm_timer, ptr %78, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %device94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device94, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %call95 = call ptr @dev_driver_string(ptr noundef %82) #4
  %83 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %_wait, align 8
  %device98 = getelementptr inbounds %struct.nvkm_timer, ptr %84, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device98, align 4
  %dev99 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev99, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %90, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end93.dev_name.exit_crit_edge

do.end93.dev_name.exit_crit_edge:                 ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end93.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %92, %if.end.i ], [ %90, %do.end93.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call95, ptr noundef %retval.0.i) #4
  br label %if.end114

if.end114:                                        ; preds = %dev_name.exit, %do.body69.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_privring_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pprivring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_subdev_new_(ptr noundef nonnull @gf100_privring, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pprivring) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_privring_init(ptr nocapture noundef readonly %privring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %privring, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1188624
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %and = and i32 %4, -262144
  %or = or i32 %and, 2048
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1188624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 1188652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1048676) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 1188656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 1048676) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1188660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 1048676) #4, !srcloc !48
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 1188680
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %and31 = and i32 %15, -262144
  %or32 = or i32 %and31, 256
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %17, i32 1188680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or32) #4, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c", i32 93, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c", i32 34, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gf100_privring_intr_hub._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @gf100_privring_intr_hub._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c", i32 44, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gf100_privring_intr_rop._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @gf100_privring_intr_rop._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c", i32 54, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @gf100_privring_intr_gpc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @gf100_privring_intr_gpc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @gf100_privring, !21, !"gf100_privring", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c", i32 112, i32 1}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 5384874}
!32 = !{i64 2156234866}
!33 = !{i64 2156235251}
!34 = !{i64 2156235636}
!35 = !{i64 2156236021}
!36 = !{i64 2156236406}
!37 = !{i64 2156223943}
!38 = !{i64 2156224373}
!39 = !{i64 2156224803}
!40 = !{i64 2156227599}
!41 = !{i64 2156228029}
!42 = !{i64 2156228459}
!43 = !{i64 2156231255}
!44 = !{i64 2156231685}
!45 = !{i64 2156232115}
!46 = !{i64 2156237176}
!47 = !{i64 2156237578}
!48 = !{i64 5384456}
!49 = !{i64 2156239493}
!50 = !{i64 2156241160}
!51 = !{i64 2156241562}
!52 = !{i64 2156242007}
!53 = !{i64 2156242420}
!54 = !{i64 2156242833}
!55 = !{i64 2156243674}
!56 = !{i64 2156244076}
