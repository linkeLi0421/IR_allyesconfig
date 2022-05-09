; ModuleID = '/llk/IR_all_yes/sound/soc/sof/imx/imx-common.c_pt.bc'
source_filename = "../sound/soc/sof/imx/imx-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx8_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_imx8_dump\09\09\09\09"
module asm "\09.long\09__crc_imx8_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8_dump\22\09\09\09\09\09"
module asm "__kstrtabns_imx8_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx8_parse_clocks\22, \22a\22\09"
module asm "\09.weak\09__crc_imx8_parse_clocks\09\09\09\09"
module asm "\09.long\09__crc_imx8_parse_clocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8_parse_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8_parse_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_imx8_parse_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx8_enable_clocks\22, \22a\22\09"
module asm "\09.weak\09__crc_imx8_enable_clocks\09\09\09\09"
module asm "\09.long\09__crc_imx8_enable_clocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8_enable_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8_enable_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_imx8_enable_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx8_disable_clocks\22, \22a\22\09"
module asm "\09.weak\09__crc_imx8_disable_clocks\09\09\09\09"
module asm "\09.long\09__crc_imx8_disable_clocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8_disable_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8_disable_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_imx8_disable_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sof_ipc_dsp_oops_arch_hdr = type { i32, i32 }
%struct.sof_ipc_dsp_oops_xtensa = type { %struct.sof_ipc_dsp_oops_arch_hdr, %struct.sof_ipc_dsp_oops_plat_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sof_ipc_dsp_oops_plat_hdr = type { i32, i32, i32, i32, i32 }
%struct.sof_ipc_panic_info = type { %struct.sof_ipc_hdr, i32, [32 x i8], i32 }
%struct.imx_clocks = type { ptr, i32 }

@imx8_get_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid header size 0x%x. FW oops is bogus\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx8_get_registers\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/sof/imx/imx-common.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8_get_registers._entry_ptr = internal global ptr @imx8_get_registers._entry, section ".printk_index", align 4
@__kstrtab_imx8_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8_dump to i32), ptr @__kstrtab_imx8_dump, ptr @__kstrtabns_imx8_dump }, section "___ksymtab+imx8_dump", align 4
@imx8_parse_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request DSP clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx8_parse_clocks\00", [46 x i8] zeroinitializer }, align 32
@imx8_parse_clocks._entry_ptr = internal global ptr @imx8_parse_clocks._entry, section ".printk_index", align 4
@__kstrtab_imx8_parse_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8_parse_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8_parse_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8_parse_clocks to i32), ptr @__kstrtab_imx8_parse_clocks, ptr @__kstrtabns_imx8_parse_clocks }, section "___ksymtab+imx8_parse_clocks", align 4
@__kstrtab_imx8_enable_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8_enable_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8_enable_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8_enable_clocks to i32), ptr @__kstrtab_imx8_enable_clocks, ptr @__kstrtabns_imx8_enable_clocks }, section "___ksymtab+imx8_enable_clocks", align 4
@__kstrtab_imx8_disable_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8_disable_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8_disable_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8_disable_clocks to i32), ptr @__kstrtab_imx8_disable_clocks, ptr @__kstrtabns_imx8_disable_clocks }, section "___ksymtab+imx8_disable_clocks", align 4
@__UNIQUE_ID_file247 = internal constant [45 x i8] c"imx_common.file=sound/soc/sof/imx/imx-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [32 x i8] c"imx_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 35, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [34 x i8] c"../sound/soc/sof/imx/imx-common.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 83, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__ksymtab_imx8_disable_clocks, ptr @__ksymtab_imx8_dump, ptr @__ksymtab_imx8_enable_clocks, ptr @__ksymtab_imx8_parse_clocks, ptr @imx8_get_registers._entry, ptr @imx8_get_registers._entry_ptr, ptr @imx8_parse_clocks._entry, ptr @imx8_parse_clocks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_get_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_parse_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx8_get_registers(ptr noundef %sdev, ptr noundef %xoops, ptr noundef %panic_info, ptr noundef %stack, i32 noundef %stack_words) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_oops_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  %0 = ptrtoint ptr %dsp_oops_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsp_oops_offset, align 4
  tail call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %1, ptr noundef %xoops, i32 noundef 124) #4
  %totalsize = getelementptr inbounds %struct.sof_ipc_dsp_oops_arch_hdr, ptr %xoops, i32 0, i32 1
  %2 = ptrtoint ptr %totalsize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %totalsize, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp ugt i32 %3, 1024
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %3, %1
  tail call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add, ptr noundef %panic_info, i32 noundef 44) #4
  %add5 = add i32 %add, 44
  %mul = shl i32 %stack_words, 2
  tail call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add5, ptr noundef %stack, i32 noundef %mul) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx8_dump(ptr noundef %sdev, i32 %flags) #0 align 64 {
