; ModuleID = '/llk/IR_all_yes/sound/soc/pxa/pxa-ssp.c_pt.bc'
source_filename = "../sound/soc/pxa/pxa-ssp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pxa_ssp_clock_mode = type { i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
%struct.ssp_priv = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_pxa_ssp__244_886_asoc_ssp_driver_init6 = internal global ptr @asoc_ssp_driver_init, section ".initcall6.init", align 4
@asoc_ssp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_ssp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_ssp_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_ssp_driver_exit = internal global ptr @asoc_ssp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [72 x i8] c"snd_soc_pxa_ssp.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [54 x i8] c"snd_soc_pxa_ssp.description=PXA SSP/PCM SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [51 x i8] c"snd_soc_pxa_ssp.file=sound/soc/pxa/snd-soc-pxa-ssp\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [28 x i8] c"snd_soc_pxa_ssp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias249 = internal constant [43 x i8] c"snd_soc_pxa_ssp.alias=platform:pxa-ssp-dai\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa-ssp-dai\00", [20 x i8] zeroinitializer }, align 32
@pxa_ssp_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa-ssp-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxa_ssp_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.1, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @pxa_ssp_suspend, ptr @pxa_ssp_resume, ptr null, ptr null, ptr @pxa2xx_soc_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa2xx_soc_pcm_open, ptr @pxa2xx_soc_pcm_close, ptr null, ptr @pxa2xx_soc_pcm_hw_params, ptr null, ptr @pxa2xx_soc_pcm_prepare, ptr @pxa2xx_soc_pcm_trigger, ptr null, ptr @pxa2xx_soc_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pxa_ssp_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @pxa_ssp_probe, ptr @pxa_ssp_remove, ptr null, ptr null, ptr @pxa_ssp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxa-ssp\00", [24 x i8] zeroinitializer }, align 32
@pxa_ssp_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @pxa_ssp_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @pxa_ssp_set_dai_fmt, ptr null, ptr @pxa_ssp_set_dai_tdm_slot, ptr null, ptr null, ptr @pxa_ssp_set_dai_tristate, ptr null, ptr null, ptr null, ptr @pxa_ssp_startup, ptr @pxa_ssp_shutdown, ptr @pxa_ssp_hw_params, ptr null, ptr null, ptr @pxa_ssp_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 767, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to get 'port' phandle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_ssp_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/pxa/pxa-ssp.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry_ptr = internal global ptr @pxa_ssp_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SoC audio\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pxa_ssp_set_dai_sysclk.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_pxa_ssp\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pxa_ssp_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@pxa_ssp_clock_modes = internal constant { [8 x %struct.pxa_ssp_clock_mode], [32 x i8] } { [8 x %struct.pxa_ssp_clock_mode] [%struct.pxa_ssp_clock_mode { i32 8000, i32 32842000, i8 5, i8 0 }, %struct.pxa_ssp_clock_mode { i32 11025, i32 5622000, i8 2, i8 0 }, %struct.pxa_ssp_clock_mode { i32 16000, i32 32842000, i8 4, i8 0 }, %struct.pxa_ssp_clock_mode { i32 22050, i32 5622000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 44100, i32 11345000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 48000, i32 12235000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 96000, i32 12235000, i8 2, i8 1 }, %struct.pxa_ssp_clock_mode zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pxa_ssp_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 672, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No TDM timeslot configured\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_ssp_hw_params\00", [46 x i8] zeroinitializer }, align 32
@pxa_ssp_hw_params._entry_ptr = internal global ptr @pxa_ssp_hw_params._entry, section ".printk_index", align 4
@pxa_ssp_set_pll.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxa_ssp_set_pll\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using SSACDD %x to supply %uHz\0A\00", [32 x i8] zeroinitializer }, align 32
@dump_registers.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_registers\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@dump_registers.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.19, ptr @.str.5, ptr @.str.21, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 12288]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 5622000, i64 11345000, i64 12235000, i64 14857000, i64 32842000, i64 48000000]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"asoc_ssp_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 877, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 879, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"pxa_ssp_of_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 864, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"pxa_ssp_component\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 850, i32 46 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"pxa_ssp_dai\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 832, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 851, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"pxa_ssp_dai_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 821, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 765, i32 47 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 767, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 772, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 778, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 208, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 92, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 92, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"pxa_ssp_clock_modes\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 516, i32 40 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 672, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 301, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 55, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [27 x i8] c"../sound/soc/pxa/pxa-ssp.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_asoc_ssp_driver_exit, ptr @__initcall__kmod_snd_soc_pxa_ssp__244_886_asoc_ssp_driver_init6, ptr @asoc_ssp_driver_exit, ptr @pxa_ssp_hw_params._entry, ptr @pxa_ssp_hw_params._entry_ptr, ptr @pxa_ssp_probe._entry, ptr @pxa_ssp_probe._entry_ptr, ptr @asoc_ssp_driver, ptr @.str, ptr @pxa_ssp_of_ids, ptr @pxa_ssp_component, ptr @pxa_ssp_dai, ptr @.str.1, ptr @pxa_ssp_dai_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pxa_ssp_clock_modes, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_ssp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_clock_modes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_ssp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_ssp_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_ssp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_ssp_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_ssp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @pxa_ssp_component, ptr noundef nonnull @pxa_ssp_dai, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %6 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %mmio_base = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !76
  %cr0 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %cr0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cr0, align 4
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 4
  %add.ptr6 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !76
  %cr1 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cr1, align 4
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base, align 4
  %add.ptr9 = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !76
  %to = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %to, align 4
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 4
  %add.ptr12 = getelementptr i8, ptr %23, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !76
  %psp = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %psp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %psp, align 4
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !76
  %and.i = and i32 %28, -129
  %29 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %and.i) #8, !srcloc !77
  %clk14 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %clk14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk14, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %clk = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %mmio_base = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 10485888) #8, !srcloc !77
  %cr0 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %cr0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr0, align 4
  %and = and i32 %11, -129
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %and) #8, !srcloc !77
  %cr1 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr1, align 4
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %15) #8, !srcloc !77
  %to = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %to, align 4
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %19) #8, !srcloc !77
  %psp = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %psp, align 4
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 4
  %add.ptr10 = getelementptr i8, ptr %25, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %23) #8, !srcloc !77
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 5
  %26 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !76
  %or.i = or i32 %30, 128
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %or.i) #8, !srcloc !77
  br label %if.end

