; ModuleID = '/llk/IR_all_yes/drivers/pci/pci-bridge-emul.c_pt.bc'
source_filename = "../drivers/pci/pci-bridge-emul.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_bridge_emul_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bridge_emul_init\09\09\09\09"
module asm "\09.long\09__crc_pci_bridge_emul_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_bridge_emul_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bridge_emul_cleanup\09\09\09\09"
module asm "\09.long\09__crc_pci_bridge_emul_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_bridge_emul_conf_read\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bridge_emul_conf_read\09\09\09\09"
module asm "\09.long\09__crc_pci_bridge_emul_conf_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_conf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_conf_read\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_conf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_bridge_emul_conf_write\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bridge_emul_conf_write\09\09\09\09"
module asm "\09.long\09__crc_pci_bridge_emul_conf_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_emul_conf_write:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_emul_conf_write\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_emul_conf_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_bridge_reg_behavior = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bridge_emul_conf = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, [2 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i32, i8, i8, i16 }
%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_pcie_conf, ptr, ptr, ptr, ptr, i8 }
%struct.pci_bridge_emul_pcie_conf = type { i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.pci_bridge_emul_ops = type { ptr, ptr, ptr, ptr }

@pci_regs_behavior = internal constant { [16 x %struct.pci_bridge_reg_behavior], [32 x i8] } { [16 x %struct.pci_bridge_reg_behavior] [%struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 112198328, i32 327, i32 -117440512 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -16777216, i32 33554431, i32 0 }, %struct.pci_bridge_reg_behavior { i32 111152911, i32 61680, i32 -117440512 }, %struct.pci_bridge_reg_behavior { i32 983055, i32 -983056, i32 0 }, %struct.pci_bridge_reg_behavior { i32 983055, i32 -983056, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 -1, i32 0 }, %struct.pci_bridge_reg_behavior { i32 255, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 8453888, i32 191824127, i32 67108864 }], [32 x i8] zeroinitializer }, align 32
@pcie_cap_regs_behavior = internal constant { [15 x %struct.pci_bridge_reg_behavior], [44 x i8] } { [15 x %struct.pci_bridge_reg_behavior] [%struct.pci_bridge_reg_behavior { i32 2147483647, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 32831, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 3145728, i32 32767, i32 983040 }, %struct.pci_bridge_reg_behavior { i32 -8650753, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 1073676288, i32 52987, i32 -1073741824 }, %struct.pci_bridge_reg_behavior { i32 -1, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 14680064, i32 32767, i32 18808832 }, %struct.pci_bridge_reg_behavior { i32 65536, i32 31, i32 0 }, %struct.pci_bridge_reg_behavior { i32 196607, i32 0, i32 65536 }, %struct.pci_bridge_reg_behavior { i32 -2130706433, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 0, i32 63487, i32 0 }, %struct.pci_bridge_reg_behavior { i32 -2113929218, i32 0, i32 0 }, %struct.pci_bridge_reg_behavior { i32 1943994368, i32 65535, i32 -2145386496 }, %struct.pci_bridge_reg_behavior zeroinitializer, %struct.pci_bridge_reg_behavior zeroinitializer], [44 x i8] zeroinitializer }, align 32
@__kstrtab_pci_bridge_emul_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_init to i32), ptr @__kstrtab_pci_bridge_emul_init, ptr @__kstrtabns_pci_bridge_emul_init }, section "___ksymtab_gpl+pci_bridge_emul_init", align 4
@__kstrtab_pci_bridge_emul_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_cleanup to i32), ptr @__kstrtab_pci_bridge_emul_cleanup, ptr @__kstrtabns_pci_bridge_emul_cleanup }, section "___ksymtab_gpl+pci_bridge_emul_cleanup", align 4
@__kstrtab_pci_bridge_emul_conf_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_conf_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_conf_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_conf_read to i32), ptr @__kstrtab_pci_bridge_emul_conf_read, ptr @__kstrtabns_pci_bridge_emul_conf_read }, section "___ksymtab_gpl+pci_bridge_emul_conf_read", align 4
@__kstrtab_pci_bridge_emul_conf_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_emul_conf_write = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_emul_conf_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_emul_conf_write to i32), ptr @__kstrtab_pci_bridge_emul_conf_write, ptr @__kstrtabns_pci_bridge_emul_conf_write }, section "___ksymtab_gpl+pci_bridge_emul_conf_write", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"pci_regs_behavior\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 51, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"pcie_cap_regs_behavior\00", align 1
@___asan_gen_.6 = private constant [33 x i8] c"../drivers/pci/pci-bridge-emul.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 175, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_pci_bridge_emul_cleanup, ptr @__ksymtab_pci_bridge_emul_conf_read, ptr @__ksymtab_pci_bridge_emul_conf_write, ptr @__ksymtab_pci_bridge_emul_init, ptr @pci_regs_behavior, ptr @pcie_cap_regs_behavior], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_regs_behavior to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_cap_regs_behavior to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_init(ptr nocapture noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %class_revision = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 4
  %0 = ptrtoint ptr %class_revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class_revision, align 4
  %or = or i32 %1, 1030
  store i32 %or, ptr %class_revision, align 4
  %header_type = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 7
  %2 = ptrtoint ptr %header_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %header_type, align 2
  %cache_line_size = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 5
  %3 = ptrtoint ptr %cache_line_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %cache_line_size, align 4
  %status = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 3
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4096, ptr %status, align 2
  %call = tail call ptr @kmemdup(ptr noundef nonnull @pci_regs_behavior, i32 noundef 192, i32 noundef 3264) #4
  %pci_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 3
  %5 = ptrtoint ptr %pci_regs_behavior to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %pci_regs_behavior, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %has_pcie = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 6
  %6 = ptrtoint ptr %has_pcie to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_pcie, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.if.end45_crit_edge, label %if.then6

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then6:                                         ; preds = %if.end
  %capabilities_pointer = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %bridge, i32 0, i32 25
  %8 = ptrtoint ptr %capabilities_pointer to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %capabilities_pointer, align 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 2
  %11 = or i16 %10, 4096
  store i16 %11, ptr %status, align 2
  %pcie_conf = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1
  %12 = ptrtoint ptr %pcie_conf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %pcie_conf, align 4
  %cap = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cap, align 2
  %15 = or i16 %14, 16384
  store i16 %15, ptr %cap, align 2
  %call16 = tail call ptr @kmemdup(ptr noundef nonnull @pcie_cap_regs_behavior, i32 noundef 180, i32 noundef 3264) #4
  %pcie_cap_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 4
  %16 = ptrtoint ptr %pcie_cap_regs_behavior to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call16, ptr %pcie_cap_regs_behavior, align 4
  %tobool18.not = icmp eq ptr %call16, null
  %17 = ptrtoint ptr %pci_regs_behavior to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_regs_behavior, align 4
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %18) #4
  br label %return