entry:
  %xoops = alloca %struct.sof_ipc_dsp_oops_xtensa, align 1
  %panic_info = alloca %struct.sof_ipc_panic_info, align 1
  %stack = alloca [32 x i32], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %xoops) #4
  %0 = call ptr @memset(ptr %xoops, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %panic_info) #4
  %1 = call ptr @memset(ptr %panic_info, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #4
  %2 = call ptr @memset(ptr %stack, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !33
  %debug_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 17
  %4 = ptrtoint ptr %debug_box to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_box, align 4
  %add = add i32 %5, 4
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add, ptr noundef nonnull %status, i32 noundef 4) #4
  %dsp_oops_offset.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  %6 = ptrtoint ptr %dsp_oops_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_oops_offset.i, align 4
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %7, ptr noundef nonnull %xoops, i32 noundef 124) #4
  %totalsize.i = getelementptr inbounds %struct.sof_ipc_dsp_oops_arch_hdr, ptr %xoops, i32 0, i32 1
  %8 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %totalsize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %9)
  %cmp.i = icmp ugt i32 %9, 1024
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %9) #7
  br label %imx8_get_registers.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %9, %7
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add.i, ptr noundef nonnull %panic_info, i32 noundef 44) #4
  %add5.i = add i32 %add.i, 44
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %add5.i, ptr noundef nonnull %stack, i32 noundef 128) #4
  br label %imx8_get_registers.exit

imx8_get_registers.exit:                          ; preds = %if.end.i, %do.end.i
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @sof_print_oops_and_stack(ptr noundef %sdev, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %13, ptr noundef nonnull %xoops, ptr noundef nonnull %panic_info, ptr noundef nonnull %stack, i32 noundef 32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %panic_info) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %xoops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_print_oops_and_stack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx8_parse_clocks(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %clks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %num_dsp_clks = getelementptr inbounds %struct.imx_clocks, ptr %clks, i32 0, i32 1
  %2 = ptrtoint ptr %num_dsp_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dsp_clks, align 4
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call = tail call i32 @devm_clk_bulk_get(ptr noundef %1, i32 noundef %3, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx8_enable_clocks(ptr nocapture readnone %sdev, ptr nocapture noundef readonly %clks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dsp_clks = getelementptr inbounds %struct.imx_clocks, ptr %clks, i32 0, i32 1
  %0 = ptrtoint ptr %num_dsp_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_dsp_clks, align 4
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %1, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %1, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_bulk_prepare_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_bulk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %1, ptr noundef %3) #4
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx8_disable_clocks(ptr nocapture readnone %sdev, ptr nocapture noundef readonly %clks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dsp_clks = getelementptr inbounds %struct.imx_clocks, ptr %clks, i32 0, i32 1
  %0 = ptrtoint ptr %num_dsp_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_dsp_clks, align 4
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %1, ptr noundef %3) #4
  tail call void @clk_bulk_unprepare(i32 noundef %1, ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/imx/imx-common.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @imx8_get_registers._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @imx8_get_registers._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_imx8_dump, !9, !"__ksymtab_imx8_dump", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/imx/imx-common.c", i32 75, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/imx/imx-common.c", i32 83, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @imx8_parse_clocks._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @imx8_parse_clocks._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_imx8_parse_clocks, !16, !"__ksymtab_imx8_parse_clocks", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/imx/imx-common.c", i32 87, i32 1}
!17 = !{ptr @__ksymtab_imx8_enable_clocks, !18, !"__ksymtab_imx8_enable_clocks", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/imx/imx-common.c", i32 93, i32 1}
!19 = !{ptr @__ksymtab_imx8_disable_clocks, !20, !"__ksymtab_imx8_disable_clocks", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/imx/imx-common.c", i32 99, i32 1}
!21 = !{ptr @__UNIQUE_ID_file247, !22, !"__UNIQUE_ID_file247", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/imx/imx-common.c", i32 101, i32 1}
!23 = !{ptr @__UNIQUE_ID_license248, !22, !"__UNIQUE_ID_license248", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