if.else:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %34) #8
  tail call void @clk_unprepare(ptr noundef %34) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_new(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_close(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_prepare(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_trigger(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_pointer(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_probe(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end

of_parse_phandle.exit:                            ; preds = %if.then3
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end8

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #12
  br label %err_priv

if.end8:                                          ; preds = %of_parse_phandle.exit
  %call9 = call ptr @pxa_ssp_request_of(ptr noundef nonnull %7, ptr noundef nonnull @.str.8) #8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %call7.i.i, align 8
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.end8.err_priv_crit_edge, label %if.end12

if.end8.err_priv_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_priv

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  %extclk = getelementptr inbounds %struct.ssp_priv, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %extclk, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end12.if.end30_crit_edge

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then16:                                        ; preds = %if.end12
  %cmp19 = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp19, label %if.then16.cleanup31_crit_edge, label %if.end21

if.then16.cleanup31_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %extclk, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %add = add i32 %12, 1
  %call24 = tail call ptr @pxa_ssp_request(i32 noundef %add, ptr noundef nonnull @.str.8) #8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %call7.i.i, align 8
  %cmp27 = icmp eq ptr %call24, null
  br i1 %cmp27, label %if.else.err_priv_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else.err_priv_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_priv

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.end21, %if.end12.if.end30_crit_edge
  %dai_fmt = getelementptr inbounds %struct.ssp_priv, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %dai_fmt, align 8
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup31

err_priv:                                         ; preds = %if.else.err_priv_crit_edge, %if.end8.err_priv_crit_edge, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup31

cleanup31:                                        ; preds = %err_priv, %if.end30, %if.then16.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.1 = phi i32 [ -19, %err_priv ], [ 0, %if.end30 ], [ -12, %entry.cleanup31_crit_edge ], [ -517, %if.then16.cleanup31_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @pxa_ssp_free(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pxa_ssp_request_of(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pxa_ssp_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa_ssp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !76
  %and = and i32 %8, 1071644607
  %extclk = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extclk, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @clk_set_rate(ptr noundef nonnull %10, i32 noundef %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.cleanup37_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.cleanup37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %clk_id.addr.1 = phi i32 [ 1, %if.then.do.body_crit_edge ], [ %clk_id, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ssp_set_dai_sysclk.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_set_dai_sysclk, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !78

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ssp_set_dai_sysclk.__UNIQUE_ID_ddebug242, ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef %14, i32 noundef %clk_id.addr.1, i32 noundef %freq) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %15 = zext i32 %clk_id.addr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id.addr.1, label %do.end.cleanup37_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb13
    i32 1, label %sw.bb18
    i32 2, label %sw.bb21
    i32 3, label %sw.bb24
  ]

do.end.cleanup37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and, -2147483648
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  %type = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp14 = icmp eq i32 %17, 1
  %sysclk = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 3
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1843200, ptr %sysclk, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 13000000, ptr %sysclk, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk19 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %sysclk19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %freq, ptr %sysclk19, align 4
  %or20 = or i32 %and, 64
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk22 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %sysclk22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %freq, ptr %sysclk22, align 4
  %or23 = or i32 %and, -2145386496
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk25 = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %sysclk25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sysclk25, align 4
  %23 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !76
  %type.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp eq i32 %27, 1
  %or.i = or i32 %25, -256
  %and2.i = and i32 %25, -1048321
  %sscr0.0.i = select i1 %cmp.i, i32 %or.i, i32 %and2.i
  %28 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %sscr0.0.i) #8, !srcloc !77
  %or26 = or i32 %and, 1073741824
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb18, %if.else, %if.then15, %sw.bb
  %sscr0.0 = phi i32 [ %or26, %sw.bb24 ], [ %or23, %sw.bb21 ], [ %or20, %sw.bb18 ], [ %and, %if.then15 ], [ %and, %if.else ], [ %or, %sw.bb ]
  %type27 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %type27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp28.not = icmp eq i32 %31, 4
  br i1 %cmp28.not, label %sw.epilog.if.end30_crit_edge, label %if.then29

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %sw.epilog.if.end30_crit_edge
  %34 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %sscr0.0) #8, !srcloc !77
  %36 = ptrtoint ptr %type27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp32.not = icmp eq i32 %37, 4
  br i1 %cmp32.not, label %if.end30.cleanup37_crit_edge, label %if.then33

if.end30.cleanup37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.then33:                                        ; preds = %if.end30
  %clk34 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %clk34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk34, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then33.cleanup37_crit_edge

if.then33.cleanup37_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.end.i:                                         ; preds = %if.then33
  %call1.i = tail call i32 @clk_enable(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup37_crit_edge, label %if.then3.i

if.end.i.cleanup37_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup37

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %cleanup37

cleanup37:                                        ; preds = %if.then3.i, %if.end.i.cleanup37_crit_edge, %if.then33.cleanup37_crit_edge, %if.end30.cleanup37_crit_edge, %do.end.cleanup37_crit_edge, %if.then.cleanup37_crit_edge
  %retval.1 = phi i32 [ %call4, %if.then.cleanup37_crit_edge ], [ -19, %do.end.cleanup37_crit_edge ], [ 0, %if.end30.cleanup37_crit_edge ], [ 0, %if.then33.cleanup37_crit_edge ], [ 0, %if.end.i.cleanup37_crit_edge ], [ 0, %if.then3.i ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa_ssp_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 12288, label %entry.sw.epilog_crit_edge12
    i16 16384, label %entry.sw.epilog_crit_edge13
  ]

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13
  %and1 = lshr i32 %fmt, 8
  %6 = and i32 %and1, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog4_crit_edge
    i32 2, label %sw.epilog.sw.epilog4_crit_edge14
    i32 4, label %sw.epilog.sw.epilog4_crit_edge15
    i32 3, label %sw.epilog.sw.epilog4_crit_edge16
  ]

sw.epilog.sw.epilog4_crit_edge16:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog.sw.epilog4_crit_edge15:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog.sw.epilog4_crit_edge14:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog.sw.epilog4_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog4:                                       ; preds = %sw.epilog.sw.epilog4_crit_edge, %sw.epilog.sw.epilog4_crit_edge14, %sw.epilog.sw.epilog4_crit_edge15, %sw.epilog.sw.epilog4_crit_edge16
  %and5 = and i32 %fmt, 15
  %8 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and5, label %sw.epilog4.cleanup_crit_edge [
    i32 1, label %sw.epilog4.sw.epilog8_crit_edge
    i32 4, label %sw.epilog4.sw.epilog8_crit_edge17
    i32 5, label %sw.epilog4.sw.epilog8_crit_edge18
  ]

sw.epilog4.sw.epilog8_crit_edge18:                ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog8

sw.epilog4.sw.epilog8_crit_edge17:                ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog8

sw.epilog4.sw.epilog8_crit_edge:                  ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog8

sw.epilog4.cleanup_crit_edge:                     ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog8:                                       ; preds = %sw.epilog4.sw.epilog8_crit_edge, %sw.epilog4.sw.epilog8_crit_edge17, %sw.epilog4.sw.epilog8_crit_edge18
  %dai_fmt = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fmt, ptr %dai_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog8, %sw.epilog4.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_tdm_slot(ptr nocapture noundef readonly %cpu_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !76
  %and = and i32 %8, 2028994544
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot_width)
  %cmp = icmp sgt i32 %slot_width, 16
  %sub3 = add i32 %slot_width, -17
  %or = or i32 %sub3, 1048576
  %sub5 = add i32 %slot_width, -1
  %or.pn = select i1 %cmp, i32 %or, i32 %sub5
  %sscr0.0 = or i32 %and, %or.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots)
  %cmp7 = icmp sgt i32 %slots, 1
  br i1 %cmp7, label %if.then8, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub10 = shl i32 %slots, 24
  %shl = add i32 %sub10, 2130706432
  %or9 = or i32 %shl, %sscr0.0
  %or11 = or i32 %or9, -2147483648
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %tx_mask) #8, !srcloc !77
  %11 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %rx_mask) #8, !srcloc !77
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %entry.if.end12_crit_edge
  %sscr0.1 = phi i32 [ %or11, %if.then8 ], [ %sscr0.0, %entry.if.end12_crit_edge ]
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %sscr0.1) #8, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_tristate(ptr nocapture noundef readonly %cpu_dai, i32 noundef %tristate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %and = and i32 %8, -1073741825
  %masksel = select i1 %tobool.not, i32 1073741824, i32 0
  %sscr1.0 = or i32 %and, %masksel
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %sscr1.0) #8, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_startup(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !76
  %and.i = and i32 %10, -129
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %and.i) #8, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %entry.if.end_crit_edge
  %extclk = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extclk, align 4
  %call.i19 = tail call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i23, label %if.end.clk_prepare_enable.exit25_crit_edge

if.end.clk_prepare_enable.exit25_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit25

if.end.i23:                                       ; preds = %if.end
  %call1.i21 = tail call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool2.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool2.not.i22, label %if.end.i23.clk_prepare_enable.exit25_crit_edge, label %if.then3.i24

if.end.i23.clk_prepare_enable.exit25_crit_edge:   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit25

if.then3.i24:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %clk_prepare_enable.exit25

clk_prepare_enable.exit25:                        ; preds = %if.then3.i24, %if.end.i23.clk_prepare_enable.exit25_crit_edge, %if.end.clk_prepare_enable.exit25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 36) #11
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %clk_prepare_enable.exit25.cleanup_crit_edge, label %if.end8

