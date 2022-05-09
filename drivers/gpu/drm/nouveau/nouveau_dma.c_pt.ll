; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.113, i8, ptr, %struct.anon.114, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.113 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.95, %struct.anon.96, %struct.anon.98, ptr, %struct.anon.99, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.100, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.112 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.95 = type { ptr, i32, i32, i8 }
%struct.anon.96 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.98 = type { i64, i64 }
%struct.anon.99 = type { i32, i64 }
%struct.anon.100 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.101, i8 }
%union.anon.101 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.107 = type { i32 }
%struct.anon.108 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i16, i16, i16, %struct.anon.111, i16 }
%struct.anon.111 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.112 = type { ptr, %struct.mutex, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967280]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_dma_push(ptr noundef %chan, i64 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %user1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 4
  %ib_put = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 7
  %ib_free = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %ib_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ib_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.body5, label %do.end10, !prof !9

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #2, !srcloc !10
  unreachable

do.end10:                                         ; preds = %entry
  %4 = ptrtoint ptr %ib_put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ib_put, align 4
  %mul = shl i32 %5, 1
  %ib_base = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %ib_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ib_base, align 8
  %add = add i32 %mul, %7
  %push = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 10
  %8 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push, align 8
  %inc = add i32 %add, 1
  %conv = trunc i64 %offset to i32
  tail call void @nouveau_bo_wr32(ptr noundef %9, i32 noundef %add, i32 noundef %conv) #2
  %shr = lshr i64 %offset, 32
  %conv13 = trunc i64 %shr to i32
  %shl = shl i32 %length, 8
  %or = or i32 %shl, %conv13
  tail call void @nouveau_bo_wr32(ptr noundef %9, i32 noundef %inc, i32 noundef %or) #2
  %10 = ptrtoint ptr %ib_put to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ib_put, align 4
  %add16 = add i32 %11, 1
  %ib_max = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %ib_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ib_max, align 4
  %and18 = and i32 %add16, %13
  store i32 %and18, ptr %ib_put, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %call = tail call i32 @nouveau_bo_rd32(ptr noundef %9, i32 noundef 0) #2
  %map = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 6
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.else, label %do.body33, !prof !9

do.body33:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %16 = ptrtoint ptr %ib_put to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ib_put, align 4
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #2, !srcloc !13
  br label %if.end42

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #4
  %user24 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %20 = ptrtoint ptr %ib_put to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ib_put, align 4
  tail call void @nvif_object_wr(ptr noundef %user24, i32 noundef 4, i64 noundef 140, i32 noundef %21) #2
  br label %if.end42

if.end42:                                         ; preds = %if.else, %do.body33
  %22 = ptrtoint ptr %user1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user1, align 8
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %land.lhs.true

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end42
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool45.not = icmp eq ptr %25, null
  br i1 %tobool45.not, label %land.lhs.true.if.end49_crit_edge, label %if.then46

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %token = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 6
  %26 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %token, align 8
  tail call void %25(ptr noundef %user1, i32 noundef %27) #2
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true.if.end49_crit_edge, %if.end42.if.end49_crit_edge
  %28 = ptrtoint ptr %ib_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ib_free, align 8
  %dec = add i32 %29, -1
  store i32 %dec, ptr %ib_free, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_dma_wait(ptr noundef %chan, i32 noundef %slots, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13
  %ib_max = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %ib_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ib_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %free = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp257 = icmp slt i32 %3, %size
  br i1 %cmp257, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %user.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %map.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 6
  %user_get6.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 15
  %user_get_hi.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 10, i32 3
  %cur = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 2
  %push = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 10
  %user_put = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 16
  %put = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 3
  br label %while.body

if.then:                                          ; preds = %entry
  %add.i = add i32 %slots, 1
  %ib_free.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %ib_free.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ib_free.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp42.i.i = icmp slt i32 %5, %add.i
  br i1 %cmp42.i.i, label %while.body.lr.ph.i.i, label %if.then.nv50_dma_push_wait.exit.i_crit_edge

if.then.nv50_dma_push_wait.exit.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %nv50_dma_push_wait.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then
  %map.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 6
  %user.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %ib_put.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %cnt.044.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %prev_get.043.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %_data.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 136
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %call6.i.i = tail call i32 @nvif_object_rd(ptr noundef %user.i.i, i32 noundef 4, i64 noundef 136) #2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %_data.0.i.i = phi i32 [ %8, %if.then.i.i ], [ %call6.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_data.0.i.i, i32 %prev_get.043.i.i)
  %cmp8.not.i.i = icmp eq i32 %_data.0.i.i, %prev_get.043.i.i
  %cnt.0.op.i.i = add i32 %cnt.044.i.i, 1
  %inc.i.i = select i1 %cmp8.not.i.i, i32 %cnt.0.op.i.i, i32 1
  %and.i.i = and i32 %inc.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp11.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end.i.i.if.end16.i.i_crit_edge

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i.i)
  %cmp13.i.i = icmp ugt i32 %inc.i.i, 100000
  br i1 %cmp13.i.i, label %if.then12.i.i.cleanup_crit_edge, label %if.then12.i.i.if.end16.i.i_crit_edge

if.then12.i.i.if.end16.i.i_crit_edge:             ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16.i.i

if.then12.i.i.cleanup_crit_edge:                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.then12.i.i.if.end16.i.i_crit_edge, %if.end.i.i.if.end16.i.i_crit_edge
  %10 = ptrtoint ptr %ib_put.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ib_put.i.i, align 4
  %sub.i.i = sub i32 %_data.0.i.i, %11
  %12 = ptrtoint ptr %ib_free.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i.i, ptr %ib_free.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp22.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.end16.i.i.cleanup.i.i_crit_edge

if.end16.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i.i

if.then23.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %ib_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ib_max, align 4
  %add.i.i = add i32 %14, %sub.i.i
  %15 = ptrtoint ptr %ib_free.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i.i, ptr %ib_free.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then23.i.i, %if.end16.i.i.cleanup.i.i_crit_edge
  %16 = ptrtoint ptr %ib_free.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ib_free.i.i, align 8
  %cmp.i.i = icmp slt i32 %17, %add.i
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.nv50_dma_push_wait.exit.i_crit_edge

cleanup.i.i.nv50_dma_push_wait.exit.i_crit_edge:  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nv50_dma_push_wait.exit.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i

nv50_dma_push_wait.exit.i:                        ; preds = %cleanup.i.i.nv50_dma_push_wait.exit.i_crit_edge, %if.then.nv50_dma_push_wait.exit.i_crit_edge
  %free.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %size)
  %cmp255.i = icmp slt i32 %19, %size
  br i1 %cmp255.i, label %while.body.lr.ph.i, label %nv50_dma_push_wait.exit.i.cleanup_crit_edge

