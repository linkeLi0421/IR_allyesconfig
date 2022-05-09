; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_source = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.priv = type { ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PRAMIN\00", [25 x i8] zeroinitializer }, align 32
@nvbios_ramin = dso_local constant { %struct.nvbios_source, [40 x i8] } { %struct.nvbios_source { ptr @.str, ptr @pramin_init, ptr @pramin_fini, ptr @pramin_read, ptr null, i8 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@pramin_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ... display disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pramin_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pramin_init._entry_ptr = internal global ptr @pramin_init._entry, section ".printk_index", align 4
@pramin_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: ... not enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@pramin_init._entry_ptr.8 = internal global ptr @pramin_init._entry.6, section ".printk_index", align 4
@pramin_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: ... not in vram\0A\00", [43 x i8] zeroinitializer }, align 32
@pramin_init._entry_ptr.11 = internal global ptr @pramin_init._entry.9, section ".printk_index", align 4
@pramin_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 106, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: ... out of memory\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pramin_init._entry_ptr.15 = internal global ptr @pramin_init._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 118, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"nvbios_ramin\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 117, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 76, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 89, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 93, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [58 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 106, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @pramin_init._entry, ptr @pramin_init._entry.12, ptr @pramin_init._entry.6, ptr @pramin_init._entry.9, ptr @pramin_init._entry_ptr, ptr @pramin_init._entry_ptr.11, ptr @pramin_init._entry_ptr.15, ptr @pramin_init._entry_ptr.8, ptr @.str, ptr @nvbios_ramin, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_ramin to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pramin_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pramin_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pramin_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pramin_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pramin_init(ptr noundef %bios, ptr nocapture noundef readnone %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %3)
  %cmp = icmp ult i32 %3, 80
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %3)
  %cmp4 = icmp ugt i32 %3, 367
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %5)
  %cmp6 = icmp eq i32 %5, 368
  %conv = zext i1 %cmp6 to i32
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %3)
  %cmp9 = icmp ugt i32 %3, 271
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 138244
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %if.end26

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %3)
  %cmp15 = icmp ugt i32 %3, 191
  br i1 %cmp15, label %if.then17, label %if.else13.if.end38_crit_edge

if.else13.if.end38_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  %pri19 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %pri19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri19, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 140544
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.then11, %if.then5
  %addr.0.shrunk = phi i32 [ %conv, %if.then5 ], [ %8, %if.then11 ], [ %11, %if.then17 ]
  %12 = and i32 %addr.0.shrunk, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end26.if.end38_crit_edge, label %do.body

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.body:                                          ; preds = %if.end26
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp28 = icmp ugt i32 %14, 3
  br i1 %cmp28, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %name33 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %name33) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end26.if.end38_crit_edge, %if.else13.if.end38_crit_edge
  %19 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %20)
  %cmp40 = icmp ugt i32 %20, 319
  %pri44 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %pri44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri44, align 4
  br i1 %cmp40, label %if.then42, label %if.else49

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr45 = getelementptr i8, ptr %22, i32 6446852
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  br label %if.end56

if.else49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr52 = getelementptr i8, ptr %22, i32 6397700
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  br label %if.end56

if.end56:                                         ; preds = %if.else49, %if.then42
  %addr.1.in = phi i32 [ %23, %if.then42 ], [ %24, %if.else49 ]
  %addr.1 = zext i32 %addr.1.in to i64
  %and57 = and i64 %addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %do.body60, label %if.end77

do.body60:                                        ; preds = %if.end56
  %debug62 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %25 = ptrtoint ptr %debug62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp63 = icmp ugt i32 %26, 3
  br i1 %cmp63, label %do.end68, label %do.body60.cleanup_crit_edge

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end68:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device2, align 4
  %dev70 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev70, align 8
  %name71 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef %name71) #7
  br label %cleanup

if.end77:                                         ; preds = %if.end56
  %and78 = and i64 %addr.1, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and78)
  %cmp79.not = icmp eq i64 %and78, 1
  br i1 %cmp79.not, label %if.end99, label %do.body82