clk_prepare_enable.exit25.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %clk_prepare_enable.exit25
  call void @__sanitizer_cov_trace_pc() #10
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %cond = select i1 %cmp, ptr @.str.13, ptr @.str.14
  %chan_name = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %chan_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond, ptr %chan_name, align 8
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %19 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %capture_dma_data.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %clk_prepare_enable.exit25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %clk_prepare_enable.exit25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ssp_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !76
  %and.i = and i32 %8, -129
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i) #8, !srcloc !77
  %clk = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %extclk = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extclk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %17 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #8
  %18 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i11 = icmp eq i32 %19, 0
  %capture_dma_data.sink.i = select i1 %cmp.i11, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %20 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %capture_dma_data.sink.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i197 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i197 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %entry.if.then.i.i_crit_edge ], [ %12, %for.inc.i.i.if.then.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !79
  %add.i.i = or i32 %10, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call4 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #8
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  %and = and i32 %15, 15
  %arrayidx.i.i198 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i198 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i198, align 4
  %div = sdiv i32 %call4, 8
  %mul = mul i32 %div, %7
  %mul7 = mul i32 %mul, %17
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %20 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ne i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp9.not = icmp eq i32 %and, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp10 = icmp ne i32 %call4, 32
  %spec.select196 = select i1 %or.cond, i1 %cmp10, i1 false
  %cond.i199 = select i1 %spec.select196, i32 2, i32 4
  %addr_width.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 1
  %21 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i199, ptr %addr_width.i, align 4
  %maxburst.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %22 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %maxburst.i, align 4
  %phys_base.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_base.i, align 4
  %add.i = add i32 %24, 16
  %25 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %cond.i, align 4
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !76
  %and13 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end, label %params_format.exit.cleanup116_crit_edge

params_format.exit.cleanup116_crit_edge:          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end:                                           ; preds = %params_format.exit
  %call14 = tail call fastcc i32 @pxa_ssp_configure_dai_fmt(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end.cleanup116_crit_edge, label %if.end18

if.end.cleanup116_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end18:                                         ; preds = %if.end
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !76
  %and20 = and i32 %31, -1048592
  %32 = ptrtoint ptr %arrayidx.i.i197 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i203 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i203, label %for.inc.i.i210, label %if.end18.params_format.exit212_crit_edge

if.end18.params_format.exit212_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit212

for.inc.i.i210:                                   ; preds = %if.end18
  %arrayidx.1.i.i208 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i.i208 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1.i.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.1.i.i209 = icmp eq i32 %35, 0
  br i1 %tobool.not.1.i.i209, label %for.inc.i.i210.sw.epilog_crit_edge, label %for.inc.i.i210.params_format.exit212_crit_edge

for.inc.i.i210.params_format.exit212_crit_edge:   ; preds = %for.inc.i.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit212

for.inc.i.i210.sw.epilog_crit_edge:               ; preds = %for.inc.i.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_format.exit212:                            ; preds = %for.inc.i.i210.params_format.exit212_crit_edge, %if.end18.params_format.exit212_crit_edge
  %i.09.lcssa.i.i204 = phi i32 [ 0, %if.end18.params_format.exit212_crit_edge ], [ 32, %for.inc.i.i210.params_format.exit212_crit_edge ]
  %.lcssa.i.i205 = phi i32 [ %33, %if.end18.params_format.exit212_crit_edge ], [ %35, %for.inc.i.i210.params_format.exit212_crit_edge ]
  %36 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i205, i1 true) #8, !range !79
  %add.i.i206 = or i32 %36, %i.09.lcssa.i.i204
  %37 = zext i32 %add.i.i206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %add.i.i206, label %params_format.exit212.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb27
    i32 10, label %sw.bb29
  ]