nv50_dma_push_wait.exit.i.cleanup_crit_edge:      ; preds = %nv50_dma_push_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %nv50_dma_push_wait.exit.i
  %user.i79.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %map.i80.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 6
  %user_get6.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 15
  %user_get_hi.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 14
  %addr.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 10, i32 3
  %cur.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 2
  %put.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 13, i32 3
  %accel_done.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 11
  %push12.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 10
  %user_put.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cnt.0257.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %cnt.5.i, %cleanup.i.while.body.i_crit_edge ]
  %prev_get.0256.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %prev_get.5.i, %cleanup.i.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i80.i, align 8
  %tobool.not.i81.i = icmp eq ptr %21, null
  %22 = ptrtoint ptr %user_get6.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %user_get6.i.i, align 4
  br i1 %tobool.not.i81.i, label %if.else.i84.i, label %if.then.i83.i, !prof !9

if.then.i83.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i82.i = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  br label %if.end.i86.i

if.else.i84.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i = zext i32 %23 to i64
  %call7.i.i = tail call i32 @nvif_object_rd(ptr noundef %user.i79.i, i32 noundef 4, i64 noundef %conv.i.i) #2
  br label %if.end.i86.i

if.end.i86.i:                                     ; preds = %if.else.i84.i, %if.then.i83.i
  %_data.0.i85.i = phi i32 [ %24, %if.then.i83.i ], [ %call7.i.i, %if.else.i84.i ]
  %conv9.i.i = zext i32 %_data.0.i85.i to i64
  %25 = ptrtoint ptr %user_get_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %user_get_hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool10.not.i.i, label %if.end.i86.i.if.end40.i.i_crit_edge, label %if.then11.i.i

if.end.i86.i.if.end40.i.i_crit_edge:              ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i.i

if.then11.i.i:                                    ; preds = %if.end.i86.i
  %27 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i80.i, align 8
  %tobool18.not.i.i = icmp eq ptr %28, null
  br i1 %tobool18.not.i.i, label %if.else33.i.i, label %if.then25.i.i, !prof !9

if.then25.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr30.i.i = getelementptr i8, ptr %28, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  br label %if.end37.i.i

if.else33.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv35.i.i = zext i32 %26 to i64
  %call36.i.i = tail call i32 @nvif_object_rd(ptr noundef %user.i79.i, i32 noundef 4, i64 noundef %conv35.i.i) #2
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else33.i.i, %if.then25.i.i
  %_data15.0.i.i = phi i32 [ %29, %if.then25.i.i ], [ %call36.i.i, %if.else33.i.i ]
  %conv39.i.i = zext i32 %_data15.0.i.i to i64
  %shl.i.i = shl nuw i64 %conv39.i.i, 32
  %or.i.i = or i64 %shl.i.i, %conv9.i.i
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end37.i.i, %if.end.i86.i.if.end40.i.i_crit_edge
  %val.0.i.i = phi i64 [ %or.i.i, %if.end37.i.i ], [ %conv9.i.i, %if.end.i86.i.if.end40.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i.i, i64 %prev_get.0256.i)
  %cmp.not.i.i = icmp eq i64 %val.0.i.i, %prev_get.0256.i
  br i1 %cmp.not.i.i, label %if.end43.i.i, label %if.end40.i.i.if.end51.i.i_crit_edge

if.end40.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i.i

if.end43.i.i:                                     ; preds = %if.end40.i.i
  %inc.i87.i = add i32 %cnt.0257.i, 1
  %and.i88.i = and i32 %inc.i87.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i)
  %cmp44.i.i = icmp eq i32 %and.i88.i, 0
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end43.i.i.if.end51.i.i_crit_edge

if.end43.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i.i

if.then46.i.i:                                    ; preds = %if.end43.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i87.i)
  %cmp47.i.i = icmp sgt i32 %inc.i87.i, 100000
  br i1 %cmp47.i.i, label %if.then46.i.i.cleanup_crit_edge, label %if.then46.i.i.if.end51.i.i_crit_edge

if.then46.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i.i

if.then46.i.i.cleanup_crit_edge:                  ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end51.i.i:                                     ; preds = %if.then46.i.i.if.end51.i.i_crit_edge, %if.end43.i.i.if.end51.i.i_crit_edge, %if.end40.i.i.if.end51.i.i_crit_edge
  %inc.i87171.i = phi i32 [ %inc.i87.i, %if.then46.i.i.if.end51.i.i_crit_edge ], [ %inc.i87.i, %if.end43.i.i.if.end51.i.i_crit_edge ], [ 1, %if.end40.i.i.if.end51.i.i_crit_edge ]
  %prev_get.1170.i = phi i64 [ %prev_get.0256.i, %if.then46.i.i.if.end51.i.i_crit_edge ], [ %prev_get.0256.i, %if.end43.i.i.if.end51.i.i_crit_edge ], [ %val.0.i.i, %if.end40.i.i.if.end51.i.i_crit_edge ]
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i.i, i64 %32)
  %cmp52.i.i = icmp ult i64 %val.0.i.i, %32
  br i1 %cmp52.i.i, label %if.end51.i.i.cleanup.i_crit_edge, label %lor.lhs.false.i.i

