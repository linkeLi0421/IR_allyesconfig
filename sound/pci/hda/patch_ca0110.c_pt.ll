; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_ca0110.c_pt.bc'
source_filename = "../sound/pci/hda/patch_ca0110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_gen_spec = type <{ [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, [32 x i8], ptr, ptr, i32, %struct.mutex, %struct.hda_multi_out, i16, [3 x i16], i32, i32, [18 x i16], i16, i16, i16, [2 x i8], [36 x ptr], [36 x i32], i16, [2 x i8], i32, i32, %struct.hda_input_mux, [3 x i32], i32, i32, i32, [3 x ptr], %struct.auto_pin_cfg, %struct.snd_array, [5 x i16], [36 x i16], [2 x i8], [36 x i32], i16, i16, i32, i32, [16 x i16], i32, [18 x i16], %struct.snd_array, [5 x i32], [5 x i32], [5 x i32], [3 x i32], [5 x i32], [36 x [18 x i32]], [36 x i32], i32, i32, i32, [3 x %struct.automic_entry], i48, [4 x i8], i64, i64, ptr, ptr, ptr, i8, i8, i16, i16, [2 x i8], [4 x i32], %struct.hda_vmaster_mute_hook, %struct.hda_loopback_check, %struct.snd_array, i32, [4 x %struct.hda_multi_io], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }>
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.hda_input_mux = type { i32, [36 x %struct.hda_input_mux_item] }
%struct.hda_input_mux_item = type { [32 x i8], i32 }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }
%struct.automic_entry = type { i16, i32, i32 }
%struct.hda_vmaster_mute_hook = type { ptr, ptr, ptr }
%struct.hda_loopback_check = type { ptr, i32 }
%struct.hda_multi_io = type { i16, i16, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }

@__UNIQUE_ID_file239 = internal constant [61 x i8] c"snd_hda_codec_ca0110.file=sound/pci/hda/snd-hda-codec-ca0110\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [33 x i8] c"snd_hda_codec_ca0110.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [68 x i8] c"snd_hda_codec_ca0110.description=Creative CA0110-IBG HD-audio codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_ca0110__242_88_ca0110_driver_init6 = internal global ptr @ca0110_driver_init, section ".initcall6.init", align 4
@ca0110_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_ca0110 }, [52 x i8] zeroinitializer }, align 32
@__exitcall_ca0110_driver_exit = internal global ptr @ca0110_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hda_codec_ca0110\00", [43 x i8] zeroinitializer }, align 32
@snd_hda_id_ca0110 = internal constant { [4 x %struct.hda_device_id], [48 x i8] } { [4 x %struct.hda_device_id] [%struct.hda_device_id { i32 285343754, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_ca0110 to i32) }, %struct.hda_device_id { i32 285343755, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_ca0110 to i32) }, %struct.hda_device_id { i32 285343757, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_ca0110 to i32) }, %struct.hda_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CA0110-IBG\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SB0880 X-Fi\00", [20 x i8] zeroinitializer }, align 32
@ca0110_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @snd_hda_gen_build_controls, ptr @snd_hda_gen_build_pcms, ptr @snd_hda_gen_init, ptr @snd_hda_gen_free, ptr @snd_hda_jack_unsol_event, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"ca0110_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 84, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 88, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"snd_hda_id_ca0110\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 73, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 74, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 76, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"ca0110_patch_ops\00", align 1
@___asan_gen_.19 = private constant [32 x i8] c"../sound/pci/hda/patch_ca0110.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 19, i32 35 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_ca0110_driver_exit, ptr @__initcall__kmod_snd_hda_codec_ca0110__242_88_ca0110_driver_init6, ptr @ca0110_driver_exit, ptr @ca0110_driver, ptr @.str, ptr @snd_hda_id_ca0110, ptr @.str.1, ptr @.str.2, ptr @ca0110_patch_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca0110_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_ca0110 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca0110_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ca0110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @ca0110_driver, ptr noundef nonnull @.str, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ca0110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @ca0110_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_ca0110(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5704) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_hda_gen_spec_init(ptr noundef nonnull %call7.i.i) #5
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec2, align 8
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops, ptr @ca0110_patch_ops, i32 40)
  %multi_cap_vol = getelementptr inbounds %struct.hda_gen_spec, ptr %call7.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %multi_cap_vol to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load = load i64, ptr %multi_cap_vol, align 4
  %bf.set = or i64 %bf.load, 2199023255552
  store i64 %bf.set, ptr %multi_cap_vol, align 4
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %needs_damn_long_delay = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %needs_damn_long_delay to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %needs_damn_long_delay, align 4
  %bf.set5 = or i16 %bf.load3, 64
  store i16 %bf.set5, ptr %needs_damn_long_delay, align 4
  %7 = load ptr, ptr %spec2, align 8
  %autocfg.i = getelementptr inbounds %struct.hda_gen_spec, ptr %7, i32 0, i32 33
  %call.i = tail call i32 @snd_hda_parse_pin_defcfg(ptr noundef %codec, ptr noundef %autocfg.i, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %ca0110_parse_auto_config.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

ca0110_parse_auto_config.exit:                    ; preds = %if.end
  %call3.i = tail call i32 @snd_hda_gen_parse_auto_config(ptr noundef %codec, ptr noundef %autocfg.i) #5
  %8 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %ca0110_parse_auto_config.exit.error_crit_edge, label %ca0110_parse_auto_config.exit.cleanup_crit_edge

ca0110_parse_auto_config.exit.cleanup_crit_edge:  ; preds = %ca0110_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ca0110_parse_auto_config.exit.error_crit_edge:    ; preds = %ca0110_parse_auto_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

error:                                            ; preds = %ca0110_parse_auto_config.exit.error_crit_edge, %if.end.error_crit_edge
  %retval.0.i20 = phi i32 [ %8, %ca0110_parse_auto_config.exit.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  tail call void @snd_hda_gen_free(ptr noundef %codec) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %ca0110_parse_auto_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %ca0110_parse_auto_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_spec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_gen_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_build_pcms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_unsol_event(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_gen_parse_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_file239, !1, !"__UNIQUE_ID_file239", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_ca0110.c", i32 81, i32 1}
!2 = !{ptr @__UNIQUE_ID_license240, !1, !"__UNIQUE_ID_license240", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_ca0110.c", i32 82, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_ca0110__242_88_ca0110_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_ca0110__242_88_ca0110_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_ca0110.c", i32 88, i32 1}
!7 = !{ptr @__exitcall_ca0110_driver_exit, !6, !"__exitcall_ca0110_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ca0110_driver, !10, !"ca0110_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_ca0110.c", i32 84, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_ca0110.c", i32 74, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_ca0110.c", i32 76, i32 2}
!15 = !{ptr @snd_hda_id_ca0110, !16, !"snd_hda_id_ca0110", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_ca0110.c", i32 73, i32 35}
!17 = !{ptr @ca0110_patch_ops, !18, !"ca0110_patch_ops", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_ca0110.c", i32 19, i32 35}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