if.end21:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.pci_bridge_reg_behavior, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %and = and i32 %20, -65281
  store i32 %and, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %pci_regs_behavior to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_regs_behavior, align 4
  %arrayidx24 = getelementptr %struct.pci_bridge_reg_behavior, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  %and26 = and i32 %24, -111149753
  store i32 %and26, ptr %arrayidx24, align 4
  %25 = load ptr, ptr %pci_regs_behavior, align 4
  %arrayidx28 = getelementptr %struct.pci_bridge_reg_behavior, ptr %25, i32 6
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx28, align 4
  %and30 = and i32 %27, 16777215
  store i32 %and30, ptr %arrayidx28, align 4
  %28 = load ptr, ptr %pci_regs_behavior, align 4
  %arrayidx32 = getelementptr %struct.pci_bridge_reg_behavior, ptr %28, i32 7
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx32, align 4
  %and34 = and i32 %30, -111149057
  store i32 %and34, ptr %arrayidx32, align 4
  %31 = load ptr, ptr %pci_regs_behavior, align 4
  %rw = getelementptr %struct.pci_bridge_reg_behavior, ptr %31, i32 15, i32 1
  %32 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rw, align 4
  %and37 = and i32 %33, -186646529
  store i32 %and37, ptr %rw, align 4
  %34 = load ptr, ptr %pci_regs_behavior, align 4
  %arrayidx39 = getelementptr %struct.pci_bridge_reg_behavior, ptr %34, i32 15
  %35 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx39, align 4
  %and41 = and i32 %36, -8388609
  store i32 %and41, ptr %arrayidx39, align 4
  %37 = load ptr, ptr %pci_regs_behavior, align 4
  %w1c = getelementptr %struct.pci_bridge_reg_behavior, ptr %37, i32 15, i32 2
  %38 = ptrtoint ptr %w1c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %w1c, align 4
  %and44 = and i32 %39, -67108865
  store i32 %and44, ptr %w1c, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end21, %if.end.if.end45_crit_edge
  %and46 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.return_crit_edge, label %if.then48

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %pci_regs_behavior to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_regs_behavior, align 4
  %arrayidx50 = getelementptr %struct.pci_bridge_reg_behavior, ptr %41, i32 9
  %42 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %arrayidx50, align 4
  %43 = load ptr, ptr %pci_regs_behavior, align 4
  %rw54 = getelementptr %struct.pci_bridge_reg_behavior, ptr %43, i32 9, i32 1
  %44 = ptrtoint ptr %rw54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rw54, align 4
  br label %return