if.end51.i.i.cleanup.i_crit_edge:                 ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

lor.lhs.false.i.i:                                ; preds = %if.end51.i.i
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 8
  %shl56.i.i = shl i32 %34, 2
  %conv57.i.i = sext i32 %shl56.i.i to i64
  %add.i89.i = add i64 %32, %conv57.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i.i, i64 %add.i89.i)
  %cmp58.i.i = icmp ugt i64 %val.0.i.i, %add.i89.i
  br i1 %cmp58.i.i, label %lor.lhs.false.i.i.cleanup.i_crit_edge, label %READ_GET.exit.i

lor.lhs.false.i.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

READ_GET.exit.i:                                  ; preds = %lor.lhs.false.i.i
  %sub.i90.i = sub i64 %val.0.i.i, %32
  %shr.i.i = lshr i64 %sub.i90.i, 2
  %conv64.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv64.i.i)
  %cmp4.i = icmp slt i32 %conv64.i.i, 0
  br i1 %cmp4.i, label %if.then11.i, label %if.end15.i, !prof !9

if.then11.i:                                      ; preds = %READ_GET.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %conv64.i.i)
  %cmp12.i = icmp eq i32 %conv64.i.i, -22
  br i1 %cmp12.i, label %if.then11.i.cleanup.i_crit_edge, label %cleanup.loopexit279.split.loop.exit296

if.then11.i.cleanup.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.i

if.end15.i:                                       ; preds = %READ_GET.exit.i
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv64.i.i)
  %cmp17.not.i = icmp slt i32 %36, %conv64.i.i
  br i1 %cmp17.not.i, label %if.end15.i.if.end46.i_crit_edge, label %if.then18.i

if.end15.i.if.end46.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46.i

if.then18.i:                                      ; preds = %if.end15.i
  %sub.i = sub i32 %34, %36
  %37 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %size)
  %cmp26.not.i = icmp slt i32 %sub.i, %size
  br i1 %cmp26.not.i, label %if.end28.i, label %if.then18.i.cleanup_crit_edge

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end28.i:                                       ; preds = %if.then18.i
  %38 = ptrtoint ptr %put.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %put.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %39)
  %cmp.i92.i = icmp eq i32 %36, %39
  br i1 %cmp.i92.i, label %if.end28.i.do.body.i.preheader_crit_edge, label %if.end.i95.i

if.end28.i.do.body.i.preheader_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.preheader

if.end.i95.i:                                     ; preds = %if.end28.i
  %40 = ptrtoint ptr %accel_done.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %accel_done.i.i, align 8
  %41 = ptrtoint ptr %ib_max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ib_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i94.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i94.i, label %do.body11.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #4
  %shl.i97.i = shl i32 %39, 2
  %conv.i98.i = sext i32 %shl.i97.i to i64
  %add.i99.i = add i64 %32, %conv.i98.i
  %sub.i100.i = sub i32 %36, %39
  %shl10.i.i = shl i32 %sub.i100.i, 2
  tail call void @nv50_dma_push(ptr noundef %chan, i64 noundef %add.i99.i, i32 noundef %shl10.i.i) #2
  br label %if.end43.i105.i

do.body11.i.i:                                    ; preds = %if.end.i95.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %43 = ptrtoint ptr %push12.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %push12.i.i, align 8
  %call.i.i = tail call i32 @nouveau_bo_rd32(ptr noundef %44, i32 noundef 0) #2
  %45 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i80.i, align 8
  %tobool13.not.i.i = icmp eq ptr %46, null
  br i1 %tobool13.not.i.i, label %if.else29.i.i, label %do.body17.i.i, !prof !9

do.body17.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur.i, align 8
  %shl21.i.i = shl i32 %48, 2
  %49 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %addr.i.i, align 8
  %51 = trunc i64 %50 to i32
  %conv26.i.i = add i32 %shl21.i.i, %51
  %52 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i80.i, align 8
  %54 = ptrtoint ptr %user_put.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %user_put.i.i, align 8
  %add.ptr.i102.i = getelementptr i8, ptr %53, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %conv26.i.i) #2, !srcloc !13
  br label %if.end43.i105.i

if.else29.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %56 = ptrtoint ptr %user_put.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %user_put.i.i, align 8
  %conv31.i.i = zext i32 %57 to i64
  %58 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cur.i, align 8
  %shl34.i.i = shl i32 %59, 2
  %60 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %addr.i.i, align 8
  %62 = trunc i64 %61 to i32
  %conv39.i104.i = add i32 %shl34.i.i, %62
  tail call void @nvif_object_wr(ptr noundef %user.i79.i, i32 noundef 4, i64 noundef %conv31.i.i, i32 noundef %conv39.i104.i) #2
  br label %if.end43.i105.i

if.end43.i105.i:                                  ; preds = %if.else29.i.i, %do.body17.i.i, %if.then3.i.i
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cur.i, align 8
  %65 = ptrtoint ptr %put.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %put.i.i, align 4
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end43.i105.i, %if.end28.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.i.preheader
  %prev_get.2.i = phi i64 [ %prev_get.3186.i, %do.cond.i.do.body.i_crit_edge ], [ %prev_get.1170.i, %do.body.i.preheader ]
  %cnt.2.i = phi i32 [ %inc.i136187.i, %do.cond.i.do.body.i_crit_edge ], [ %inc.i87171.i, %do.body.i.preheader ]
  %66 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i80.i, align 8
  %tobool.not.i108.i = icmp eq ptr %67, null
  %68 = ptrtoint ptr %user_get6.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %user_get6.i.i, align 4
  br i1 %tobool.not.i108.i, label %if.else.i114.i, label %if.then.i111.i, !prof !9

