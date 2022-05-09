; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.140, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
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
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.141, i8 }
%union.anon.141 = type { %struct.anon.145 }
%struct.anon.145 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }

@nv50_devinit_pll_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to retrieve pll data, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_devinit_pll_set\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_devinit_pll_set._entry_ptr = internal global ptr @nv50_devinit_pll_set._entry, section ".printk_index", align 4
@nv50_devinit_pll_set._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed pll calculation\0A\00", [36 x i8] zeroinitializer }, align 32
@nv50_devinit_pll_set._entry_ptr.7 = internal global ptr @nv50_devinit_pll_set._entry.5, section ".printk_index", align 4
@nv50_devinit_preinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 115, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: adaptor not initialised\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_devinit_preinit\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nv50_devinit_preinit._entry_ptr = internal global ptr @nv50_devinit_preinit._entry, section ".printk_index", align 4
@nv50_devinit = internal constant { %struct.nvkm_devinit_func, [32 x i8] } { %struct.nvkm_devinit_func { ptr null, ptr @nv50_devinit_preinit, ptr @nv50_devinit_init, ptr @nv04_devinit_post, ptr null, ptr null, ptr @nv50_devinit_pll_set, ptr @nv50_devinit_disable }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 128, i64 129]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 46, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 52, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 115, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"nv50_devinit\00", align 1
@___asan_gen_.48 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 165, i32 1 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nv50_devinit_pll_set._entry, ptr @nv50_devinit_pll_set._entry.5, ptr @nv50_devinit_pll_set._entry_ptr, ptr @nv50_devinit_pll_set._entry_ptr.7, ptr @nv50_devinit_preinit._entry, ptr @nv50_devinit_preinit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nv50_devinit], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_devinit_pll_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_devinit_pll_set._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_devinit_preinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_devinit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_pll_set(ptr noundef %init, i32 noundef %type, i32 noundef %freq) #0 align 64 {
entry:
  %info = alloca %struct.nvbios_pll, align 4
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #6
  %4 = call ptr @memset(ptr %info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #6
  %5 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %N1, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #6
  %6 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %M1, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #6
  %7 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %N2, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #6
  %8 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %M2, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #6
  %9 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %P, align 4, !annotation !29
  %call = call i32 @nvbios_pll_parse(ptr noundef %3, i32 noundef %type, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %subdev1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1
  %call10 = call i32 @nv04_pll_calc(ptr noundef %subdev1, ptr noundef nonnull %info, i32 noundef %freq, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %P) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body13, label %if.end28

do.body13:                                        ; preds = %if.end9
  %debug15 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16.not = icmp eq i32 %17, 0
  br i1 %cmp16.not, label %do.body13.cleanup_crit_edge, label %do.end20

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device2, align 4
  %dev22 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 8
  %name23 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %name23) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %sw.default [
    i32 128, label %if.end28.do.body30_crit_edge
    i32 129, label %if.end28.do.body30_crit_edge166
    i32 4, label %sw.bb67
  ]

if.end28.do.body30_crit_edge166:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.end28.do.body30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body30:                                        ; preds = %if.end28.do.body30_crit_edge, %if.end28.do.body30_crit_edge166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @arm_heavy_mb() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %reg = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268437009) #6, !srcloc !31
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %add34 = add i32 %30, 4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %32, i32 %add34
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  call void @arm_heavy_mb() #6
  %and = and i32 %33, -16711936
  %34 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %M1, align 4
  %shl = shl i32 %35, 16
  %36 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %N1, align 4
  %or = or i32 %37, %and
  %or41 = or i32 %or, %shl
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %or41) #6, !srcloc !31
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg, align 4
  %add48 = add i32 %41, 8
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %43, i32 %add48
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @arm_heavy_mb() #6
  %and58 = and i32 %44, -2147418368
  %45 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %P, align 4
  %shl59 = shl i32 %46, 28
  %47 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %M2, align 4
  %shl60 = shl i32 %48, 16
  %49 = ptrtoint ptr %N2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %N2, align 4
  %or61 = or i32 %shl59, %and58
  %or62 = or i32 %or61, %shl60
  %or63 = or i32 %or62, %50
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr65 = getelementptr i8, ptr %52, i32 %add48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %or63) #6, !srcloc !31
  br label %cleanup

