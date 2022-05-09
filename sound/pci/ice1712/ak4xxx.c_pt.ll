; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/ak4xxx.c_pt.bc'
source_filename = "../sound/pci/ice1712/ak4xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_ice1712_akm4xxx_init\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ice1712_akm4xxx_init\09\09\09\09"
module asm "\09.long\09__crc_snd_ice1712_akm4xxx_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ice1712_akm4xxx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ice1712_akm4xxx_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ice1712_akm4xxx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ice1712_akm4xxx_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ice1712_akm4xxx_free\09\09\09\09"
module asm "\09.long\09__crc_snd_ice1712_akm4xxx_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ice1712_akm4xxx_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ice1712_akm4xxx_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ice1712_akm4xxx_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ice1712_akm4xxx_build_controls\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ice1712_akm4xxx_build_controls\09\09\09\09"
module asm "\09.long\09__crc_snd_ice1712_akm4xxx_build_controls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ice1712_akm4xxx_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ice1712_akm4xxx_build_controls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ice1712_akm4xxx_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }

@__UNIQUE_ID_author238 = internal constant [59 x i8] c"snd_ice17xx_ak4xxx.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [82 x i8] c"snd_ice17xx_ak4xxx.description=ICEnsemble ICE17xx <-> AK4xxx AD/DA chip interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [61 x i8] c"snd_ice17xx_ak4xxx.file=sound/pci/ice1712/snd-ice17xx-ak4xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [31 x i8] c"snd_ice17xx_ak4xxx.license=GPL\00", section ".modinfo", align 1
@__kstrtab_snd_ice1712_akm4xxx_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ice1712_akm4xxx_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ice1712_akm4xxx_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ice1712_akm4xxx_init to i32), ptr @__kstrtab_snd_ice1712_akm4xxx_init, ptr @__kstrtabns_snd_ice1712_akm4xxx_init }, section "___ksymtab+snd_ice1712_akm4xxx_init", align 4
@__kstrtab_snd_ice1712_akm4xxx_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ice1712_akm4xxx_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ice1712_akm4xxx_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ice1712_akm4xxx_free to i32), ptr @__kstrtab_snd_ice1712_akm4xxx_free, ptr @__kstrtabns_snd_ice1712_akm4xxx_free }, section "___ksymtab+snd_ice1712_akm4xxx_free", align 4
@__kstrtab_snd_ice1712_akm4xxx_build_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ice1712_akm4xxx_build_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ice1712_akm4xxx_build_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ice1712_akm4xxx_build_controls to i32), ptr @__kstrtab_snd_ice1712_akm4xxx_build_controls, ptr @__kstrtabns_snd_ice1712_akm4xxx_build_controls }, section "___ksymtab+snd_ice1712_akm4xxx_build_controls", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/ice1712/ak4xxx.c\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../sound/pci/ice1712/ak4xxx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 50, i32 6 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__ksymtab_snd_ice1712_akm4xxx_build_controls, ptr @__ksymtab_snd_ice1712_akm4xxx_free, ptr @__ksymtab_snd_ice1712_akm4xxx_init, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef %ak, ptr nocapture noundef readonly %temp, ptr noundef readonly %_priv, ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %_priv, null
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 36) #6
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %1 = call ptr @memcpy(ptr %call7.i, ptr %_priv, i32 36)
  %phi.cast = ptrtoint ptr %call7.i to i32
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %priv.0 = phi i32 [ %phi.cast, %if.end ], [ 0, %entry.if.end3_crit_edge ]
  %2 = call ptr @memcpy(ptr %ak, ptr %temp, i32 216)
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %5 = ptrtoint ptr %ak to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ak, align 4
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %priv.0, ptr %private_value, align 4
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ice, ptr %private_data, align 4
  %ops = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %if.then7, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_ice1712_akm4xxx_lock, ptr %ops, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  %unlock = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unlock, align 4
  %cmp12 = icmp eq ptr %12, null
  br i1 %cmp12, label %if.then13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_ice1712_akm4xxx_unlock, ptr %unlock, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %write = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %cmp18 = icmp eq ptr %15, null
  br i1 %cmp18, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_ice1712_akm4xxx_write, ptr %write, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  tail call void @snd_akm4xxx_init(ptr noundef %ak) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_akm4xxx_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_akm4xxx_unlock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %2 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_dir.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %5) #3
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #3
  %10 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saved.i, align 4
  %12 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %gpio.i, align 4
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %write_mask.i, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_akm4xxx_write(ptr nocapture noundef readonly %ak, i32 noundef %chip, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chip)
  %5 = icmp ugt i32 %chip, 3
  br i1 %5, label %do.end, label %if.end24, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %7(ptr noundef %4) #3
  %add_flags = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 7
  %8 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add_flags, align 4
  %or = or i32 %9, %call.i
  %mask_flags = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %mask_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_flags, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %or, %neg
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %cs_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cs_mask, align 4
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %14 = ptrtoint ptr %cs_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cs_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp25 = icmp eq i32 %13, %15
  br i1 %cmp25, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.end24
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #5
  %or30 = or i32 %and, %13
  br label %if.end41

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #5
  %neg32 = xor i32 %13, -1
  %and33 = and i32 %and, %neg32
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 7
  %17 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i, align 4
  tail call void %18(ptr noundef %4, i32 noundef %and33) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #3
  br label %if.end41

if.else35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %neg37 = xor i32 %13, -1
  %and38 = and i32 %and, %neg37
  %or40 = or i32 %and38, %15
  %set_data.i147 = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 7
  %20 = ptrtoint ptr %set_data.i147 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_data.i147, align 4
  tail call void %21(ptr noundef %4, i32 noundef %or40) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #3
  br label %if.end41

