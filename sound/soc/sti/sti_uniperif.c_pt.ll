; ModuleID = '/llk/IR_all_yes/sound/soc/sti/sti_uniperif.c_pt.bc'
source_filename = "../sound/soc/sti/sti_uniperif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.sti_uniperiph_dev_data = type { i32, i32, i32, ptr, i32 }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.sti_uniperiph_data = type { ptr, ptr, %struct.sti_uniperiph_dai }
%struct.sti_uniperiph_dai = type { i32, ptr, %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sti_uniperiph_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reset uniperif\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sti_uniperiph_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sti/sti_uniperif.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sti_uniperiph_reset._entry_ptr = internal global ptr @sti_uniperiph_reset._entry, section ".printk_index", align 4
@sti_uniperiph_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpu dai not in tdm mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sti_uniperiph_set_tdm_slot\00", [37 x i8] zeroinitializer }, align 32
@sti_uniperiph_set_tdm_slot._entry_ptr = internal global ptr @sti_uniperiph_set_tdm_slot._entry, section ".printk_index", align 4
@sti_uniperiph_set_tdm_slot._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"frame size not allowed: %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@sti_uniperiph_set_tdm_slot._entry_ptr.9 = internal global ptr @sti_uniperiph_set_tdm_slot._entry.7, section ".printk_index", align 4
@sti_uniperiph_fix_tdm_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"format not supported: %d bits\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sti_uniperiph_fix_tdm_format\00", [35 x i8] zeroinitializer }, align 32
@sti_uniperiph_fix_tdm_format._entry_ptr = internal global ptr @sti_uniperiph_fix_tdm_format._entry, section ".printk_index", align 4
@__initcall__kmod_snd_soc_sti__240_502_sti_uniperiph_driver_init6 = internal global ptr @sti_uniperiph_driver_init, section ".initcall6.init", align 4
@sti_uniperiph_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_uniperiph_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snd_soc_sti_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sti_uniperiph_driver_exit = internal global ptr @sti_uniperiph_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [49 x i8] c"snd_soc_sti.description=uniperipheral DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [62 x i8] c"snd_soc_sti.author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [43 x i8] c"snd_soc_sti.file=sound/soc/sti/snd-soc-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [27 x i8] c"snd_soc_sti.license=GPL v2\00", section ".modinfo", align 1
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sti-uniperiph-dai\00", [46 x i8] zeroinitializer }, align 32
@snd_soc_sti_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_hdmi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-pcm-out\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_pcm_out }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-dac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_dac }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_spdif }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-reader-pcm_in\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_unireader_pcm_in }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-reader-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_unireader_hdmi_in }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@sti_uniperiph_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @sti_uniperiph_suspend, ptr @sti_uniperiph_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sti_uniperiph_cpu_dai_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"data associated to device is missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sti_uniperiph_cpu_dai_of\00", [39 x i8] zeroinitializer }, align 32
@sti_uniperiph_cpu_dai_of._entry_ptr = internal global ptr @sti_uniperiph_cpu_dai_of._entry, section ".printk_index", align 4
@sti_uniperiph_dai_template = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @sti_uniperiph_dai_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,tdm-mode\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sti_cpu_dai\00", [20 x i8] zeroinitializer }, align 32
@sti_uniperiph_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid uni state( %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sti_uniperiph_suspend\00", [42 x i8] zeroinitializer }, align 32
@sti_uniperiph_suspend._entry_ptr = internal global ptr @sti_uniperiph_suspend._entry, section ".printk_index", align 4
@sti_uniperiph_suspend._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to select pinctrl state\0A\00", [60 x i8] zeroinitializer }, align 32
@sti_uniperiph_suspend._entry_ptr.21 = internal global ptr @sti_uniperiph_suspend._entry.19, section ".printk_index", align 4
@sti_uniperiph_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_uniperiph_resume\00", [43 x i8] zeroinitializer }, align 32
@sti_uniperiph_resume._entry_ptr = internal global ptr @sti_uniperiph_resume._entry, section ".printk_index", align 4
@sti_uniplayer_hdmi = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 0, i32 5, i32 0, ptr @.str.23, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sti_uniplayer_pcm_out = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 1, i32 5, i32 0, ptr @.str.24, i32 10 }, [44 x i8] zeroinitializer }, align 32
@sti_uniplayer_dac = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 2, i32 5, i32 0, ptr @.str.25, i32 2 }, [44 x i8] zeroinitializer }, align 32
@sti_uniplayer_spdif = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 3, i32 5, i32 0, ptr @.str.26, i32 4 }, [44 x i8] zeroinitializer }, align 32
@sti_unireader_pcm_in = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 0, i32 3, i32 1, ptr @.str.27, i32 10 }, [44 x i8] zeroinitializer }, align 32
@sti_unireader_hdmi_in = internal constant { %struct.sti_uniperiph_dev_data, [44 x i8] } { %struct.sti_uniperiph_dev_data { i32 1, i32 3, i32 1, ptr @.str.28, i32 2 }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Uni Player #0 (HDMI)\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Uni Player #1 (PCM OUT)\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Uni Player #2 (DAC)\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Uni Player #3 (SPDIF)\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Uni Reader #0 (PCM IN)\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Uni Reader #1 (HDMI IN)\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 117, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 133, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 156, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 194, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"sti_uniperiph_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 495, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 497, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"snd_soc_sti_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 79, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"sti_uniperiph_dai_component\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 376, i32 46 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"dmaengine_pcm_config\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 459, i32 46 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 398, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"sti_uniperiph_dai_template\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 372, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 429, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 377, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 320, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 328, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 349, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"sti_uniplayer_hdmi\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 31, i32 44 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"sti_uniplayer_pcm_out\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 39, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"sti_uniplayer_dac\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 47, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"sti_uniplayer_spdif\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 55, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"sti_unireader_pcm_in\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 63, i32 44 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"sti_unireader_hdmi_in\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 71, i32 44 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 35, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 43, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 51, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 59, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 67, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [32 x i8] c"../sound/soc/sti/sti_uniperif.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 75, i32 15 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_sti_uniperiph_driver_exit, ptr @__initcall__kmod_snd_soc_sti__240_502_sti_uniperiph_driver_init6, ptr @sti_uniperiph_cpu_dai_of._entry, ptr @sti_uniperiph_cpu_dai_of._entry_ptr, ptr @sti_uniperiph_driver_exit, ptr @sti_uniperiph_fix_tdm_format._entry, ptr @sti_uniperiph_fix_tdm_format._entry_ptr, ptr @sti_uniperiph_reset._entry, ptr @sti_uniperiph_reset._entry_ptr, ptr @sti_uniperiph_resume._entry, ptr @sti_uniperiph_resume._entry_ptr, ptr @sti_uniperiph_set_tdm_slot._entry, ptr @sti_uniperiph_set_tdm_slot._entry.7, ptr @sti_uniperiph_set_tdm_slot._entry_ptr, ptr @sti_uniperiph_set_tdm_slot._entry_ptr.9, ptr @sti_uniperiph_suspend._entry, ptr @sti_uniperiph_suspend._entry.19, ptr @sti_uniperiph_suspend._entry_ptr, ptr @sti_uniperiph_suspend._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @sti_uniperiph_driver, ptr @.str.12, ptr @snd_soc_sti_match, ptr @sti_uniperiph_dai_component, ptr @dmaengine_pcm_config, ptr @.str.13, ptr @.str.14, ptr @sti_uniperiph_dai_template, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @sti_uniplayer_hdmi, ptr @sti_uniplayer_pcm_out, ptr @sti_uniplayer_dac, ptr @sti_uniplayer_spdif, ptr @sti_unireader_pcm_in, ptr @sti_unireader_hdmi_in, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_set_tdm_slot._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_fix_tdm_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_sti_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_cpu_dai_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_dai_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_suspend._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniperiph_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniplayer_hdmi to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniplayer_pcm_out to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniplayer_dac to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_uniplayer_spdif to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_unireader_pcm_in to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_unireader_hdmi_in to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_reset(ptr nocapture noundef readonly %uni) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 10
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #7, !srcloc !99
  %ver = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 4
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp slt i32 %3, 5
  br i1 %cmp, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !100
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not18 = icmp eq i32 %7, 0
  br i1 %tobool.not18, label %while.cond.preheader.cleanup_crit_edge, label %land.rhs.preheader

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.preheader:                               ; preds = %while.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !100
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %land.rhs.preheader.cleanup_crit_edge, label %land.rhs.1

land.rhs.preheader.cleanup_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.1:                                       ; preds = %land.rhs.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !100
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %land.rhs.1.cleanup_crit_edge, label %land.rhs.2

land.rhs.1.cleanup_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.2:                                       ; preds = %land.rhs.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #7
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !100
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.2, label %land.rhs.2.cleanup_crit_edge, label %land.rhs.3

land.rhs.2.cleanup_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.3:                                       ; preds = %land.rhs.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #7
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !100
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.3 = icmp eq i32 %27, 0
  br i1 %tobool.not.3, label %land.rhs.3.cleanup_crit_edge, label %land.rhs.4

land.rhs.3.cleanup_crit_edge:                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.4:                                       ; preds = %land.rhs.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #7
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !100
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.4 = icmp eq i32 %32, 0
  br i1 %tobool.not.4, label %land.rhs.4.cleanup_crit_edge, label %land.rhs.5

land.rhs.4.cleanup_crit_edge:                     ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.5:                                       ; preds = %land.rhs.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #7
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !100
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.5 = icmp eq i32 %37, 0
  br i1 %tobool.not.5, label %land.rhs.5.cleanup_crit_edge, label %land.rhs.6

land.rhs.5.cleanup_crit_edge:                     ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.6:                                       ; preds = %land.rhs.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #7
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !100
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.6 = icmp eq i32 %42, 0
  br i1 %tobool.not.6, label %land.rhs.6.cleanup_crit_edge, label %land.rhs.7

land.rhs.6.cleanup_crit_edge:                     ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.7:                                       ; preds = %land.rhs.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 1073740) #7
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !100
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.7 = icmp eq i32 %47, 0
  br i1 %tobool.not.7, label %land.rhs.7.cleanup_crit_edge, label %land.rhs.8