params_format.exit212.sw.epilog_crit_edge:        ; preds = %params_format.exit212
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %params_format.exit212
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp22 = icmp eq i32 %39, 4
  %or = or i32 %and20, 536870912
  %spec.select = select i1 %cmp22, i32 %or, i32 %and20
  %or26 = or i32 %spec.select, 15
  br label %sw.epilog

sw.bb27:                                          ; preds = %params_format.exit212
  call void @__sanitizer_cov_trace_pc() #10
  %or28 = or i32 %and20, 1048583
  br label %sw.epilog

sw.bb29:                                          ; preds = %params_format.exit212
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i32 %31, 1048591
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb27, %sw.bb, %params_format.exit212.sw.epilog_crit_edge, %for.inc.i.i210.sw.epilog_crit_edge
  %sscr0.1 = phi i32 [ %and20, %params_format.exit212.sw.epilog_crit_edge ], [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb ], [ %and20, %for.inc.i.i210.sw.epilog_crit_edge ]
  %40 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %sscr0.1) #8, !srcloc !77
  %and31 = and i32 %sscr0.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %sw.epilog
  %call34 = tail call fastcc i32 @pxa_ssp_set_pll(ptr noundef %3, i32 noundef %mul7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %for.cond, label %if.then33.if.end75_crit_edge

if.then33.if.end75_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

for.cond:                                         ; preds = %if.then33
  %42 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %17, label %for.cond.7 [
    i32 8000, label %for.cond.for.end_crit_edge
    i32 11025, label %for.end.fold.split
    i32 16000, label %for.end.fold.split228
    i32 22050, label %for.end.fold.split229
    i32 44100, label %for.end.fold.split230
    i32 48000, label %for.end.fold.split231
    i32 96000, label %for.end.fold.split232
  ]

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.7:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split228:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split229:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split230:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split231:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split232:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split232, %for.end.fold.split231, %for.end.fold.split230, %for.end.fold.split229, %for.end.fold.split228, %for.end.fold.split, %for.cond.7, %for.cond.for.end_crit_edge
  %m.0.lcssa = phi ptr [ @pxa_ssp_clock_modes, %for.cond.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 7), %for.cond.7 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 1), %for.end.fold.split ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 2), %for.end.fold.split228 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 3), %for.end.fold.split229 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 4), %for.end.fold.split230 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 5), %for.end.fold.split231 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 6), %for.end.fold.split232 ]
  %tobool39.not.lcssa = phi i1 [ false, %for.cond.for.end_crit_edge ], [ true, %for.cond.7 ], [ false, %for.end.fold.split ], [ false, %for.end.fold.split228 ], [ false, %for.end.fold.split229 ], [ false, %for.end.fold.split230 ], [ false, %for.end.fold.split231 ], [ false, %for.end.fold.split232 ]
  br i1 %tobool39.not.lcssa, label %for.end.cleanup116_crit_edge, label %if.end48

for.end.cleanup116_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end48:                                         ; preds = %for.end
  %call55 = tail call fastcc i32 @pxa_ssp_set_pll(ptr noundef %3, i32 noundef %mul7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end48.cleanup116_crit_edge, label %cleanup

if.end48.cleanup116_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

cleanup:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %acds49 = getelementptr inbounds %struct.pxa_ssp_clock_mode, ptr %m.0.lcssa, i32 0, i32 2
  %43 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %44, i32 60
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #8, !srcloc !76
  %and61 = and i32 %45, -8
  %46 = ptrtoint ptr %acds49 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %acds49, align 4
  %conv63 = zext i8 %47 to i32
  %or64 = or i32 %and61, %conv63
  %scdb = getelementptr inbounds %struct.pxa_ssp_clock_mode, ptr %m.0.lcssa, i32 0, i32 3
  %48 = ptrtoint ptr %scdb to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %scdb, align 1
  %conv65 = zext i8 %49 to i32
  %or66 = or i32 %or64, %conv65
  %50 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %51, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %or66) #8, !srcloc !77
  br label %if.end75