sw.bb67:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %reg70 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %53 = ptrtoint ptr %reg70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg70, align 4
  %pri74 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri74, align 4
  %add.ptr75 = getelementptr i8, ptr %56, i32 %54
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %and81 = and i32 %57, -33488897
  %58 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %P, align 4
  %shl82 = shl i32 %59, 22
  %bias_p = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 5
  %60 = ptrtoint ptr %bias_p to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bias_p, align 2
  %conv = zext i8 %61 to i32
  %shl83 = shl nuw nsw i32 %conv, 19
  %shl85 = shl i32 %59, 16
  %or84 = or i32 %shl82, %and81
  %or86 = or i32 %or84, %shl85
  %or87 = or i32 %or86, %shl83
  %62 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri74, align 4
  %add.ptr89 = getelementptr i8, ptr %63, i32 %54
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %or87) #6, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %N1, align 4
  %shl94 = shl i32 %65, 8
  %66 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %M1, align 4
  %or95 = or i32 %shl94, %67
  %68 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri74, align 4
  %70 = ptrtoint ptr %reg70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg70, align 4
  %add98 = add i32 %71, 4
  %add.ptr99 = getelementptr i8, ptr %69, i32 %add98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %or95) #6, !srcloc !31
  br label %cleanup

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %reg102 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %reg102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg102, align 4
  %pri106 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %74 = ptrtoint ptr %pri106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri106, align 4
  %add.ptr107 = getelementptr i8, ptr %75, i32 %73
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @arm_heavy_mb() #6
  %and113 = and i32 %76, -458753
  %77 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %P, align 4
  %shl114 = shl i32 %78, 16
  %or115 = or i32 %shl114, %and113
  %79 = ptrtoint ptr %pri106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri106, align 4
  %add.ptr117 = getelementptr i8, ptr %80, i32 %73
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %or115) #6, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %N1, align 4
  %shl122 = shl i32 %82, 8
  %83 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %M1, align 4
  %or123 = or i32 %shl122, %84
  %85 = ptrtoint ptr %pri106 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri106, align 4
  %87 = ptrtoint ptr %reg102 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg102, align 4
  %add126 = add i32 %88, 4
  %add.ptr127 = getelementptr i8, ptr %86, i32 %add126
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %or123) #6, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb67, %do.body30, %do.end20, %do.body13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ -22, %do.end20 ], [ -22, %do.body13.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb67 ], [ 0, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_devinit_preinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %post = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 2
  %2 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %post, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then:                                          ; preds = %entry
  %call = tail call i64 @nvkm_devinit_disable(ptr noundef %base) #6
  %disp = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end23.sink.split_crit_edge, label %if.end6

if.then.if.end23.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.sink.split

if.end6:                                          ; preds = %if.then
  %6 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %post, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool8.not = icmp eq i8 %.pr, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end23_crit_edge

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then9:                                         ; preds = %if.end6
  %call10 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.then9.if.end23_crit_edge

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then9
  %call12 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 26) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12)
  %tobool13.not = icmp eq i8 %call12, 0
  br i1 %tobool13.not, label %do.body, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body:                                          ; preds = %land.lhs.true
  %debug = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end, label %do.body.if.end23.sink.split_crit_edge

do.body.if.end23.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %do.end, %do.body.if.end23.sink.split_crit_edge, %if.then.if.end23.sink.split_crit_edge
  %13 = ptrtoint ptr %post to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %post, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge, %if.then9.if.end23_crit_edge, %if.end6.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_devinit_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_devinit_init(ptr noundef %base) #0 align 64 {