land.rhs.7.cleanup_crit_edge:                     ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.8:                                       ; preds = %land.rhs.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1073740) #7
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !100
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.8 = icmp eq i32 %52, 0
  br i1 %tobool.not.8, label %land.rhs.8.cleanup_crit_edge, label %land.rhs.9

land.rhs.8.cleanup_crit_edge:                     ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.9:                                       ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 1073740) #7
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !100
  %dev = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 2
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.9, %land.rhs.8.cleanup_crit_edge, %land.rhs.7.cleanup_crit_edge, %land.rhs.6.cleanup_crit_edge, %land.rhs.5.cleanup_crit_edge, %land.rhs.4.cleanup_crit_edge, %land.rhs.3.cleanup_crit_edge, %land.rhs.2.cleanup_crit_edge, %land.rhs.1.cleanup_crit_edge, %land.rhs.preheader.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %land.rhs.9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %land.rhs.preheader.cleanup_crit_edge ], [ 0, %land.rhs.1.cleanup_crit_edge ], [ 0, %land.rhs.2.cleanup_crit_edge ], [ 0, %land.rhs.3.cleanup_crit_edge ], [ 0, %land.rhs.4.cleanup_crit_edge ], [ 0, %land.rhs.5.cleanup_crit_edge ], [ 0, %land.rhs.6.cleanup_crit_edge ], [ 0, %land.rhs.7.cleanup_crit_edge ], [ 0, %land.rhs.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %uni1 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tdm_slot = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23
  %slots2 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %slots2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %slots, ptr %slots2, align 4
  %slot_width4 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 2
  %11 = ptrtoint ptr %slot_width4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %slot_width, ptr %slot_width4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %cmp5.not = icmp eq i32 %tx_mask, 0
  %rx_mask.tx_mask = select i1 %cmp5.not, i32 %rx_mask, i32 %tx_mask
  %12 = ptrtoint ptr %tdm_slot to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rx_mask.tx_mask, ptr %tdm_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp951 = icmp sgt i32 %slots, 0
  br i1 %cmp951, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %avail_slots.053 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.052 = phi i32 [ %inc14, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %13 = lshr i32 %rx_mask.tx_mask, %i.052
  %14 = and i32 %13, 1
  %spec.select = add i32 %14, %avail_slots.053
  %inc14 = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc14, %slots
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %avail_slots.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %avail_slots16 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 3
  %15 = ptrtoint ptr %avail_slots16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %avail_slots.0.lcssa, ptr %avail_slots16, align 4
  %mul = mul i32 %avail_slots.0.lcssa, %slot_width
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %mul)
  %cmp21 = icmp ult i32 %mul, 264
  %16 = and i32 %mul, -456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  %or.cond = and i1 %cmp21, %tobool23.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %do.end27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %div50 = lshr i32 %mul, 3
  %dev28 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef %div50) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef %params, ptr nocapture noundef readonly %rule) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #7
  %2 = getelementptr inbounds i8, ptr %t, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %avail_slots = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 23, i32 3
  %4 = ptrtoint ptr %avail_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_slots, align 4
  %6 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %t, align 4
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max, align 4
  %openmin = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 2
  %8 = ptrtoint ptr %openmin to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 31, ptr %openmin, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %9 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var, align 4
  %sub.i = add i32 %10, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call9 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #7
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_fix_tdm_format(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 %3
  %slot_width = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %5) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %format.0.off0 = phi i32 [ 1024, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %10, %format.0.off0
  store i32 %and, ptr %arrayidx.i, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -22, i32 0
  %11 = call ptr @memset(ptr %arrayidx6, i32 0, i32 28)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr nocapture noundef readonly %uni, ptr nocapture noundef writeonly %word_pos) local_unnamed_addr #4 align 64 {