if.then.i111.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i110.i = getelementptr i8, ptr %67, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  br label %if.end.i119.i

if.else.i114.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i112.i = zext i32 %69 to i64
  %call7.i113.i = tail call i32 @nvif_object_rd(ptr noundef %user.i79.i, i32 noundef 4, i64 noundef %conv.i112.i) #2
  br label %if.end.i119.i

if.end.i119.i:                                    ; preds = %if.else.i114.i, %if.then.i111.i
  %_data.0.i115.i = phi i32 [ %70, %if.then.i111.i ], [ %call7.i113.i, %if.else.i114.i ]
  %conv9.i116.i = zext i32 %_data.0.i115.i to i64
  %71 = ptrtoint ptr %user_get_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %user_get_hi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool10.not.i118.i = icmp eq i32 %72, 0
  br i1 %tobool10.not.i118.i, label %if.end.i119.i.if.end40.i134.i_crit_edge, label %if.then11.i121.i

if.end.i119.i.if.end40.i134.i_crit_edge:          ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i134.i

if.then11.i121.i:                                 ; preds = %if.end.i119.i
  %73 = ptrtoint ptr %map.i80.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map.i80.i, align 8
  %tobool18.not.i120.i = icmp eq ptr %74, null
  br i1 %tobool18.not.i120.i, label %if.else33.i126.i, label %if.then25.i123.i, !prof !9

if.then25.i123.i:                                 ; preds = %if.then11.i121.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr30.i122.i = getelementptr i8, ptr %74, i32 %72
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i122.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  br label %if.end37.i131.i

if.else33.i126.i:                                 ; preds = %if.then11.i121.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv35.i124.i = zext i32 %72 to i64
  %call36.i125.i = tail call i32 @nvif_object_rd(ptr noundef %user.i79.i, i32 noundef 4, i64 noundef %conv35.i124.i) #2
  br label %if.end37.i131.i

if.end37.i131.i:                                  ; preds = %if.else33.i126.i, %if.then25.i123.i
  %_data15.0.i127.i = phi i32 [ %75, %if.then25.i123.i ], [ %call36.i125.i, %if.else33.i126.i ]
  %conv39.i128.i = zext i32 %_data15.0.i127.i to i64
  %shl.i129.i = shl nuw i64 %conv39.i128.i, 32
  %or.i130.i = or i64 %shl.i129.i, %conv9.i116.i
  br label %if.end40.i134.i

if.end40.i134.i:                                  ; preds = %if.end37.i131.i, %if.end.i119.i.if.end40.i134.i_crit_edge
  %val.0.i132.i = phi i64 [ %or.i130.i, %if.end37.i131.i ], [ %conv9.i116.i, %if.end.i119.i.if.end40.i134.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i132.i, i64 %prev_get.2.i)
  %cmp.not.i133.i = icmp eq i64 %val.0.i132.i, %prev_get.2.i
  br i1 %cmp.not.i133.i, label %if.end43.i139.i, label %if.end40.i134.i.if.end51.i144.i_crit_edge

if.end40.i134.i.if.end51.i144.i_crit_edge:        ; preds = %if.end40.i134.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i144.i

if.end43.i139.i:                                  ; preds = %if.end40.i134.i
  %inc.i136.i = add i32 %cnt.2.i, 1
  %and.i137.i = and i32 %inc.i136.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137.i)
  %cmp44.i138.i = icmp eq i32 %and.i137.i, 0
  br i1 %cmp44.i138.i, label %if.then46.i141.i, label %if.end43.i139.i.if.end51.i144.i_crit_edge

if.end43.i139.i.if.end51.i144.i_crit_edge:        ; preds = %if.end43.i139.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i144.i

if.then46.i141.i:                                 ; preds = %if.end43.i139.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i136.i)
  %cmp47.i140.i = icmp sgt i32 %inc.i136.i, 100000
  br i1 %cmp47.i140.i, label %if.then46.i141.i.cleanup_crit_edge, label %if.then46.i141.i.if.end51.i144.i_crit_edge

if.then46.i141.i.if.end51.i144.i_crit_edge:       ; preds = %if.then46.i141.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i144.i

if.then46.i141.i.cleanup_crit_edge:               ; preds = %if.then46.i141.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end51.i144.i:                                  ; preds = %if.then46.i141.i.if.end51.i144.i_crit_edge, %if.end43.i139.i.if.end51.i144.i_crit_edge, %if.end40.i134.i.if.end51.i144.i_crit_edge
  %inc.i136187.i = phi i32 [ %inc.i136.i, %if.then46.i141.i.if.end51.i144.i_crit_edge ], [ %inc.i136.i, %if.end43.i139.i.if.end51.i144.i_crit_edge ], [ 1, %if.end40.i134.i.if.end51.i144.i_crit_edge ]
  %prev_get.3186.i = phi i64 [ %prev_get.2.i, %if.then46.i141.i.if.end51.i144.i_crit_edge ], [ %prev_get.2.i, %if.end43.i139.i.if.end51.i144.i_crit_edge ], [ %val.0.i132.i, %if.end40.i134.i.if.end51.i144.i_crit_edge ]
  %77 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %addr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i132.i, i64 %78)
  %cmp52.i143.i = icmp ult i64 %val.0.i132.i, %78
  br i1 %cmp52.i143.i, label %if.end51.i144.i.do.end.i_crit_edge, label %lor.lhs.false.i150.i

if.end51.i144.i.do.end.i_crit_edge:               ; preds = %if.end51.i144.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