entry:
  %info = alloca %struct.nvbios_outp, align 2
  %outp = alloca %struct.dcb_output, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %init10 = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev2 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1
  %device3 = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %bios4 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios4, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %info) #6
  %4 = getelementptr inbounds %struct.nvbios_outp, ptr %info, i32 0, i32 2
  %5 = call ptr @memset(ptr %info, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %outp) #6
  %6 = call ptr @memset(ptr %outp, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #6
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ver, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #6
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %hdr, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #6
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %cnt, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %len, align 1, !annotation !29
  %post = getelementptr inbounds %struct.nvkm_devinit, ptr %base, i32 0, i32 2
  %11 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %post, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not27 = icmp eq i8 %12, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %hasht = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 1
  %hashm = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 2
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 1
  %outp13 = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 2
  %or = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 3
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 4
  %head = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 5
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 6
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init10, i32 0, i32 7
  %or15 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 9
  %13 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 13
  %14 = getelementptr inbounds i8, ptr %init10, i32 24
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.028 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end.land.rhs_crit_edge ]
  %conv = trunc i32 %i.028 to i8
  %call = call zeroext i16 @dcb_outp_parse(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %outp) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool7.not = icmp eq i16 %call, 0
  br i1 %tobool7.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %15 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hasht, align 4
  %17 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hashm, align 2
  %call8 = call zeroext i16 @nvbios_outp_match(ptr noundef %3, i16 noundef zeroext %16, i16 noundef zeroext %18, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8)
  %tobool9.not = icmp eq i16 %call8, 0
  br i1 %tobool9.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init10) #6
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %14, align 4, !annotation !29
  %20 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %subdev2, ptr %init10, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 2
  %conv12 = zext i16 %22 to i32
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv12, ptr %offset, align 4
  %24 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %head, align 4
  %25 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %execute, align 4
  %26 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %27 = ptrtoint ptr %outp13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %outp, ptr %outp13, align 4
  %28 = ptrtoint ptr %or15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %or15, align 1
  %30 = call i8 @llvm.cttz.i8(i8 %29, i1 true), !range !44
  %31 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %iszero = icmp eq i8 %29, 0
  %sub = select i1 %iszero, i32 -1, i32 %31
  %32 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %or, align 4
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp = icmp eq i32 %34, 2
  %conv19 = zext i1 %cmp to i32
  %35 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv19, ptr %link, align 4
  %call22 = call i32 @nvbios_exec(ptr noundef nonnull %init10) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init10) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %inc = add i32 %i.028, 1
  %36 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %post, align 4, !range !43
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %outp) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %info) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_outp_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %pinit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pinit, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_devinit_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_devinit_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pinit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_devinit_new_.exit_crit_edge, label %if.end.i

entry.nv50_devinit_new_.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv50_devinit_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %pinit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pinit, align 4
  tail call void @nvkm_devinit_ctor(ptr noundef nonnull @nv50_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i.i) #6
  br label %nv50_devinit_new_.exit

nv50_devinit_new_.exit:                           ; preds = %if.end.i, %entry.nv50_devinit_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.nv50_devinit_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nv50_devinit_disable(ptr nocapture noundef readonly %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvkm_subdev_disable(ptr noundef %1, i32 noundef 36, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c", i32 46, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_devinit_pll_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_devinit_pll_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c", i32 52, i32 3}
!10 = !{ptr @nv50_devinit_pll_set._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_devinit_pll_set._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c", i32 115, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nv50_devinit_preinit._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @nv50_devinit_preinit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nv50_devinit, !19, !"nv50_devinit", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv50.c", i32 165, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 2156237004}
!31 = !{i64 5388602}
!32 = !{i64 5389020}
!33 = !{i64 2156237854}
!34 = !{i64 2156238266}
!35 = !{i64 2156239177}
!36 = !{i64 2156239637}
!37 = !{i64 2156240588}
!38 = !{i64 2156241080}
!39 = !{i64 2156241586}
!40 = !{i64 2156242434}
!41 = !{i64 2156242834}
!42 = !{i64 2156243294}
!43 = !{i8 0, i8 2}
!44 = !{i8 0, i8 9}
!45 = !{i64 2156243754}