entry:
  %word16_pos = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tdm_slot = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 23
  %slot_width1 = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %slot_width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_width1, align 4
  %div = sdiv i32 %1, 8
  %slots = getelementptr inbounds %struct.uniperif, ptr %uni, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %4 = ptrtoint ptr %tdm_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tdm_slot, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word16_pos) #7
  %6 = getelementptr inbounds [4 x i32], ptr %word16_pos, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i32], ptr %word16_pos, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], ptr %word16_pos, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39 = icmp sgt i32 %3, 0
  %9 = call ptr @memset(ptr %word16_pos, i32 255, i32 16)
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %10 = and i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %11 = icmp eq i32 %10, 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %k.043 = phi i32 [ 0, %for.body.lr.ph ], [ %k.1, %for.inc.for.body_crit_edge ]
  %j.042 = phi i32 [ 0, %for.body.lr.ph ], [ %j.2, %for.inc.for.body_crit_edge ]
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %for.inc.for.body_crit_edge ]
  %12 = shl nuw i32 1, %i.040
  %13 = and i32 %12, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %mul = mul i32 %i.040, %div
  %arrayidx = getelementptr [4 x i32], ptr %word16_pos, i32 0, i32 %j.042
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %arrayidx, align 4
  br i1 %11, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %mul, 2
  %add8 = add i32 %j.042, 1
  %arrayidx9 = getelementptr [4 x i32], ptr %word16_pos, i32 0, i32 %add8
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %j.1 = phi i32 [ %add8, %if.then6 ], [ %j.042, %if.then.if.end_crit_edge ]
  %inc10 = add i32 %j.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc10)
  %cmp11 = icmp sgt i32 %inc10, 3
  br i1 %cmp11, label %if.then12, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  %18 = ptrtoint ptr %word16_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %word16_pos, align 4
  %shl = shl i32 %19, 8
  %or = or i32 %shl, %17
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %8, align 4
  %shl16 = shl i32 %21, 16
  %or17 = or i32 %or, %shl16
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %shl19 = shl i32 %23, 24
  %or20 = or i32 %or17, %shl19
  %arrayidx21 = getelementptr i32, ptr %word_pos, i32 %k.043
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or20, ptr %arrayidx21, align 4
  %inc22 = add nsw i32 %k.043, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.2 = phi i32 [ 0, %if.then12 ], [ %inc10, %if.end.for.inc_crit_edge ], [ %j.042, %for.body.for.inc_crit_edge ]
  %k.1 = phi i32 [ %inc22, %if.then12 ], [ %k.043, %if.end.for.inc_crit_edge ], [ %k.043, %for.body.for.inc_crit_edge ]
  %inc25 = add nuw nsw i32 %i.040, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25, i32 %3)
  %cmp = icmp slt i32 %inc25, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.1)
  %cmp4 = icmp slt i32 %k.1, 4
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word16_pos) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_dai_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %uni1 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  %div = sdiv i32 %call2, 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %9, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %transfer_size.0 = phi i32 [ %div, %if.then ], [ %mul, %if.else ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %13 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %transfer_size.0, ptr %maxburst, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_uniperiph_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %daifmt = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %daifmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fmt, ptr %daifmt, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_uniperiph_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sti_uniperiph_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_uniperiph_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %mode.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i38 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %dai = getelementptr inbounds %struct.sti_uniperiph_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i38, ptr %dai, align 4
  %tobool5.not = icmp eq ptr %call.i38, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 4
  %dai_data2.i = getelementptr inbounds %struct.sti_uniperiph_data, ptr %call.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #7
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode.i, align 4, !annotation !101
  %call.i39 = tail call ptr @of_match_node(ptr noundef nonnull @snd_soc_sti_match, ptr noundef %1) #7
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i39, i32 0, i32 3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %sti_uniperiph_cpu_dai_of.exit.thread

if.end.i:                                         ; preds = %if.end7
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #7
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, label %if.end8.i

if.end.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sti_uniperiph_cpu_dai_of.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %id9.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %id9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %id9.i, align 4
  %version.i = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version.i, align 4
  %ver.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ver.i, align 4
  %13 = call ptr @memcpy(ptr %call.i38, ptr @sti_uniperiph_dai_template, i32 168)
  %dai_names.i = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %dai_names.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai_names.i, align 4
  %16 = ptrtoint ptr %call.i38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call.i38, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %mem_region.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 9
  %call11.i = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %18, i32 noundef 0, ptr noundef %mem_region.i) #7
  %base.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sti_uniperiph_cpu_dai_of.exit, label %if.end17.i