lor.lhs.false.i150.i:                             ; preds = %if.end51.i144.i
  %79 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma, align 8
  %shl56.i146.i = shl i32 %80, 2
  %conv57.i147.i = sext i32 %shl56.i146.i to i64
  %add.i148.i = add i64 %78, %conv57.i147.i
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i132.i, i64 %add.i148.i)
  %cmp58.i149.i = icmp ugt i64 %val.0.i132.i, %add.i148.i
  br i1 %cmp58.i149.i, label %lor.lhs.false.i150.i.do.end.i_crit_edge, label %READ_GET.exit157.i

lor.lhs.false.i150.i.do.end.i_crit_edge:          ; preds = %lor.lhs.false.i150.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

READ_GET.exit157.i:                               ; preds = %lor.lhs.false.i150.i
  %sub.i151.i = sub i64 %val.0.i132.i, %78
  %shr.i152.i = lshr i64 %sub.i151.i, 2
  %conv64.i153.i = trunc i64 %shr.i152.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv64.i153.i)
  %cmp30.i = icmp slt i32 %conv64.i153.i, 0
  br i1 %cmp30.i, label %if.then37.i, label %do.cond.i, !prof !9

if.then37.i:                                      ; preds = %READ_GET.exit157.i
  %conv64.i153.i.le294 = trunc i64 %shr.i152.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %conv64.i153.i.le294)
  %cond.i = icmp eq i32 %conv64.i153.i.le294, -22
  br i1 %cond.i, label %if.then37.i.do.end.i_crit_edge, label %cleanup.loopexit279.split.loop.exit

if.then37.i.do.end.i_crit_edge:                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

do.cond.i:                                        ; preds = %READ_GET.exit157.i
  %cmp42.i = icmp eq i32 %conv64.i153.i, 0
  br i1 %cmp42.i, label %do.cond.i.do.body.i_crit_edge, label %do.end.i.loopexit.split.loop.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

do.end.i.loopexit.split.loop.exit:                ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv64.i153.i.le = trunc i64 %shr.i152.i to i32
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.loopexit.split.loop.exit, %if.then37.i.do.end.i_crit_edge, %lor.lhs.false.i150.i.do.end.i_crit_edge, %if.end51.i144.i.do.end.i_crit_edge
  %retval.0.i155198.i = phi i32 [ -22, %if.then37.i.do.end.i_crit_edge ], [ %conv64.i153.i.le, %do.end.i.loopexit.split.loop.exit ], [ -22, %if.end51.i144.i.do.end.i_crit_edge ], [ -22, %lor.lhs.false.i150.i.do.end.i_crit_edge ]
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %cur.i, align 8
  %82 = ptrtoint ptr %put.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %put.i.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %if.end15.i.if.end46.i_crit_edge
  %prev_get.4.i = phi i64 [ %prev_get.1170.i, %if.end15.i.if.end46.i_crit_edge ], [ %prev_get.3186.i, %do.end.i ]
  %cnt.4.i = phi i32 [ %inc.i87171.i, %if.end15.i.if.end46.i_crit_edge ], [ %inc.i136187.i, %do.end.i ]
  %get.0.i = phi i32 [ %conv64.i.i, %if.end15.i.if.end46.i_crit_edge ], [ %retval.0.i155198.i, %do.end.i ]
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cur.i, align 8
  %85 = xor i32 %84, -1
  %sub50.i = add i32 %get.0.i, %85
  %86 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub50.i, ptr %free.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end46.i, %if.then11.i.cleanup.i_crit_edge, %lor.lhs.false.i.i.cleanup.i_crit_edge, %if.end51.i.i.cleanup.i_crit_edge
  %prev_get.5.i = phi i64 [ %prev_get.4.i, %if.end46.i ], [ %prev_get.1170.i, %if.then11.i.cleanup.i_crit_edge ], [ %prev_get.1170.i, %if.end51.i.i.cleanup.i_crit_edge ], [ %prev_get.1170.i, %lor.lhs.false.i.i.cleanup.i_crit_edge ]
  %cnt.5.i = phi i32 [ %cnt.4.i, %if.end46.i ], [ %inc.i87171.i, %if.then11.i.cleanup.i_crit_edge ], [ %inc.i87171.i, %if.end51.i.i.cleanup.i_crit_edge ], [ %inc.i87171.i, %lor.lhs.false.i.i.cleanup.i_crit_edge ]
  %87 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %free.i, align 4
  %cmp.i = icmp slt i32 %88, %size
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %cnt.0259 = phi i32 [ 0, %while.body.lr.ph ], [ %cnt.0.be, %while.cond.backedge.while.body_crit_edge ]
  %prev_get.0258 = phi i64 [ 0, %while.body.lr.ph ], [ %prev_get.0.be, %while.cond.backedge.while.body_crit_edge ]
  %89 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %90, null
  %91 = ptrtoint ptr %user_get6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %user_get6.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !9

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i = getelementptr i8, ptr %90, i32 %92
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i = zext i32 %92 to i64
  %call7.i = tail call i32 @nvif_object_rd(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv.i) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %93, %if.then.i ], [ %call7.i, %if.else.i ]
  %conv9.i = zext i32 %_data.0.i to i64
  %94 = ptrtoint ptr %user_get_hi.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %user_get_hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool10.not.i = icmp eq i32 %95, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then11.i128

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i

if.then11.i128:                                   ; preds = %if.end.i
  %96 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map.i, align 8
  %tobool18.not.i = icmp eq ptr %97, null
  br i1 %tobool18.not.i, label %if.else33.i, label %if.then25.i, !prof !9

if.then25.i:                                      ; preds = %if.then11.i128
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr30.i = getelementptr i8, ptr %97, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  br label %if.end37.i