return:                                           ; preds = %if.then48, %if.end45.return_crit_edge, %if.then19, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -12, %entry.return_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end45.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_bridge_emul_cleanup(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %has_pcie = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %has_pcie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_pcie, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pcie_cap_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 4
  %2 = ptrtoint ptr %pcie_cap_regs_behavior to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_cap_regs_behavior, align 4
  tail call void @kfree(ptr noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pci_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 3
  %4 = ptrtoint ptr %pci_regs_behavior to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_regs_behavior, align 4
  tail call void @kfree(ptr noundef %5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_conf_read(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %where, -4
  %has_pcie = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %has_pcie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_pcie, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %and)
  %cmp = icmp sgt i32 %and, 123
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and)
  %cmp4 = icmp sgt i32 %and, 63
  %or.cond82 = and i1 %cmp4, %tobool2.not
  br i1 %or.cond82, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %value, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %or.cond83 = and i1 %cmp4, %tobool.not
  br i1 %or.cond83, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %and, -64
  %ops = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_pcie = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %5, i32 0, i32 1
  %pcie_conf = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1
  %pcie_cap_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 4
  br label %if.end13

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %ops12 = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %6 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops12, align 4
  %pci_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 3
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %reg.0 = phi i32 [ %sub, %if.then11 ], [ %and, %if.else ]
  %read_op.0.in = phi ptr [ %read_pcie, %if.then11 ], [ %7, %if.else ]
  %cfgspace.0 = phi ptr [ %pcie_conf, %if.then11 ], [ %bridge, %if.else ]
  %behavior.0.in = phi ptr [ %pcie_cap_regs_behavior, %if.then11 ], [ %pci_regs_behavior, %if.else ]
  %8 = ptrtoint ptr %behavior.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %behavior.0 = load ptr, ptr %behavior.0.in, align 4
  %9 = ptrtoint ptr %read_op.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %read_op.0 = load ptr, ptr %read_op.0.in, align 4
  %tobool14.not = icmp eq ptr %read_op.0, null
  br i1 %tobool14.not, label %if.end13.if.then19_crit_edge, label %if.then15

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then15:                                        ; preds = %if.end13
  %call = tail call i32 %read_op.0(ptr noundef %bridge, i32 noundef %reg.0, ptr noundef %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %phi.cmp = icmp eq i32 %call, 1
  br i1 %phi.cmp, label %if.then15.if.then19_crit_edge, label %if.then15.if.end20_crit_edge

if.then15.if.then19_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = sdiv i32 %reg.0, 4
  br label %if.end20

if.then19:                                        ; preds = %if.then15.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  %div = sdiv i32 %reg.0, 4
  %arrayidx = getelementptr i32, ptr %cfgspace.0, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then15.if.end20_crit_edge
  %div21.pre-phi = phi i32 [ %.pre, %if.then15.if.end20_crit_edge ], [ %div, %if.then19 ]
  %arrayidx22 = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0, i32 %div21.pre-phi
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  %rw = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0, i32 %div21.pre-phi, i32 1
  %16 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rw, align 4
  %or = or i32 %17, %15
  %w1c = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0, i32 %div21.pre-phi, i32 2
  %18 = ptrtoint ptr %w1c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %w1c, align 4
  %or27 = or i32 %or, %19
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %and28 = and i32 %21, %or27
  store i32 %and28, ptr %value, align 4
  %22 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end20.cleanup_crit_edge [
    i32 1, label %if.end20.if.end45.sink.split_crit_edge
    i32 2, label %if.then35
    i32 4, label %if.end20.if.end45_crit_edge
  ]

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.end20.if.end45.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.sink.split

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then35:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.then35, %if.end20.if.end45.sink.split_crit_edge
  %.sink = phi i32 [ 65535, %if.then35 ], [ 255, %if.end20.if.end45.sink.split_crit_edge ]
  %and36 = shl i32 %where, 3
  %mul37 = and i32 %and36, 24
  %shr38 = lshr i32 %and28, %mul37
  %and39 = and i32 %shr38, %.sink
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and39, ptr %value, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end20.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end20.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end45 ], [ 0, %if.then5 ], [ 135, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_emul_conf_write(ptr noundef %bridge, i32 noundef %where, i32 noundef %size, i32 noundef %value) #0 align 64 {
entry:
  %old = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %where, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old) #4
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old, align 4, !annotation !22
  %has_pcie = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 6
  %1 = ptrtoint ptr %has_pcie to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_pcie, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp ne i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %and)
  %cmp = icmp sgt i32 %and, 123
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and)
  %cmp4 = icmp sgt i32 %and, 63
  %or.cond120 = and i1 %cmp4, %tobool2.not
  br i1 %or.cond120, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = shl i32 %where, 3
  %mul = and i32 %and7, 24
  %3 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %size, label %if.end6.cleanup_crit_edge [
    i32 4, label %if.end6.if.end6.i_crit_edge
    i32 2, label %if.then11
    i32 1, label %if.then14
  ]

