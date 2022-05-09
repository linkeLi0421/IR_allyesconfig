; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/pci-icl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/pci-icl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_snd_sof_pci_intel_icl__247_78_snd_sof_pci_intel_icl_driver_init6 = internal global ptr @snd_sof_pci_intel_icl_driver_init, section ".initcall6.init", align 4
@snd_sof_pci_intel_icl_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sof_pci_ids, ptr @hda_pci_intel_probe, ptr @sof_pci_remove, ptr null, ptr null, ptr @sof_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_pci_intel_icl_driver_exit = internal global ptr @snd_sof_pci_intel_icl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [69 x i8] c"snd_sof_pci_intel_icl.file=sound/soc/sof/intel/snd-sof-pci-intel-icl\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [43 x i8] c"snd_sof_pci_intel_icl.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns250 = internal constant [61 x i8] c"snd_sof_pci_intel_icl.import_ns=SND_SOC_SOF_INTEL_HDA_COMMON\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns251 = internal constant [52 x i8] c"snd_sof_pci_intel_icl.import_ns=SND_SOC_SOF_PCI_DEV\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_pci_intel_icl\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof-audio-pci-intel-icl\00", [40 x i8] zeroinitializer }, align 32
@sof_pci_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 13512, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 15816, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 14536, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @jsl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19912, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @jsl_desc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sof_pci_pm = external dso_local constant %struct.dev_pm_ops, align 4
@icl_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_icl_machines, ptr @snd_soc_acpi_intel_icl_sdw_machines, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @icl_chip_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sof_icl_ops }, [36 x i8] zeroinitializer }, align 32
@jsl_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_jsl_machines, ptr null, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @jsl_chip_info, ptr @.str.6, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @sof_cnl_ops }, [36 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_icl_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@snd_soc_acpi_intel_icl_sdw_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@icl_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-icl-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel/sof\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel/sof-tplg\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-icl.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_icl_ops = external dso_local constant %struct.snd_sof_dsp_ops, align 4
@snd_soc_acpi_intel_jsl_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@jsl_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-jsl-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-jsl.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_cnl_ops = external dso_local constant %struct.snd_sof_dsp_ops, align 4
@___asan_gen_.8 = private unnamed_addr constant [29 x i8] c"snd_sof_pci_intel_icl_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 68, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 78, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 69, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"sof_pci_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 54, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"icl_desc\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 22, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"jsl_desc\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 38, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 34, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 31, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 32, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 33, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 49, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [33 x i8] c"../sound/soc/sof/intel/pci-icl.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 48, i32 25 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_import_ns250, ptr @__UNIQUE_ID_import_ns251, ptr @__UNIQUE_ID_license249, ptr @__exitcall_snd_sof_pci_intel_icl_driver_exit, ptr @__initcall__kmod_snd_sof_pci_intel_icl__247_78_snd_sof_pci_intel_icl_driver_init6, ptr @snd_sof_pci_intel_icl_driver_exit, ptr @snd_sof_pci_intel_icl_driver, ptr @.str, ptr @.str.1, ptr @sof_pci_ids, ptr @icl_desc, ptr @jsl_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_pci_intel_icl_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsl_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_pci_intel_icl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @snd_sof_pci_intel_icl_driver, ptr noundef null, ptr noundef nonnull @.str) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_pci_intel_icl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @pci_unregister_driver(ptr noundef nonnull @snd_sof_pci_intel_icl_driver) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_pci_intel_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_shutdown(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_snd_sof_pci_intel_icl__247_78_snd_sof_pci_intel_icl_driver_init6, !1, !"__initcall__kmod_snd_sof_pci_intel_icl__247_78_snd_sof_pci_intel_icl_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 78, i32 1}
!2 = !{ptr @__exitcall_snd_sof_pci_intel_icl_driver_exit, !1, !"__exitcall_snd_sof_pci_intel_icl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file248, !4, !"__UNIQUE_ID_file248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 80, i32 1}
!5 = !{ptr @__UNIQUE_ID_license249, !4, !"__UNIQUE_ID_license249", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_import_ns250, !7, !"__UNIQUE_ID_import_ns250", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 81, i32 1}
!8 = !{ptr @__UNIQUE_ID_import_ns251, !9, !"__UNIQUE_ID_import_ns251", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 82, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 69, i32 10}
!13 = !{ptr @snd_sof_pci_intel_icl_driver, !14, !"snd_sof_pci_intel_icl_driver", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 68, i32 26}
!15 = !{ptr @sof_pci_ids, !16, !"sof_pci_ids", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 54, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 34, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 31, i32 21}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 32, i32 23}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 33, i32 25}
!25 = !{ptr @icl_desc, !26, !"icl_desc", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 22, i32 34}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 49, i32 27}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 48, i32 25}
!31 = !{ptr @jsl_desc, !32, !"jsl_desc", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/intel/pci-icl.c", i32 38, i32 34}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