do.body82:                                        ; preds = %if.end77
  %debug84 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %31 = ptrtoint ptr %debug84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp85 = icmp ugt i32 %32, 3
  br i1 %cmp85, label %do.end90, label %do.body82.cleanup_crit_edge

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end90:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device2, align 4
  %dev92 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev92, align 8
  %name93 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.10, ptr noundef %name93) #7
  br label %cleanup

if.end99:                                         ; preds = %if.end77
  %37 = and i64 %addr.1, 4294967040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool101.not = icmp eq i64 %37, 0
  %extract = lshr i32 %addr.1.in, 8
  br i1 %tobool101.not, label %if.then102, label %if.end99.if.end110_crit_edge

if.end99.if.end110_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  %pri104 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %pri104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri104, align 4
  %add.ptr105 = getelementptr i8, ptr %39, i32 5888
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %41 = add i32 %40, 15
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %if.end99.if.end110_crit_edge
  %addr.2.off16 = phi i32 [ %extract, %if.end99.if.end110_crit_edge ], [ %41, %if.then102 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 8) #8
  %tobool112.not = icmp eq ptr %call7.i, null
  br i1 %tobool112.not, label %do.body114, label %if.end131

do.body114:                                       ; preds = %if.end110
  %debug116 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %43 = ptrtoint ptr %debug116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp117.not = icmp eq i32 %44, 0
  br i1 %cmp117.not, label %do.body114.cleanup_crit_edge, label %do.end122

do.body114.cleanup_crit_edge:                     ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end122:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2, align 4
  %dev124 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev124, align 8
  %name125 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef %name125) #7
  br label %cleanup

if.end131:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bios, ptr %call7.i, align 8
  %pri134 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %pri134 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri134, align 4
  %add.ptr135 = getelementptr i8, ptr %51, i32 5888
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %bar0 = getelementptr inbounds %struct.priv, ptr %call7.i, i32 0, i32 1
  %53 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %bar0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %pri134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri134, align 4
  %add.ptr143 = getelementptr i8, ptr %55, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %addr.2.off16) #4, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end122, %do.body114.cleanup_crit_edge, %do.end90, %do.body82.cleanup_crit_edge, %do.end68, %do.body60.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end131 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end ], [ inttoptr (i32 -19 to ptr), %do.body.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end68 ], [ inttoptr (i32 -19 to ptr), %do.body60.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end90 ], [ inttoptr (i32 -19 to ptr), %do.body82.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end122 ], [ inttoptr (i32 -12 to ptr), %do.body114.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pramin_fini(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %bar0 = getelementptr inbounds %struct.priv, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bar0, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #4, !srcloc !42
  tail call void @kfree(ptr noundef nonnull %data) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pramin_read(ptr nocapture noundef readnone %data, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef readonly %bios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %add = add i32 %length, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %add)
  %cmp = icmp ult i32 %add, 1048577
  br i1 %cmp, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp316 = icmp ugt i32 %add, %offset
  br i1 %cmp316, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %data5 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ %offset, %for.body.lr.ph ], [ %add6, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add4 = add i32 %i.017, 7340032
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %5 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data5, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 %i.017
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %arrayidx, align 4
  %add6 = add i32 %i.017, 4
  %cmp3 = icmp ult i32 %add6, %add
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %length, %for.cond.preheader.cleanup_crit_edge ], [ %length, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 118, i32 10}
!2 = !{ptr @nvbios_ramin, !3, !"nvbios_ramin", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 117, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 76, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pramin_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @pramin_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 89, i32 3}
!14 = !{ptr @pramin_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pramin_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 93, i32 3}
!18 = !{ptr @pramin_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pramin_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c", i32 106, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pramin_init._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @pramin_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 5385189}
!35 = !{i64 2156221576}
!36 = !{i64 2156221961}
!37 = !{i64 2156224573}
!38 = !{i64 2156224958}
!39 = !{i64 2156229677}
!40 = !{i64 2156232429}
!41 = !{i64 2156232771}
!42 = !{i64 5384771}
!43 = !{i64 2156221096}
!44 = !{i64 2156220754}
