; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq.c_pt.bc'
source_filename = "../sound/core/seq/seq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }

@seq_client_load = dso_local global { [15 x i32], [36 x i8] } { [15 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@seq_default_timer_class = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@seq_default_timer_sclass = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@seq_default_timer_card = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@seq_default_timer_device = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@seq_default_timer_subdevice = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@seq_default_timer_resolution = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author229 = internal constant [89 x i8] c"snd_seq.author=Frank van de Pol <fvdpol@coil.demon.nl>, Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [65 x i8] c"snd_seq.description=Advanced Linux Sound Architecture sequencer.\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [36 x i8] c"snd_seq.file=sound/core/seq/snd-seq\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [20 x i8] c"snd_seq.license=GPL\00", section ".modinfo", align 1
@__param_str_seq_client_load = internal constant [24 x i8] c"snd_seq.seq_client_load\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_seq_client_load = internal constant %struct.kparam_array { i32 15, i32 4, ptr null, ptr @param_ops_int, ptr @seq_client_load }, align 4
@__param_seq_client_load = internal constant %struct.kernel_param { ptr @__param_str_seq_client_load, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_seq_client_load } }, section "__param", align 4
@__UNIQUE_ID_seq_client_loadtype233 = internal constant [46 x i8] c"snd_seq.parmtype=seq_client_load:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_client_load234 = internal constant [90 x i8] c"snd_seq.parm=seq_client_load:The numbers of global (system) clients to load through kmod.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_class = internal constant [32 x i8] c"snd_seq.seq_default_timer_class\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_seq_default_timer_class = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_class, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_class } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_classtype235 = internal constant [45 x i8] c"snd_seq.parmtype=seq_default_timer_class:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_class236 = internal constant [62 x i8] c"snd_seq.parm=seq_default_timer_class:The default timer class.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_sclass = internal constant [33 x i8] c"snd_seq.seq_default_timer_sclass\00", align 1
@__param_seq_default_timer_sclass = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_sclass, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_sclass } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_sclasstype237 = internal constant [46 x i8] c"snd_seq.parmtype=seq_default_timer_sclass:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_sclass238 = internal constant [69 x i8] c"snd_seq.parm=seq_default_timer_sclass:The default timer slave class.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_card = internal constant [31 x i8] c"snd_seq.seq_default_timer_card\00", align 1
@__param_seq_default_timer_card = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_card, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_card } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_cardtype239 = internal constant [44 x i8] c"snd_seq.parmtype=seq_default_timer_card:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_card240 = internal constant [67 x i8] c"snd_seq.parm=seq_default_timer_card:The default timer card number.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_device = internal constant [33 x i8] c"snd_seq.seq_default_timer_device\00", align 1
@__param_seq_default_timer_device = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_device, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_device } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_devicetype241 = internal constant [46 x i8] c"snd_seq.parmtype=seq_default_timer_device:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_device242 = internal constant [71 x i8] c"snd_seq.parm=seq_default_timer_device:The default timer device number.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_subdevice = internal constant [36 x i8] c"snd_seq.seq_default_timer_subdevice\00", align 1
@__param_seq_default_timer_subdevice = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_subdevice, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_subdevice } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_subdevicetype243 = internal constant [49 x i8] c"snd_seq.parmtype=seq_default_timer_subdevice:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_subdevice244 = internal constant [77 x i8] c"snd_seq.parm=seq_default_timer_subdevice:The default timer subdevice number.\00", section ".modinfo", align 1
@__param_str_seq_default_timer_resolution = internal constant [37 x i8] c"snd_seq.seq_default_timer_resolution\00", align 1
@__param_seq_default_timer_resolution = internal constant %struct.kernel_param { ptr @__param_str_seq_default_timer_resolution, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @seq_default_timer_resolution } }, section "__param", align 4
@__UNIQUE_ID_seq_default_timer_resolutiontype245 = internal constant [50 x i8] c"snd_seq.parmtype=seq_default_timer_resolution:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_default_timer_resolution246 = internal constant [78 x i8] c"snd_seq.parm=seq_default_timer_resolution:The default timer resolution in Hz.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [31 x i8] c"snd_seq.alias=char-major-116-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [30 x i8] c"snd_seq.alias=devname:snd/seq\00", section ".modinfo", align 1
@__initcall__kmod_snd_seq__249_119_alsa_seq_init6 = internal global ptr @alsa_seq_init, section ".initcall6.init", align 4
@__exitcall_alsa_seq_exit = internal global ptr @alsa_seq_exit, section ".exitcall.exit", align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"seq_client_load\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 27, i32 5 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"seq_default_timer_class\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 29, i32 5 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"seq_default_timer_sclass\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 30, i32 5 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"seq_default_timer_card\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 31, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"seq_default_timer_device\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 32, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"seq_default_timer_subdevice\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 39, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"seq_default_timer_resolution\00", align 1
@___asan_gen_.20 = private constant [24 x i8] c"../sound/core/seq/seq.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 40, i32 5 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_seq_client_load234, ptr @__UNIQUE_ID_seq_client_loadtype233, ptr @__UNIQUE_ID_seq_default_timer_card240, ptr @__UNIQUE_ID_seq_default_timer_cardtype239, ptr @__UNIQUE_ID_seq_default_timer_class236, ptr @__UNIQUE_ID_seq_default_timer_classtype235, ptr @__UNIQUE_ID_seq_default_timer_device242, ptr @__UNIQUE_ID_seq_default_timer_devicetype241, ptr @__UNIQUE_ID_seq_default_timer_resolution246, ptr @__UNIQUE_ID_seq_default_timer_resolutiontype245, ptr @__UNIQUE_ID_seq_default_timer_sclass238, ptr @__UNIQUE_ID_seq_default_timer_sclasstype237, ptr @__UNIQUE_ID_seq_default_timer_subdevice244, ptr @__UNIQUE_ID_seq_default_timer_subdevicetype243, ptr @__exitcall_alsa_seq_exit, ptr @__initcall__kmod_snd_seq__249_119_alsa_seq_init6, ptr @__param_seq_client_load, ptr @__param_seq_default_timer_card, ptr @__param_seq_default_timer_class, ptr @__param_seq_default_timer_device, ptr @__param_seq_default_timer_resolution, ptr @__param_seq_default_timer_sclass, ptr @__param_seq_default_timer_subdevice, ptr @alsa_seq_exit, ptr @seq_client_load, ptr @seq_default_timer_class, ptr @seq_default_timer_sclass, ptr @seq_default_timer_card, ptr @seq_default_timer_device, ptr @seq_default_timer_subdevice, ptr @seq_default_timer_resolution], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_client_load to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_sclass to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_card to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_subdevice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_default_timer_resolution to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_seq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @snd_seq_system_client_done() #2
  tail call void @snd_seq_info_done() #2
  tail call void @snd_seq_queues_delete() #2
  tail call void @snd_sequencer_device_done() #2
  tail call void @snd_seq_autoload_exit() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_system_client_done() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_info_done() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_queues_delete() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sequencer_device_done() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_autoload_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_seq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @client_init_data() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_sequencer_device_init() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @snd_seq_info_init() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.error_device_crit_edge, label %if.end8

