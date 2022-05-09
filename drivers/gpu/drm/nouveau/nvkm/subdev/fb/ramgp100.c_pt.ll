; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.135, i32, i32, i32, i32, i32, i32, %union.anon.139, i32, i32, [11 x i32], %union.anon.143 }>
%union.anon.135 = type { %struct.anon.138 }
%struct.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32, i8 }
%union.anon.143 = type <{ %struct.anon.145, [12 x i8] }>
%struct.anon.145 = type { i48 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.146, %struct.anon.147, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.146 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.147 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gp100_ram = internal constant { %struct.nvkm_ram_func, [56 x i8] } { %struct.nvkm_ram_func { i64 68719476736, ptr @gm107_ram_probe_fbp, ptr @gm200_ram_probe_fbp_amount, ptr @gp100_ram_probe_fbpa, ptr null, ptr @gp100_ram_init, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"gp100_ram\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 81, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gp100_ram], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_ram to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_ram_new(ptr noundef %fb, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 672) #7
  %1 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pram, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @gf100_ram_ctor(ptr noundef nonnull @gp100_ram, ptr noundef %fb, ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_ram_probe_fbp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_ram_probe_fbp_amount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp100_ram_probe_fbpa(ptr nocapture noundef readonly %device, i32 noundef %fbpa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri, align 4
  %mul = shl i32 %fbpa, 14
  %add = add i32 %mul, 9437708
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp100_ram_init(ptr nocapture noundef readonly %ram) #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %snr = alloca i8, align 1
  %ssz = alloca i8, align 1
  %init = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %subdev1 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ver, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #4
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %hdr, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %cnt, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %len, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr) #4
  %10 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %snr, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz) #4
  %11 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %ssz, align 1, !annotation !13
  %call = call i32 @nvbios_rammapTe(ptr noundef %5, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %13)
  %cmp = icmp ult i8 %13, 21
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add = add i32 %call, 20
  %call5 = call zeroext i8 @nvbios_rd08(ptr noundef %5, i32 noundef %add) #4
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call5, ptr %cnt, align 1
  %add6 = add i32 %call, 16
  %call7 = call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %add6) #4
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %if.end.if.end49_crit_edge, label %if.then9

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then9:                                         ; preds = %if.end
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 10094172
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %and = and i32 %19, 240
  %20 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp12128.not = icmp eq i8 %21, 0
  br i1 %cmp12128.not, label %if.then9.for.end_crit_edge, label %for.body.lr.ph

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then9
  %shr = lshr exact i32 %and, 4
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %outp = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %or28 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %head = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %22 = getelementptr inbounds i8, ptr %init, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %data.0131 = phi i32 [ %call7, %for.body.lr.ph ], [ %add32, %for.inc.for.body_crit_edge ]
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0129, i32 %shr)
  %cmp14.not = icmp eq i32 %i.0129, %shr
  br i1 %cmp14.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %24, i32 10094172
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  call void @arm_heavy_mb() #4
  %and22 = and i32 %25, -241
  %shl = shl i32 %i.0129, 4
  %or = or i32 %and22, %shl
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %27, i32 10094172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or) #4, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #4
  %28 = call ptr @memset(ptr %22, i32 255, i32 40)
  %29 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %subdev1, ptr %init, align 4
  %call27 = call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %data.0131) #4
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call27, ptr %offset, align 4
  %31 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %outp, align 4
  %32 = ptrtoint ptr %or28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %or28, align 4
  %33 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %link, align 4
  %34 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %head, align 4
  %35 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %execute, align 4
  %36 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %call30 = call i32 @nvbios_exec(ptr noundef nonnull %init) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0129, 1
  %add32 = add i32 %data.0131, 4
  %37 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cnt, align 1
  %conv11 = zext i8 %38 to i32
  %cmp12 = icmp ult i32 %inc, %conv11
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then9.for.end_crit_edge
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %40, i32 10094172
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #4, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  call void @arm_heavy_mb() #4
  %and44 = and i32 %41, -241
  %or45 = or i32 %and44, %and
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %43, i32 10094172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %or45) #4, !srcloc !17
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.end.if.end49_crit_edge
  %pri54 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %44 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri54, align 4
  %add.ptr55 = getelementptr i8, ptr %45, i32 10093956
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #4, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @arm_heavy_mb() #4
  %and61 = and i32 %46, -285212673
  %47 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri54, align 4
  %add.ptr64 = getelementptr i8, ptr %48, i32 10093956
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %and61) #4, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @arm_heavy_mb() #4
  %49 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri54, align 4
  %add.ptr70 = getelementptr i8, ptr %50, i32 1109184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 -1) #4, !srcloc !17
  %51 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri54, align 4
  %add.ptr76 = getelementptr i8, ptr %52, i32 10092896
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #4, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  call void @arm_heavy_mb() #4
  %or83 = or i32 %53, 16
  %54 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri54, align 4
  %add.ptr85 = getelementptr i8, ptr %55, i32 10092896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %or83) #4, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapTe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gp100_ram, !1, !"gp100_ram", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgp100.c", i32 81, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5395615}
!12 = !{i64 2156259961}
!13 = !{!"auto-init"}
!14 = !{i64 2156253269}
!15 = !{i64 2156254035}
!16 = !{i64 2156254429}
!17 = !{i64 5395197}
!18 = !{i64 2156256072}
!19 = !{i64 2156256462}
!20 = !{i64 2156257329}
!21 = !{i64 2156257731}
!22 = !{i64 2156258176}
!23 = !{i64 2156259017}
!24 = !{i64 2156259419}