if.end17.i:                                       ; preds = %if.end8.i
  %20 = ptrtoint ptr %mem_region.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_region.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add.i = add i32 %23, 4
  %fifo_phys_address.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %fifo_phys_address.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %fifo_phys_address.i, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call20.i = tail call i32 @platform_get_irq(ptr noundef %26, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call20.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.i = icmp slt i32 %call20.i, 0
  br i1 %cmp.i, label %if.end17.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, label %if.end23.i

if.end17.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sti_uniperiph_cpu_dai_of.exit.thread

if.end23.i:                                       ; preds = %if.end17.i
  %type.i = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %6, i32 0, i32 4
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call.i.i, align 4
  %31 = load i32, ptr %type.i, align 4
  %and.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end34.i_crit_edge, label %if.then27.i

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  %..i = select i1 %tobool29.not.i, i32 8, i32 2
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %..i, ptr %call.i.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end34.i_crit_edge
  %uni35.i = getelementptr inbounds %struct.sti_uniperiph_data, ptr %call.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %uni35.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %uni35.i, align 4
  %stream36.i = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %6, i32 0, i32 2
  %34 = ptrtoint ptr %stream36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream36.i, align 4
  %36 = ptrtoint ptr %dai_data2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dai_data2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp40.i = icmp eq i32 %35, 0
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  br i1 %cmp40.i, label %if.then41.i, label %if.else44.i

if.then41.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = call i32 @uni_player_init(ptr noundef %38, ptr noundef nonnull %call.i.i) #7
  %playback.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i38, i32 0, i32 11
  br label %if.end47.i

if.else44.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call46.i = call i32 @uni_reader_init(ptr noundef %38, ptr noundef nonnull %call.i.i) #7
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i38, i32 0, i32 10
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else44.i, %if.then41.i
  %stream.0.i = phi ptr [ %playback.i, %if.then41.i ], [ %capture.i, %if.else44.i ]
  %ret.0.i = phi i32 [ %call43.i, %if.then41.i ], [ %call46.i, %if.else44.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp48.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp48.i, label %if.end47.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, label %sti_uniperiph_cpu_dai_of.exit.thread42

if.end47.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sti_uniperiph_cpu_dai_of.exit.thread

sti_uniperiph_cpu_dai_of.exit.thread42:           ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %dai_ops.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 24
  %39 = ptrtoint ptr %dai_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dai_ops.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i38, i32 0, i32 8
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ops.i, align 8
  %42 = ptrtoint ptr %call.i38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i38, align 8
  %44 = ptrtoint ptr %stream.0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %stream.0.i, align 8
  %hw.i = getelementptr inbounds %struct.uniperif, ptr %call.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.i, align 4
  %channels_min.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channels_min.i, align 4
  %channels_min52.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 5
  %49 = ptrtoint ptr %channels_min52.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %channels_min52.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %46, i32 0, i32 6
  %50 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels_max.i, align 8
  %channels_max54.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 6
  %52 = ptrtoint ptr %channels_max54.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %channels_max54.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rates.i, align 8
  %rates56.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 2
  %55 = ptrtoint ptr %rates56.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rates56.i, align 8
  %formats.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %46, i32 0, i32 1
  %56 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %formats.i, align 8
  %formats58.i = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %stream.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %formats58.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %formats58.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #7
  br label %if.end11

sti_uniperiph_cpu_dai_of.exit.thread:             ; preds = %if.end47.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, %if.end17.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, %if.end.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %if.end47.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge ], [ -6, %if.end17.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge ], [ -12, %if.end.i.sti_uniperiph_cpu_dai_of.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #7
  br label %cleanup

sti_uniperiph_cpu_dai_of.exit:                    ; preds = %if.end8.i
  %59 = ptrtoint ptr %call11.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #7
  %cmp = icmp slt ptr %call11.i, null
  br i1 %cmp, label %sti_uniperiph_cpu_dai_of.exit.cleanup_crit_edge, label %sti_uniperiph_cpu_dai_of.exit.if.end11_crit_edge

sti_uniperiph_cpu_dai_of.exit.if.end11_crit_edge: ; preds = %sti_uniperiph_cpu_dai_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

sti_uniperiph_cpu_dai_of.exit.cleanup_crit_edge:  ; preds = %sti_uniperiph_cpu_dai_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %sti_uniperiph_cpu_dai_of.exit.if.end11_crit_edge, %sti_uniperiph_cpu_dai_of.exit.thread42
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i, align 4
  %61 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dai, align 4
  %call15 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @sti_uniperiph_dai_component, ptr noundef %62, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @dmaengine_pcm_config, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end11.cleanup_crit_edge, %sti_uniperiph_cpu_dai_of.exit.cleanup_crit_edge, %sti_uniperiph_cpu_dai_of.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %59, %sti_uniperiph_cpu_dai_of.exit.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %retval.0.i.ph, %sti_uniperiph_cpu_dai_of.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_player_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_reader_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_dai_probe(ptr noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai_data1 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dai_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dai_data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %dma_data = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 2
  %dma_data. = select i1 %cmp, ptr %dma_data, ptr null
  %.dma_data = select i1 %cmp, ptr null, ptr %dma_data
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma_data., ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.dma_data, ptr %8, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uni, align 4
  %fifo_phys_address = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %fifo_phys_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_phys_address, align 4
  %dma_data4 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %dma_data4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma_data4, align 4
  %addr_width = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 2, i32 1
  %15 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %addr_width, align 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %uni1.i = getelementptr inbounds %struct.sti_uniperiph_data, ptr %19, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %uni1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uni1.i, align 4
  %num_ctrls.i = getelementptr inbounds %struct.uniperif, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %num_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ctrls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %entry.sti_uniperiph_dai_create_ctrl.exit_crit_edge, label %for.cond.preheader.i

entry.sti_uniperiph_dai_create_ctrl.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sti_uniperiph_dai_create_ctrl.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp20.i = icmp sgt i32 %23, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %snd_ctrls.i = getelementptr inbounds %struct.uniperif, ptr %21, i32 0, i32 20
  %id.i = getelementptr inbounds %struct.uniperif, ptr %21, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %snd_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %snd_ctrls.i, align 4
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %index.i = getelementptr %struct.snd_kcontrol_new, ptr %25, i32 %i.021.i, i32 4
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %index.i, align 4
  %29 = load i32, ptr %id.i, align 4
  %device.i = getelementptr %struct.snd_kcontrol_new, ptr %25, i32 %i.021.i, i32 1
  %30 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %device.i, align 4
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %31 = ptrtoint ptr %num_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ctrls.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %23, %for.cond.preheader.i.for.end.i_crit_edge ], [ %32, %for.body.i.for.end.i_crit_edge ]
  %snd_ctrls4.i = getelementptr inbounds %struct.uniperif, ptr %21, i32 0, i32 20
  %33 = ptrtoint ptr %snd_ctrls4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %snd_ctrls4.i, align 4
  %call6.i = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef %34, i32 noundef %.lcssa.i) #7
  br label %sti_uniperiph_dai_create_ctrl.exit

sti_uniperiph_dai_create_ctrl.exit:               ; preds = %for.end.i, %entry.sti_uniperiph_dai_create_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %for.end.i ], [ 0, %entry.sti_uniperiph_dai_create_ctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_suspend(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %uni1 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni1, align 4
  %state = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %dev3 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call4, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_resume(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai_data = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2
  %uni1 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni1, align 4
  %6 = ptrtoint ptr %dai_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dai_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @uni_player_resume(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %call6, %do.end ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_player_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sti/sti_uniperif.c", i32 117, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sti_uniperiph_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sti_uniperiph_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sti/sti_uniperif.c", i32 133, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sti_uniperiph_set_tdm_slot._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sti_uniperiph_set_tdm_slot._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/sti/sti_uniperif.c", i32 156, i32 3}
!15 = !{ptr @sti_uniperiph_set_tdm_slot._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sti_uniperiph_set_tdm_slot._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/sti/sti_uniperif.c", i32 194, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sti_uniperiph_fix_tdm_format._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @sti_uniperiph_fix_tdm_format._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_snd_soc_sti__240_502_sti_uniperiph_driver_init6, !23, !"__initcall__kmod_snd_soc_sti__240_502_sti_uniperiph_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/soc/sti/sti_uniperif.c", i32 502, i32 1}
!24 = !{ptr @__exitcall_sti_uniperiph_driver_exit, !23, !"__exitcall_sti_uniperiph_driver_exit", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_description241, !26, !"__UNIQUE_ID_description241", i1 false, i1 false}
!26 = !{!"../sound/soc/sti/sti_uniperif.c", i32 504, i32 1}
!27 = !{ptr @__UNIQUE_ID_author242, !28, !"__UNIQUE_ID_author242", i1 false, i1 false}
!28 = !{!"../sound/soc/sti/sti_uniperif.c", i32 505, i32 1}
!29 = !{ptr @__UNIQUE_ID_file243, !30, !"__UNIQUE_ID_file243", i1 false, i1 false}
!30 = !{!"../sound/soc/sti/sti_uniperif.c", i32 506, i32 1}
!31 = !{ptr @__UNIQUE_ID_license244, !30, !"__UNIQUE_ID_license244", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sti/sti_uniperif.c", i32 497, i32 11}
!34 = !{ptr @sti_uniperiph_driver, !35, !"sti_uniperiph_driver", i1 false, i1 false}
!35 = !{!"../sound/soc/sti/sti_uniperif.c", i32 495, i32 31}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sti/sti_uniperif.c", i32 398, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sti_uniperiph_cpu_dai_of._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sti_uniperiph_cpu_dai_of._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sti/sti_uniperif.c", i32 429, i32 38}
!43 = !{ptr @sti_uniperiph_dai_template, !44, !"sti_uniperiph_dai_template", i1 false, i1 false}
!44 = !{!"../sound/soc/sti/sti_uniperif.c", i32 372, i32 40}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sti/sti_uniperif.c", i32 377, i32 10}
!47 = !{ptr @sti_uniperiph_dai_component, !48, !"sti_uniperiph_dai_component", i1 false, i1 false}
!48 = !{!"../sound/soc/sti/sti_uniperif.c", i32 376, i32 46}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sti/sti_uniperif.c", i32 320, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sti_uniperiph_suspend._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sti_uniperiph_suspend._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sti/sti_uniperif.c", i32 328, i32 3}
!56 = !{ptr @sti_uniperiph_suspend._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sti_uniperiph_suspend._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sti/sti_uniperif.c", i32 349, i32 3}
!60 = !{ptr @sti_uniperiph_resume._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sti_uniperiph_resume._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dmaengine_pcm_config, !63, !"dmaengine_pcm_config", i1 false, i1 false}
!63 = !{!"../sound/soc/sti/sti_uniperif.c", i32 459, i32 46}
!64 = !{ptr @snd_soc_sti_match, !65, !"snd_soc_sti_match", i1 false, i1 false}
!65 = !{!"../sound/soc/sti/sti_uniperif.c", i32 79, i32 34}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sti/sti_uniperif.c", i32 35, i32 15}
!68 = !{ptr @sti_uniplayer_hdmi, !69, !"sti_uniplayer_hdmi", i1 false, i1 false}
!69 = !{!"../sound/soc/sti/sti_uniperif.c", i32 31, i32 44}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sti/sti_uniperif.c", i32 43, i32 15}
!72 = !{ptr @sti_uniplayer_pcm_out, !73, !"sti_uniplayer_pcm_out", i1 false, i1 false}
!73 = !{!"../sound/soc/sti/sti_uniperif.c", i32 39, i32 44}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sti/sti_uniperif.c", i32 51, i32 15}
!76 = !{ptr @sti_uniplayer_dac, !77, !"sti_uniplayer_dac", i1 false, i1 false}
!77 = !{!"../sound/soc/sti/sti_uniperif.c", i32 47, i32 44}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sti/sti_uniperif.c", i32 59, i32 15}
!80 = !{ptr @sti_uniplayer_spdif, !81, !"sti_uniplayer_spdif", i1 false, i1 false}
!81 = !{!"../sound/soc/sti/sti_uniperif.c", i32 55, i32 44}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sti/sti_uniperif.c", i32 67, i32 15}
!84 = !{ptr @sti_unireader_pcm_in, !85, !"sti_unireader_pcm_in", i1 false, i1 false}
!85 = !{!"../sound/soc/sti/sti_uniperif.c", i32 63, i32 44}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sti/sti_uniperif.c", i32 75, i32 15}
!88 = !{ptr @sti_unireader_hdmi_in, !89, !"sti_unireader_hdmi_in", i1 false, i1 false}
!89 = !{!"../sound/soc/sti/sti_uniperif.c", i32 71, i32 44}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 5442762}
!100 = !{i64 5443180}
!101 = !{!"auto-init"}