if.else:                                          ; preds = %sw.epilog
  %and70 = and i32 %sscr0.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else.if.end75_crit_edge, label %if.then72

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then72:                                        ; preds = %if.else
  %div73 = sdiv i32 %mul7, %17
  %52 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !76
  %type.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %55 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i218 = icmp eq i32 %56, 1
  br i1 %cmp.i218, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %54, -65281
  %sub.i = shl i32 %div73, 7
  %57 = add i32 %sub.i, -256
  %shl.i = and i32 %57, -256
  %or.i = or i32 %and.i, %shl.i
  br label %pxa_ssp_set_scr.exit

if.else.i:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %54, -1048321
  %sub3.i = shl i32 %div73, 8
  %shl4.i = add i32 %sub3.i, -256
  %or5.i = or i32 %and2.i, %shl4.i
  br label %pxa_ssp_set_scr.exit

pxa_ssp_set_scr.exit:                             ; preds = %if.else.i, %if.then.i
  %sscr0.0.i = phi i32 [ %or.i, %if.then.i ], [ %or5.i, %if.else.i ]
  %58 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %sscr0.0.i) #8, !srcloc !77
  br label %if.end75

if.end75:                                         ; preds = %pxa_ssp_set_scr.exit, %if.else.if.end75_crit_edge, %cleanup, %if.then33.if.end75_crit_edge
  %dai_fmt = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 4
  %60 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dai_fmt, align 4
  %and76 = and i32 %61, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and76)
  %cond = icmp eq i32 %and76, 1
  br i1 %cond, label %sw.bb77, label %if.end75.sw.epilog109_crit_edge

if.end75.sw.epilog109_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog109

sw.bb77:                                          ; preds = %if.end75
  %62 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i220 = getelementptr i8, ptr %63, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #8, !srcloc !76
  %sysclk = getelementptr inbounds %struct.ssp_priv, ptr %3, i32 0, i32 3
  %65 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sysclk, align 4
  %div79 = udiv i32 %66, %mul7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div79)
  %cmp80 = icmp eq i32 %div79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp83 = icmp eq i32 %call4, 16
  %or.cond194 = select i1 %cmp80, i1 %cmp83, i1 false
  br i1 %or.cond194, label %if.then85, label %if.else100

if.then85:                                        ; preds = %sw.bb77
  %type86 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 7
  %67 = ptrtoint ptr %type86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp87.not = icmp eq i32 %68, 4
  br i1 %cmp87.not, label %if.end90, label %if.then85.cleanup116_crit_edge

if.then85.cleanup116_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end90:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %or98 = or i32 %64, 832602112
  br label %if.end108

if.else100:                                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %call4, 1
  %shl101 = shl i32 %add, 16
  %mul104 = shl i32 %add, 10
  %or102 = or i32 %mul104, %shl101
  %or106 = or i32 %or102, %64
  br label %if.end108

if.end108:                                        ; preds = %if.else100, %if.end90
  %sspsp.0.in = phi i32 [ %or98, %if.end90 ], [ %or106, %if.else100 ]
  %sspsp.0 = or i32 %sspsp.0.in, 128
  %69 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %70, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %sspsp.0) #8, !srcloc !77
  br label %sw.epilog109

sw.epilog109:                                     ; preds = %if.end108, %if.end75.sw.epilog109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sscr0.1)
  %tobool111.not = icmp slt i32 %sscr0.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool113.not = icmp eq i32 %and, 0
  %or.cond195 = select i1 %tobool111.not, i1 %tobool113.not, i1 false
  br i1 %or.cond195, label %do.end, label %if.end115

do.end:                                           ; preds = %sw.epilog109
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.15) #12
  br label %cleanup116

if.end115:                                        ; preds = %sw.epilog109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_hw_params, %if.then.i224)) #8
          to label %do.body6.i [label %if.then.i224], !srcloc !78

if.then.i224:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %75 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base.i, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !76
  %78 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !76
  %81 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %82, i32 40
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug240, ptr noundef %74, ptr noundef nonnull @.str.20, i32 noundef %77, i32 noundef %80, i32 noundef %83) #8
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.then.i224, %if.end115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_hw_params, %if.then18.i)) #8
          to label %cleanup116 [label %if.then18.i], !srcloc !78

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 4
  %86 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %87, i32 44
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #8, !srcloc !76
  %89 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #8, !srcloc !76
  %92 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %93, i32 60
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug241, ptr noundef %85, ptr noundef nonnull @.str.21, i32 noundef %88, i32 noundef %91, i32 noundef %94) #8
  br label %cleanup116

cleanup116:                                       ; preds = %if.then18.i, %do.body6.i, %do.end, %if.then85.cleanup116_crit_edge, %if.end48.cleanup116_crit_edge, %for.end.cleanup116_crit_edge, %if.end.cleanup116_crit_edge, %params_format.exit.cleanup116_crit_edge
  %retval.1 = phi i32 [ -22, %do.end ], [ 0, %params_format.exit.cleanup116_crit_edge ], [ %call14, %if.end.cleanup116_crit_edge ], [ -22, %if.then85.cleanup116_crit_edge ], [ 0, %do.body6.i ], [ 0, %if.then18.i ], [ %call55, %if.end48.cleanup116_crit_edge ], [ -22, %for.end.cleanup116_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 4, label %sw.bb2
    i32 1, label %sw.bb4
    i32 0, label %sw.bb5
    i32 5, label %sw.bb6
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !76
  %or.i = or i32 %9, 128
  %10 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or.i) #8, !srcloc !77
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %mmio_base.i.i19 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i.i19, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !76
  %15 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !76
  %18 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #8, !srcloc !76
  %21 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #8, !srcloc !76
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %sw.bb2.if.end.i_crit_edge, label %if.then.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %14, -129
  %24 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i.i19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %and5.i) #8, !srcloc !77
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb2.if.end.i_crit_edge
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %26 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %if.then6.i, label %if.else11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i20 = or i32 %17, 2097152
  %28 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %or.i20) #8, !srcloc !77
  br label %pxa_ssp_set_running_bit.exit