if.else33.i:                                      ; preds = %if.then11.i128
  call void @__sanitizer_cov_trace_pc() #4
  %conv35.i = zext i32 %95 to i64
  %call36.i = tail call i32 @nvif_object_rd(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv35.i) #2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else33.i, %if.then25.i
  %_data15.0.i = phi i32 [ %98, %if.then25.i ], [ %call36.i, %if.else33.i ]
  %conv39.i = zext i32 %_data15.0.i to i64
  %shl.i = shl nuw i64 %conv39.i, 32
  %or.i = or i64 %shl.i, %conv9.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i, %if.end.i.if.end40.i_crit_edge
  %val.0.i = phi i64 [ %or.i, %if.end37.i ], [ %conv9.i, %if.end.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i, i64 %prev_get.0258)
  %cmp.not.i = icmp eq i64 %val.0.i, %prev_get.0258
  br i1 %cmp.not.i, label %if.end43.i, label %if.end40.i.if.end51.i_crit_edge

if.end40.i.if.end51.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i

if.end43.i:                                       ; preds = %if.end40.i
  %inc.i = add i32 %cnt.0259, 1
  %and.i = and i32 %inc.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp44.i = icmp eq i32 %and.i, 0
  br i1 %cmp44.i, label %if.then46.i, label %if.end43.i.if.end51.i_crit_edge

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i)
  %cmp47.i = icmp sgt i32 %inc.i, 100000
  br i1 %cmp47.i, label %if.then46.i.cleanup_crit_edge, label %if.then46.i.if.end51.i_crit_edge

if.then46.i.if.end51.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i

if.then46.i.cleanup_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end51.i:                                       ; preds = %if.then46.i.if.end51.i_crit_edge, %if.end43.i.if.end51.i_crit_edge, %if.end40.i.if.end51.i_crit_edge
  %inc.i198 = phi i32 [ %inc.i, %if.then46.i.if.end51.i_crit_edge ], [ %inc.i, %if.end43.i.if.end51.i_crit_edge ], [ 1, %if.end40.i.if.end51.i_crit_edge ]
  %prev_get.1197 = phi i64 [ %prev_get.0258, %if.then46.i.if.end51.i_crit_edge ], [ %prev_get.0258, %if.end43.i.if.end51.i_crit_edge ], [ %val.0.i, %if.end40.i.if.end51.i_crit_edge ]
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i, i64 %101)
  %cmp52.i = icmp ult i64 %val.0.i, %101
  br i1 %cmp52.i, label %if.end51.i.while.cond.backedge_crit_edge, label %lor.lhs.false.i

if.end51.i.while.cond.backedge_crit_edge:         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.backedge

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %102 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma, align 8
  %shl56.i = shl i32 %103, 2
  %conv57.i = sext i32 %shl56.i to i64
  %add.i130 = add i64 %101, %conv57.i
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i, i64 %add.i130)
  %cmp58.i = icmp ugt i64 %val.0.i, %add.i130
  br i1 %cmp58.i, label %lor.lhs.false.i.while.cond.backedge_crit_edge, label %READ_GET.exit

lor.lhs.false.i.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.backedge

READ_GET.exit:                                    ; preds = %lor.lhs.false.i
  %sub.i131 = sub i64 %val.0.i, %101
  %shr.i = lshr i64 %sub.i131, 2
  %conv64.i = trunc i64 %shr.i to i32
  %104 = zext i32 %conv64.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv64.i, label %lor.lhs.false [
    i32 -16, label %cleanup.loopexit318.split.loop.exit345
    i32 -22, label %READ_GET.exit.while.cond.backedge_crit_edge
  ], !prof !20

READ_GET.exit.while.cond.backedge_crit_edge:      ; preds = %READ_GET.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.backedge

lor.lhs.false:                                    ; preds = %READ_GET.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv64.i)
  %cmp15 = icmp slt i32 %conv64.i, 32
  br i1 %cmp15, label %lor.lhs.false.while.cond.backedge_crit_edge, label %if.end17

lor.lhs.false.while.cond.backedge_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end88, %lor.lhs.false.while.cond.backedge_crit_edge, %READ_GET.exit.while.cond.backedge_crit_edge, %lor.lhs.false.i.while.cond.backedge_crit_edge, %if.end51.i.while.cond.backedge_crit_edge
  %prev_get.0.be = phi i64 [ %prev_get.4, %if.end88 ], [ %prev_get.1197, %if.end51.i.while.cond.backedge_crit_edge ], [ %prev_get.1197, %lor.lhs.false.i.while.cond.backedge_crit_edge ], [ %prev_get.1197, %READ_GET.exit.while.cond.backedge_crit_edge ], [ %prev_get.1197, %lor.lhs.false.while.cond.backedge_crit_edge ]
  %cnt.0.be = phi i32 [ %cnt.4, %if.end88 ], [ %inc.i198, %if.end51.i.while.cond.backedge_crit_edge ], [ %inc.i198, %lor.lhs.false.i.while.cond.backedge_crit_edge ], [ %inc.i198, %READ_GET.exit.while.cond.backedge_crit_edge ], [ %inc.i198, %lor.lhs.false.while.cond.backedge_crit_edge ]
  %105 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %free, align 4
  %cmp = icmp slt i32 %106, %size
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

if.end17:                                         ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %conv64.i)
  %cmp19.not = icmp slt i32 %108, %conv64.i
  br i1 %cmp19.not, label %if.end17.if.end88_crit_edge, label %if.then20

if.end17.if.end88_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end88