if.end41:                                         ; preds = %if.else35, %if.else, %if.then28
  %tmp.0 = phi i32 [ %or30, %if.then28 ], [ %and33, %if.else ], [ %or40, %if.else35 ]
  %caddr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 1
  %23 = ptrtoint ptr %caddr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %caddr, align 1
  %conv = zext i8 %24 to i32
  %25 = and i8 %addr, 31
  %and44 = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv, 14
  %27 = shl nuw nsw i32 %and44, 8
  %or45 = or i32 %26, %27
  %conv47 = zext i8 %data to i32
  %shl46 = or i32 %or45, %conv47
  %or48 = or i32 %shl46, 8192
  %clk_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 3
  %set_data.i148 = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 7
  %data_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41
  %tmp.1154 = phi i32 [ %tmp.0, %if.end41 ], [ %or64, %for.body.for.body_crit_edge ]
  %idx.0153 = phi i32 [ 15, %if.end41 ], [ %dec, %for.body.for.body_crit_edge ]
  %28 = ptrtoint ptr %clk_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_mask, align 4
  %neg51 = xor i32 %29, -1
  %and52 = and i32 %tmp.1154, %neg51
  %30 = ptrtoint ptr %set_data.i148 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_data.i148, align 4
  tail call void %31(ptr noundef %4, i32 noundef %and52) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #3
  %shl53 = shl nuw i32 1, %idx.0153
  %and54 = and i32 %shl53, %or48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %33 = ptrtoint ptr %data_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_mask, align 4
  %or57 = or i32 %34, %and52
  %neg60 = xor i32 %34, -1
  %and61 = and i32 %and52, %neg60
  %tmp.2 = select i1 %tobool55.not, i32 %and61, i32 %or57
  %35 = ptrtoint ptr %set_data.i148 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_data.i148, align 4
  tail call void %36(ptr noundef %4, i32 noundef %tmp.2) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #3
  %38 = ptrtoint ptr %clk_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clk_mask, align 4
  %or64 = or i32 %39, %tmp.2
  %40 = ptrtoint ptr %set_data.i148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_data.i148, align 4
  tail call void %41(ptr noundef %4, i32 noundef %or64) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #3
  %dec = add nsw i32 %idx.0153, -1
  %cmp49.not = icmp eq i32 %idx.0153, 0
  br i1 %cmp49.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %43 = ptrtoint ptr %cs_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cs_mask, align 4
  %45 = ptrtoint ptr %cs_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cs_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp67 = icmp eq i32 %44, %46
  br i1 %cmp67, label %if.then69, label %if.else81

if.then69:                                        ; preds = %for.end
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load70 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load70)
  %tobool73.not = icmp sgt i8 %bf.load70, -1
  br i1 %tobool73.not, label %if.then69.if.end86_crit_edge, label %if.then74

if.then69.if.end86_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end86

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  %neg76 = xor i32 %44, -1
  %and77 = and i32 %or64, %neg76
  %48 = ptrtoint ptr %set_data.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_data.i148, align 4
  tail call void %49(ptr noundef %4, i32 noundef %and77) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #3
  br label %if.end86

if.else81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %neg83 = xor i32 %44, -1
  %and84 = and i32 %or64, %neg83
  %cs_none = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 6
  br label %if.end86

if.end86:                                         ; preds = %if.else81, %if.then74, %if.then69.if.end86_crit_edge
  %cs_none.sink = phi ptr [ %cs_none, %if.else81 ], [ %cs_mask, %if.then74 ], [ %cs_mask, %if.then69.if.end86_crit_edge ]
  %and84.sink = phi i32 [ %and84, %if.else81 ], [ %and77, %if.then74 ], [ %or64, %if.then69.if.end86_crit_edge ]
  %51 = ptrtoint ptr %cs_none.sink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cs_none.sink, align 4
  %or85 = or i32 %52, %and84.sink
  %53 = ptrtoint ptr %set_data.i148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_data.i148, align 4
  tail call void %54(ptr noundef %4, i32 noundef %or85) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ice1712_akm4xxx_free(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %0 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %akm, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %2 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp110.not = icmp eq i32 %3, 0
  br i1 %cmp110.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %akidx.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm, align 4
  %private_value = getelementptr %struct.snd_akm4xxx, ptr %5, i32 %akidx.011, i32 5
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call void @kfree(ptr noundef %8) #3
  %inc = add nuw i32 %akidx.011, 1
  %9 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %akm_codecs, align 4
  %cmp1 = icmp ult i32 %inc, %10
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %akm, align 4
  tail call void @kfree(ptr noundef %12) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %0 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup2_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %akidx.09, 1
  %2 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %akm_codecs, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup2_crit_edge

for.cond.cleanup2_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %akidx.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %akm, align 4
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %5, i32 %akidx.09
  %call = tail call i32 @snd_akm4xxx_build_controls(ptr noundef %arrayidx) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup2_crit_edge, label %for.cond

for.body.cleanup2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2

cleanup2:                                         ; preds = %for.body.cleanup2_crit_edge, %for.cond.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup2_crit_edge ], [ 0, %for.cond.cleanup2_crit_edge ], [ %call, %for.body.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_ice1712_akm4xxx_init, !8, !"__ksymtab_snd_ice1712_akm4xxx_init", i1 false, i1 false}
!8 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 168, i32 1}
!9 = !{ptr @__ksymtab_snd_ice1712_akm4xxx_free, !10, !"__ksymtab_snd_ice1712_akm4xxx_free", i1 false, i1 false}
!10 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 169, i32 1}
!11 = !{ptr @__ksymtab_snd_ice1712_akm4xxx_build_controls, !12, !"__ksymtab_snd_ice1712_akm4xxx_build_controls", i1 false, i1 false}
!12 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 170, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/ice1712/ak4xxx.c", i32 50, i32 6}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