if.else11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or14.i = or i32 %17, 1048576
  %30 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %or14.i) #8, !srcloc !77
  br label %pxa_ssp_set_running_bit.exit

pxa_ssp_set_running_bit.exit:                     ; preds = %if.else11.i, %if.then6.i
  %32 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %23) #8, !srcloc !77
  %34 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %20) #8, !srcloc !77
  %or21.i = or i32 %14, 128
  %36 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base.i.i19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %or21.i) #8, !srcloc !77
  %38 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  %41 = ptrtoint ptr %mmio_base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio_base.i.i19, align 4
  %add.ptr.i22 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %40) #8, !srcloc !77
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %mmio_base.i.i23 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base.i.i23, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !76
  %46 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #8, !srcloc !76
  %49 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i44.i25 = getelementptr i8, ptr %50, i32 44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i25) #8, !srcloc !76
  %52 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i46.i26 = getelementptr i8, ptr %53, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i26) #8, !srcloc !76
  %and.i27 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool4.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool4.not.i28, label %sw.bb4.if.end.i33_crit_edge, label %if.then.i30

sw.bb4.if.end.i33_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i33

if.then.i30:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i29 = and i32 %45, -129
  %55 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio_base.i.i23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %and5.i29) #8, !srcloc !77
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i30, %sw.bb4.if.end.i33_crit_edge
  %stream.i31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %57 = ptrtoint ptr %stream.i31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stream.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i32 = icmp eq i32 %58, 0
  br i1 %cmp.i32, label %if.then6.i34, label %if.else11.i37

if.then6.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  %or.i35 = or i32 %48, 2097152
  %59 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i49.i36 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i36, i32 %or.i35) #8, !srcloc !77
  br label %pxa_ssp_set_running_bit.exit43

if.else11.i37:                                    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  %or14.i38 = or i32 %48, 1048576
  %61 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i53.i39 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i39, i32 %or14.i38) #8, !srcloc !77
  br label %pxa_ssp_set_running_bit.exit43

pxa_ssp_set_running_bit.exit43:                   ; preds = %if.else11.i37, %if.then6.i34
  %63 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i57.i40 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i40, i32 %54) #8, !srcloc !77
  %65 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_base.i.i23, align 4
  %add.ptr.i59.i41 = getelementptr i8, ptr %66, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i41, i32 %51) #8, !srcloc !77
  %or21.i42 = or i32 %45, 128
  %67 = ptrtoint ptr %mmio_base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio_base.i.i23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %or21.i42) #8, !srcloc !77
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %mmio_base.i.i44 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %69 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_base.i.i44, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !76
  %72 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio_base.i.i44, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %73, i32 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #8, !srcloc !76
  %75 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base.i.i44, align 4
  %add.ptr.i44.i46 = getelementptr i8, ptr %76, i32 44
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i46) #8, !srcloc !76
  %78 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_base.i.i44, align 4
  %add.ptr.i46.i47 = getelementptr i8, ptr %79, i32 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i47) #8, !srcloc !76
  %stream.i50 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %81 = ptrtoint ptr %stream.i50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stream.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i51 = icmp eq i32 %82, 0
  br i1 %cmp.i51, label %if.then6.i53, label %if.else11.i54

if.then6.i53:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i = and i32 %74, -2097153
  %83 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio_base.i.i44, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %84, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %and9.i) #8, !srcloc !77
  br label %sw.epilog

if.else11.i54:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %and16.i = and i32 %74, -1048577
  %85 = ptrtoint ptr %mmio_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base.i.i44, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %and16.i) #8, !srcloc !77
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio_base.i.i56 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %87 = ptrtoint ptr %mmio_base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio_base.i.i56, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !76
  %and.i57 = and i32 %89, -129
  %90 = ptrtoint ptr %mmio_base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base.i.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %and.i57) #8, !srcloc !77
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %mmio_base.i.i58 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %92 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_base.i.i58, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #8, !srcloc !76
  %95 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio_base.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %96, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #8, !srcloc !76
  %98 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio_base.i.i58, align 4
  %add.ptr.i44.i60 = getelementptr i8, ptr %99, i32 44
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i60) #8, !srcloc !76
  %101 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio_base.i.i58, align 4
  %add.ptr.i46.i61 = getelementptr i8, ptr %102, i32 8
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i61) #8, !srcloc !76
  %stream.i64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %104 = ptrtoint ptr %stream.i64 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stream.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i65 = icmp eq i32 %105, 0
  br i1 %cmp.i65, label %if.then6.i67, label %if.else11.i70

if.then6.i67:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i68 = and i32 %97, -2097153
  %106 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio_base.i.i58, align 4
  %add.ptr.i51.i69 = getelementptr i8, ptr %107, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i69, i32 %and9.i68) #8, !srcloc !77
  br label %sw.epilog

if.else11.i70:                                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %and16.i71 = and i32 %97, -1048577
  %108 = ptrtoint ptr %mmio_base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_base.i.i58, align 4
  %add.ptr.i55.i72 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i72, i32 %and16.i71) #8, !srcloc !77
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else11.i70, %if.then6.i67, %sw.bb6, %if.else11.i54, %if.then6.i53, %pxa_ssp_set_running_bit.exit43, %pxa_ssp_set_running_bit.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %pxa_ssp_set_running_bit.exit43 ], [ 0, %pxa_ssp_set_running_bit.exit ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.then6.i53 ], [ 0, %if.else11.i54 ], [ 0, %if.then6.i67 ], [ 0, %if.else11.i70 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_trigger, %if.then.i76)) #8
          to label %do.body6.i [label %if.then.i76], !srcloc !78