if.then20:                                        ; preds = %if.end17
  %109 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma, align 8
  %sub = sub i32 %110, %108
  %111 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub, ptr %free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp28.not = icmp slt i32 %sub, %size
  br i1 %cmp28.not, label %if.end30, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end30:                                         ; preds = %if.then20
  %112 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %addr.i, align 8
  %114 = trunc i64 %113 to i32
  %conv = or i32 %114, 536870912
  %115 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %push, align 8
  %inc.i134 = add i32 %108, 1
  %117 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %inc.i134, ptr %cur, align 8
  tail call void @nouveau_bo_wr32(ptr noundef %116, i32 noundef %108, i32 noundef %conv) #2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end30
  %prev_get.2 = phi i64 [ %prev_get.1197, %if.end30 ], [ %prev_get.3215, %do.cond.do.body_crit_edge ]
  %cnt.2 = phi i32 [ %inc.i198, %if.end30 ], [ %inc.i165216, %do.cond.do.body_crit_edge ]
  %118 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %map.i, align 8
  %tobool.not.i137 = icmp eq ptr %119, null
  %120 = ptrtoint ptr %user_get6.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %user_get6.i, align 4
  br i1 %tobool.not.i137, label %if.else.i143, label %if.then.i140, !prof !9

if.then.i140:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i139 = getelementptr i8, ptr %119, i32 %121
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  br label %if.end.i148

if.else.i143:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i141 = zext i32 %121 to i64
  %call7.i142 = tail call i32 @nvif_object_rd(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv.i141) #2
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.else.i143, %if.then.i140
  %_data.0.i144 = phi i32 [ %122, %if.then.i140 ], [ %call7.i142, %if.else.i143 ]
  %conv9.i145 = zext i32 %_data.0.i144 to i64
  %123 = ptrtoint ptr %user_get_hi.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %user_get_hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool10.not.i147 = icmp eq i32 %124, 0
  br i1 %tobool10.not.i147, label %if.end.i148.if.end40.i163_crit_edge, label %if.then11.i150

if.end.i148.if.end40.i163_crit_edge:              ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40.i163

if.then11.i150:                                   ; preds = %if.end.i148
  %125 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %map.i, align 8
  %tobool18.not.i149 = icmp eq ptr %126, null
  br i1 %tobool18.not.i149, label %if.else33.i155, label %if.then25.i152, !prof !9

if.then25.i152:                                   ; preds = %if.then11.i150
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr30.i151 = getelementptr i8, ptr %126, i32 %124
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i151) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  br label %if.end37.i160

if.else33.i155:                                   ; preds = %if.then11.i150
  call void @__sanitizer_cov_trace_pc() #4
  %conv35.i153 = zext i32 %124 to i64
  %call36.i154 = tail call i32 @nvif_object_rd(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv35.i153) #2
  br label %if.end37.i160

if.end37.i160:                                    ; preds = %if.else33.i155, %if.then25.i152
  %_data15.0.i156 = phi i32 [ %127, %if.then25.i152 ], [ %call36.i154, %if.else33.i155 ]
  %conv39.i157 = zext i32 %_data15.0.i156 to i64
  %shl.i158 = shl nuw i64 %conv39.i157, 32
  %or.i159 = or i64 %shl.i158, %conv9.i145
  br label %if.end40.i163

if.end40.i163:                                    ; preds = %if.end37.i160, %if.end.i148.if.end40.i163_crit_edge
  %val.0.i161 = phi i64 [ %or.i159, %if.end37.i160 ], [ %conv9.i145, %if.end.i148.if.end40.i163_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i161, i64 %prev_get.2)
  %cmp.not.i162 = icmp eq i64 %val.0.i161, %prev_get.2
  br i1 %cmp.not.i162, label %if.end43.i168, label %if.end40.i163.if.end51.i173_crit_edge

if.end40.i163.if.end51.i173_crit_edge:            ; preds = %if.end40.i163
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i173

if.end43.i168:                                    ; preds = %if.end40.i163
  %inc.i165 = add i32 %cnt.2, 1
  %and.i166 = and i32 %inc.i165, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %cmp44.i167 = icmp eq i32 %and.i166, 0
  br i1 %cmp44.i167, label %if.then46.i170, label %if.end43.i168.if.end51.i173_crit_edge

if.end43.i168.if.end51.i173_crit_edge:            ; preds = %if.end43.i168
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i173

if.then46.i170:                                   ; preds = %if.end43.i168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i165)
  %cmp47.i169 = icmp sgt i32 %inc.i165, 100000
  br i1 %cmp47.i169, label %if.then46.i170.cleanup_crit_edge, label %if.then46.i170.if.end51.i173_crit_edge

if.then46.i170.if.end51.i173_crit_edge:           ; preds = %if.then46.i170
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51.i173

if.then46.i170.cleanup_crit_edge:                 ; preds = %if.then46.i170
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end51.i173:                                    ; preds = %if.then46.i170.if.end51.i173_crit_edge, %if.end43.i168.if.end51.i173_crit_edge, %if.end40.i163.if.end51.i173_crit_edge
  %inc.i165216 = phi i32 [ %inc.i165, %if.then46.i170.if.end51.i173_crit_edge ], [ %inc.i165, %if.end43.i168.if.end51.i173_crit_edge ], [ 1, %if.end40.i163.if.end51.i173_crit_edge ]
  %prev_get.3215 = phi i64 [ %prev_get.2, %if.then46.i170.if.end51.i173_crit_edge ], [ %prev_get.2, %if.end43.i168.if.end51.i173_crit_edge ], [ %val.0.i161, %if.end40.i163.if.end51.i173_crit_edge ]
  %129 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i161, i64 %130)
  %cmp52.i172 = icmp ult i64 %val.0.i161, %130
  br i1 %cmp52.i172, label %if.end51.i173.do.cond_crit_edge, label %lor.lhs.false.i179

if.end51.i173.do.cond_crit_edge:                  ; preds = %if.end51.i173
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.cond

lor.lhs.false.i179:                               ; preds = %if.end51.i173
  %131 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma, align 8
  %shl56.i175 = shl i32 %132, 2
  %conv57.i176 = sext i32 %shl56.i175 to i64
  %add.i177 = add i64 %130, %conv57.i176
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0.i161, i64 %add.i177)
  %cmp58.i178 = icmp ugt i64 %val.0.i161, %add.i177
  br i1 %cmp58.i178, label %lor.lhs.false.i179.do.cond_crit_edge, label %READ_GET.exit186

