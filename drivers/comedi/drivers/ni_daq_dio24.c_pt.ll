; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_daq_dio24.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_daq_dio24.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_ni_daq_dio24__236_76_driver_dio24_init6 = internal global ptr @driver_dio24_init, section ".initcall6.init", align 4
@driver_dio24 = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pcmcia_disable, ptr @dio24_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dio24_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @dio24_cs_attach, ptr @comedi_pcmcia_auto_unconfig, ptr null, ptr null, ptr null, ptr @dio24_cs_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_driver_dio24_exit = internal global ptr @driver_dio24_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [59 x i8] c"ni_daq_dio24.author=Daniel Vecino Castel <dvecino@able.es>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [87 x i8] c"ni_daq_dio24.description=Comedi driver for National Instruments PCMCIA DAQ-Card DIO-24\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [54 x i8] c"ni_daq_dio24.file=drivers/comedi/drivers/ni_daq_dio24\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [25 x i8] c"ni_daq_dio24.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ni_daq_dio24\00", [19 x i8] zeroinitializer }, align 32
@dio24_cs_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 267, i16 18268, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"driver_dio24\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 51, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"dio24_cs_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 69, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 52, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"dio24_cs_ids\00", align 1
@___asan_gen_.11 = private constant [41 x i8] c"../drivers/comedi/drivers/ni_daq_dio24.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 63, i32 38 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_driver_dio24_exit, ptr @__initcall__kmod_ni_daq_dio24__236_76_driver_dio24_init6, ptr @driver_dio24_exit, ptr @driver_dio24, ptr @dio24_cs_driver, ptr @.str, ptr @dio24_cs_ids], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_dio24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dio24_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dio24_cs_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_dio24_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_driver_register(ptr noundef nonnull @driver_dio24, ptr noundef nonnull @dio24_cs_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @driver_dio24_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_pcmcia_driver_unregister(ptr noundef nonnull @driver_dio24, ptr noundef nonnull @dio24_cs_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_disable(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio24_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pcmcia_dev(ptr noundef %dev) #3
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_flags, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %config_flags, align 4
  %call1 = tail call i32 @comedi_pcmcia_enable(ptr noundef %dev, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %call2 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %7 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdevices, align 4
  %call7 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %8, ptr noundef null, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pcmcia_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio24_cs_attach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_auto_config(ptr noundef %link, ptr noundef nonnull @driver_dio24) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_ni_daq_dio24__236_76_driver_dio24_init6, !1, !"__initcall__kmod_ni_daq_dio24__236_76_driver_dio24_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 76, i32 1}
!2 = !{ptr @__exitcall_driver_dio24_exit, !1, !"__exitcall_driver_dio24_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 78, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 79, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 81, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 52, i32 17}
!12 = !{ptr @driver_dio24, !13, !"driver_dio24", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 51, i32 29}
!14 = !{ptr @dio24_cs_driver, !15, !"dio24_cs_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 69, i32 29}
!16 = !{ptr @dio24_cs_ids, !17, !"dio24_cs_ids", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_daq_dio24.c", i32 63, i32 38}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
