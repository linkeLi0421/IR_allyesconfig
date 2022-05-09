; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/lpass-sc7180.c_pt.bc'
source_filename = "../sound/soc/qcom/lpass-sc7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lpass_variant = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lpass_data = type { ptr, [8 x ptr], [8 x ptr], [8 x i32], [8 x i32], [8 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, [8 x ptr], [4 x ptr], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], ptr, ptr, [4 x ptr], ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_snd_soc_lpass_sc7180__238_302_sc7180_lpass_cpu_platform_driver_init6 = internal global ptr @sc7180_lpass_cpu_platform_driver_init, section ".initcall6.init", align 4
@sc7180_lpass_cpu_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_qcom_lpass_cpu_platform_probe, ptr @asoc_qcom_lpass_cpu_platform_remove, ptr @asoc_qcom_lpass_cpu_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc7180_lpass_cpu_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc7180_lpass_cpu_platform_driver_exit = internal global ptr @sc7180_lpass_cpu_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [57 x i8] c"snd_soc_lpass_sc7180.description=SC7180 LPASS CPU DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [62 x i8] c"snd_soc_lpass_sc7180.file=sound/soc/qcom/snd-soc-lpass-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [36 x i8] c"snd_soc_lpass_sc7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc7180-lpass-cpu\00", [47 x i8] zeroinitializer }, align 32
@sc7180_lpass_cpu_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-lpass-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sc7180_data = internal global { %struct.lpass_variant, [328 x i8] } { %struct.lpass_variant { i32 36864, i32 4096, i32 3, i32 49152, i32 4096, i32 5, i32 409600, i32 4096, i32 4, i32 98304, i32 4096, i32 4, i32 4096, i32 4096, i32 3, %struct.reg_field { i32 4096, i32 17, i32 17, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 16, i32 16, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 11, i32 15, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 10, i32 10, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 9, i32 9, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 4, i32 8, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 3, i32 3, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 2, i32 2, i32 3, i32 4096 }, %struct.reg_field { i32 4096, i32 0, i32 1, i32 3, i32 4096 }, i32 405504, i32 0, i32 1, i32 4096, i32 4104, i32 397504, i32 397384, i32 397388, i32 8, i32 397364, i32 397368, i32 4, i32 397512, i32 397340, %struct.reg_field { i32 397340, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 1, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 5, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 397340, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 1, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 16, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 28, i32 29, i32 0, i32 0 }, %struct.reg_field { i32 397512, i32 30, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 4096, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 4096, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field { i32 397368, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397368, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 397368, i32 2, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 397368, i32 5, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 397504, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397504, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 4104, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397364, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 397384, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 397388, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 409600, i32 13, i32 13, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 10, i32 12, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 1, i32 5, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 0, i32 0, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 14, i32 14, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 15, i32 15, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 16, i32 16, i32 4, i32 4096 }, %struct.reg_field { i32 409600, i32 18, i32 18, i32 4, i32 4096 }, %struct.reg_field { i32 49152, i32 12, i32 15, i32 5, i32 4096 }, %struct.reg_field { i32 49152, i32 20, i32 20, i32 5, i32 4096 }, %struct.reg_field { i32 49152, i32 16, i32 19, i32 5, i32 4096 }, %struct.reg_field { i32 49152, i32 1, i32 5, i32 5, i32 4096 }, %struct.reg_field { i32 49152, i32 0, i32 0, i32 5, i32 4096 }, %struct.reg_field { i32 49152, i32 21, i32 21, i32 5, i32 4096 }, %struct.reg_field { i32 98304, i32 12, i32 16, i32 4, i32 4096 }, %struct.reg_field { i32 98304, i32 21, i32 21, i32 4, i32 4096 }, %struct.reg_field { i32 98304, i32 17, i32 20, i32 4, i32 4096 }, %struct.reg_field { i32 98304, i32 1, i32 5, i32 4, i32 4096 }, %struct.reg_field { i32 98304, i32 0, i32 0, i32 4, i32 4096 }, %struct.reg_field { i32 98304, i32 22, i32 22, i32 4, i32 4096 }, i32 1, i32 5, ptr @sc7180_lpass_init, ptr @sc7180_lpass_exit, ptr @sc7180_lpass_alloc_dma_channel, ptr @sc7180_lpass_free_dma_channel, ptr @sc7180_lpass_cpu_dai_driver, i32 3, ptr @.compoundliteral, ptr @.compoundliteral.5, ptr @.compoundliteral.9, i32 3 }, [328 x i8] zeroinitializer }, align 32
@sc7180_lpass_cpu_dai_driver = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.18, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 2056, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 8, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.21, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr @lpass_cpu_pcm_new, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.22, i64 8, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.23, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_hdmi_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.24, i64 128, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk0\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk0\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcnoc-sway-clk\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio-core\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcnoc-mport-clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@sc7180_lpass_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 141, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get clocks %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sc7180_lpass_init\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/qcom/lpass-sc7180.c\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc7180_lpass_init._entry_ptr = internal global ptr @sc7180_lpass_init._entry, section ".printk_index", align 4
@sc7180_lpass_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 147, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sc7180 clk_enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@sc7180_lpass_init._entry_ptr.17 = internal global ptr @sc7180_lpass_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Primary MI2S\00", [19 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_cpu_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Primary Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Primary Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Secondary MI2S\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Secondary Playback\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hdmi\00", [27 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_hdmi_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hdmi Playback\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [33 x i8] c"sc7180_lpass_cpu_platform_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 292, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 294, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"sc7180_lpass_cpu_device_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 286, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"sc7180_data\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 163, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"sc7180_lpass_cpu_dai_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 22, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 273, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 274, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 277, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 278, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 265, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 266, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 267, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 147, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 25, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 36, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 27, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 49, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 51, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 64, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [33 x i8] c"../sound/soc/qcom/lpass-sc7180.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 66, i32 19 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_sc7180_lpass_cpu_platform_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_sc7180__238_302_sc7180_lpass_cpu_platform_driver_init6, ptr @sc7180_lpass_cpu_platform_driver_exit, ptr @sc7180_lpass_init._entry, ptr @sc7180_lpass_init._entry.15, ptr @sc7180_lpass_init._entry_ptr, ptr @sc7180_lpass_init._entry_ptr.17, ptr @sc7180_lpass_cpu_platform_driver, ptr @.str, ptr @sc7180_lpass_cpu_device_id, ptr @sc7180_data, ptr @sc7180_lpass_cpu_dai_driver, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lpass_cpu_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lpass_cpu_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_data to i32), i32 1304, i32 1632, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lpass_cpu_dai_driver to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lpass_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lpass_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_lpass_cpu_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc7180_lpass_cpu_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc7180_lpass_cpu_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc7180_lpass_cpu_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_platform_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_platform_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_qcom_lpass_cpu_platform_shutdown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_lpass_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant1 = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %num_clks = getelementptr inbounds %struct.lpass_variant, ptr %3, i32 0, i32 97
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !67

entry.devm_kcalloc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %8, i32 noundef 3520) #5
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %entry.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %entry.devm_kcalloc.exit_crit_edge ]
  %clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i, ptr %clks, align 4
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clks, align 4
  %num_clks5 = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %num_clks5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_clks5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp49 = icmp sgt i32 %11, 0
  br i1 %cmp49, label %for.body.lr.ph, label %devm_kcalloc.exit.for.end_crit_edge