if.then.i76:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %5, align 4
  %mmio_base.i.i74 = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %112 = ptrtoint ptr %mmio_base.i.i74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base.i.i74, align 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !76
  %115 = ptrtoint ptr %mmio_base.i.i74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio_base.i.i74, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %116, i32 4
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #8, !srcloc !76
  %118 = ptrtoint ptr %mmio_base.i.i74 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio_base.i.i74, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %119, i32 40
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug240, ptr noundef %111, ptr noundef nonnull @.str.20, i32 noundef %114, i32 noundef %117, i32 noundef %120) #8
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.then.i76, %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_trigger, %if.then18.i)) #8
          to label %dump_registers.exit [label %if.then18.i], !srcloc !78

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %5, align 4
  %mmio_base.i38.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %123 = ptrtoint ptr %mmio_base.i38.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio_base.i38.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %124, i32 44
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #8, !srcloc !76
  %126 = ptrtoint ptr %mmio_base.i38.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio_base.i38.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %127, i32 8
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #8, !srcloc !76
  %129 = ptrtoint ptr %mmio_base.i38.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio_base.i38.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %130, i32 60
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug241, ptr noundef %122, ptr noundef nonnull @.str.21, i32 noundef %125, i32 noundef %128, i32 noundef %131) #8
  br label %dump_registers.exit

dump_registers.exit:                              ; preds = %if.then18.i, %do.body6.i
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_ssp_configure_dai_fmt(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %configured_dai_fmt = getelementptr inbounds %struct.ssp_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %configured_dai_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %configured_dai_fmt, align 4
  %dai_fmt = getelementptr inbounds %struct.ssp_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !76
  %and = and i32 %8, 2147483599
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  %and3 = and i32 %11, -331366337
  %12 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #8, !srcloc !76
  %and5 = and i32 %14, -8
  %or = or i32 %and3, 7552
  %15 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dai_fmt, align 4
  %17 = trunc i32 %16 to i16
  %trunc = and i16 %17, -4096
  %18 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %trunc, label %if.end.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 12288, label %sw.bb9
    i16 16384, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %and3, 318774656
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %and3, 301997440
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %if.end.sw.epilog_crit_edge
  %sscr1.0 = phi i32 [ %or, %if.end.sw.epilog_crit_edge ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb ]
  %and12 = lshr i32 %16, 8
  %19 = and i32 %and12, 15
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %19, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb13
    i32 2, label %sw.epilog.sw.epilog20_crit_edge
    i32 4, label %sw.bb15
    i32 3, label %sw.bb17
  ]

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %and5, 4
  br label %sw.epilog20

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or16 = or i32 %and5, 2
  br label %sw.epilog20

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %and5, 6
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.epilog.sw.epilog20_crit_edge
  %sspsp.0 = phi i32 [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %and5, %sw.epilog.sw.epilog20_crit_edge ], [ %or14, %sw.bb13 ]
  %and22 = and i32 %16, 15
  %21 = zext i32 %and22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and22, label %sw.epilog20.cleanup_crit_edge [
    i32 1, label %sw.bb23
    i32 4, label %sw.bb26
    i32 5, label %sw.epilog20.sw.bb28_crit_edge
  ]

sw.epilog20.sw.bb28_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %or24 = or i32 %and, 48
  br label %sw.epilog32

sw.bb26:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %sspsp.0, 33554432
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb26, %sw.epilog20.sw.bb28_crit_edge
  %sspsp.1 = phi i32 [ %sspsp.0, %sw.epilog20.sw.bb28_crit_edge ], [ %or27, %sw.bb26 ]
  %or29 = or i32 %8, -2147483600
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb28, %sw.bb23
  %sscr0.0 = phi i32 [ %or29, %sw.bb28 ], [ %or24, %sw.bb23 ]
  %sspsp.2 = phi i32 [ %sspsp.1, %sw.bb28 ], [ %sspsp.0, %sw.bb23 ]
  %sscr1.1 = or i32 %sscr1.0, 12582912
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %sscr0.0) #8, !srcloc !77
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %sscr1.1) #8, !srcloc !77
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %sspsp.2) #8, !srcloc !77
  %28 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dai_fmt, align 4
  %30 = trunc i32 %29 to i16
  %trunc81 = and i16 %30, -4096
  %31 = zext i16 %trunc81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %trunc81, label %sw.epilog32.sw.epilog46_crit_edge [
    i16 4096, label %sw.epilog32.sw.bb35_crit_edge
    i16 12288, label %sw.epilog32.sw.bb35_crit_edge99
  ]

sw.epilog32.sw.bb35_crit_edge99:                  ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

sw.epilog32.sw.bb35_crit_edge:                    ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

sw.epilog32.sw.epilog46_crit_edge:                ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog46

sw.bb35:                                          ; preds = %sw.epilog32.sw.bb35_crit_edge, %sw.epilog32.sw.bb35_crit_edge99
  %32 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #8, !srcloc !76
  %or37 = or i32 %34, 268435456
  %35 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %or37) #8, !srcloc !77
  %37 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i9596 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9596) #8, !srcloc !76
  %and3997 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3997)
  %tobool.not98 = icmp eq i32 %and3997, 0
  br i1 %tobool.not98, label %sw.bb35.sw.epilog46_crit_edge, label %sw.bb35.do.end_crit_edge

sw.bb35.do.end_crit_edge:                         ; preds = %sw.bb35
  br label %do.end

sw.bb35.sw.epilog46_crit_edge:                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog46