if.end6.if.end6.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 65535, %mul
  br label %if.end6.i

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %shl15 = shl nuw i32 255, %mul
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then14, %if.then11, %if.end6.if.end6.i_crit_edge
  %mask.0 = phi i32 [ %shl, %if.then11 ], [ %shl15, %if.then14 ], [ -1, %if.end6.if.end6.i_crit_edge ]
  %or.cond83.i = and i1 %cmp4, %tobool.not
  br i1 %or.cond83.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %and, -64
  %ops.i = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_pcie.i = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %5, i32 0, i32 1
  %pcie_conf.i = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1
  %pcie_cap_regs_behavior.i = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 4
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %ops12.i = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %6 = ptrtoint ptr %ops12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops12.i, align 4
  %pci_regs_behavior.i = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 3
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then11.i
  %reg.0.i = phi i32 [ %sub.i, %if.then11.i ], [ %and, %if.else.i ]
  %read_op.0.in.i = phi ptr [ %read_pcie.i, %if.then11.i ], [ %7, %if.else.i ]
  %cfgspace.0.i = phi ptr [ %pcie_conf.i, %if.then11.i ], [ %bridge, %if.else.i ]
  %behavior.0.in.i = phi ptr [ %pcie_cap_regs_behavior.i, %if.then11.i ], [ %pci_regs_behavior.i, %if.else.i ]
  %8 = ptrtoint ptr %behavior.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %behavior.0.i = load ptr, ptr %behavior.0.in.i, align 4
  %9 = ptrtoint ptr %read_op.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %read_op.0.i = load ptr, ptr %read_op.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %read_op.0.i, null
  br i1 %tobool14.not.i, label %if.end13.i.if.then19.i_crit_edge, label %if.then15.i

if.end13.i.if.then19.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.then15.i:                                      ; preds = %if.end13.i
  %call.i = call i32 %read_op.0.i(ptr noundef %bridge, i32 noundef %reg.0.i, ptr noundef nonnull %old) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 1
  br i1 %phi.cmp.i, label %if.then15.i.if.then19.i_crit_edge, label %if.then15.if.end20_crit_edge.i

if.then15.i.if.then19.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i

if.then15.if.end20_crit_edge.i:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i = sdiv i32 %reg.0.i, 4
  br label %if.end22

if.then19.i:                                      ; preds = %if.then15.i.if.then19.i_crit_edge, %if.end13.i.if.then19.i_crit_edge
  %div.i = sdiv i32 %reg.0.i, 4
  %arrayidx.i = getelementptr i32, ptr %cfgspace.0.i, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #4
  %13 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %old, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19.i, %if.then15.if.end20_crit_edge.i
  %div21.pre-phi.i = phi i32 [ %.pre.i, %if.then15.if.end20_crit_edge.i ], [ %div.i, %if.then19.i ]
  %arrayidx22.i = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0.i, i32 %div21.pre-phi.i
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22.i, align 4
  %rw.i = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0.i, i32 %div21.pre-phi.i, i32 1
  %16 = ptrtoint ptr %rw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rw.i, align 4
  %or.i = or i32 %17, %15
  %w1c.i = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0.i, i32 %div21.pre-phi.i, i32 2
  %18 = ptrtoint ptr %w1c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %w1c.i, align 4
  %or27.i = or i32 %or.i, %19
  %20 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old, align 4
  %and28.i = and i32 %21, %or27.i
  store i32 %and28.i, ptr %old, align 4
  %22 = ptrtoint ptr %has_pcie to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_pcie, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp ne i8 %23, 0
  %or.cond121 = and i1 %cmp4, %tobool24.not
  br i1 %or.cond121, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %and, -64
  %ops = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %write_pcie = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %25, i32 0, i32 3
  %pcie_conf = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 1
  %pcie_cap_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 4
  br label %if.end30

