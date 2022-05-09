; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/board-v7.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/board-v7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@scu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Marvell Armada 370/XP (Device Tree)\00", [60 x i8] zeroinitializer }, align 32
@armada_370_xp_dt_compat = internal constant [2 x ptr] [ptr @.str.4, ptr null], section ".init.rodata", align 4
@__mach_desc_ARMADA_370_XP_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @armada_370_xp_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_dt_fixup, ptr null, ptr @mvebu_memblock_reserve, ptr null, ptr null, ptr @mvebu_init_irq, ptr null, ptr @mvebu_dt_init, ptr null, ptr null, ptr @mvebu_restart }, section ".arch.info.init", align 4
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Marvell Armada 375 (Device Tree)\00", [63 x i8] zeroinitializer }, align 32
@armada_375_dt_compat = internal constant [2 x ptr] [ptr @.str.14, ptr null], section ".init.rodata", align 4
@__mach_desc_ARMADA_375_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @armada_375_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_init_irq, ptr null, ptr @mvebu_dt_init, ptr null, ptr null, ptr @mvebu_restart }, section ".arch.info.init", align 4
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Marvell Armada 380/385 (Device Tree)\00", [59 x i8] zeroinitializer }, align 32
@armada_38x_dt_compat = internal constant [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr null], section ".init.rodata", align 4
@__mach_desc_ARMADA_38X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.2, i32 0, ptr @armada_38x_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_init_irq, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_restart }, section ".arch.info.init", align 4
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Marvell Armada 39x (Device Tree)\00", [63 x i8] zeroinitializer }, align 32
@armada_39x_dt_compat = internal constant [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr null], section ".init.rodata", align 4
@__mach_desc_ARMADA_39X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @armada_39x_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_init_irq, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_restart }, section ".arch.info.init", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,armada-370-xp\00", [42 x i8] zeroinitializer }, align 32
@armada_xp_smp_ops = external dso_local constant %struct.smp_operations, align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,usable-memory\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,cortex-a9-scu\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,armadaxp\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell,mv78230-i2c\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,mv78230-a0-i2c\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada375\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada380\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada385\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada390\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada398\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"scu_base\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 159, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 175, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 190, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 204, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 155, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 72, i32 47 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 76, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 79, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 81, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 45, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 143, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 127, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 132, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 134, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 171, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 185, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 186, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 199, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [34 x i8] c"../arch/arm/mach-mvebu/board-v7.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 200, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__mach_desc_ARMADA_370_XP_DT, ptr @__mach_desc_ARMADA_375_DT, ptr @__mach_desc_ARMADA_38X_DT, ptr @__mach_desc_ARMADA_39X_DT, ptr @scu_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mvebu_get_scu_base() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scu_base, align 4
  ret ptr %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_dt_fixup() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smp_set_ops(ptr noundef nonnull @armada_xp_smp_ops) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_memblock_reserve() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_scan_flat_dt(ptr noundef nonnull @mvebu_scan_mem, ptr noundef null) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_init_irq() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irqchip_init() #6
  tail call fastcc void @mvebu_scu_enable() #9
  %call = tail call i32 @coherency_init() #6
  %call1 = tail call i32 @coherency_available() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %call2 = tail call i32 @mvebu_mbus_dt_init(i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end9, label %do.body6, !prof !61

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/board-v7.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #6, !srcloc !62
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_dt_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_quirk() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_restart(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_scan_mem(i32 noundef %node, ptr nocapture noundef readnone %uname, i32 noundef %depth, ptr nocapture noundef readnone %data) #1 section ".init.text" align 64 {
entry:
  %reg = alloca ptr, align 4
  %l = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #6
  %0 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %l, align 4, !annotation !63
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(7) @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.7, ptr noundef nonnull %l) #6
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %reg, align 4
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6:                                          ; preds = %if.end
  %call5 = call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %l) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %reg, align 4
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %3 = phi ptr [ %call5, %if.end6.if.end9_crit_edge ], [ %call2, %if.end.if.end9_crit_edge ]
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l, align 4
  %div20 = lshr i32 %5, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %div20
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %sub.ptr.rhs.cast22 = ptrtoint ptr %7 to i32
  %sub.ptr.sub23 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast22
  %sub.ptr.div24 = ashr exact i32 %sub.ptr.sub23, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %8 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %9 = load i32, ptr @dt_root_size_cells, align 4
  %add25 = add i32 %9, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div24, i32 %add25)
  %cmp10.not26 = icmp slt i32 %sub.ptr.div24, %add25
  br i1 %cmp10.not26, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end9.while.body_crit_edge
  %10 = phi i32 [ %14, %while.body.while.body_crit_edge ], [ %8, %if.end9.while.body_crit_edge ]
  %call11 = call i64 @dt_mem_next_cell(i32 noundef %10, ptr noundef nonnull %reg) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %11 = load i32, ptr @dt_root_size_cells, align 4
  %call12 = call i64 @dt_mem_next_cell(i32 noundef %11, ptr noundef nonnull %reg) #6
  %conv = trunc i64 %call11 to i32
  %call13 = call i32 @memblock_reserve(i32 noundef %conv, i32 noundef 10240) #6
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_addr_cells to i32))
  %14 = load i32, ptr @dt_root_addr_cells, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dt_root_size_cells to i32))
  %15 = load i32, ptr @dt_root_size_cells, align 4
  %add = add i32 %15, %14
  %cmp10.not = icmp slt i32 %sub.ptr.div, %add
  br i1 %cmp10.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mvebu_scu_enable() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #6
  store ptr %call1, ptr @scu_base, align 4
  tail call void @scu_enable(ptr noundef %call1) #6
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coherency_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_dt_init(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coherency_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_quirk() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %dev = alloca i32, align 4
  %rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev) #6
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rev, align 4, !annotation !63
  %call = call i32 @mvebu_get_soc_id(ptr noundef nonnull %dev, ptr noundef nonnull %rev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #6
  %tobool.not15 = icmp eq ptr %call2, null
  br i1 %tobool.not15, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %np.016 = phi ptr [ %call7, %for.body.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #11
  %call4 = call noalias ptr @kstrdup(ptr noundef nonnull @.str.12, i32 noundef 3264) #6
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %call7.i.i, align 8
  %length = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 23, ptr %length, align 4
  %call5 = call noalias ptr @kstrdup(ptr noundef nonnull @.str.13, i32 noundef 3264) #6
  %value = getelementptr inbounds %struct.property, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %value, align 8
  %call6 = call i32 @of_update_property(ptr noundef nonnull %np.016, ptr noundef %call7.i.i) #6
  %call7 = call ptr @of_find_compatible_node(ptr noundef nonnull %np.016, ptr noundef null, ptr noundef nonnull @.str.11) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_get_soc_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_update_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 159, i32 1}
!2 = !{ptr @__mach_desc_ARMADA_370_XP_DT, !1, !"__mach_desc_ARMADA_370_XP_DT", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 175, i32 1}
!5 = !{ptr @__mach_desc_ARMADA_375_DT, !4, !"__mach_desc_ARMADA_375_DT", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 190, i32 1}
!8 = !{ptr @__mach_desc_ARMADA_38X_DT, !7, !"__mach_desc_ARMADA_38X_DT", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 204, i32 1}
!11 = !{ptr @__mach_desc_ARMADA_39X_DT, !10, !"__mach_desc_ARMADA_39X_DT", i1 false, i1 false}
!12 = !{ptr @scu_base, !13, !"scu_base", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 36, i32 22}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 155, i32 2}
!16 = !{ptr @armada_370_xp_dt_compat, !17, !"armada_370_xp_dt_compat", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 154, i32 27}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 72, i32 47}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 76, i32 35}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 79, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 81, i32 35}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 45, i32 39}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 143, i32 31}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 127, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 132, i32 30}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 134, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 171, i32 2}
!38 = !{ptr @armada_375_dt_compat, !39, !"armada_375_dt_compat", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 170, i32 27}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 185, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 186, i32 2}
!44 = !{ptr @armada_38x_dt_compat, !45, !"armada_38x_dt_compat", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 184, i32 27}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 199, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 200, i32 2}
!50 = !{ptr @armada_39x_dt_compat, !51, !"armada_39x_dt_compat", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-mvebu/board-v7.c", i32 198, i32 27}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2154664452, i64 2154664947, i64 2154664489, i64 2154664545, i64 2154664579, i64 2154664603, i64 2154664644, i64 2154664665, i64 2154664693, i64 2154664727}
!63 = !{!"auto-init"}