do.end:                                           ; preds = %do.end.do.end_crit_edge, %sw.bb35.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !81
  %40 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !76
  %and39 = and i32 %42, 16
  %tobool.not = icmp eq i32 %and39, 0
  br i1 %tobool.not, label %do.end.sw.epilog46_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.sw.epilog46_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %do.end.sw.epilog46_crit_edge, %sw.bb35.sw.epilog46_crit_edge, %sw.epilog32.sw.epilog46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_configure_dai_fmt, %if.then.i)) #8
          to label %do.body6.i [label %if.then.i], !srcloc !78

if.then.i:                                        ; preds = %sw.epilog46
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !76
  %48 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !76
  %51 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug240, ptr noundef %44, ptr noundef nonnull @.str.20, i32 noundef %47, i32 noundef %50, i32 noundef %53) #8
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.then.i, %sw.epilog46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_registers.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_configure_dai_fmt, %if.then18.i)) #8
          to label %dump_registers.exit [label %if.then18.i], !srcloc !78

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %57, i32 44
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #8, !srcloc !76
  %59 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %60, i32 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #8, !srcloc !76
  %62 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %63, i32 60
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !76
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_registers.__UNIQUE_ID_ddebug241, ptr noundef %55, ptr noundef nonnull @.str.21, i32 noundef %58, i32 noundef %61, i32 noundef %64) #8
  br label %dump_registers.exit

dump_registers.exit:                              ; preds = %if.then18.i, %do.body6.i
  %65 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dai_fmt, align 4
  %67 = ptrtoint ptr %configured_dai_fmt to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %configured_dai_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %dump_registers.exit, %sw.epilog20.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dump_registers.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_ssp_set_pll(ptr nocapture noundef readonly %priv, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mmio_base.i = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !76
  %and = and i32 %4, -113
  %type = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 0) #8, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %freq, label %sw.default [
    i32 5622000, label %if.end.sw.epilog_crit_edge
    i32 11345000, label %sw.bb
    i32 12235000, label %sw.bb2
    i32 14857000, label %sw.bb4
    i32 32842000, label %sw.bb6
    i32 48000000, label %sw.bb8
    i32 0, label %if.end.sw.epilog_crit_edge333
  ]

if.end.sw.epilog_crit_edge333:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and, 16
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or3 = or i32 %and, 32
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or5 = or i32 %and, 48
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %and, 64
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %and, 80
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp11 = icmp eq i32 %11, 4
  br i1 %cmp11, label %if.else194, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else194:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq, i64 19968000000) #13, !srcloc !82
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %extract.t331 = trunc i64 %asmresult1.i to i32
  %shl201 = shl i32 %extract.t331, 16
  %or202 = or i32 %shl201, 64
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %or202) #8, !srcloc !77
  %or203 = or i32 %and, 96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa_ssp_set_pll.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxa_ssp_set_pll, %if.then213)) #8
          to label %sw.epilog [label %if.then213], !srcloc !78

if.then213:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxa_ssp_set_pll.__UNIQUE_ID_ddebug243, ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %or202, i32 noundef %freq) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then213, %if.else194, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge333
  %ssacd.0 = phi i32 [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ], [ %and, %if.end.sw.epilog_crit_edge ], [ %and, %if.end.sw.epilog_crit_edge333 ], [ %or203, %if.else194 ], [ %or203, %if.then213 ]
  %17 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %18, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 %ssacd.0) #8, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_snd_soc_pxa_ssp__244_886_asoc_ssp_driver_init6, !1, !"__initcall__kmod_snd_soc_pxa_ssp__244_886_asoc_ssp_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 886, i32 1}
!2 = !{ptr @__exitcall_asoc_ssp_driver_exit, !1, !"__exitcall_asoc_ssp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 889, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 890, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 891, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias249, !11, !"__UNIQUE_ID_alias249", i1 false, i1 false}
!11 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 892, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 879, i32 11}
!14 = !{ptr @asoc_ssp_driver, !15, !"asoc_ssp_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 877, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 851, i32 11}
!18 = !{ptr @pxa_ssp_component, !19, !"pxa_ssp_component", i1 false, i1 false}
!19 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 850, i32 46}
!20 = !{ptr @pxa_ssp_dai, !21, !"pxa_ssp_dai", i1 false, i1 false}
!21 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 832, i32 34}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 765, i32 47}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 767, i32 4}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pxa_ssp_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @pxa_ssp_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 772, i32 46}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 778, i32 36}
!36 = !{ptr @pxa_ssp_dai_ops, !37, !"pxa_ssp_dai_ops", i1 false, i1 false}
!37 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 821, i32 37}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 208, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pxa_ssp_set_dai_sysclk.__UNIQUE_ID_ddebug242, !39, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 92, i32 3}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 92, i32 10}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 672, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pxa_ssp_hw_params._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pxa_ssp_hw_params._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 301, i32 4}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pxa_ssp_set_pll.__UNIQUE_ID_ddebug243, !53, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!56 = !{ptr @pxa_ssp_clock_modes, !57, !"pxa_ssp_clock_modes", i1 false, i1 false}
!57 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 516, i32 40}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 55, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dump_registers.__UNIQUE_ID_ddebug240, !59, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 59, i32 2}
!64 = !{ptr @dump_registers.__UNIQUE_ID_ddebug241, !63, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!65 = !{ptr @pxa_ssp_of_ids, !66, !"pxa_ssp_of_ids", i1 false, i1 false}
!66 = !{!"../sound/soc/pxa/pxa-ssp.c", i32 864, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 5227997}
!77 = !{i64 5227579}
!78 = !{i64 2148973002, i64 2148973007, i64 2148973020, i64 2148973064, i64 2148973098, i64 2148973119}
!79 = !{i32 0, i32 33}
!80 = !{i64 2154974752}
!81 = !{i64 2154974594}
!82 = !{i64 2148218533, i64 2148218813, i64 2148219147, i64 2148219481}
