; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_watchdog.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_watchdog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+addi_watchdog_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_addi_watchdog_reset\09\09\09\09"
module asm "\09.long\09__crc_addi_watchdog_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_addi_watchdog_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22addi_watchdog_reset\22\09\09\09\09\09"
module asm "__kstrtabns_addi_watchdog_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+addi_watchdog_init\22, \22a\22\09"
module asm "\09.weak\09__crc_addi_watchdog_init\09\09\09\09"
module asm "\09.long\09__crc_addi_watchdog_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_addi_watchdog_init:\09\09\09\09\09"
module asm "\09.asciz \09\22addi_watchdog_init\22\09\09\09\09\09"
module asm "__kstrtabns_addi_watchdog_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.addi_watchdog_private = type { i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__kstrtab_addi_watchdog_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_addi_watchdog_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_addi_watchdog_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @addi_watchdog_reset to i32), ptr @__kstrtab_addi_watchdog_reset, ptr @__kstrtabns_addi_watchdog_reset }, section "___ksymtab_gpl+addi_watchdog_reset", align 4
@__kstrtab_addi_watchdog_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_addi_watchdog_init = external dso_local constant [0 x i8], align 1
@__ksymtab_addi_watchdog_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @addi_watchdog_init to i32), ptr @__kstrtab_addi_watchdog_init, ptr @__kstrtabns_addi_watchdog_init }, section "___ksymtab_gpl+addi_watchdog_init", align 4
@__initcall__kmod_addi_watchdog__229_131_addi_watchdog_module_init6 = internal global ptr @addi_watchdog_module_init, section ".initcall6.init", align 4
@__exitcall_addi_watchdog_module_exit = internal global ptr @addi_watchdog_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [55 x i8] c"addi_watchdog.description=ADDI-DATA Watchdog subdevice\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [70 x i8] c"addi_watchdog.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [56 x i8] c"addi_watchdog.file=drivers/comedi/drivers/addi_watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [26 x i8] c"addi_watchdog.license=GPL\00", section ".modinfo", align 1
@addi_watchdog_insn_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"watchdog enabled, timeout:%dms\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"addi_watchdog_insn_config\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/comedi/drivers/addi_watchdog.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@addi_watchdog_insn_config._entry_ptr = internal global ptr @addi_watchdog_insn_config._entry, section ".printk_index", align 4
@addi_watchdog_insn_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 85, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"watchdog is disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"addi_watchdog_insn_write\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@addi_watchdog_insn_write._entry_ptr = internal global ptr @addi_watchdog_insn_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 31, i64 32]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 47, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [42 x i8] c"../drivers/comedi/drivers/addi_watchdog.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 85, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_addi_watchdog_module_exit, ptr @__initcall__kmod_addi_watchdog__229_131_addi_watchdog_module_init6, ptr @__ksymtab_addi_watchdog_init, ptr @__ksymtab_addi_watchdog_reset, ptr @addi_watchdog_insn_config._entry, ptr @addi_watchdog_insn_config._entry_ptr, ptr @addi_watchdog_insn_write._entry, ptr @addi_watchdog_insn_write._entry_ptr, ptr @addi_watchdog_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addi_watchdog_insn_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addi_watchdog_insn_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @addi_watchdog_reset(i32 noundef %iobase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %add = add i32 %iobase, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 0) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %add4 = add i32 %iobase, 4
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 0) #5, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @addi_watchdog_init(ptr noundef %s, i32 noundef %iobase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_alloc_spriv(ptr noundef %s, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %iobase, ptr %call, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131072, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %4 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %maxdata, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 21
  %5 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @addi_watchdog_insn_config, ptr %insn_config, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 18
  %6 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @addi_watchdog_insn_read, ptr %insn_read, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 19
  %7 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @addi_watchdog_insn_write, ptr %insn_write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addi_watchdog_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wdog_ctrl = getelementptr inbounds %struct.addi_watchdog_private, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %wdog_ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %wdog_ctrl, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %8 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxdata, align 4
  %and = and i32 %9, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %add = add i32 %12, 4
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %13 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #5, !srcloc !39
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  %mul = mul i32 %and, 20
  %add7 = add i32 %mul, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %add7) #8
  br label %do.body10

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wdog_ctrl9 = getelementptr inbounds %struct.addi_watchdog_private, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %wdog_ctrl9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wdog_ctrl9, align 4
  br label %do.body10

do.body10:                                        ; preds = %sw.bb8, %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %wdog_ctrl13 = getelementptr inbounds %struct.addi_watchdog_private, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %wdog_ctrl13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wdog_ctrl13, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %add15 = add i32 %21, 12
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %22 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #5, !srcloc !39
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %do.body10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addi_watchdog_insn_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #5, !srcloc !43
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %arrayidx = getelementptr i32, ptr %data, i32 %i.08
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addi_watchdog_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %wdog_ctrl = getelementptr inbounds %struct.addi_watchdog_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wdog_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wdog_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp113.not = icmp eq i32 %5, 0
  br i1 %cmp113.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body2_crit_edge

for.cond.preheader.do.body2_crit_edge:            ; preds = %for.cond.preheader
  br label %do.body2

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.5) #8
  br label %cleanup

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %for.cond.preheader.do.body2_crit_edge
  %i.014 = phi i32 [ %inc, %do.body2.do.body2_crit_edge ], [ 0, %for.cond.preheader.do.body2_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %wdog_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wdog_ctrl, align 4
  %or = or i32 %9, 512
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %add = add i32 %12, 12
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %13 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #5, !srcloc !39
  %inc = add nuw i32 %i.014, 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  %cmp1 = icmp ult i32 %inc, %15
  br i1 %cmp1, label %do.body2.do.body2_crit_edge, label %do.body2.cleanup_crit_edge

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

cleanup:                                          ; preds = %do.body2.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %15, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @addi_watchdog_module_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @addi_watchdog_module_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_addi_watchdog_reset, !1, !"__ksymtab_addi_watchdog_reset", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 103, i32 1}
!2 = !{ptr @__ksymtab_addi_watchdog_init, !3, !"__ksymtab_addi_watchdog_init", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 125, i32 1}
!4 = !{ptr @__initcall__kmod_addi_watchdog__229_131_addi_watchdog_module_init6, !5, !"__initcall__kmod_addi_watchdog__229_131_addi_watchdog_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 131, i32 1}
!6 = !{ptr @__exitcall_addi_watchdog_module_exit, !7, !"__exitcall_addi_watchdog_module_exit", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 136, i32 1}
!8 = !{ptr @__UNIQUE_ID_description230, !9, !"__UNIQUE_ID_description230", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 138, i32 1}
!10 = !{ptr @__UNIQUE_ID_author231, !11, !"__UNIQUE_ID_author231", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 139, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 140, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 47, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @addi_watchdog_insn_config._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @addi_watchdog_insn_config._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/addi_watchdog.c", i32 85, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @addi_watchdog_insn_write._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @addi_watchdog_insn_write._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2153911223}
!39 = !{i64 6260362}
!40 = !{i64 2153911695}
!41 = !{i64 2153905492}
!42 = !{i64 2153907722}
!43 = !{i64 6260780}
!44 = !{i64 2153908667}
!45 = !{i64 2153910658}
