; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/system-controller.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/system-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_system_controller = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@system_controller_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mvebu_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013Cannot restart, system-controller not available: check the device tree\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mvebu_restart\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"arch/arm/mach-mvebu/system-controller.c\00", [56 x i8] zeroinitializer }, align 32
@mvebu_restart._entry_ptr = internal global ptr @mvebu_restart._entry, section ".printk_index", align 4
@mvebu_sc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada380\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada375\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_system_controller__108_180_mvebu_system_controller_initearly = internal global ptr @mvebu_system_controller_init, section ".initcallearly.init", align 4
@system_controller_phys_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@of_system_controller_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_system_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-xp-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_xp_system_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-system-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_system_controller }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@orion_system_controller = internal constant { %struct.mvebu_system_controller, [36 x i8] } { %struct.mvebu_system_controller { i32 264, i32 268, i32 4, i32 1, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@armada_370_xp_system_controller = internal constant { %struct.mvebu_system_controller, [36 x i8] } { %struct.mvebu_system_controller { i32 96, i32 100, i32 1, i32 1, i32 0, i32 56, i32 60 }, [36 x i8] zeroinitializer }, align 32
@armada_375_system_controller = internal constant { %struct.mvebu_system_controller, [36 x i8] } { %struct.mvebu_system_controller { i32 84, i32 88, i32 1, i32 1, i32 212, i32 56, i32 60 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"system_controller_base\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 37, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 97, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"mvebu_sc\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 52, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 119, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 153, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"system_controller_phys_base\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 38, i32 20 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"of_system_controller_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 80, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"orion_system_controller\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 73, i32 45 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"armada_370_xp_system_controller\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 54, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"armada_375_system_controller\00", align 1
@___asan_gen_.42 = private constant [43 x i8] c"../arch/arm/mach-mvebu/system-controller.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 63, i32 45 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_system_controller__108_180_mvebu_system_controller_initearly, ptr @mvebu_restart._entry, ptr @mvebu_restart._entry_ptr, ptr @system_controller_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mvebu_sc, ptr @.str.3, ptr @.str.4, ptr @system_controller_phys_base, ptr @of_system_controller_table, ptr @orion_system_controller, ptr @armada_370_xp_system_controller, ptr @armada_375_system_controller], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_controller_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_sc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_controller_phys_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_system_controller_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_system_controller to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_system_controller to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_375_system_controller to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_restart(i32 noundef %mode, ptr nocapture noundef readnone %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @system_controller_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %while.body.preheader

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %1 = load ptr, ptr @mvebu_sc, align 4
  %rstoutn_mask_reset_out_en = getelementptr inbounds %struct.mvebu_system_controller, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rstoutn_mask_reset_out_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rstoutn_mask_reset_out_en, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @system_controller_base, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr @mvebu_sc, align 4
  %system_soft_reset = getelementptr inbounds %struct.mvebu_system_controller, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %system_soft_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %system_soft_reset, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = load ptr, ptr @system_controller_base, align 4
  %system_soft_reset_offset = getelementptr inbounds %struct.mvebu_system_controller, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %system_soft_reset_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %system_soft_reset_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #7, !srcloc !36
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.body1, %do.end
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  br label %while.body
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_system_controller_get_soc_id(ptr nocapture noundef writeonly %dev, ptr nocapture noundef writeonly %rev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr @system_controller_base, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @mvebu_sc, align 4
  %dev_id = getelementptr inbounds %struct.mvebu_system_controller, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !38
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %shr = lshr i32 %5, 16
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %dev, align 4
  %7 = load ptr, ptr @system_controller_base, align 4
  %8 = load ptr, ptr @mvebu_sc, align 4
  %rev_id = getelementptr inbounds %struct.mvebu_system_controller, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rev_id, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !38
  %12 = lshr i32 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %and = and i32 %12, 15
  %13 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %rev, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %land.lhs.true.return_crit_edge ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_system_controller_set_cpu_boot_addr(ptr noundef %boot_addr) local_unnamed_addr #4 align 64 {
entry:
  %dev.i = alloca i32, align 4
  %rev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @system_controller_base, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %do.body2, label %do.body6, !prof !41

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/system-controller.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.body6:                                         ; preds = %entry
  %1 = load ptr, ptr @mvebu_sc, align 4
  %resume_boot_addr = getelementptr inbounds %struct.mvebu_system_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %resume_boot_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resume_boot_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %do.body15, label %do.end20, !prof !41

do.body15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/system-controller.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

do.end20:                                         ; preds = %do.body6
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %do.end20.do.body24_crit_edge, label %if.then22

do.end20.do.body24_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

if.then22:                                        ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i) #7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dev.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev.i) #7
  %5 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rev.i, align 4, !annotation !44
  %call.i = call i32 @mvebu_get_soc_id(ptr noundef nonnull %dev.i, ptr noundef nonnull %rev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then22.mvebu_armada375_smp_wa_init.exit_crit_edge

if.then22.mvebu_armada375_smp_wa_init.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_armada375_smp_wa_init.exit

if.end.i:                                         ; preds = %if.then22
  %6 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.mvebu_armada375_smp_wa_init.exit_crit_edge

if.end.i.mvebu_armada375_smp_wa_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvebu_armada375_smp_wa_init.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i32, ptr @system_controller_phys_base, align 4
  %9 = load ptr, ptr @mvebu_sc, align 4
  %resume_boot_addr.i = getelementptr inbounds %struct.mvebu_system_controller, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %resume_boot_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resume_boot_addr.i, align 4
  %add.i = add i32 %11, %8
  %call4.i = call i32 @mvebu_setup_boot_addr_wa(i32 noundef 41, i32 noundef 1, i32 noundef %add.i) #7
  br label %mvebu_armada375_smp_wa_init.exit

mvebu_armada375_smp_wa_init.exit:                 ; preds = %if.end3.i, %if.end.i.mvebu_armada375_smp_wa_init.exit_crit_edge, %if.then22.mvebu_armada375_smp_wa_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #7
  br label %do.body24

do.body24:                                        ; preds = %mvebu_armada375_smp_wa_init.exit, %do.end20.do.body24_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %boot_addr to i32
  %call26 = call i32 @__phys_addr_symbol(i32 noundef %12) #7
  %13 = call i32 @llvm.bswap.i32(i32 %call26)
  %14 = load ptr, ptr @system_controller_base, align 4
  %15 = load ptr, ptr @mvebu_sc, align 4
  %resume_boot_addr27 = getelementptr inbounds %struct.mvebu_system_controller, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %resume_boot_addr27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resume_boot_addr27, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_system_controller_init() #6 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !44
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_system_controller_table, ptr noundef nonnull %match) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call1 = call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #7
  store ptr %call1, ptr @system_controller_base, align 4
  %call2 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %res) #7
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  store i32 %3, ptr @system_controller_phys_base, align 4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  store ptr %7, ptr @mvebu_sc, align 4
  call void @of_node_put(ptr noundef nonnull %call) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_get_soc_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_setup_boot_addr_wa(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mvebu_restart._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mvebu_restart._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 119, i32 31}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 153, i32 31}
!10 = !{ptr @__initcall__kmod_system_controller__108_180_mvebu_system_controller_initearly, !11, !"__initcall__kmod_system_controller__108_180_mvebu_system_controller_initearly", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 180, i32 1}
!12 = !{ptr @system_controller_base, !13, !"system_controller_base", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 37, i32 22}
!14 = !{ptr @mvebu_sc, !15, !"mvebu_sc", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 52, i32 40}
!16 = !{ptr @system_controller_phys_base, !17, !"system_controller_phys_base", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 38, i32 20}
!18 = !{ptr @of_system_controller_table, !19, !"of_system_controller_table", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 80, i32 34}
!20 = !{ptr @orion_system_controller, !21, !"orion_system_controller", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 73, i32 45}
!22 = !{ptr @armada_370_xp_system_controller, !23, !"armada_370_xp_system_controller", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 54, i32 45}
!24 = !{ptr @armada_375_system_controller, !25, !"armada_375_system_controller", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-mvebu/system-controller.c", i32 63, i32 45}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2151561874}
!36 = !{i64 3993099}
!37 = !{i64 2151562468}
!38 = !{i64 3993517}
!39 = !{i64 2151563342}
!40 = !{i64 2151563924}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2151564374, i64 2151564878, i64 2151564411, i64 2151564467, i64 2151564501, i64 2151564525, i64 2151564566, i64 2151564587, i64 2151564615, i64 2151564649}
!43 = !{i64 2151566052, i64 2151566556, i64 2151566089, i64 2151566145, i64 2151566179, i64 2151566203, i64 2151566244, i64 2151566265, i64 2151566293, i64 2151566327}
!44 = !{!"auto-init"}
!45 = !{i64 2151567986}