lor.lhs.false.i179.do.cond_crit_edge:             ; preds = %lor.lhs.false.i179
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.cond

READ_GET.exit186:                                 ; preds = %lor.lhs.false.i179
  %sub.i180 = sub i64 %val.0.i161, %130
  %shr.i181 = lshr i64 %sub.i180, 2
  %conv64.i182 = trunc i64 %shr.i181 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %conv64.i182)
  %cmp32 = icmp eq i32 %conv64.i182, -16
  br i1 %cmp32, label %READ_GET.exit186.cleanup_crit_edge, label %READ_GET.exit186.do.cond_crit_edge, !prof !9

READ_GET.exit186.do.cond_crit_edge:               ; preds = %READ_GET.exit186
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.cond

READ_GET.exit186.cleanup_crit_edge:               ; preds = %READ_GET.exit186
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.cond:                                          ; preds = %READ_GET.exit186.do.cond_crit_edge, %lor.lhs.false.i179.do.cond_crit_edge, %if.end51.i173.do.cond_crit_edge
  %retval.0.i184224 = phi i32 [ %conv64.i182, %READ_GET.exit186.do.cond_crit_edge ], [ -22, %lor.lhs.false.i179.do.cond_crit_edge ], [ -22, %if.end51.i173.do.cond_crit_edge ]
  %cmp52 = icmp slt i32 %retval.0.i184224, 33
  br i1 %cmp52, label %do.cond.do.body_crit_edge, label %do.body55

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.body55:                                        ; preds = %do.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %133 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %push, align 8
  %call59 = tail call i32 @nouveau_bo_rd32(ptr noundef %134, i32 noundef 0) #2
  %135 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map.i, align 8
  %tobool60.not = icmp eq ptr %136, null
  br i1 %tobool60.not, label %if.else, label %do.body68, !prof !9

do.body68:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %137 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %addr.i, align 8
  %139 = trunc i64 %138 to i32
  %conv73 = add i32 %139, 128
  %140 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map.i, align 8
  %142 = ptrtoint ptr %user_put to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %user_put, align 8
  %add.ptr = getelementptr i8, ptr %141, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv73) #2, !srcloc !13
  br label %if.end82

if.else:                                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #4
  %144 = ptrtoint ptr %user_put to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %user_put, align 8
  %conv77 = zext i32 %145 to i64
  %146 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %addr.i, align 8
  %148 = trunc i64 %147 to i32
  %conv81 = add i32 %148, 128
  tail call void @nvif_object_wr(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv77, i32 noundef %conv81) #2
  br label %if.end82

if.end82:                                         ; preds = %if.else, %do.body68
  %149 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 32, ptr %put, align 4
  %150 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 32, ptr %cur, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.end82, %if.end17.if.end88_crit_edge
  %prev_get.4 = phi i64 [ %prev_get.1197, %if.end17.if.end88_crit_edge ], [ %prev_get.3215, %if.end82 ]
  %cnt.4 = phi i32 [ %inc.i198, %if.end17.if.end88_crit_edge ], [ %inc.i165216, %if.end82 ]
  %get.0 = phi i32 [ %conv64.i, %if.end17.if.end88_crit_edge ], [ %retval.0.i184224, %if.end82 ]
  %151 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cur, align 8
  %153 = xor i32 %152, -1
  %sub92 = add i32 %get.0, %153
  %154 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub92, ptr %free, align 4
  br label %while.cond.backedge

cleanup.loopexit279.split.loop.exit:              ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv64.i153.i.le294.le = trunc i64 %shr.i152.i to i32
  br label %cleanup

cleanup.loopexit279.split.loop.exit296:           ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv64.i.i.le = trunc i64 %shr.i.i to i32
  br label %cleanup

cleanup.loopexit318.split.loop.exit345:           ; preds = %READ_GET.exit
  call void @__sanitizer_cov_trace_pc() #4
  %conv64.i.le = trunc i64 %shr.i to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit318.split.loop.exit345, %cleanup.loopexit279.split.loop.exit296, %cleanup.loopexit279.split.loop.exit, %READ_GET.exit186.cleanup_crit_edge, %if.then46.i170.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %if.then46.i.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.then46.i141.i.cleanup_crit_edge, %if.then18.i.cleanup_crit_edge, %if.then46.i.i.cleanup_crit_edge, %nv50_dma_push_wait.exit.i.cleanup_crit_edge, %if.then12.i.i.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nv50_dma_push_wait.exit.i.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %conv64.i153.i.le294.le, %cleanup.loopexit279.split.loop.exit ], [ %conv64.i.i.le, %cleanup.loopexit279.split.loop.exit296 ], [ -16, %READ_GET.exit186.cleanup_crit_edge ], [ -16, %if.then46.i170.cleanup_crit_edge ], [ %conv64.i.le, %cleanup.loopexit318.split.loop.exit345 ], [ -16, %if.then46.i.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ -16, %if.then46.i141.i.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ], [ 0, %if.then18.i.cleanup_crit_edge ], [ -16, %if.then46.i.i.cleanup_crit_edge ], [ -16, %if.then12.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2157149662, i64 2157150163, i64 2157149699, i64 2157149755, i64 2157149789, i64 2157149813, i64 2157149854, i64 2157149875, i64 2157149903, i64 2157149937}
!11 = !{i64 2157151133}
!12 = !{i64 2157152080}
!13 = !{i64 5392522}
!14 = !{i64 5392940}
!15 = !{i64 2157153256}
!16 = !{i64 2157147577}
!17 = !{i64 2157148732}
!18 = !{i64 2157144896}
!19 = !{i64 2157145987}
!20 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!21 = !{i64 2157154536}
!22 = !{i64 2157155611}