devm_kcalloc.exit.for.end_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %devm_kcalloc.exit
  %clk_name = getelementptr inbounds %struct.lpass_variant, ptr %3, i32 0, i32 96
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_name, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.050
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clks, align 4
  %arrayidx8 = getelementptr %struct.clk_bulk_data, ptr %18, i32 %i.050
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.050, 1
  %20 = ptrtoint ptr %num_clks5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_clks5, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %devm_kcalloc.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %11, %devm_kcalloc.exit.for.end_crit_edge ], [ %21, %for.body.for.end_crit_edge ]
  %22 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clks, align 4
  %call11 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev2, i32 noundef %.lcssa, ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10, i32 noundef %call11) #8
  br label %cleanup

if.end:                                           ; preds = %for.end
  %24 = ptrtoint ptr %num_clks5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_clks5, align 4
  %26 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %25, ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %25, ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %25, ptr noundef %27) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then3.i, %if.end.do.end19_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.16) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call11, %do.end ], [ %retval.0.i.ph, %do.end19 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_lpass_exit(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #5
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_lpass_alloc_dma_channel(ptr noundef %drvdata, i32 noundef %direction, i32 noundef %dai_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 13
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dai_id)
  %cmp = icmp eq i32 %dai_id, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp1 = icmp eq i32 %direction, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then2, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %hdmi_dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 15
  %hdmi_rdma_channels = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hdmi_rdma_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hdmi_rdma_channels, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %hdmi_dma_ch_bit_map, i32 noundef %3) #5
  %4 = ptrtoint ptr %hdmi_rdma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdmi_rdma_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp4.not = icmp ult i32 %call, %5
  br i1 %cmp4.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %chan.0 = phi i32 [ %call, %if.then2.if.end6_crit_edge ], [ 0, %if.then.if.end6_crit_edge ]
  %hdmi_dma_ch_bit_map7 = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 15
  tail call void @_set_bit(i32 noundef %chan.0, ptr noundef %hdmi_dma_ch_bit_map7) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  br i1 %cmp1, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.else
  %rdma_channels = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %rdma_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdma_channels, align 4
  %call10 = tail call i32 @_find_first_zero_bit_be(ptr noundef %dma_ch_bit_map, i32 noundef %7) #5
  %8 = ptrtoint ptr %rdma_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdma_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %9)
  %cmp12.not = icmp ult i32 %call10, %9
  br i1 %cmp12.not, label %if.then9.if.end25_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else15:                                        ; preds = %if.else
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 87
  %10 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wrdma_channel_start, align 4
  %wrdma_channels = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %wrdma_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wrdma_channels, align 4
  %add = add i32 %13, %11
  %call18 = tail call i32 @_find_next_zero_bit_be(ptr noundef %dma_ch_bit_map, i32 noundef %add, i32 noundef %11) #5
  %14 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrdma_channel_start, align 4
  %16 = ptrtoint ptr %wrdma_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrdma_channels, align 4
  %add21 = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %add21)
  %cmp22.not = icmp ult i32 %call18, %add21
  br i1 %cmp22.not, label %if.else15.if.end25_crit_edge, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else15.if.end25_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %if.else15.if.end25_crit_edge, %if.then9.if.end25_crit_edge
  %chan.1 = phi i32 [ %call10, %if.then9.if.end25_crit_edge ], [ %call18, %if.else15.if.end25_crit_edge ]
  %dma_ch_bit_map26 = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  tail call void @_set_bit(i32 noundef %chan.1, ptr noundef %dma_ch_bit_map26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.else15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end6, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2.cleanup_crit_edge ], [ -16, %if.then9.cleanup_crit_edge ], [ -16, %if.else15.cleanup_crit_edge ], [ %chan.0, %if.end6 ], [ %chan.1, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_lpass_free_dma_channel(ptr noundef %drvdata, i32 noundef %chan, i32 noundef %dai_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dai_id)
  %cmp = icmp eq i32 %dai_id, 5
  %dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  %hdmi_dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 15
  %dma_ch_bit_map.sink = select i1 %cmp, ptr %hdmi_dma_ch_bit_map, ptr %dma_ch_bit_map
  tail call void @_clear_bit(i32 noundef %chan, ptr noundef %dma_ch_bit_map.sink) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_dai_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lpass_cpu_pcm_new(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_snd_soc_lpass_sc7180__238_302_sc7180_lpass_cpu_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_lpass_sc7180__238_302_sc7180_lpass_cpu_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 302, i32 1}
!2 = !{ptr @__exitcall_sc7180_lpass_cpu_platform_driver_exit, !1, !"__exitcall_sc7180_lpass_cpu_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 304, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 305, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 294, i32 11}
!10 = !{ptr @sc7180_lpass_cpu_platform_driver, !11, !"sc7180_lpass_cpu_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 292, i32 31}
!12 = !{ptr @sc7180_lpass_cpu_device_id, !13, !"sc7180_lpass_cpu_device_id", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 286, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 273, i32 8}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 274, i32 8}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 277, i32 8}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 278, i32 8}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 265, i32 8}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 266, i32 8}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 267, i32 8}
!28 = !{ptr @sc7180_data, !29, !"sc7180_data", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 163, i32 29}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 141, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sc7180_lpass_init._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @sc7180_lpass_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 147, i32 3}
!40 = !{ptr @sc7180_lpass_init._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sc7180_lpass_init._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 25, i32 11}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 36, i32 19}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 27, i32 19}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 49, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 51, i32 19}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 64, i32 11}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 66, i32 19}
!56 = !{ptr @sc7180_lpass_cpu_dai_driver, !57, !"sc7180_lpass_cpu_dai_driver", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/lpass-sc7180.c", i32 22, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
