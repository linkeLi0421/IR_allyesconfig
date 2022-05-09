; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.133, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.133 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.nvkm_therm_clkgate_pack = type { ptr }

@gf100_clkgate_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: { 0x%06x, %d, 0x%08x }\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gf100_clkgate_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_clkgate_init._entry_ptr = internal global ptr @gf100_clkgate_init._entry, section ".printk_index", align 4
@gf100_clkgate_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: \090x%06x = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@gf100_clkgate_init._entry_ptr.7 = internal global ptr @gf100_clkgate_init._entry.5, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 44, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 47, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @gf100_clkgate_init._entry, ptr @gf100_clkgate_init._entry.5, ptr @gf100_clkgate_init._entry_ptr, ptr @gf100_clkgate_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_clkgate_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_clkgate_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_clkgate_init(ptr noundef %therm, ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 1
  %tobool.not81 = icmp eq ptr %p, null
  br i1 %tobool.not81, label %entry.for.end51_crit_edge, label %land.rhs.lr.ph

entry.for.end51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end51

land.rhs.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %debug = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_therm, ptr %therm, i32 0, i32 1, i32 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc49.land.rhs_crit_edge, %land.rhs.lr.ph
  %pack.082 = phi ptr [ %p, %land.rhs.lr.ph ], [ %incdec.ptr50, %for.inc49.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %pack.082 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pack.082, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.rhs.for.end51_crit_edge, label %land.rhs.land.rhs7_crit_edge

land.rhs.land.rhs7_crit_edge:                     ; preds = %land.rhs
  br label %land.rhs7

land.rhs.for.end51_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end51

land.rhs7:                                        ; preds = %for.inc.land.rhs7_crit_edge, %land.rhs.land.rhs7_crit_edge
  %init.078 = phi ptr [ %incdec.ptr, %for.inc.land.rhs7_crit_edge ], [ %3, %land.rhs.land.rhs7_crit_edge ]
  %count = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %init.078, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %land.rhs7.for.inc49_crit_edge, label %for.body10

land.rhs7.for.inc49_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc49

for.body10:                                       ; preds = %land.rhs7
  %6 = ptrtoint ptr %init.078 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init.078, align 4
  %mul = shl nuw nsw i32 %conv, 3
  %add = add i32 %7, %mul
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp ugt i32 %9, 4
  br i1 %cmp, label %do.end, label %for.body10.if.end_crit_edge

for.body10.if.end_crit_edge:                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device1, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %init.078, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %conv, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body10.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp2474 = icmp ult i32 %7, %add
  br i1 %cmp2474, label %do.body26.lr.ph, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body26.lr.ph:                                  ; preds = %if.end
  %data40 = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %init.078, i32 0, i32 2
  br label %do.body26

do.body26:                                        ; preds = %if.end41.do.body26_crit_edge, %do.body26.lr.ph
  %addr.075 = phi i32 [ %7, %do.body26.lr.ph ], [ %add48, %if.end41.do.body26_crit_edge ]
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp30 = icmp ugt i32 %17, 4
  br i1 %cmp30, label %do.end35, label %do.body26.if.end41_crit_edge

do.body26.if.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

do.end35:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1, align 4
  %dev37 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev37, align 8
  %22 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %addr.075, i32 noundef %23) #6
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %do.body26.if.end41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data40, align 4
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %addr.075
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #3, !srcloc !22
  %add48 = add i32 %addr.075, 8
  %cmp24 = icmp ult i32 %add48, %add
  br i1 %cmp24, label %if.end41.do.body26_crit_edge, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end41.do.body26_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body26

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.nvkm_therm_clkgate_init, ptr %init.078, i32 1
  %tobool6.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool6.not, label %for.inc.for.inc49_crit_edge, label %for.inc.land.rhs7_crit_edge

for.inc.land.rhs7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs7

for.inc.for.inc49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc49

for.inc49:                                        ; preds = %for.inc.for.inc49_crit_edge, %land.rhs7.for.inc49_crit_edge
  %incdec.ptr50 = getelementptr %struct.nvkm_therm_clkgate_pack, ptr %pack.082, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr50, null
  br i1 %tobool.not, label %for.inc49.for.end51_crit_edge, label %for.inc49.land.rhs_crit_edge

for.inc49.land.rhs_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

for.inc49.for.end51_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end51

for.end51:                                        ; preds = %for.inc49.for.end51_crit_edge, %land.rhs.for.end51_crit_edge, %entry.for.end51_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gf100_clkgate_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gf100_clkgate_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c", i32 47, i32 4}
!10 = !{ptr @gf100_clkgate_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gf100_clkgate_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2156240121}
!22 = !{i64 5379192}