if.else28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %ops29 = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 2
  %26 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops29, align 4
  %write_base = getelementptr inbounds %struct.pci_bridge_emul_ops, ptr %27, i32 0, i32 2
  %pci_regs_behavior = getelementptr inbounds %struct.pci_bridge_emul, ptr %bridge, i32 0, i32 3
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then27
  %reg.0 = phi i32 [ %sub, %if.then27 ], [ %and, %if.else28 ]
  %write_op.0.in = phi ptr [ %write_pcie, %if.then27 ], [ %write_base, %if.else28 ]
  %cfgspace.0 = phi ptr [ %pcie_conf, %if.then27 ], [ %bridge, %if.else28 ]
  %behavior.0.in = phi ptr [ %pcie_cap_regs_behavior, %if.then27 ], [ %pci_regs_behavior, %if.else28 ]
  %28 = ptrtoint ptr %behavior.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %behavior.0 = load ptr, ptr %behavior.0.in, align 4
  %29 = ptrtoint ptr %write_op.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %write_op.0 = load ptr, ptr %write_op.0.in, align 4
  %30 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old, align 4
  %div = sdiv i32 %reg.0, 4
  %rw = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0, i32 %div, i32 1
  %32 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rw, align 4
  %or.demorgan = and i32 %33, %mask.0
  %or = xor i32 %or.demorgan, -1
  %and32 = and i32 %31, %or
  %shl33 = shl i32 %value, %mul
  %and38 = and i32 %or.demorgan, %shl33
  %or39 = or i32 %and32, %and38
  %w1c = getelementptr %struct.pci_bridge_reg_behavior, ptr %behavior.0, i32 %div, i32 2
  %34 = ptrtoint ptr %w1c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %w1c, align 4
  %and43 = and i32 %mask.0, %shl33
  %and44 = and i32 %and43, %35
  %neg45 = xor i32 %and44, -1
  %and46 = and i32 %or39, %neg45
  %36 = call i32 @llvm.bswap.i32(i32 %and46)
  %arrayidx48 = getelementptr i32, ptr %cfgspace.0, i32 %div
  %37 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx48, align 4
  %tobool63.not = icmp eq ptr %write_op.0, null
  br i1 %tobool63.not, label %if.end30.cleanup_crit_edge, label %if.then64

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then64:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %w1c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %w1c, align 4
  %.not = xor i32 %39, -1
  %neg54 = or i32 %mask.0, %.not
  %and55 = and i32 %neg54, %and46
  %and61 = and i32 %and43, %39
  %or62 = or i32 %and55, %and61
  call void %write_op.0(ptr noundef %bridge, i32 noundef %reg.0, i32 noundef %31, i32 noundef %or62, i32 noundef %mask.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end30.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 135, %if.end6.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_pci_bridge_emul_init, !1, !"__ksymtab_pci_bridge_emul_init", i1 false, i1 false}
!1 = !{!"../drivers/pci/pci-bridge-emul.c", i32 387, i32 1}
!2 = !{ptr @__ksymtab_pci_bridge_emul_cleanup, !3, !"__ksymtab_pci_bridge_emul_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/pci/pci-bridge-emul.c", i32 399, i32 1}
!4 = !{ptr @__ksymtab_pci_bridge_emul_conf_read, !5, !"__ksymtab_pci_bridge_emul_conf_read", i1 false, i1 false}
!5 = !{!"../drivers/pci/pci-bridge-emul.c", i32 461, i32 1}
!6 = !{ptr @__ksymtab_pci_bridge_emul_conf_write, !7, !"__ksymtab_pci_bridge_emul_conf_write", i1 false, i1 false}
!7 = !{!"../drivers/pci/pci-bridge-emul.c", i32 539, i32 1}
!8 = !{ptr @pci_regs_behavior, !9, !"pci_regs_behavior", i1 false, i1 false}
!9 = !{!"../drivers/pci/pci-bridge-emul.c", i32 51, i32 32}
!10 = !{ptr @pcie_cap_regs_behavior, !11, !"pcie_cap_regs_behavior", i1 false, i1 false}
!11 = !{!"../drivers/pci/pci-bridge-emul.c", i32 175, i32 32}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{!"auto-init"}