if.end4.error_device_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %error_device

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @snd_seq_system_client_init() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %error_info, label %if.end12

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @snd_seq_autoload_init() #2
  br label %cleanup

error_info:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @snd_seq_info_done() #2
  br label %error_device

error_device:                                     ; preds = %error_info, %if.end4.error_device_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.error_device_crit_edge ], [ %call9, %error_info ]
  tail call void @snd_sequencer_device_done() #2
  br label %cleanup

cleanup:                                          ; preds = %error_device, %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.0, %error_device ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @client_init_data() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sequencer_device_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_info_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_system_client_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_autoload_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @seq_client_load, !1, !"seq_client_load", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq.c", i32 27, i32 5}
!2 = !{ptr @seq_default_timer_class, !3, !"seq_default_timer_class", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq.c", i32 29, i32 5}
!4 = !{ptr @seq_default_timer_sclass, !5, !"seq_default_timer_sclass", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq.c", i32 30, i32 5}
!6 = !{ptr @seq_default_timer_card, !7, !"seq_default_timer_card", i1 false, i1 false}
!7 = !{!"../sound/core/seq/seq.c", i32 31, i32 5}
!8 = !{ptr @seq_default_timer_device, !9, !"seq_default_timer_device", i1 false, i1 false}
!9 = !{!"../sound/core/seq/seq.c", i32 32, i32 5}
!10 = !{ptr @seq_default_timer_subdevice, !11, !"seq_default_timer_subdevice", i1 false, i1 false}
!11 = !{!"../sound/core/seq/seq.c", i32 39, i32 5}
!12 = !{ptr @seq_default_timer_resolution, !13, !"seq_default_timer_resolution", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq.c", i32 40, i32 5}
!14 = !{ptr @__UNIQUE_ID_author229, !15, !"__UNIQUE_ID_author229", i1 false, i1 false}
!15 = !{!"../sound/core/seq/seq.c", i32 42, i32 1}
!16 = !{ptr @__UNIQUE_ID_description230, !17, !"__UNIQUE_ID_description230", i1 false, i1 false}
!17 = !{!"../sound/core/seq/seq.c", i32 43, i32 1}
!18 = !{ptr @__UNIQUE_ID_file231, !19, !"__UNIQUE_ID_file231", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq.c", i32 44, i32 1}
!20 = !{ptr @__UNIQUE_ID_license232, !19, !"__UNIQUE_ID_license232", i1 false, i1 false}
!21 = !{ptr @__param_seq_client_load, !22, !"__param_seq_client_load", i1 false, i1 false}
!22 = !{!"../sound/core/seq/seq.c", i32 46, i32 1}
!23 = !{ptr @__UNIQUE_ID_seq_client_loadtype233, !22, !"__UNIQUE_ID_seq_client_loadtype233", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_seq_client_load234, !25, !"__UNIQUE_ID_seq_client_load234", i1 false, i1 false}
!25 = !{!"../sound/core/seq/seq.c", i32 47, i32 1}
!26 = !{ptr @__param_seq_default_timer_class, !27, !"__param_seq_default_timer_class", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq.c", i32 48, i32 1}
!28 = !{ptr @__UNIQUE_ID_seq_default_timer_classtype235, !27, !"__UNIQUE_ID_seq_default_timer_classtype235", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_seq_default_timer_class236, !30, !"__UNIQUE_ID_seq_default_timer_class236", i1 false, i1 false}
!30 = !{!"../sound/core/seq/seq.c", i32 49, i32 1}
!31 = !{ptr @__param_seq_default_timer_sclass, !32, !"__param_seq_default_timer_sclass", i1 false, i1 false}
!32 = !{!"../sound/core/seq/seq.c", i32 50, i32 1}
!33 = !{ptr @__UNIQUE_ID_seq_default_timer_sclasstype237, !32, !"__UNIQUE_ID_seq_default_timer_sclasstype237", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_seq_default_timer_sclass238, !35, !"__UNIQUE_ID_seq_default_timer_sclass238", i1 false, i1 false}
!35 = !{!"../sound/core/seq/seq.c", i32 51, i32 1}
!36 = !{ptr @__param_seq_default_timer_card, !37, !"__param_seq_default_timer_card", i1 false, i1 false}
!37 = !{!"../sound/core/seq/seq.c", i32 52, i32 1}
!38 = !{ptr @__UNIQUE_ID_seq_default_timer_cardtype239, !37, !"__UNIQUE_ID_seq_default_timer_cardtype239", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_seq_default_timer_card240, !40, !"__UNIQUE_ID_seq_default_timer_card240", i1 false, i1 false}
!40 = !{!"../sound/core/seq/seq.c", i32 53, i32 1}
!41 = !{ptr @__param_seq_default_timer_device, !42, !"__param_seq_default_timer_device", i1 false, i1 false}
!42 = !{!"../sound/core/seq/seq.c", i32 54, i32 1}
!43 = !{ptr @__UNIQUE_ID_seq_default_timer_devicetype241, !42, !"__UNIQUE_ID_seq_default_timer_devicetype241", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_seq_default_timer_device242, !45, !"__UNIQUE_ID_seq_default_timer_device242", i1 false, i1 false}
!45 = !{!"../sound/core/seq/seq.c", i32 55, i32 1}
!46 = !{ptr @__param_seq_default_timer_subdevice, !47, !"__param_seq_default_timer_subdevice", i1 false, i1 false}
!47 = !{!"../sound/core/seq/seq.c", i32 56, i32 1}
!48 = !{ptr @__UNIQUE_ID_seq_default_timer_subdevicetype243, !47, !"__UNIQUE_ID_seq_default_timer_subdevicetype243", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_seq_default_timer_subdevice244, !50, !"__UNIQUE_ID_seq_default_timer_subdevice244", i1 false, i1 false}
!50 = !{!"../sound/core/seq/seq.c", i32 57, i32 1}
!51 = !{ptr @__param_seq_default_timer_resolution, !52, !"__param_seq_default_timer_resolution", i1 false, i1 false}
!52 = !{!"../sound/core/seq/seq.c", i32 58, i32 1}
!53 = !{ptr @__UNIQUE_ID_seq_default_timer_resolutiontype245, !52, !"__UNIQUE_ID_seq_default_timer_resolutiontype245", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_seq_default_timer_resolution246, !55, !"__UNIQUE_ID_seq_default_timer_resolution246", i1 false, i1 false}
!55 = !{!"../sound/core/seq/seq.c", i32 59, i32 1}
!56 = !{ptr @__UNIQUE_ID_alias247, !57, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!57 = !{!"../sound/core/seq/seq.c", i32 61, i32 1}
!58 = !{ptr @__UNIQUE_ID_alias248, !59, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!59 = !{!"../sound/core/seq/seq.c", i32 62, i32 1}
!60 = !{ptr @__initcall__kmod_snd_seq__249_119_alsa_seq_init6, !61, !"__initcall__kmod_snd_seq__249_119_alsa_seq_init6", i1 false, i1 false}
!61 = !{!"../sound/core/seq/seq.c", i32 119, i32 1}
!62 = !{ptr @__exitcall_alsa_seq_exit, !63, !"__exitcall_alsa_seq_exit", i1 false, i1 false}
!63 = !{!"../sound/core/seq/seq.c", i32 120, i32 1}
!64 = !{ptr @__param_str_seq_client_load, !22, !"__param_str_seq_client_load", i1 false, i1 false}
!65 = !{ptr @__param_arr_seq_client_load, !22, !"__param_arr_seq_client_load", i1 false, i1 false}
!66 = !{ptr @__param_str_seq_default_timer_class, !27, !"__param_str_seq_default_timer_class", i1 false, i1 false}
!67 = !{ptr @__param_str_seq_default_timer_sclass, !32, !"__param_str_seq_default_timer_sclass", i1 false, i1 false}
!68 = !{ptr @__param_str_seq_default_timer_card, !37, !"__param_str_seq_default_timer_card", i1 false, i1 false}
!69 = !{ptr @__param_str_seq_default_timer_device, !42, !"__param_str_seq_default_timer_device", i1 false, i1 false}
!70 = !{ptr @__param_str_seq_default_timer_subdevice, !47, !"__param_str_seq_default_timer_subdevice", i1 false, i1 false}
!71 = !{ptr @__param_str_seq_default_timer_resolution, !52, !"__param_str_seq_default_timer_resolution", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
