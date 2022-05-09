; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/apl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/apl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_apl_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_apl_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_apl_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_apl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_apl_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_apl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+apl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_apl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_apl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_apl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22apl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_apl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_sof_debugfs_map = type { ptr, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dsp_arch_ops = type { ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@apl_dsp_debugfs = internal constant { [3 x %struct.snd_sof_debugfs_map], [36 x i8] } { [3 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str, i32 0, i32 0, i32 16384, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.1, i32 1, i32 0, i32 4096, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.2, i32 4, i32 0, i32 65536, i32 0 }], [36 x i8] zeroinitializer }, align 32
@skl_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@sof_apl_ops = dso_local constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @hda_dsp_probe, ptr @hda_dsp_remove, ptr @hda_dsp_shutdown, ptr @hda_dsp_cl_boot_firmware, ptr null, ptr null, ptr @hda_dsp_core_get, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr @hda_dsp_ipc_irq_thread, ptr @hda_dsp_ipc_send_msg, ptr @snd_sof_load_firmware_raw, ptr null, ptr @sof_fw_ready, ptr @hda_dsp_pcm_open, ptr @hda_dsp_pcm_close, ptr @hda_dsp_pcm_hw_params, ptr @hda_dsp_stream_hw_free, ptr @hda_dsp_pcm_trigger, ptr @hda_dsp_pcm_pointer, ptr @hda_dsp_pcm_ack, ptr @hda_probe_compr_assign, ptr @hda_probe_compr_free, ptr @hda_probe_compr_set_params, ptr @hda_probe_compr_trigger, ptr @hda_probe_compr_pointer, ptr @hda_ipc_msg_data, ptr @hda_ipc_pcm_params, ptr @hda_dsp_pre_fw_run, ptr @hda_dsp_post_fw_run, ptr @hda_dsp_ext_man_get_cavs_config_data, ptr @hda_dsp_suspend, ptr @hda_dsp_resume, ptr @hda_dsp_runtime_suspend, ptr @hda_dsp_runtime_resume, ptr @hda_dsp_runtime_idle, ptr @hda_dsp_set_hw_params_upon_resume, ptr @hda_dsp_set_power_state, ptr null, ptr @apl_dsp_debugfs, i32 3, ptr @hda_dsp_dump, ptr @hda_ipc_dump, ptr @snd_sof_debugfs_add_region_item_iomem, ptr @hda_dsp_trace_init, ptr @hda_dsp_trace_release, ptr @hda_dsp_trace_trigger, ptr null, ptr @hda_dsp_ipc_get_mailbox_offset, ptr @hda_dsp_ipc_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @hda_machine_select, ptr @hda_set_mach_params, ptr @skl_dai, i32 8, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@__kstrtab_sof_apl_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_apl_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_apl_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_apl_ops to i32), ptr @__kstrtab_sof_apl_ops, ptr @__kstrtabns_sof_apl_ops }, section "___ksymtab+sof_apl_ops", align 4
@apl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 2, i32 3, i32 1, i32 72, i32 -2147483648, i32 76, i32 1073741824, i32 80, i32 150, i32 6, i32 8192, i32 0, i32 0, i32 1, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_apl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_apl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_apl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @apl_chip_info to i32), ptr @__kstrtab_apl_chip_info, ptr @__kstrtabns_apl_chip_info }, section "___ksymtab+apl_chip_info", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pp\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"apl_dsp_debugfs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 22, i32 41 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"sof_apl_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 29, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"apl_chip_info\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 137, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 23, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 24, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [29 x i8] c"../sound/soc/sof/intel/apl.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 25, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_apl_chip_info, ptr @__ksymtab_sof_apl_ops, ptr @apl_dsp_debugfs, ptr @sof_apl_ops, ptr @apl_chip_info, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apl_dsp_debugfs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_apl_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_probe(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_shutdown(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_cl_boot_firmware(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_get(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_io_read(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write64(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sof_io_read64(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_irq_thread(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_send_msg(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_firmware_raw(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_fw_ready(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_close(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_free(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_trigger(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_pointer(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_ack(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_assign(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_free(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_set_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_trigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_pointer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_msg_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_pcm_params(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pre_fw_run(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_post_fw_run(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ext_man_get_cavs_config_data(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_suspend(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_idle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_hw_params_upon_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_power_state(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_dump(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_ipc_dump(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_init(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_release(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_trigger(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_mailbox_offset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_window_offset(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_register(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_machine_unregister(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_machine_select(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_set_mach_params(ptr noundef, ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @sof_apl_ops, !1, !"sof_apl_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/apl.c", i32 29, i32 30}
!2 = !{ptr @__ksymtab_sof_apl_ops, !3, !"__ksymtab_sof_apl_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/intel/apl.c", i32 135, i32 1}
!4 = !{ptr @apl_chip_info, !5, !"apl_chip_info", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/intel/apl.c", i32 137, i32 33}
!6 = !{ptr @__ksymtab_apl_chip_info, !7, !"__ksymtab_apl_chip_info", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/apl.c", i32 152, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/apl.c", i32 23, i32 3}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/apl.c", i32 24, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/apl.c", i32 25, i32 3}
!14 = !{ptr @apl_dsp_debugfs, !15, !"apl_dsp_debugfs", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/intel/apl.c", i32 22, i32 41}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
