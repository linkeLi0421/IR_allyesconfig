; ModuleID = '/llk/IR_all_yes/arch/arm/mach-exynos/firmware.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung,secure-firmware\00", [40 x i8] zeroinitializer }, align 32
@exynos_secure_firmware_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: No address specified.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"exynos_secure_firmware_available\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-exynos/firmware.c\00", [32 x i8] zeroinitializer }, align 32
@exynos_secure_firmware_available._entry_ptr = internal global ptr @exynos_secure_firmware_available._entry, section ".printk_index", align 4
@exynos_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Running under secure firmware.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_firmware_init\00", [43 x i8] zeroinitializer }, align 32
@exynos_firmware_init._entry_ptr = internal global ptr @exynos_firmware_init._entry, section ".printk_index", align 4
@exynos_firmware_ops = internal constant { %struct.firmware_ops, [32 x i8] } { %struct.firmware_ops { ptr null, ptr @exynos_do_idle, ptr @exynos_set_cpu_boot_addr, ptr @exynos_get_cpu_boot_addr, ptr @exynos_cpu_boot, ptr null, ptr @exynos_suspend, ptr @exynos_resume }, [32 x i8] zeroinitializer }, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@sysram_ns_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cp15_save_power = external dso_local local_unnamed_addr global i32, align 4
@cp15_save_diag = external dso_local local_unnamed_addr global i32, align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@exynos_cpu_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Failed to suspend the system\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_cpu_suspend\00", [45 x i8] zeroinitializer }, align 32
@exynos_cpu_suspend._entry_ptr = internal global ptr @exynos_cpu_suspend._entry, section ".printk_index", align 4
@exynos_l2_write_sec.l2cache_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@exynos_l2_write_sec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ignoring write to reg 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.exynos_l2_write_sec = private unnamed_addr constant [20 x i8] c"exynos_l2_write_sec\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 3904]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 194, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 201, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 213, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"exynos_firmware_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 142, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 118, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [36 x i8] c"exynos_l2_write_sec.l2cache_enabled\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [35 x i8] c"../arch/arm/mach-exynos/firmware.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 177, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @exynos_cpu_suspend._entry, ptr @exynos_cpu_suspend._entry_ptr, ptr @exynos_firmware_init._entry, ptr @exynos_firmware_init._entry_ptr, ptr @exynos_secure_firmware_available._entry, ptr @exynos_secure_firmware_available._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @exynos_firmware_ops, ptr @.str.6, ptr @.str.7, ptr @exynos_l2_write_sec.l2cache_enabled, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_secure_firmware_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_firmware_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_cpu_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_l2_write_sec.l2cache_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__of_get_address(ptr noundef nonnull %call, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #5
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_firmware_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @exynos_secure_firmware_available() #9
  br i1 %call, label %do.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  store ptr @exynos_firmware_ops, ptr @firmware_ops, align 4
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !35
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.then3, label %do.end.if.end4_crit_edge

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  store ptr @exynos_l2_write_sec, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8) to i32))
  store ptr @exynos_l2_configure, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_l2_write_sec(i32 noundef %val, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %land.end [
    i32 256, label %sw.bb
    i32 3904, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end3.sink.split_crit_edge, label %if.then

sw.bb.if.end3.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.sink.split

if.then:                                          ; preds = %sw.bb
  %.b = load i1, ptr @exynos_l2_write_sec.l2cache_enabled, align 4
  br i1 %.b, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_smc(i32 noundef -24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %sw.bb.if.end3.sink.split_crit_edge
  %1 = xor i1 %tobool.not, true
  store i1 %1, ptr @exynos_l2_write_sec.l2cache_enabled, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.then.if.end3_crit_edge
  tail call void @exynos_smc(i32 noundef -21, i32 noundef %val, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_smc(i32 noundef -25, i32 noundef %val, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b4546 = load i1, ptr @exynos_l2_write_sec.__already_done, align 1
  br i1 %.b4546, label %land.end.sw.epilog_crit_edge, label %if.then10, !prof !36

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @exynos_l2_write_sec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 177, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.exynos_l2_write_sec, i32 noundef %reg) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %land.end.sw.epilog_crit_edge, %sw.bb4, %if.end3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_l2_configure(ptr nocapture noundef readonly %regs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_latency = getelementptr inbounds %struct.l2x0_regs, ptr %regs, i32 0, i32 2
  %0 = ptrtoint ptr %tag_latency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag_latency, align 4
  %data_latency = getelementptr inbounds %struct.l2x0_regs, ptr %regs, i32 0, i32 3
  %2 = ptrtoint ptr %data_latency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_latency, align 4
  %prefetch_ctrl = getelementptr inbounds %struct.l2x0_regs, ptr %regs, i32 0, i32 6
  %4 = ptrtoint ptr %prefetch_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prefetch_ctrl, align 4
  tail call void @exynos_smc(i32 noundef -22, i32 noundef %1, i32 noundef %3, i32 noundef %5) #5
  %pwr_ctrl = getelementptr inbounds %struct.l2x0_regs, ptr %regs, i32 0, i32 7
  %6 = ptrtoint ptr %pwr_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_ctrl, align 4
  %aux_ctrl = getelementptr inbounds %struct.l2x0_regs, ptr %regs, i32 0, i32 1
  %8 = ptrtoint ptr %aux_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aux_ctrl, align 4
  tail call void @exynos_smc(i32 noundef -23, i32 noundef %7, i32 noundef %9, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_set_boot_flag(i32 noundef %cpu, i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %0 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 40
  %mul = shl i32 %cpu, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !37
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %mode, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %2, -32
  %spec.select = select i1 %tobool.not, i32 %2, i32 %and3
  %or = or i32 %spec.select, %mode
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %4 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 40
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #5, !srcloc !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_clear_boot_flag(i32 noundef %cpu, i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %0 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 40
  %mul = shl i32 %cpu, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !37
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %neg = xor i32 %mode, -1
  %and = and i32 %2, %neg
  %3 = tail call i32 @llvm.bswap.i32(i32 %and)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %4 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 40
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #5, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_do_idle(i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !35
  %and.i = and i32 %1, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call { i32, i32 } asm "mrc p15, 0, $0, c15, c0, 0\0Amrc p15, 0, $1, c15, c0, 1\0A", "=r,=r,~{cc}"() #10, !srcloc !39
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cp15_save_power to i32))
  store i32 %asmresult.i, ptr @cp15_save_power, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cp15_save_diag to i32))
  store i32 %asmresult1.i, ptr @cp15_save_diag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %call1 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume_ns to i32)) #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %call1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %4 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #5, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %5 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 269335292) #5, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %6 = load i32, ptr @exynos_cpu_id, align 4
  %and.i7 = and i32 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i7)
  %cmp.i.not = icmp eq i32 %and.i7, -481878016
  br i1 %cmp.i.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %7() #5
  tail call void @exynos_smc(i32 noundef -6, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  tail call void @exynos_smc(i32 noundef -7, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_smc(i32 noundef -5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_smc(i32 noundef -3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.else, %if.then4, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_set_cpu_boot_addr(i32 noundef %cpu, i32 noundef %boot_addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %0 = load ptr, ptr @sysram_ns_base_addr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %1 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %1, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -465567744
  %mul = shl i32 %cpu, 2
  %boot_reg.0.idx = select i1 %cmp.i.not, i32 %mul, i32 0
  %boot_reg.0 = getelementptr i8, ptr %add.ptr, i32 %boot_reg.0.idx
  %2 = tail call i32 @llvm.bswap.i32(i32 %boot_addr)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %boot_reg.0, i32 %2) #5, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_get_cpu_boot_addr(i32 noundef %cpu, ptr nocapture noundef writeonly %boot_addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %0 = load ptr, ptr @sysram_ns_base_addr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %1 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %1, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -465567744, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -465567744
  %mul = shl i32 %cpu, 2
  %boot_reg.0.idx = select i1 %cmp.i.not, i32 %mul, i32 0
  %boot_reg.0 = getelementptr i8, ptr %add.ptr, i32 %boot_reg.0.idx
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %boot_reg.0) #5, !srcloc !37
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %boot_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %boot_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu_boot(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @exynos_cpu_id to i32))
  %0 = load i32, ptr @exynos_cpu_id, align 4
  %and.i = and i32 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481878016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -481878016
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_smc(i32 noundef -4, i32 noundef %cpu, i32 noundef 0, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_suspend() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !35
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call { i32, i32 } asm "mrc p15, 0, $0, c15, c0, 0\0Amrc p15, 0, $1, c15, c0, 1\0A", "=r,=r,~{cc}"() #10, !srcloc !39
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %asmresult1.i = extractvalue { i32, i32 } %1, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cp15_save_power to i32))
  store i32 %asmresult.i, ptr @cp15_save_power, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cp15_save_diag to i32))
  store i32 %asmresult1.i, ptr @cp15_save_diag, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %2 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1391788032) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %call3 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @exynos_cpu_resume_ns to i32)) #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %call3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %4 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #5, !srcloc !38
  %call5 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_cpu_suspend) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_resume() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %0 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume_ns() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu_suspend(i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.outer_flush_all.exit_crit_edge, label %if.then.i

entry.outer_flush_all.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %outer_flush_all.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1() #5
  br label %outer_flush_all.exit

outer_flush_all.exit:                             ; preds = %if.then.i, %entry.outer_flush_all.exit_crit_edge
  tail call void @exynos_smc(i32 noundef -3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysram_ns_base_addr to i32))
  %2 = load ptr, ptr @sysram_ns_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !38
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-exynos/firmware.c", i32 194, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-exynos/firmware.c", i32 201, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @exynos_secure_firmware_available._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @exynos_secure_firmware_available._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-exynos/firmware.c", i32 213, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @exynos_firmware_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @exynos_firmware_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @exynos_firmware_ops, !14, !"exynos_firmware_ops", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-exynos/firmware.c", i32 142, i32 34}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-exynos/firmware.c", i32 118, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @exynos_cpu_suspend._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @exynos_cpu_suspend._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"l2cache_enabled", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-exynos/firmware.c", i32 153, i32 13}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-exynos/firmware.c", i32 177, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.exynos_l2_write_sec, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2153564859}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 1250332}
!38 = !{i64 1249914}
!39 = !{i64 624, i64 662}
!40 = !{i64 2153592497}
!41 = !{i64 2153593396}
!42 = !{i64 2153594412}
!43 = !{i64 2153592065}
